export HIPCXX_CONDA_BACKUP=${HIPCXX:-}
export HIPCXX=$CONDA_PREFIX/bin/x86_64-conda-linux-gnu-clang

# Default ROCm GPU targets used by conda-forge packages. Downstream recipes may
# override this with ROCK_THE_CONDA_ROCM_GPU_TARGETS when needed.
export CONDA_FORGE_DEFAULT_ROCM_GPU_TARGETS_CONDA_BACKUP=${CONDA_FORGE_DEFAULT_ROCM_GPU_TARGETS:-}
if [ -n "${ROCK_THE_CONDA_ROCM_GPU_TARGETS:-}" ]; then
    export CONDA_FORGE_DEFAULT_ROCM_GPU_TARGETS="${ROCK_THE_CONDA_ROCM_GPU_TARGETS}"
else
    export CONDA_FORGE_DEFAULT_ROCM_GPU_TARGETS="gfx908;gfx90a;gfx942;gfx950;gfx1030;gfx1100;gfx1101;gfx1102;gfx1150;gfx1151;gfx1200;gfx1201"
fi

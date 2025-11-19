@interface ARQLDevice
+ (BOOL)isRenderTier3;
+ (BOOL)isRenderTier4;
+ (BOOL)supportsSceneReconstruction;
+ (BOOL)useSceneReconstructionMeshForOrientation;
+ (int64_t)renderTier;
@end

@implementation ARQLDevice

+ (BOOL)isRenderTier3
{
  checkGPUClass();
  if (gpuClass == 5)
  {
    return 1;
  }

  if (gpuClass == 6)
  {
    return !isiPhone();
  }

  return 0;
}

+ (BOOL)isRenderTier4
{
  checkGPUClass();
  v2 = gpuClass;
  if (gpuClass == 6)
  {
    if (isiPhone())
    {
      return 1;
    }

    v2 = gpuClass;
  }

  return v2 == 7;
}

+ (int64_t)renderTier
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __24__ARQLDevice_renderTier__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (renderTier_onceToken != -1)
  {
    dispatch_once(&renderTier_onceToken, block);
  }

  return renderTier___renderTier;
}

void __24__ARQLDevice_renderTier__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isRenderTier1])
  {
    v2 = &unk_27E53A000;
    v3 = 1;
LABEL_9:
    v2[340] = v3;
    return;
  }

  if ([*(a1 + 32) isRenderTier2])
  {
    v2 = &unk_27E53A000;
    v3 = 2;
    goto LABEL_9;
  }

  if ([*(a1 + 32) isRenderTier3])
  {
    v2 = &unk_27E53A000;
    v3 = 3;
    goto LABEL_9;
  }

  if ([*(a1 + 32) isRenderTier4])
  {
    v2 = &unk_27E53A000;
    v3 = 4;
    goto LABEL_9;
  }

  if ([*(a1 + 32) isRenderTier5])
  {
    v4 = isiPhone();
    v2 = &unk_27E53A000;
    if (!v4)
    {
      v3 = 5;
      goto LABEL_9;
    }

    renderTier___renderTier = 4;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_241215000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "ARQLDevice: bumping iPhone down to tier 4", v5, 2u);
    }
  }

  else
  {
    renderTier___renderTier = 0;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __24__ARQLDevice_renderTier__block_invoke_cold_1();
    }
  }
}

+ (BOOL)supportsSceneReconstruction
{
  if (supportsSceneReconstruction_onceToken != -1)
  {
    +[ARQLDevice supportsSceneReconstruction];
  }

  return supportsSceneReconstruction___supportsSceneReconstruction;
}

uint64_t __41__ARQLDevice_supportsSceneReconstruction__block_invoke()
{
  result = [MEMORY[0x277CE53B0] supportsSceneReconstruction:1];
  supportsSceneReconstruction___supportsSceneReconstruction = result;
  return result;
}

+ (BOOL)useSceneReconstructionMeshForOrientation
{
  if (useSceneReconstructionMeshForOrientation_onceToken != -1)
  {
    +[ARQLDevice useSceneReconstructionMeshForOrientation];
  }

  return useSceneReconstructionMeshForOrientation___useSceneReconstructionMeshForOrientation;
}

BOOL __54__ARQLDevice_useSceneReconstructionMeshForOrientation__block_invoke()
{
  result = +[ARQLDevice supportsSceneReconstruction];
  if (result)
  {
    result = +[ASVUserDefaults forceUseSceneReconstructionMeshForOrientation];
  }

  useSceneReconstructionMeshForOrientation___useSceneReconstructionMeshForOrientation = result;
  return result;
}

@end
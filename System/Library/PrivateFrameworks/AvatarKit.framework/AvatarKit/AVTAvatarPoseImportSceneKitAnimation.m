@interface AVTAvatarPoseImportSceneKitAnimation
@end

@implementation AVTAvatarPoseImportSceneKitAnimation

void ___AVTAvatarPoseImportSceneKitAnimation_block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  v9 = *(*(a1 + 32) + 8);
  v10 = v8;
  if (a3)
  {
    if (([v8 isEqual:*(v9 + 40)] & 1) == 0)
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
      *a4 = 1;
    }
  }

  else
  {
    objc_storeStrong((v9 + 40), a2);
  }
}

uint64_t ___AVTAvatarPoseImportSceneKitAnimation_block_invoke_249(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 floatValue];
  if (v7 != 0.0)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

@end
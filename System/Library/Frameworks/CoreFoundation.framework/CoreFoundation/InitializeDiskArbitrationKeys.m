@interface InitializeDiskArbitrationKeys
@end

@implementation InitializeDiskArbitrationKeys

uint64_t *___InitializeDiskArbitrationKeys_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/DiskArbitration.framework/DiskArbitration", 5);
  if (result)
  {
    v1 = result;
    __CFDiskArbitration_kDADiskDescriptionVolumePathKey = *dlsym(result, "kDADiskDescriptionVolumePathKey");
    result = dlsym(v1, "kDADiskDescriptionVolumeNameKey");
    v2 = *result;
    __CFDiskArbitration_kDADiskDescriptionVolumeNameKey = *result;
  }

  else
  {
    v2 = __CFDiskArbitration_kDADiskDescriptionVolumeNameKey;
  }

  if (__CFDiskArbitration_kDADiskDescriptionVolumePathKey)
  {
    v3 = v2 == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = !v3;
  _MergedGlobals_58 = v4;
  return result;
}

@end
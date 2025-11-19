@interface CGColorSyncTransformCacheRelease
@end

@implementation CGColorSyncTransformCacheRelease

uint64_t (*__CGColorSyncTransformCacheRelease_block_invoke())()
{
  if (CGLibraryLoadColorSyncDYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadColorSyncDYLD_once, &__block_literal_global_22095);
  }

  result = CGLibraryLoadColorSyncDYLD_handle;
  if (CGLibraryLoadColorSyncDYLD_handle)
  {
    result = dlsym(CGLibraryLoadColorSyncDYLD_handle, "ColorSyncTransformGetTypeID");
  }

  if (result)
  {
    v1 = result;
  }

  else
  {
    v1 = colorsync_smart_null_12544;
  }

  CGColorSyncTransformCacheRelease_f = v1;
  return result;
}

@end
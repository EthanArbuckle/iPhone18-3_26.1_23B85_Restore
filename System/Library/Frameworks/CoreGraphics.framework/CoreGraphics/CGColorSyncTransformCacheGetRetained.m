@interface CGColorSyncTransformCacheGetRetained
@end

@implementation CGColorSyncTransformCacheGetRetained

uint64_t (*__CGColorSyncTransformCacheGetRetained_block_invoke_2())()
{
  if (CGLibraryLoadColorSyncDYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadColorSyncDYLD_once, &__block_literal_global_22095);
  }

  result = CGLibraryLoadColorSyncDYLD_handle;
  if (CGLibraryLoadColorSyncDYLD_handle)
  {
    result = dlsym(CGLibraryLoadColorSyncDYLD_handle, "ColorSyncTransformCreate");
  }

  if (result)
  {
    v1 = result;
  }

  else
  {
    v1 = colorsync_smart_null_12544;
  }

  CGColorSyncTransformCacheGetRetained_f = v1;
  return result;
}

@end
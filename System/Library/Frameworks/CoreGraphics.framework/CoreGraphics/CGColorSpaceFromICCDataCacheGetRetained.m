@interface CGColorSpaceFromICCDataCacheGetRetained
@end

@implementation CGColorSpaceFromICCDataCacheGetRetained

uint64_t (*__CGColorSpaceFromICCDataCacheGetRetained_block_invoke())()
{
  if (CGLibraryLoadColorSyncDYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadColorSyncDYLD_once, &__block_literal_global_22095);
  }

  result = CGLibraryLoadColorSyncDYLD_handle;
  if (CGLibraryLoadColorSyncDYLD_handle)
  {
    result = dlsym(CGLibraryLoadColorSyncDYLD_handle, "ColorSyncProfileCreate");
  }

  if (result)
  {
    v1 = result;
  }

  else
  {
    v1 = colorsync_smart_null_17239;
  }

  CGColorSpaceFromICCDataCacheGetRetained_f = v1;
  return result;
}

uint64_t (*__CGColorSpaceFromICCDataCacheGetRetained_block_invoke_2())()
{
  if (CGLibraryLoadColorSyncDYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadColorSyncDYLD_once, &__block_literal_global_22095);
  }

  result = CGLibraryLoadColorSyncDYLD_handle;
  if (CGLibraryLoadColorSyncDYLD_handle)
  {
    result = dlsym(CGLibraryLoadColorSyncDYLD_handle, "ColorSyncProfileVerify");
  }

  if (result)
  {
    v1 = result;
  }

  else
  {
    v1 = colorsync_smart_null_17239;
  }

  CGColorSpaceFromICCDataCacheGetRetained_f_3 = v1;
  return result;
}

uint64_t (*__CGColorSpaceFromICCDataCacheGetRetained_block_invoke_3())()
{
  if (CGLibraryLoadColorSyncDYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadColorSyncDYLD_once, &__block_literal_global_22095);
  }

  result = CGLibraryLoadColorSyncDYLD_handle;
  if (CGLibraryLoadColorSyncDYLD_handle)
  {
    result = dlsym(CGLibraryLoadColorSyncDYLD_handle, "ColorSyncProfileGetMD5");
  }

  if (result)
  {
    v1 = result;
  }

  else
  {
    v1 = colorsync_smart_null_17239;
  }

  CGColorSpaceFromICCDataCacheGetRetained_f_9 = v1;
  return result;
}

@end
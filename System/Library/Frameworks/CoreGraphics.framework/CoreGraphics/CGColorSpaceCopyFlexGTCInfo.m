@interface CGColorSpaceCopyFlexGTCInfo
@end

@implementation CGColorSpaceCopyFlexGTCInfo

uint64_t (*__CGColorSpaceCopyFlexGTCInfo_block_invoke_2())()
{
  if (CGLibraryLoadColorSyncDYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadColorSyncDYLD_once, &__block_literal_global_22095);
  }

  result = CGLibraryLoadColorSyncDYLD_handle;
  if (CGLibraryLoadColorSyncDYLD_handle)
  {
    result = dlsym(CGLibraryLoadColorSyncDYLD_handle, "ColorSyncProfileCopyFlexGTCInfo");
  }

  if (result)
  {
    v1 = result;
  }

  else
  {
    v1 = colorsync_smart_null_6772;
  }

  CGColorSpaceCopyFlexGTCInfo_f_50 = v1;
  return result;
}

uint64_t (*__CGColorSpaceCopyFlexGTCInfo_block_invoke())()
{
  if (CGLibraryLoadColorSyncDYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadColorSyncDYLD_once, &__block_literal_global_22095);
  }

  result = CGLibraryLoadColorSyncDYLD_handle;
  if (CGLibraryLoadColorSyncDYLD_handle)
  {
    result = dlsym(CGLibraryLoadColorSyncDYLD_handle, "ColorSyncProfileGetTypeID");
  }

  if (result)
  {
    v1 = result;
  }

  else
  {
    v1 = colorsync_smart_null_6772;
  }

  CGColorSpaceCopyFlexGTCInfo_f = v1;
  return result;
}

@end
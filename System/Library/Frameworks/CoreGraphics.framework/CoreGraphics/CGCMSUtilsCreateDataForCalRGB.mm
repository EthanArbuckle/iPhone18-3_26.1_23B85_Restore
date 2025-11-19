@interface CGCMSUtilsCreateDataForCalRGB
@end

@implementation CGCMSUtilsCreateDataForCalRGB

uint64_t (*__CGCMSUtilsCreateDataForCalRGB_block_invoke())()
{
  if (CGLibraryLoadColorSyncDYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadColorSyncDYLD_once, &__block_literal_global_22095);
  }

  result = CGLibraryLoadColorSyncDYLD_handle;
  if (CGLibraryLoadColorSyncDYLD_handle)
  {
    result = dlsym(CGLibraryLoadColorSyncDYLD_handle, "ColorSyncProfileCopyData");
  }

  if (result)
  {
    v1 = result;
  }

  else
  {
    v1 = colorsync_smart_null_1554;
  }

  CGCMSUtilsCreateDataForCalRGB_f = v1;
  return result;
}

@end
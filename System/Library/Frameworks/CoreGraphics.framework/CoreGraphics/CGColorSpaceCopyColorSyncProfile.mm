@interface CGColorSpaceCopyColorSyncProfile
@end

@implementation CGColorSpaceCopyColorSyncProfile

uint64_t (*__CGColorSpaceCopyColorSyncProfile_block_invoke())()
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
    v1 = colorsync_smart_null_23418;
  }

  CGColorSpaceCopyColorSyncProfile_f = v1;
  return result;
}

@end
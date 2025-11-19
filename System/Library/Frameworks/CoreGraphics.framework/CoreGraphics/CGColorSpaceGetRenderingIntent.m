@interface CGColorSpaceGetRenderingIntent
@end

@implementation CGColorSpaceGetRenderingIntent

uint64_t (*__CGColorSpaceGetRenderingIntent_block_invoke())()
{
  if (CGLibraryLoadColorSyncDYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadColorSyncDYLD_once, &__block_literal_global_22095);
  }

  result = CGLibraryLoadColorSyncDYLD_handle;
  if (CGLibraryLoadColorSyncDYLD_handle)
  {
    result = dlsym(CGLibraryLoadColorSyncDYLD_handle, "ColorSyncProfileCopyHeader");
  }

  if (result)
  {
    v1 = result;
  }

  else
  {
    v1 = colorsync_smart_null_23418;
  }

  CGColorSpaceGetRenderingIntent_f = v1;
  return result;
}

@end
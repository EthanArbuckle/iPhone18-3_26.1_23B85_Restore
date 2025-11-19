@interface DisplayP3RedPrimaryData
@end

@implementation DisplayP3RedPrimaryData

CFDataRef __get_DisplayP3RedPrimaryData_block_invoke()
{
  if (ColorSyncProfileGetDisplayP3RedPrimary_predicate[0] != -1)
  {
    dispatch_once(ColorSyncProfileGetDisplayP3RedPrimary_predicate, &__block_literal_global_331);
  }

  result = CFDataCreateWithBytesNoCopy(0, &ColorSyncProfileGetDisplayP3RedPrimary_rXYZ, 20, *MEMORY[0x1E695E498]);
  get_DisplayP3RedPrimaryData_data = result;
  return result;
}

@end
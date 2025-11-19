@interface DisplayP3GreenPrimaryData
@end

@implementation DisplayP3GreenPrimaryData

CFDataRef __get_DisplayP3GreenPrimaryData_block_invoke()
{
  if (ColorSyncProfileGetDisplayP3GreenPrimary_predicate != -1)
  {
    dispatch_once(&ColorSyncProfileGetDisplayP3GreenPrimary_predicate, &__block_literal_global_334);
  }

  result = CFDataCreateWithBytesNoCopy(0, &ColorSyncProfileGetDisplayP3GreenPrimary_gXYZ, 20, *MEMORY[0x1E695E498]);
  get_DisplayP3GreenPrimaryData_data = result;
  return result;
}

@end
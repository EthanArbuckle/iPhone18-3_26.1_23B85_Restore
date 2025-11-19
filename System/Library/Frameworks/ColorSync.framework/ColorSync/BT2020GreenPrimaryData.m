@interface BT2020GreenPrimaryData
@end

@implementation BT2020GreenPrimaryData

CFDataRef __get_BT2020GreenPrimaryData_block_invoke()
{
  if (ColorSyncProfileGetBT2020GreenPrimary_predicate != -1)
  {
    dispatch_once(&ColorSyncProfileGetBT2020GreenPrimary_predicate, &__block_literal_global_325);
  }

  result = CFDataCreateWithBytesNoCopy(0, &ColorSyncProfileGetBT2020GreenPrimary_gXYZ, 20, *MEMORY[0x1E695E498]);
  get_BT2020GreenPrimaryData_data = result;
  return result;
}

@end
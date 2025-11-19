@interface BT2020BluePrimaryData
@end

@implementation BT2020BluePrimaryData

CFDataRef __get_BT2020BluePrimaryData_block_invoke()
{
  if (ColorSyncProfileGetBT2020BluePrimary_predicate != -1)
  {
    dispatch_once(&ColorSyncProfileGetBT2020BluePrimary_predicate, &__block_literal_global_328);
  }

  result = CFDataCreateWithBytesNoCopy(0, &ColorSyncProfileGetBT2020BluePrimary_bXYZ, 20, *MEMORY[0x1E695E498]);
  get_BT2020BluePrimaryData_data = result;
  return result;
}

@end
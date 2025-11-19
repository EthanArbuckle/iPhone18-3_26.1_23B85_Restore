@interface BT2020RedPrimaryData
@end

@implementation BT2020RedPrimaryData

CFDataRef __get_BT2020RedPrimaryData_block_invoke()
{
  if (ColorSyncProfileGetBT2020RedPrimary_predicate[0] != -1)
  {
    dispatch_once(ColorSyncProfileGetBT2020RedPrimary_predicate, &__block_literal_global_322);
  }

  result = CFDataCreateWithBytesNoCopy(0, &ColorSyncProfileGetBT2020RedPrimary_rXYZ, 20, *MEMORY[0x1E695E498]);
  get_BT2020RedPrimaryData_data = result;
  return result;
}

@end
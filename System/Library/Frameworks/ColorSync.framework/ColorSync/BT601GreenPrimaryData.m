@interface BT601GreenPrimaryData
@end

@implementation BT601GreenPrimaryData

CFDataRef __get_BT601GreenPrimaryData_block_invoke()
{
  if (ColorSyncProfileGetBT601GreenPrimary_predicate != -1)
  {
    dispatch_once(&ColorSyncProfileGetBT601GreenPrimary_predicate, &__block_literal_global_307);
  }

  result = CFDataCreateWithBytesNoCopy(0, &ColorSyncProfileGetBT601GreenPrimary_gXYZ, 20, *MEMORY[0x1E695E498]);
  get_BT601GreenPrimaryData_data = result;
  return result;
}

@end
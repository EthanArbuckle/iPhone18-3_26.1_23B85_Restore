@interface BT709GreenPrimaryData
@end

@implementation BT709GreenPrimaryData

CFDataRef __get_BT709GreenPrimaryData_block_invoke()
{
  if (ColorSyncProfileGetBT709GreenPrimary_predicate != -1)
  {
    dispatch_once(&ColorSyncProfileGetBT709GreenPrimary_predicate, &__block_literal_global_316);
  }

  result = CFDataCreateWithBytesNoCopy(0, &ColorSyncProfileGetBT709GreenPrimary_gXYZ, 20, *MEMORY[0x1E695E498]);
  get_BT709GreenPrimaryData_data = result;
  return result;
}

@end
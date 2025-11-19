@interface BT709BluPrimaryData
@end

@implementation BT709BluPrimaryData

CFDataRef __get_BT709BluPrimaryData_block_invoke()
{
  if (ColorSyncProfileGetBT709BluePrimary_predicate != -1)
  {
    dispatch_once(&ColorSyncProfileGetBT709BluePrimary_predicate, &__block_literal_global_319);
  }

  result = CFDataCreateWithBytesNoCopy(0, &ColorSyncProfileGetBT709BluePrimary_bXYZ, 20, *MEMORY[0x1E695E498]);
  get_BT709BluPrimaryData_data = result;
  return result;
}

@end
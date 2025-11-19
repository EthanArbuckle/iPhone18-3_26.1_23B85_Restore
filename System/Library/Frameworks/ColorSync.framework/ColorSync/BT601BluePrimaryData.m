@interface BT601BluePrimaryData
@end

@implementation BT601BluePrimaryData

CFDataRef __get_BT601BluePrimaryData_block_invoke()
{
  if (ColorSyncProfileGetBT601BluePrimary_predicate != -1)
  {
    dispatch_once(&ColorSyncProfileGetBT601BluePrimary_predicate, &__block_literal_global_310);
  }

  result = CFDataCreateWithBytesNoCopy(0, &ColorSyncProfileGetBT601BluePrimary_bXYZ, 20, *MEMORY[0x1E695E498]);
  get_BT601BluePrimaryData_data = result;
  return result;
}

@end
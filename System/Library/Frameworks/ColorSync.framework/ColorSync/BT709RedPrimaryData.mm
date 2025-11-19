@interface BT709RedPrimaryData
@end

@implementation BT709RedPrimaryData

CFDataRef __get_BT709RedPrimaryData_block_invoke()
{
  if (ColorSyncProfileGetBT709RedPrimary_predicate[0] != -1)
  {
    dispatch_once(ColorSyncProfileGetBT709RedPrimary_predicate, &__block_literal_global_313);
  }

  result = CFDataCreateWithBytesNoCopy(0, &ColorSyncProfileGetBT709RedPrimary_rXYZ, 20, *MEMORY[0x1E695E498]);
  get_BT709RedPrimaryData_data = result;
  return result;
}

@end
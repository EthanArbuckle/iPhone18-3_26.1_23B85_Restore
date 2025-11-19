@interface BT601RedPrimaryData
@end

@implementation BT601RedPrimaryData

CFDataRef __get_BT601RedPrimaryData_block_invoke()
{
  if (ColorSyncProfileGetBT601RedPrimary_predicate != -1)
  {
    dispatch_once(&ColorSyncProfileGetBT601RedPrimary_predicate, &__block_literal_global_304);
  }

  result = CFDataCreateWithBytesNoCopy(0, &ColorSyncProfileGetBT601RedPrimary_rXYZ, 20, *MEMORY[0x1E695E498]);
  get_BT601RedPrimaryData_data = result;
  return result;
}

@end
@interface DisplayP3BluePrimaryData
@end

@implementation DisplayP3BluePrimaryData

CFDataRef __get_DisplayP3BluePrimaryData_block_invoke()
{
  if (ColorSyncProfileGetDisplayP3BluePrimary_predicate != -1)
  {
    dispatch_once(&ColorSyncProfileGetDisplayP3BluePrimary_predicate, &__block_literal_global_337);
  }

  result = CFDataCreateWithBytesNoCopy(0, &ColorSyncProfileGetDisplayP3BluePrimary_bXYZ, 20, *MEMORY[0x1E695E498]);
  get_DisplayP3BluePrimaryData_data = result;
  return result;
}

@end
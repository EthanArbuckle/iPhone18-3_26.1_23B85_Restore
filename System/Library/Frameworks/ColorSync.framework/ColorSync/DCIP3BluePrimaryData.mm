@interface DCIP3BluePrimaryData
@end

@implementation DCIP3BluePrimaryData

CFDataRef __get_DCIP3BluePrimaryData_block_invoke()
{
  if (ColorSyncProfileGetDCIP3BluePrimary_predicate[0] != -1)
  {
    dispatch_once(ColorSyncProfileGetDCIP3BluePrimary_predicate, &__block_literal_global_346);
  }

  result = CFDataCreateWithBytesNoCopy(0, &ColorSyncProfileGetDCIP3BluePrimary_bXYZ, 20, *MEMORY[0x1E695E498]);
  get_DCIP3BluePrimaryData_data = result;
  return result;
}

@end
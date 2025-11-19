@interface DCIP3RedPrimaryData
@end

@implementation DCIP3RedPrimaryData

CFDataRef __get_DCIP3RedPrimaryData_block_invoke()
{
  if (ColorSyncProfileGetDCIP3RedPrimary_predicate != -1)
  {
    dispatch_once(&ColorSyncProfileGetDCIP3RedPrimary_predicate, &__block_literal_global_340);
  }

  result = CFDataCreateWithBytesNoCopy(0, &ColorSyncProfileGetDCIP3RedPrimary_rXYZ, 20, *MEMORY[0x1E695E498]);
  get_DCIP3RedPrimaryData_data = result;
  return result;
}

@end
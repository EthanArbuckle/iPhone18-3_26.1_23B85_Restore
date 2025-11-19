@interface DCIP3GreenPrimaryData
@end

@implementation DCIP3GreenPrimaryData

CFDataRef __get_DCIP3GreenPrimaryData_block_invoke()
{
  if (ColorSyncProfileGetDCIP3GreenPrimary_predicate != -1)
  {
    dispatch_once(&ColorSyncProfileGetDCIP3GreenPrimary_predicate, &__block_literal_global_343);
  }

  result = CFDataCreateWithBytesNoCopy(0, &ColorSyncProfileGetDCIP3GreenPrimary_gXYZ, 20, *MEMORY[0x1E695E498]);
  get_DCIP3GreenPrimaryData_data = result;
  return result;
}

@end
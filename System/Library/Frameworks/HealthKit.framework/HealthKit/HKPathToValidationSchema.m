@interface HKPathToValidationSchema
@end

@implementation HKPathToValidationSchema

void ___HKPathToValidationSchema_block_invoke()
{
  v2 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v0 = [v2 pathForResource:@"CDA_SDTC" ofType:@"xsd" inDirectory:@"cda_validation"];
  v1 = _HKPathToValidationSchema__pathToValidationSchema;
  _HKPathToValidationSchema__pathToValidationSchema = v0;
}

@end
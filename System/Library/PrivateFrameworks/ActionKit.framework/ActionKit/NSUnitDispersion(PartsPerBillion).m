@interface NSUnitDispersion(PartsPerBillion)
+ (id)wf_partsPerBillion;
@end

@implementation NSUnitDispersion(PartsPerBillion)

+ (id)wf_partsPerBillion
{
  v0 = [objc_alloc(MEMORY[0x277CCADC0]) initWithCoefficient:0.001];
  v1 = [objc_alloc(MEMORY[0x277CCADC8]) initWithSymbol:@"ppb" converter:v0];

  return v1;
}

@end
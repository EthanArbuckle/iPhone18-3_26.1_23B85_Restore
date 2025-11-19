@interface PBCodable(ADCoreExtensions)
- (id)AD_jsonString;
@end

@implementation PBCodable(ADCoreExtensions)

- (id)AD_jsonString
{
  v1 = [a1 dictionaryRepresentation];
  v2 = [v1 AD_dictionaryForJSON];

  v3 = [v2 AD_jsonStringWithPrettyPrint:1];

  return v3;
}

@end
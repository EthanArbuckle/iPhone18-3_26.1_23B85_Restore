@interface PBCodable(ADCoreExtensions)
- (id)AD_jsonString;
@end

@implementation PBCodable(ADCoreExtensions)

- (id)AD_jsonString
{
  dictionaryRepresentation = [self dictionaryRepresentation];
  aD_dictionaryForJSON = [dictionaryRepresentation AD_dictionaryForJSON];

  v3 = [aD_dictionaryForJSON AD_jsonStringWithPrettyPrint:1];

  return v3;
}

@end
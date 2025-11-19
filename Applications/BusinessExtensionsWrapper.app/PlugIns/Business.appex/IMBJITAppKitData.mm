@interface IMBJITAppKitData
- (NSDictionary)dictionaryValue;
- (void)setDictionaryValue:(id)a3;
@end

@implementation IMBJITAppKitData

- (NSDictionary)dictionaryValue
{
  v2 = *(self + 2);

  v3.super.isa = sub_1000ABFAC().super.isa;

  return v3.super.isa;
}

- (void)setDictionaryValue:(id)a3
{
  v4 = sub_1000ABFBC();
  v5 = *(self + 2);
  *(self + 2) = v4;
}

@end
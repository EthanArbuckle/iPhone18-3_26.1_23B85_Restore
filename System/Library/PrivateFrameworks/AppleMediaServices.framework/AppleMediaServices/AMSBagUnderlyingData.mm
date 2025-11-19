@interface AMSBagUnderlyingData
- (AMSBagUnderlyingData)initWithFileKey:(id)a3 aliasKeys:(id)a4 bagDictionary:(id)a5 expirationDate:(id)a6;
- (NSDate)expirationDate;
- (NSDictionary)bagDictionary;
- (NSSet)aliasKeys;
- (NSString)fileKey;
@end

@implementation AMSBagUnderlyingData

- (NSDictionary)bagDictionary
{
  v2 = BagUnderlyingData.bagDictionary.getter();

  return v2;
}

- (NSDate)expirationDate
{
  v2 = sub_192F95CFC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  BagUnderlyingData.expirationDate.getter(v6);
  v7 = sub_192F95C4C();
  (*(v3 + 8))(v6, v2);

  return v7;
}

- (NSSet)aliasKeys
{
  BagUnderlyingData.aliasKeys.getter();
  v2 = sub_192F96D9C();

  return v2;
}

- (AMSBagUnderlyingData)initWithFileKey:(id)a3 aliasKeys:(id)a4 bagDictionary:(id)a5 expirationDate:(id)a6
{
  v7 = sub_192F95CFC();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_192F967CC();
  v13 = v12;
  v14 = sub_192F96DAC();
  sub_192F95CAC();
  return BagUnderlyingData.init(fileKey:aliasKeys:bagDictionary:expirationDate:)(v11, v13, v14, a5, v10);
}

- (NSString)fileKey
{
  BagUnderlyingData.fileKey.getter();
  v2 = sub_192F9679C();

  return v2;
}

@end
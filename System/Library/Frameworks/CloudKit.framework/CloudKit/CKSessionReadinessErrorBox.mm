@interface CKSessionReadinessErrorBox
- (id)CKXPCSuitableString;
- (id)copyWithZone:(void *)a3;
@end

@implementation CKSessionReadinessErrorBox

- (id)copyWithZone:(void *)a3
{
  v3 = self;
  CKSessionReadinessErrorBox.copy(with:)(v6);

  sub_188400B68(v6, v6[3]);
  v4 = _bridgeAnythingToObjectiveC<A>(_:)();
  sub_1883FE944(v6);
  return v4;
}

- (id)CKXPCSuitableString
{
  v2 = self;
  v3 = CKSessionReadinessErrorBox.CKXPCSuitableString()();

  v4 = MEMORY[0x18CFD5010](v3._countAndFlagsBits, v3._object);

  return v4;
}

@end
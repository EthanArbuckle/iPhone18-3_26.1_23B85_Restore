@interface _SNClassification
- (NSString)identifier;
- (int64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setIdentifier:(id)a3;
@end

@implementation _SNClassification

- (NSString)identifier
{
  _SNClassification.identifier.getter();
  v2 = sub_1C9A92478();

  return v2;
}

- (void)setIdentifier:(id)a3
{
  v4 = sub_1C9A924A8();
  v6 = v5;
  v7 = self;
  _SNClassification.identifier.setter(v4, v6);
}

- (int64_t)hash
{
  v2 = self;
  v3 = _SNClassification.hash.getter();

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  _SNClassification.encode(with:)(v4);
}

@end
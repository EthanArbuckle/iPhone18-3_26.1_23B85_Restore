@interface _SNClassification
- (NSString)identifier;
- (int64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setIdentifier:(id)identifier;
@end

@implementation _SNClassification

- (NSString)identifier
{
  _SNClassification.identifier.getter();
  v2 = sub_1C9A92478();

  return v2;
}

- (void)setIdentifier:(id)identifier
{
  v4 = sub_1C9A924A8();
  v6 = v5;
  selfCopy = self;
  _SNClassification.identifier.setter(v4, v6);
}

- (int64_t)hash
{
  selfCopy = self;
  v3 = _SNClassification.hash.getter();

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  _SNClassification.encode(with:)(coderCopy);
}

@end
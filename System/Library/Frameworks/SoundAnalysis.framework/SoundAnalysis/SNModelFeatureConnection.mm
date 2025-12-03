@interface SNModelFeatureConnection
- (BOOL)isEqual:(id)equal;
- (SNModelFeatureConnection)initWithSourceFeatureName:(id)name destinationFeatureName:(id)featureName;
- (id)copyWithZone:(void *)zone;
- (int64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SNModelFeatureConnection

- (SNModelFeatureConnection)initWithSourceFeatureName:(id)name destinationFeatureName:(id)featureName
{
  v4 = sub_1C9A924A8();
  v6 = v5;
  v7 = sub_1C9A924A8();
  return sub_1C9A3DC18(v4, v6, v7, v8);
}

- (id)copyWithZone:(void *)zone
{
  selfCopy = self;
  sub_1C9A3DCE4(v6);

  sub_1C97A5A8C(v6, v6[3]);
  v4 = sub_1C9A93B08();
  sub_1C97A592C(v6);
  return v4;
}

- (int64_t)hash
{
  selfCopy = self;
  v3 = sub_1C9A3DE1C();

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1C9A93318();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = sub_1C9A3DEB8(v8);

  sub_1C97A59D0(v8);
  return v6 & 1;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_1C9A3E15C();
}

@end
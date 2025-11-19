@interface SNModelFeatureConnection
- (BOOL)isEqual:(id)a3;
- (SNModelFeatureConnection)initWithSourceFeatureName:(id)a3 destinationFeatureName:(id)a4;
- (id)copyWithZone:(void *)a3;
- (int64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SNModelFeatureConnection

- (SNModelFeatureConnection)initWithSourceFeatureName:(id)a3 destinationFeatureName:(id)a4
{
  v4 = sub_1C9A924A8();
  v6 = v5;
  v7 = sub_1C9A924A8();
  return sub_1C9A3DC18(v4, v6, v7, v8);
}

- (id)copyWithZone:(void *)a3
{
  v3 = self;
  sub_1C9A3DCE4(v6);

  sub_1C97A5A8C(v6, v6[3]);
  v4 = sub_1C9A93B08();
  sub_1C97A592C(v6);
  return v4;
}

- (int64_t)hash
{
  v2 = self;
  v3 = sub_1C9A3DE1C();

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_1C9A93318();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = sub_1C9A3DEB8(v8);

  sub_1C97A59D0(v8);
  return v6 & 1;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1C9A3E15C();
}

@end
@interface SNDetectSoundRequest
+ (id)eagerlyAllocateModelsForRequest:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (MLModelConfiguration)modelConfiguration;
- (NSString)description;
- (NSString)soundIdentifier;
- (id)copyWithZone:(void *)a3;
- (int64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setModelConfiguration:(id)a3;
- (void)setSoundIdentifier:(id)a3;
@end

@implementation SNDetectSoundRequest

- (NSString)soundIdentifier
{
  v2 = self;
  v3 = sub_1C97F57F4();

  return v3;
}

- (void)setSoundIdentifier:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1C97F589C(v4);
}

- (MLModelConfiguration)modelConfiguration
{
  v2 = self;
  v3 = sub_1C97F593C();

  return v3;
}

- (void)setModelConfiguration:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1C97F5A04(v4);
}

- (id)copyWithZone:(void *)a3
{
  v3 = self;
  SNDetectSoundRequest.copy(with:)(v6);

  sub_1C97A5A8C(v6, v6[3]);
  v4 = sub_1C9A93B08();
  sub_1C97A592C(v6);
  return v4;
}

- (int64_t)hash
{
  v2 = self;
  v3 = SNDetectSoundRequest.hash.getter();

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

  v6 = SNDetectSoundRequest.isEqual(_:)(v8);

  sub_1C97F9D3C(v8, &unk_1EC3C5E60);
  return v6 & 1;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  SNDetectSoundRequest.encode(with:)(v4);
}

- (NSString)description
{
  v2 = self;
  SNDetectSoundRequest.description.getter();

  v3 = sub_1C9A92478();

  return v3;
}

+ (id)eagerlyAllocateModelsForRequest:(id)a3 error:(id *)a4
{
  v4 = a3;
  sub_1C97F6C7C(v7);

  sub_1C97A5A8C(v7, v7[3]);
  v5 = sub_1C9A93B08();
  sub_1C97A592C(v7);

  return v5;
}

@end
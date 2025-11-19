@interface SNAudioConfiguration
+ (id)shazamAudioConfiguration;
- (BOOL)isEqual:(id)a3;
- (NSString)category;
- (NSString)description;
- (NSString)mode;
- (id)copyWithZone:(void *)a3;
- (int64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setCategory:(id)a3;
- (void)setChannelMap:(id)a3;
- (void)setMode:(id)a3;
@end

@implementation SNAudioConfiguration

- (NSString)category
{
  v2 = self;
  v3 = sub_1C99732D4();

  return v3;
}

- (void)setCategory:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1C997337C(v4);
}

- (NSString)mode
{
  v2 = self;
  v3 = sub_1C997341C();

  return v3;
}

- (void)setMode:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1C99734C4(v4);
}

- (void)setChannelMap:(id)a3
{
  if (a3)
  {
    v4 = sub_1C9A92798();
  }

  else
  {
    v4 = 0;
  }

  v5 = self;
  sub_1C997363C(v4);
}

- (NSString)description
{
  v2 = self;
  SNAudioConfiguration.description.getter();

  v3 = sub_1C9A92478();

  return v3;
}

- (id)copyWithZone:(void *)a3
{
  v3 = self;
  SNAudioConfiguration.copy(with:)(v6);

  sub_1C97A5A8C(v6, v6[3]);
  v4 = sub_1C9A93B08();
  sub_1C97A592C(v6);
  return v4;
}

- (int64_t)hash
{
  v2 = self;
  v3 = SNAudioConfiguration.hash.getter();

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

  v6 = SNAudioConfiguration.isEqual(_:)(v8);

  sub_1C97A59D0(v8);
  return v6 & 1;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  SNAudioConfiguration.encode(with:)(v4);
}

+ (id)shazamAudioConfiguration
{
  swift_getObjCClassMetadata();
  v2 = sub_1C99743EC();

  return v2;
}

@end
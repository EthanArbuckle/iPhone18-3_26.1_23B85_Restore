@interface SNAudioConfiguration
+ (id)shazamAudioConfiguration;
- (BOOL)isEqual:(id)equal;
- (NSString)category;
- (NSString)description;
- (NSString)mode;
- (id)copyWithZone:(void *)zone;
- (int64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setCategory:(id)category;
- (void)setChannelMap:(id)map;
- (void)setMode:(id)mode;
@end

@implementation SNAudioConfiguration

- (NSString)category
{
  selfCopy = self;
  v3 = sub_1C99732D4();

  return v3;
}

- (void)setCategory:(id)category
{
  categoryCopy = category;
  selfCopy = self;
  sub_1C997337C(categoryCopy);
}

- (NSString)mode
{
  selfCopy = self;
  v3 = sub_1C997341C();

  return v3;
}

- (void)setMode:(id)mode
{
  modeCopy = mode;
  selfCopy = self;
  sub_1C99734C4(modeCopy);
}

- (void)setChannelMap:(id)map
{
  if (map)
  {
    v4 = sub_1C9A92798();
  }

  else
  {
    v4 = 0;
  }

  selfCopy = self;
  sub_1C997363C(v4);
}

- (NSString)description
{
  selfCopy = self;
  SNAudioConfiguration.description.getter();

  v3 = sub_1C9A92478();

  return v3;
}

- (id)copyWithZone:(void *)zone
{
  selfCopy = self;
  SNAudioConfiguration.copy(with:)(v6);

  sub_1C97A5A8C(v6, v6[3]);
  v4 = sub_1C9A93B08();
  sub_1C97A592C(v6);
  return v4;
}

- (int64_t)hash
{
  selfCopy = self;
  v3 = SNAudioConfiguration.hash.getter();

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

  v6 = SNAudioConfiguration.isEqual(_:)(v8);

  sub_1C97A59D0(v8);
  return v6 & 1;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  SNAudioConfiguration.encode(with:)(coderCopy);
}

+ (id)shazamAudioConfiguration
{
  swift_getObjCClassMetadata();
  v2 = sub_1C99743EC();

  return v2;
}

@end
@interface SNDetectSoundRequest
+ (id)eagerlyAllocateModelsForRequest:(id)request error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (MLModelConfiguration)modelConfiguration;
- (NSString)description;
- (NSString)soundIdentifier;
- (id)copyWithZone:(void *)zone;
- (int64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setModelConfiguration:(id)configuration;
- (void)setSoundIdentifier:(id)identifier;
@end

@implementation SNDetectSoundRequest

- (NSString)soundIdentifier
{
  selfCopy = self;
  v3 = sub_1C97F57F4();

  return v3;
}

- (void)setSoundIdentifier:(id)identifier
{
  identifierCopy = identifier;
  selfCopy = self;
  sub_1C97F589C(identifierCopy);
}

- (MLModelConfiguration)modelConfiguration
{
  selfCopy = self;
  v3 = sub_1C97F593C();

  return v3;
}

- (void)setModelConfiguration:(id)configuration
{
  configurationCopy = configuration;
  selfCopy = self;
  sub_1C97F5A04(configurationCopy);
}

- (id)copyWithZone:(void *)zone
{
  selfCopy = self;
  SNDetectSoundRequest.copy(with:)(v6);

  sub_1C97A5A8C(v6, v6[3]);
  v4 = sub_1C9A93B08();
  sub_1C97A592C(v6);
  return v4;
}

- (int64_t)hash
{
  selfCopy = self;
  v3 = SNDetectSoundRequest.hash.getter();

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

  v6 = SNDetectSoundRequest.isEqual(_:)(v8);

  sub_1C97F9D3C(v8, &unk_1EC3C5E60);
  return v6 & 1;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  SNDetectSoundRequest.encode(with:)(coderCopy);
}

- (NSString)description
{
  selfCopy = self;
  SNDetectSoundRequest.description.getter();

  v3 = sub_1C9A92478();

  return v3;
}

+ (id)eagerlyAllocateModelsForRequest:(id)request error:(id *)error
{
  requestCopy = request;
  sub_1C97F6C7C(v7);

  sub_1C97A5A8C(v7, v7[3]);
  v5 = sub_1C9A93B08();
  sub_1C97A592C(v7);

  return v5;
}

@end
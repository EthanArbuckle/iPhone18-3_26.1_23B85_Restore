@interface SNLogMelBasedFeatureExtractorConfiguration
- (BOOL)isEqual:(id)equal;
- (int64_t)hash;
@end

@implementation SNLogMelBasedFeatureExtractorConfiguration

- (int64_t)hash
{
  selfCopy = self;
  v3 = sub_1C98570D4();

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

  v6 = sub_1C9857154(v8);

  sub_1C97A59D0(v8);
  return v6;
}

@end
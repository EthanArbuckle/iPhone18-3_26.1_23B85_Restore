@interface SNLogMelBasedFeatureExtractorConfiguration
- (BOOL)isEqual:(id)a3;
- (int64_t)hash;
@end

@implementation SNLogMelBasedFeatureExtractorConfiguration

- (int64_t)hash
{
  v2 = self;
  v3 = sub_1C98570D4();

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

  v6 = sub_1C9857154(v8);

  sub_1C97A59D0(v8);
  return v6;
}

@end
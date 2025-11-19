@interface CRLFeatureFlagGroup
+ (BOOL)isBetterSignoutEnabled;
+ (BOOL)isGenerativePlaygroundEnabled;
- (_TtC8Freeform19CRLFeatureFlagGroup)init;
@end

@implementation CRLFeatureFlagGroup

+ (BOOL)isBetterSignoutEnabled
{
  v6 = &type metadata for CRLAppleAccountUIFeatureFlags;
  v7 = sub_100D34B50();
  v2 = isFeatureEnabled(_:)();
  sub_100005070(v5);
  if (v2)
  {
    v6 = &type metadata for CRLFeatureFlags;
    v7 = sub_100004D60();
    v5[0] = 22;
    v3 = isFeatureEnabled(_:)();
    sub_100005070(v5);
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

+ (BOOL)isGenerativePlaygroundEnabled
{
  v5 = &type metadata for CRLFeatureFlags;
  v6 = sub_100004D60();
  v4[0] = 14;
  v2 = isFeatureEnabled(_:)();
  sub_100005070(v4);
  if (v2)
  {
    return [type metadata accessor for ImagePlaygroundViewController() available];
  }

  else
  {
    return 0;
  }
}

- (_TtC8Freeform19CRLFeatureFlagGroup)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CRLFeatureFlagGroup();
  return [(CRLFeatureFlagGroup *)&v3 init];
}

@end
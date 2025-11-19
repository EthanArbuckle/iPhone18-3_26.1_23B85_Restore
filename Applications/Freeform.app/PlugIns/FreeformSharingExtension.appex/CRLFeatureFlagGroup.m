@interface CRLFeatureFlagGroup
+ (BOOL)isBetterSignoutEnabled;
+ (BOOL)isGenerativePlaygroundEnabled;
- (_TtC24FreeformSharingExtension19CRLFeatureFlagGroup)init;
@end

@implementation CRLFeatureFlagGroup

+ (BOOL)isBetterSignoutEnabled
{
  v6 = &type metadata for CRLAppleAccountUIFeatureFlags;
  v7 = sub_100044288();
  v2 = sub_10007DF54();
  sub_1000211F8(v5);
  if (v2)
  {
    v6 = &type metadata for CRLFeatureFlags;
    v7 = sub_10004418C();
    v5[0] = 22;
    v3 = sub_10007DF54();
    sub_1000211F8(v5);
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
  v6 = sub_10004418C();
  v4[0] = 14;
  v2 = sub_10007DF54();
  sub_1000211F8(v4);
  if (v2)
  {
    return [sub_10007DFC4() available];
  }

  else
  {
    return 0;
  }
}

- (_TtC24FreeformSharingExtension19CRLFeatureFlagGroup)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CRLFeatureFlagGroup();
  return [(CRLFeatureFlagGroup *)&v3 init];
}

@end
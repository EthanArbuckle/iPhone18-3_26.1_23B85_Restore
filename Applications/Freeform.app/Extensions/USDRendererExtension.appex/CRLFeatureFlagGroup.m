@interface CRLFeatureFlagGroup
+ (BOOL)isBetterSignoutEnabled;
+ (BOOL)isGenerativePlaygroundEnabled;
- (_TtC20USDRendererExtension19CRLFeatureFlagGroup)init;
@end

@implementation CRLFeatureFlagGroup

+ (BOOL)isBetterSignoutEnabled
{
  v6 = &type metadata for CRLAppleAccountUIFeatureFlags;
  v7 = sub_10007BBFC();
  v2 = sub_10008A708();
  sub_10002E85C(v5);
  if (v2)
  {
    v6 = &type metadata for CRLFeatureFlags;
    v7 = sub_10007BB00();
    v5[0] = 22;
    v3 = sub_10008A708();
    sub_10002E85C(v5);
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
  v6 = sub_10007BB00();
  v4[0] = 14;
  v2 = sub_10008A708();
  sub_10002E85C(v4);
  if (v2)
  {
    return [sub_10008A778() available];
  }

  else
  {
    return 0;
  }
}

- (_TtC20USDRendererExtension19CRLFeatureFlagGroup)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CRLFeatureFlagGroup();
  return [(CRLFeatureFlagGroup *)&v3 init];
}

@end
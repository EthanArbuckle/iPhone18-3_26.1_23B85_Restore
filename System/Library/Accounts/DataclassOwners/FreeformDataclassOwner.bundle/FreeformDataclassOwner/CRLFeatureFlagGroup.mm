@interface CRLFeatureFlagGroup
+ (BOOL)isBetterSignoutEnabled;
- (_TtC22FreeformDataclassOwner19CRLFeatureFlagGroup)init;
@end

@implementation CRLFeatureFlagGroup

+ (BOOL)isBetterSignoutEnabled
{
  v6 = &type metadata for CRLAppleAccountUIFeatureFlags;
  v7 = lazy protocol witness table accessor for type CRLAppleAccountUIFeatureFlags and conformance CRLAppleAccountUIFeatureFlags();
  v2 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_0(v5);
  if (v2)
  {
    v6 = &type metadata for CRLFeatureFlags;
    v7 = lazy protocol witness table accessor for type CRLFeatureFlags and conformance CRLFeatureFlags();
    LOBYTE(v5[0]) = 22;
    v3 = isFeatureEnabled(_:)();
    __swift_destroy_boxed_opaque_existential_0(v5);
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

- (_TtC22FreeformDataclassOwner19CRLFeatureFlagGroup)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CRLFeatureFlagGroup();
  return [(CRLFeatureFlagGroup *)&v3 init];
}

@end
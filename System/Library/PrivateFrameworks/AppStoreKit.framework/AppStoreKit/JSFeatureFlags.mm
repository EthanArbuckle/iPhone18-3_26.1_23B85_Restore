@interface JSFeatureFlags
- (BOOL)isEnabled:(id)enabled;
- (BOOL)isGSEUIEnabled:(id)enabled;
- (_TtC11AppStoreKit14JSFeatureFlags)init;
@end

@implementation JSFeatureFlags

- (BOOL)isEnabled:(id)enabled
{
  v4 = sub_1E1AF5DFC();
  v6 = v5;
  selfCopy = self;
  LOBYTE(v4) = sub_1E16F95E4(v4, v6);

  return v4 & 1;
}

- (BOOL)isGSEUIEnabled:(id)enabled
{
  sub_1E1AF5DFC();
  selfCopy = self;
  v5 = sub_1E1AF72FC();
  if (v5 == 1)
  {
    v6 = 1;
  }

  else
  {
    if (v5)
    {

      v7 = 0;
      return v7 & 1;
    }

    v6 = 0;
  }

  v10 = &type metadata for Feature.GSEUI;
  v11 = sub_1E16F9590();
  v9[0] = v6;
  v7 = sub_1E1AF056C();
  __swift_destroy_boxed_opaque_existential_1(v9);

  return v7 & 1;
}

- (_TtC11AppStoreKit14JSFeatureFlags)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(JSFeatureFlags *)&v3 init];
}

@end
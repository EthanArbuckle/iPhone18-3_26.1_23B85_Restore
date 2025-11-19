@interface JSFeatureFlags
- (BOOL)isEnabled:(id)a3;
- (BOOL)isGSEUIEnabled:(id)a3;
- (_TtC11AppStoreKit14JSFeatureFlags)init;
@end

@implementation JSFeatureFlags

- (BOOL)isEnabled:(id)a3
{
  v4 = sub_1E1AF5DFC();
  v6 = v5;
  v7 = self;
  LOBYTE(v4) = sub_1E16F95E4(v4, v6);

  return v4 & 1;
}

- (BOOL)isGSEUIEnabled:(id)a3
{
  sub_1E1AF5DFC();
  v4 = self;
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
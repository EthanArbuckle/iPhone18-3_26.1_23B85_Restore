@interface JSAOSFeatureFlags
+ (BOOL)isEnabled:(id)a3 :(id)a4;
- (_TtC5JSApp17JSAOSFeatureFlags)init;
@end

@implementation JSAOSFeatureFlags

+ (BOOL)isEnabled:(id)a3 :(id)a4
{
  v5 = sub_843AC();
  v7 = v6;
  v8 = a4;
  LOBYTE(v5) = sub_58FA4(v5, v7, v8);

  return v5 & 1;
}

- (_TtC5JSApp17JSAOSFeatureFlags)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(JSAOSFeatureFlags *)&v3 init];
}

@end
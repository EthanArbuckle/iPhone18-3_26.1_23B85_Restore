@interface JSClientCapabilities
- (BOOL)isEnabled:(id)enabled;
- (_TtC11AppStoreKit20JSClientCapabilities)init;
@end

@implementation JSClientCapabilities

- (BOOL)isEnabled:(id)enabled
{
  v3 = sub_1E1AF5DFC();
  v5 = v4;
  v6 = sub_1E1497BA0(&unk_1F5C27D18);
  swift_arrayDestroy();
  LOBYTE(v3) = sub_1E14AACA8(v3, v5, v6);

  return v3 & 1;
}

- (_TtC11AppStoreKit20JSClientCapabilities)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(JSClientCapabilities *)&v3 init];
}

@end
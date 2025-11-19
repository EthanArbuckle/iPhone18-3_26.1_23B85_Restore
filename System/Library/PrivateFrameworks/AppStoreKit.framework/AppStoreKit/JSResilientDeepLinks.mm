@interface JSResilientDeepLinks
- (BOOL)hasResilientDeepLinks;
- (BOOL)isResilientDeepLink:(id)a3;
- (_TtC11AppStoreKit20JSResilientDeepLinks)init;
- (void)removeAllDeepLinks;
- (void)removeDeepLink:(id)a3;
@end

@implementation JSResilientDeepLinks

- (BOOL)isResilientDeepLink:(id)a3
{
  v4 = sub_1E1AF5DFC();
  v6 = v5;
  v7 = self;
  LOBYTE(v4) = sub_1E16D3BF4(v4, v6);

  return v4 & 1;
}

- (BOOL)hasResilientDeepLinks
{
  v2 = self;

  v4 = _s11AppStoreKit27ResilientDeepLinkControllerO03hasdE5Links3bagSbAA14ASKBagContractC_tFZ_0(v3);

  return v4 & 1;
}

- (void)removeDeepLink:(id)a3
{
  v3 = sub_1E1AF5DFC();
  sub_1E15AFC28(v3, v4);
}

- (void)removeAllDeepLinks
{
  sub_1E1AF44CC();
  swift_allocObject();
  sub_1E1AF44AC();
  v2[3] = &type metadata for ResilientDeepLinkController.DeepLinkPreferenceKey;
  v2[4] = sub_1E15AFBD4();
  v2[0] = 0xD000000000000014;
  v2[1] = 0x80000001E1B674F0;
  sub_1E1AF448C();

  __swift_destroy_boxed_opaque_existential_1(v2);
  swift_allocObject();
  sub_1E1AF44AC();
  sub_1E1AF449C();
}

- (_TtC11AppStoreKit20JSResilientDeepLinks)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
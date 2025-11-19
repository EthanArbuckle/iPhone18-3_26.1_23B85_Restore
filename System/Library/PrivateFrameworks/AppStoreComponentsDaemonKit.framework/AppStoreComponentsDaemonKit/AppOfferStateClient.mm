@interface AppOfferStateClient
- (_TtC27AppStoreComponentsDaemonKit19AppOfferStateClient)init;
- (void)decorateBuyParamsForOffer:(id)a3 withActivity:(id)a4 withReplyHandler:(id)a5;
- (void)didChangeAppCapabilities:(id)a3;
- (void)performActionOfOffer:(id)a3 withActivity:(id)a4 inContext:(id)a5 withReplyHandler:(id)a6;
- (void)reinstallWatchAppWithID:(id)a3 withReplyHandler:(id)a4;
- (void)reinstallWatchSystemAppWithBundleID:(id)a3 withReplyHandler:(id)a4;
- (void)viewAppForAppDistributionOffer:(id)a3;
@end

@implementation AppOfferStateClient

- (void)didChangeAppCapabilities:(id)a3
{
  v4 = sub_22273707C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22273706C();
  v9 = self;
  sub_222706FDC();

  (*(v5 + 8))(v8, v4);
}

- (void)performActionOfOffer:(id)a3 withActivity:(id)a4 inContext:(id)a5 withReplyHandler:(id)a6
{
  v10 = _Block_copy(a6);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  swift_unknownObjectRetain();
  v12 = a4;
  v13 = a5;
  v14 = self;
  sub_22270B2F4(a3, v12, v13, sub_2227113C4, v11);
  swift_unknownObjectRelease();
}

- (void)reinstallWatchAppWithID:(id)a3 withReplyHandler:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = a3;
  v9 = self;
  sub_22270DEF4(v8, sub_2227113C4, v7);
}

- (void)reinstallWatchSystemAppWithBundleID:(id)a3 withReplyHandler:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = sub_22273919C();
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  v10 = self;
  sub_22270EA14(v6, v8, sub_222710B60, v9);
}

- (void)viewAppForAppDistributionOffer:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_22270F54C(v4);
}

- (void)decorateBuyParamsForOffer:(id)a3 withActivity:(id)a4 withReplyHandler:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = a3;
  v11 = a4;
  v12 = self;
  sub_22270F6E8(v10, v11, sub_222710A68, v9);
}

- (_TtC27AppStoreComponentsDaemonKit19AppOfferStateClient)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
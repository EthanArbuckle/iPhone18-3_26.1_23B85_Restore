@interface AppOfferStateClient
- (_TtC27AppStoreComponentsDaemonKit19AppOfferStateClient)init;
- (void)decorateBuyParamsForOffer:(id)offer withActivity:(id)activity withReplyHandler:(id)handler;
- (void)didChangeAppCapabilities:(id)capabilities;
- (void)performActionOfOffer:(id)offer withActivity:(id)activity inContext:(id)context withReplyHandler:(id)handler;
- (void)reinstallWatchAppWithID:(id)d withReplyHandler:(id)handler;
- (void)reinstallWatchSystemAppWithBundleID:(id)d withReplyHandler:(id)handler;
- (void)viewAppForAppDistributionOffer:(id)offer;
@end

@implementation AppOfferStateClient

- (void)didChangeAppCapabilities:(id)capabilities
{
  v4 = sub_22273707C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22273706C();
  selfCopy = self;
  sub_222706FDC();

  (*(v5 + 8))(v8, v4);
}

- (void)performActionOfOffer:(id)offer withActivity:(id)activity inContext:(id)context withReplyHandler:(id)handler
{
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  swift_unknownObjectRetain();
  activityCopy = activity;
  contextCopy = context;
  selfCopy = self;
  sub_22270B2F4(offer, activityCopy, contextCopy, sub_2227113C4, v11);
  swift_unknownObjectRelease();
}

- (void)reinstallWatchAppWithID:(id)d withReplyHandler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  dCopy = d;
  selfCopy = self;
  sub_22270DEF4(dCopy, sub_2227113C4, v7);
}

- (void)reinstallWatchSystemAppWithBundleID:(id)d withReplyHandler:(id)handler
{
  v5 = _Block_copy(handler);
  v6 = sub_22273919C();
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  selfCopy = self;
  sub_22270EA14(v6, v8, sub_222710B60, v9);
}

- (void)viewAppForAppDistributionOffer:(id)offer
{
  offerCopy = offer;
  selfCopy = self;
  sub_22270F54C(offerCopy);
}

- (void)decorateBuyParamsForOffer:(id)offer withActivity:(id)activity withReplyHandler:(id)handler
{
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  offerCopy = offer;
  activityCopy = activity;
  selfCopy = self;
  sub_22270F6E8(offerCopy, activityCopy, sub_222710A68, v9);
}

- (_TtC27AppStoreComponentsDaemonKit19AppOfferStateClient)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
@interface ServiceBrokerClient
- (_TtC27AppStoreComponentsDaemonKit19ServiceBrokerClient)init;
- (void)getAppOfferStateServiceForDelegate:(id)a3 withReplyHandler:(id)a4;
@end

@implementation ServiceBrokerClient

- (void)getAppOfferStateServiceForDelegate:(id)a3 withReplyHandler:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  swift_unknownObjectRetain();
  v8 = self;
  sub_22272D958(a3, sub_222684E48, v7);
  swift_unknownObjectRelease();
}

- (_TtC27AppStoreComponentsDaemonKit19ServiceBrokerClient)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
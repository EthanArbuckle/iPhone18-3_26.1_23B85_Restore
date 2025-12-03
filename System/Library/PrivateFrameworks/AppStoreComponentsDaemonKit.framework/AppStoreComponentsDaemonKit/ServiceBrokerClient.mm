@interface ServiceBrokerClient
- (_TtC27AppStoreComponentsDaemonKit19ServiceBrokerClient)init;
- (void)getAppOfferStateServiceForDelegate:(id)delegate withReplyHandler:(id)handler;
@end

@implementation ServiceBrokerClient

- (void)getAppOfferStateServiceForDelegate:(id)delegate withReplyHandler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_22272D958(delegate, sub_222684E48, v7);
  swift_unknownObjectRelease();
}

- (_TtC27AppStoreComponentsDaemonKit19ServiceBrokerClient)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
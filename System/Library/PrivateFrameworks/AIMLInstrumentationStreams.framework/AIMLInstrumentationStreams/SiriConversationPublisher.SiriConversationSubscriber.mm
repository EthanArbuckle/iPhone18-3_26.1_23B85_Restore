@interface SiriConversationPublisher.SiriConversationSubscriber
- (_TtCC26AIMLInstrumentationStreams25SiriConversationPublisher26SiriConversationSubscriber)init;
- (int64_t)receiveInput:(id)a3;
- (void)cancel;
- (void)receiveCompletion:(id)a3;
@end

@implementation SiriConversationPublisher.SiriConversationSubscriber

- (int64_t)receiveInput:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_23C871BA4();
  swift_unknownObjectRelease();
  sub_23C588DC0(v9, v8);
  type metadata accessor for SiriTurn();
  if (swift_dynamicCast())
  {
    sub_23C634718(v7);
    sub_23C633E80();
    v5 = BPSDemandMax();

    v4 = v7;
  }

  else
  {
    v5 = BPSDemandMax();
  }

  __swift_destroy_boxed_opaque_existential_0(v9);
  return v5;
}

- (void)receiveCompletion:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_23C633450(v4);
}

- (void)cancel
{
  v2 = self;
  sub_23C6336CC();
}

- (_TtCC26AIMLInstrumentationStreams25SiriConversationPublisher26SiriConversationSubscriber)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
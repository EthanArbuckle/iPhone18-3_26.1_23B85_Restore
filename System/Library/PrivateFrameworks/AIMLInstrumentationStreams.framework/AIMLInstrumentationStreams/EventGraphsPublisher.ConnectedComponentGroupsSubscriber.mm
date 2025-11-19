@interface EventGraphsPublisher.ConnectedComponentGroupsSubscriber
- (_TtCC26AIMLInstrumentationStreams20EventGraphsPublisher34ConnectedComponentGroupsSubscriber)init;
- (int64_t)receiveInput:(id)a3;
- (void)cancel;
- (void)receiveCompletion:(id)a3;
@end

@implementation EventGraphsPublisher.ConnectedComponentGroupsSubscriber

- (int64_t)receiveInput:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_23C871BA4();
  swift_unknownObjectRelease();
  v5 = sub_23C606780(v7);

  __swift_destroy_boxed_opaque_existential_0(v7);
  return v5;
}

- (void)receiveCompletion:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_23C606954(v4);
}

- (void)cancel
{
  v2 = self;
  sub_23C606BE8();
}

- (_TtCC26AIMLInstrumentationStreams20EventGraphsPublisher34ConnectedComponentGroupsSubscriber)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
@interface BiomeEventGraphsPublisher.SessionIDSubscriber
- (_TtCC26AIMLInstrumentationStreams25BiomeEventGraphsPublisher19SessionIDSubscriber)init;
- (int64_t)receiveInput:(id)input;
- (void)cancel;
- (void)receiveCompletion:(id)completion;
@end

@implementation BiomeEventGraphsPublisher.SessionIDSubscriber

- (int64_t)receiveInput:(id)input
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_23C871BA4();
  swift_unknownObjectRelease();
  sub_23C588DC0(v9, v8);
  type metadata accessor for AnteroEvent();
  if (swift_dynamicCast())
  {
    sub_23C5A584C(v7);
    sub_23C5A53C0();
    v5 = BPSDemandMax();

    selfCopy = v7;
  }

  else
  {
    v5 = BPSDemandMax();
  }

  __swift_destroy_boxed_opaque_existential_0(v9);
  return v5;
}

- (void)receiveCompletion:(id)completion
{
  completionCopy = completion;
  selfCopy = self;
  sub_23C5A4EFC(completionCopy);
}

- (void)cancel
{
  selfCopy = self;
  sub_23C5A5174();
}

- (_TtCC26AIMLInstrumentationStreams25BiomeEventGraphsPublisher19SessionIDSubscriber)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
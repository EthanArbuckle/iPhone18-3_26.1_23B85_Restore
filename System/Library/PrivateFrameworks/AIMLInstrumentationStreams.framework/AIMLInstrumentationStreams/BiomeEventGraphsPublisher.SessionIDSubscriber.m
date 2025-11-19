@interface BiomeEventGraphsPublisher.SessionIDSubscriber
- (_TtCC26AIMLInstrumentationStreams25BiomeEventGraphsPublisher19SessionIDSubscriber)init;
- (int64_t)receiveInput:(id)a3;
- (void)cancel;
- (void)receiveCompletion:(id)a3;
@end

@implementation BiomeEventGraphsPublisher.SessionIDSubscriber

- (int64_t)receiveInput:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_23C871BA4();
  swift_unknownObjectRelease();
  sub_23C588DC0(v9, v8);
  type metadata accessor for AnteroEvent();
  if (swift_dynamicCast())
  {
    sub_23C5A584C(v7);
    sub_23C5A53C0();
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
  sub_23C5A4EFC(v4);
}

- (void)cancel
{
  v2 = self;
  sub_23C5A5174();
}

- (_TtCC26AIMLInstrumentationStreams25BiomeEventGraphsPublisher19SessionIDSubscriber)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
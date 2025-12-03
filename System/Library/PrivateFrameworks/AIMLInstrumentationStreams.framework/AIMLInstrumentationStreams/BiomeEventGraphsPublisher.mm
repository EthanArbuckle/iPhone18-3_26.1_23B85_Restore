@interface BiomeEventGraphsPublisher
- (NSArray)bookmarkableUpstreams;
- (_TtC26AIMLInstrumentationStreams25BiomeEventGraphsPublisher)init;
- (void)subscribe:(id)subscribe;
@end

@implementation BiomeEventGraphsPublisher

- (void)subscribe:(id)subscribe
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_23C5A4C10();
  swift_unknownObjectRelease();
}

- (NSArray)bookmarkableUpstreams
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC26AIMLInstrumentationStreams25BiomeEventGraphsPublisher_mergedStream);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB4F0, &qword_23C874E40);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_23C874E20;
  *(v3 + 32) = v2;
  v4 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9DF0, &qword_23C87BE00);
  v5 = sub_23C871894();

  return v5;
}

- (_TtC26AIMLInstrumentationStreams25BiomeEventGraphsPublisher)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
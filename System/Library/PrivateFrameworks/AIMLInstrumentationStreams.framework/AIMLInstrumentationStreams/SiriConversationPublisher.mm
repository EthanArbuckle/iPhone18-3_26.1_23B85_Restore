@interface SiriConversationPublisher
+ (id)publisherWithPublisher:(id)a3 upstreams:(id)a4 bookmarkState:(id)a5;
- (NSArray)bookmarkableUpstreams;
- (_TtC26AIMLInstrumentationStreams25SiriConversationPublisher)init;
- (void)subscribe:(id)a3;
@end

@implementation SiriConversationPublisher

- (void)subscribe:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_23C632EF8();
  swift_unknownObjectRelease();
}

- (NSArray)bookmarkableUpstreams
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC26AIMLInstrumentationStreams25SiriConversationPublisher_upstream);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB4F0, &qword_23C874E40);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_23C874E20;
  *(v3 + 32) = v2;
  v4 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9DF0, &qword_23C87BE00);
  v5 = sub_23C871894();

  return v5;
}

+ (id)publisherWithPublisher:(id)a3 upstreams:(id)a4 bookmarkState:(id)a5
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9DF0, &qword_23C87BE00);
  v6 = sub_23C8718A4();
  v7 = a3;
  swift_unknownObjectRetain();
  v8 = sub_23C64B80C(v6);

  swift_unknownObjectRelease();

  return v8;
}

- (_TtC26AIMLInstrumentationStreams25SiriConversationPublisher)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
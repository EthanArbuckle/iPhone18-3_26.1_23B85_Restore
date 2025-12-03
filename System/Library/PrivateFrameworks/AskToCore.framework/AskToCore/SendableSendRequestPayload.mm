@interface SendableSendRequestPayload
- (_TtC9AskToCore26SendableSendRequestPayload)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SendableSendRequestPayload

- (_TtC9AskToCore26SendableSendRequestPayload)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)encodeWithCoder:(id)coder
{
  v5 = *(&self->super.isa + OBJC_IVAR____TtC9AskToCore26SendableSendRequestPayload_data);
  v6 = *&self->data[OBJC_IVAR____TtC9AskToCore26SendableSendRequestPayload_data];
  v11 = v5;
  objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525DD0, &qword_2410E2A48));
  coderCopy = coder;
  selfCopy = self;
  sub_241086284(v5, v6);
  v9 = sub_2410DEF60();
  v10 = sub_2410DF0A0();
  [coderCopy encodeObject:v9 forKey:{v10, v11, v6}];
}

@end
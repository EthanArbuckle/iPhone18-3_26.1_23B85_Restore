@interface SendRequestPayload
- (_TtC9AskToCore18SendRequestPayload)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SendRequestPayload

- (_TtC9AskToCore18SendRequestPayload)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)encodeWithCoder:(id)coder
{
  v5 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525DC8, &qword_2410E2A40));
  selfCopy = self;
  coderCopy = coder;
  v8 = sub_2410DEF60();
  v9 = sub_2410DF0A0();
  [coderCopy encodeObject:v8 forKey:v9];
}

@end
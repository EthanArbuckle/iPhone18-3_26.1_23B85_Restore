@interface SendRequestPayload
- (_TtC9AskToCore18SendRequestPayload)init;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SendRequestPayload

- (_TtC9AskToCore18SendRequestPayload)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525DC8, &qword_2410E2A40));
  v6 = self;
  v7 = a3;
  v8 = sub_2410DEF60();
  v9 = sub_2410DF0A0();
  [v7 encodeObject:v8 forKey:v9];
}

@end
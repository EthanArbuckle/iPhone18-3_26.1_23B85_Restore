@interface SendableMessageComposeRequest
- (_TtC9AskToCore29SendableMessageComposeRequest)init;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SendableMessageComposeRequest

- (_TtC9AskToCore29SendableMessageComposeRequest)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = *(&self->super.isa + OBJC_IVAR____TtC9AskToCore29SendableMessageComposeRequest_data);
  v6 = *&self->data[OBJC_IVAR____TtC9AskToCore29SendableMessageComposeRequest_data];
  v11 = v5;
  objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525DD0, &qword_2410E2A48));
  v7 = a3;
  v8 = self;
  sub_241086284(v5, v6);
  v9 = sub_2410DEF60();
  v10 = sub_2410DF0A0();
  [v7 encodeObject:v9 forKey:{v10, v11, v6}];
}

@end
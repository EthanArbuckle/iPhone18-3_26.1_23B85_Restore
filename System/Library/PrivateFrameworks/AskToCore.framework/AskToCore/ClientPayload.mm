@interface ClientPayload
- (BOOL)isEqual:(id)a3;
- (_TtC9AskToCore13ClientPayload)init;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ClientPayload

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_2410DF4E0();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = ClientPayload.isEqual(_:)(v8);

  sub_241087824(v8);
  return v6 & 1;
}

- (_TtC9AskToCore13ClientPayload)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E5266A8, &qword_2410E5878));
  v6 = self;
  v7 = a3;
  v8 = sub_2410DEF60();
  v9 = sub_2410DF0A0();
  [v7 encodeObject:v8 forKey:v9];
}

@end
@interface ClientPayload
- (BOOL)isEqual:(id)equal;
- (_TtC9AskToCore13ClientPayload)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ClientPayload

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_2410DF4E0();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
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

- (void)encodeWithCoder:(id)coder
{
  v5 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E5266A8, &qword_2410E5878));
  selfCopy = self;
  coderCopy = coder;
  v8 = sub_2410DEF60();
  v9 = sub_2410DF0A0();
  [coderCopy encodeObject:v8 forKey:v9];
}

@end
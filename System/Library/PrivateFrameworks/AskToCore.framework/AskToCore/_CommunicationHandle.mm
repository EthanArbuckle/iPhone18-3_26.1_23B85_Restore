@interface _CommunicationHandle
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (_TtC9AskToCore20_CommunicationHandle)init;
- (id)copyWithZone:(void *)zone;
- (int64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _CommunicationHandle

- (NSString)description
{
  v2 = (self + OBJC_IVAR____TtC9AskToCore20_CommunicationHandle_value);
  swift_beginAccess();
  v4 = *v2;
  v3 = v2[1];

  v5 = sub_2410DF0A0();

  return v5;
}

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

  v6 = _CommunicationHandle.isEqual(_:)(v8);

  sub_241086184(v8, &unk_27E525CA0, "P?");
  return v6;
}

- (int64_t)hash
{
  sub_2410DFA00();
  v3 = (self + OBJC_IVAR____TtC9AskToCore20_CommunicationHandle_value);
  swift_beginAccess();
  v5 = *v3;
  v4 = v3[1];
  selfCopy = self;

  sub_2410DF150();

  v7 = OBJC_IVAR____TtC9AskToCore20_CommunicationHandle_kind;
  swift_beginAccess();
  MEMORY[0x245CD9E40](*(&selfCopy->super.isa + v7));
  v8 = sub_2410DF9E0();

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  _CommunicationHandle.encode(with:)(coderCopy);
}

- (id)copyWithZone:(void *)zone
{
  ObjectType = swift_getObjectType();
  v5 = objc_allocWithZone(ObjectType);
  v6 = (self + OBJC_IVAR____TtC9AskToCore20_CommunicationHandle_value);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  v9 = &v5[OBJC_IVAR____TtC9AskToCore20_CommunicationHandle_value];
  *v9 = v7;
  v9[1] = v8;
  v10 = OBJC_IVAR____TtC9AskToCore20_CommunicationHandle_kind;
  swift_beginAccess();
  v5[OBJC_IVAR____TtC9AskToCore20_CommunicationHandle_kind] = *(&self->super.isa + v10);
  v14.receiver = v5;
  v14.super_class = ObjectType;

  v11 = [(_CommunicationHandle *)&v14 init];
  v15 = v11;
  v12 = sub_2410DF8C0();

  return v12;
}

- (_TtC9AskToCore20_CommunicationHandle)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
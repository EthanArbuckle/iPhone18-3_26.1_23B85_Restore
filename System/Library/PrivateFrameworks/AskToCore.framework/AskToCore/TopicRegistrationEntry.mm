@interface TopicRegistrationEntry
- (_TtC9AskToCore22TopicRegistrationEntry)init;
- (id)copyWithZone:(void *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TopicRegistrationEntry

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  TopicRegistrationEntry.encode(with:)(v4);
}

- (id)copyWithZone:(void *)a3
{
  ObjectType = swift_getObjectType();
  v5 = objc_allocWithZone(ObjectType);
  v6 = *(&self->super.isa + OBJC_IVAR____TtC9AskToCore22TopicRegistrationEntry_topic);
  *&v5[OBJC_IVAR____TtC9AskToCore22TopicRegistrationEntry_topic] = v6;
  v7 = OBJC_IVAR____TtC9AskToCore22TopicRegistrationEntry_responseListenerID;
  v8 = sub_2410DEF00();
  (*(*(v8 - 8) + 16))(&v5[v7], self + v7, v8);
  v13.receiver = v5;
  v13.super_class = ObjectType;
  v9 = v6;
  v10 = [(TopicRegistrationEntry *)&v13 init];
  v14 = v10;
  v11 = sub_2410DF8C0();

  return v11;
}

- (_TtC9AskToCore22TopicRegistrationEntry)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
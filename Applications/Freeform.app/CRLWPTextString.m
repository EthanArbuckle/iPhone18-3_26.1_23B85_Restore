@interface CRLWPTextString
- (NSString)debugDescription;
- (NSString)plainString;
- (_TtC8Freeform15CRLWPTextString)init;
- (_TtC8Freeform15CRLWPTextString)initWithAttributedString:(id)a3;
- (_TtC8Freeform15CRLWPTextString)initWithString:(id)a3;
@end

@implementation CRLWPTextString

- (_TtC8Freeform15CRLWPTextString)initWithString:(id)a3
{
  ObjectType = swift_getObjectType();
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = self + OBJC_IVAR____TtC8Freeform15CRLWPTextString_text;
  *v6 = v5;
  *(v6 + 1) = v7;
  v6[16] = 0;
  v9.receiver = self;
  v9.super_class = ObjectType;
  return [(CRLWPTextString *)&v9 init];
}

- (_TtC8Freeform15CRLWPTextString)initWithAttributedString:(id)a3
{
  ObjectType = swift_getObjectType();
  v6 = self + OBJC_IVAR____TtC8Freeform15CRLWPTextString_text;
  *v6 = a3;
  *(v6 + 1) = 0;
  v6[16] = 1;
  v9.receiver = self;
  v9.super_class = ObjectType;
  v7 = a3;
  return [(CRLWPTextString *)&v9 init];
}

- (NSString)plainString
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC8Freeform15CRLWPTextString_text);
  v2 = *&self->text[OBJC_IVAR____TtC8Freeform15CRLWPTextString_text];
  if (self->text[OBJC_IVAR____TtC8Freeform15CRLWPTextString_text + 8])
  {
    sub_1008ACCB4(*(&self->super.isa + OBJC_IVAR____TtC8Freeform15CRLWPTextString_text), v2, 1);
    v5 = self;
    v6 = [v3 string];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1007EF850(v3, v2, 1);
  }

  else
  {
    sub_1008ACCB4(*(&self->super.isa + OBJC_IVAR____TtC8Freeform15CRLWPTextString_text), v2, 0);
  }

  v7 = String._bridgeToObjectiveC()();

  return v7;
}

- (NSString)debugDescription
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC8Freeform15CRLWPTextString_text);
  v3 = *&self->text[OBJC_IVAR____TtC8Freeform15CRLWPTextString_text];
  v4 = self->text[OBJC_IVAR____TtC8Freeform15CRLWPTextString_text + 8];
  v5 = self;
  if (v4)
  {
    sub_1008ACCB4(v2, v3, 1);
    v6 = [v2 debugDescription];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1007EF850(v2, v3, 1);
  }

  else
  {
    sub_1008ACCB4(v2, v3, 0);
    String.debugDescription.getter();

    sub_1007EF850(v2, v3, 0);
  }

  v7 = String._bridgeToObjectiveC()();

  return v7;
}

- (_TtC8Freeform15CRLWPTextString)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
@interface CRLTextPosition
- (BOOL)isEqual:(id)a3;
- (_TtC8Freeform15CRLTextPosition)init;
- (id)clampedTo:(id)a3;
- (id)init:(int64_t)a3 caretAffinity:(unint64_t)a4;
- (id)offset:(int64_t)a3 in:(id)a4;
- (int64_t)compare:(id)a3;
@end

@implementation CRLTextPosition

- (id)init:(int64_t)a3 caretAffinity:(unint64_t)a4
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.isa + OBJC_IVAR____TtC8Freeform15CRLTextPosition_insertionEdge) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC8Freeform15CRLTextPosition_location) = a3;
  *(&self->super.super.isa + OBJC_IVAR____TtC8Freeform15CRLTextPosition_caretAffinity) = a4;
  v9.receiver = self;
  v9.super_class = ObjectType;
  return [(CRLTextPosition *)&v9 init];
}

- (id)offset:(int64_t)a3 in:(id)a4
{
  v6 = a4;
  v7 = self;
  v8 = sub_100B7FBAC(a3, v6);

  return v8;
}

- (id)clampedTo:(id)a3
{
  ObjectType = swift_getObjectType();
  v6 = a3;
  v7 = self;
  v8 = [v6 range];
  v10 = v8;
  v11 = *(&v7->super.super.isa + OBJC_IVAR____TtC8Freeform15CRLTextPosition_location);
  if (v11 >= v8)
  {
    v12 = sub_100B80808(v8, v9);
    if (v12 >= v11)
    {
      v10 = v11;
    }

    else
    {
      v10 = v12;
    }
  }

  v13 = [objc_allocWithZone(ObjectType) init:v10 caretAffinity:0];

  return v13;
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = sub_100B802EC(v8);

  sub_1005E09AC(v8);
  return v6 & 1;
}

- (_TtC8Freeform15CRLTextPosition)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (int64_t)compare:(id)a3
{
  swift_getObjectType();

  return sub_100B807A4(a3, self);
}

@end
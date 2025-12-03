@interface CRLTextPosition
- (BOOL)isEqual:(id)equal;
- (_TtC8Freeform15CRLTextPosition)init;
- (id)clampedTo:(id)to;
- (id)init:(int64_t)init caretAffinity:(unint64_t)affinity;
- (id)offset:(int64_t)offset in:(id)in;
- (int64_t)compare:(id)compare;
@end

@implementation CRLTextPosition

- (id)init:(int64_t)init caretAffinity:(unint64_t)affinity
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.isa + OBJC_IVAR____TtC8Freeform15CRLTextPosition_insertionEdge) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC8Freeform15CRLTextPosition_location) = init;
  *(&self->super.super.isa + OBJC_IVAR____TtC8Freeform15CRLTextPosition_caretAffinity) = affinity;
  v9.receiver = self;
  v9.super_class = ObjectType;
  return [(CRLTextPosition *)&v9 init];
}

- (id)offset:(int64_t)offset in:(id)in
{
  inCopy = in;
  selfCopy = self;
  v8 = sub_100B7FBAC(offset, inCopy);

  return v8;
}

- (id)clampedTo:(id)to
{
  ObjectType = swift_getObjectType();
  toCopy = to;
  selfCopy = self;
  range = [toCopy range];
  v10 = range;
  v11 = *(&selfCopy->super.super.isa + OBJC_IVAR____TtC8Freeform15CRLTextPosition_location);
  if (v11 >= range)
  {
    v12 = sub_100B80808(range, v9);
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

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
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

- (int64_t)compare:(id)compare
{
  swift_getObjectType();

  return sub_100B807A4(compare, self);
}

@end
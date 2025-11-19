@interface CRLTextRange
+ (_TtC8Freeform12CRLTextRange)textRangeWith:(_NSRange)a3;
+ (id)textRangeForStartOf:(id)a3;
- (BOOL)containsPosition:(id)a3;
- (BOOL)containsTextRange:(id)a3;
- (BOOL)isAtParagraphBoundaryIn:(id)a3;
- (BOOL)isEmpty;
- (_NSRange)nsRange;
- (_TtC8Freeform12CRLTextRange)init;
- (_TtC8Freeform15CRLTextPosition)end;
- (_TtC8Freeform15CRLTextPosition)start;
- (id)makeInsertionPoint;
- (id)makeTrailingInsertionPoint;
- (id)textRangeByExpandingTo:(id)a3;
- (id)textRangeByMovingLocationBy:(int64_t)a3;
- (int64_t)length;
@end

@implementation CRLTextRange

- (id)makeInsertionPoint
{
  v1 = a1;
  v2 = sub_10078D7D8();

  return v2;
}

- (_NSRange)nsRange
{
  v2 = self;
  v3 = [(CRLTextRange *)v2 start];
  v4 = *(&v3->super.super.isa + OBJC_IVAR____TtC8Freeform15CRLTextPosition_location);

  if (v4 == NSNotFound.getter())
  {
    v5 = 0x7FFFFFFFFFFFFFFFLL;
    v6 = 0;
  }

  else
  {
    v5 = *(&v2->super.super.isa + OBJC_IVAR____TtC8Freeform12CRLTextRange_range);
    v7 = *&v2->range[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];

    v10 = __OFSUB__(v7, v5);
    v6 = v7 - v5;
    if (v10)
    {
      __break(1u);
      goto LABEL_6;
    }
  }

  v8 = v5;
  v9 = v6;
LABEL_6:
  result.length = v9;
  result.location = v8;
  return result;
}

- (BOOL)isEmpty
{
  v3 = *(&self->super.super.isa + OBJC_IVAR____TtC8Freeform12CRLTextRange_range);
  v2 = *&self->range[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
  if (__OFSUB__(v2, v3))
  {
    __break(1u);
  }

  else
  {
    LOBYTE(self) = v2 == v3;
  }

  return self;
}

- (_TtC8Freeform15CRLTextPosition)start
{
  v2 = *(&self->super.super.isa + OBJC_IVAR____TtC8Freeform12CRLTextRange_range);
  v3 = *(&self->super.super.isa + OBJC_IVAR____TtC8Freeform12CRLTextRange_caretAffinity);
  v4 = type metadata accessor for CRLTextPosition();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtC8Freeform15CRLTextPosition_insertionEdge] = 0;
  *&v5[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location] = v2;
  *&v5[OBJC_IVAR____TtC8Freeform15CRLTextPosition_caretAffinity] = v3;
  v8.receiver = v5;
  v8.super_class = v4;
  v6 = [(CRLTextRange *)&v8 init];

  return v6;
}

- (_TtC8Freeform15CRLTextPosition)end
{
  v2 = self;
  v3 = sub_10078CC4C();

  return v3;
}

- (int64_t)length
{
  v2 = self;
  v3 = [(CRLTextRange *)v2 start];
  v4 = *(&v3->super.super.isa + OBJC_IVAR____TtC8Freeform15CRLTextPosition_location);

  if (v4 == NSNotFound.getter())
  {
    v5 = 0;

    return v5;
  }

  v6 = *(&v2->super.super.isa + OBJC_IVAR____TtC8Freeform12CRLTextRange_range);
  v7 = *&v2->range[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];

  v9 = __OFSUB__(v7, v6);
  v5 = v7 - v6;
  if (!v9)
  {
    return v5;
  }

  __break(1u);
  return result;
}

+ (_TtC8Freeform12CRLTextRange)textRangeWith:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v5 = objc_allocWithZone(type metadata accessor for CRLTextRange());
  v6 = sub_10078CDF0(location, length);

  return v6;
}

+ (id)textRangeForStartOf:(id)a3
{
  v3 = sub_10078EA84();

  return v3;
}

- (BOOL)isAtParagraphBoundaryIn:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = sub_10078D054(v4);

  return self & 1;
}

- (id)textRangeByExpandingTo:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_10078D6DC(v4);

  return v6;
}

- (id)makeTrailingInsertionPoint
{
  v2 = self;
  v3 = sub_10078D8B8();

  return v3;
}

- (id)textRangeByMovingLocationBy:(int64_t)a3
{
  v4 = self;
  v5 = sub_10078D9DC(a3);

  return v5;
}

- (BOOL)containsTextRange:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = sub_10078DD28(v4);

  return self & 1;
}

- (BOOL)containsPosition:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = sub_10078DE78(v4);

  return self & 1;
}

- (_TtC8Freeform12CRLTextRange)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
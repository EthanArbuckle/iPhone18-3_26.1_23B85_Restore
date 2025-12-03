@interface CRLWPTextSelectionManager_i
- (BOOL)isSelectingCaret:(CGPoint)caret;
- (CGRect)caretRectFor:(id)for;
- (CGRect)firstRectFor:(id)for;
- (id)characterRangeByExtending:(id)extending in:(int64_t)in;
- (id)closestPositionTo:(CGPoint)to;
- (id)positionFrom:(id)from in:(int64_t)in offset:(int64_t)offset;
- (id)positionWithin:(id)within farthestIn:(int64_t)in;
- (id)selectionRectsFor:(id)for;
- (void)endLoupeSession;
- (void)updateSelectionViews;
@end

@implementation CRLWPTextSelectionManager_i

- (CGRect)firstRectFor:(id)for
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = qword_1019F1570;
    forCopy = for;
    selfCopy = self;
    if (v7 != -1)
    {
      swift_once();
    }

    v26[3] = type metadata accessor for CRLTextRange();
    v26[0] = forCopy;
    v10 = forCopy;
    sub_1007553C8(selfCopy, v10, &v23);
    sub_100005070(v26);
    [v6 convertUnscaledToBoundsRect:{v23.x, v23.y, v24, v25}];
    x = v11;
    y = v13;
    width = v15;
    height = v17;
  }

  else
  {
    x = CGRectInfinite.origin.x;
    y = CGRectInfinite.origin.y;
    width = CGRectInfinite.size.width;
    height = CGRectInfinite.size.height;
  }

  v19 = x;
  v20 = y;
  v21 = width;
  v22 = height;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (id)positionFrom:(id)from in:(int64_t)in offset:(int64_t)offset
{
  fromCopy = from;
  selfCopy = self;
  v10 = sub_10112A3CC(fromCopy, in, offset);

  return v10;
}

- (id)selectionRectsFor:(id)for
{
  forCopy = for;
  selfCopy = self;
  sub_10112A654(forCopy);

  sub_100C69B0C();
  v6.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v6.super.isa;
}

- (CGRect)caretRectFor:(id)for
{
  v4 = qword_1019F1570;
  forCopy = for;
  selfCopy = self;
  if (v4 != -1)
  {
    swift_once();
  }

  v17[3] = type metadata accessor for CRLTextPosition();
  v17[0] = forCopy;
  v7 = forCopy;
  sub_10112AC24(selfCopy, v7, v16);
  sub_100005070(v17);
  v8 = v16[0];
  v9 = v16[1];
  v10 = v16[2];
  v11 = v16[3];

  v12 = v8;
  v13 = v9;
  v14 = v10;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (id)closestPositionTo:(CGPoint)to
{
  y = to.y;
  x = to.x;
  v5 = qword_1019F1570;
  selfCopy = self;
  if (v5 != -1)
  {
    swift_once();
  }

  sub_10112AE2C(selfCopy, &v9, x, y);

  v7 = v9;

  return v7;
}

- (id)positionWithin:(id)within farthestIn:(int64_t)in
{
  withinCopy = within;
  selfCopy = self;
  v8 = sub_10112A2B4(withinCopy, in);

  return v8;
}

- (id)characterRangeByExtending:(id)extending in:(int64_t)in
{
  extendingCopy = extending;
  selfCopy = self;
  v8 = sub_10112A2CC(extendingCopy, in);

  return v8;
}

- (BOOL)isSelectingCaret:(CGPoint)caret
{
  y = caret.y;
  x = caret.x;
  selfCopy = self;
  v6 = sub_10112B0F8(x, y);

  return v6 & 1;
}

- (void)updateSelectionViews
{
  v2 = *(&self->super.super.isa + OBJC_IVAR____TtC8Freeform25CRLWPTextSelectionManager_selectionViewController);
  if (v2)
  {
    v3 = *((swift_isaMask & *v2) + 0x190);
    selfCopy = self;
    v4 = v2;
    v3();
  }
}

- (void)endLoupeSession
{
  v2 = qword_1019F1570;
  selfCopy = self;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = OBJC_IVAR____TtC8Freeform27CRLWPTextSelectionManager_i_loupeSession;
  [*(&selfCopy->super.super.isa + OBJC_IVAR____TtC8Freeform27CRLWPTextSelectionManager_i_loupeSession) invalidate];
  v5 = *(&selfCopy->super.super.isa + v4);
  *(&selfCopy->super.super.isa + v4) = 0;
}

@end
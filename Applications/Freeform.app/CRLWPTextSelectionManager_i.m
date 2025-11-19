@interface CRLWPTextSelectionManager_i
- (BOOL)isSelectingCaret:(CGPoint)a3;
- (CGRect)caretRectFor:(id)a3;
- (CGRect)firstRectFor:(id)a3;
- (id)characterRangeByExtending:(id)a3 in:(int64_t)a4;
- (id)closestPositionTo:(CGPoint)a3;
- (id)positionFrom:(id)a3 in:(int64_t)a4 offset:(int64_t)a5;
- (id)positionWithin:(id)a3 farthestIn:(int64_t)a4;
- (id)selectionRectsFor:(id)a3;
- (void)endLoupeSession;
- (void)updateSelectionViews;
@end

@implementation CRLWPTextSelectionManager_i

- (CGRect)firstRectFor:(id)a3
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = qword_1019F1570;
    v8 = a3;
    v9 = self;
    if (v7 != -1)
    {
      swift_once();
    }

    v26[3] = type metadata accessor for CRLTextRange();
    v26[0] = v8;
    v10 = v8;
    sub_1007553C8(v9, v10, &v23);
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

- (id)positionFrom:(id)a3 in:(int64_t)a4 offset:(int64_t)a5
{
  v8 = a3;
  v9 = self;
  v10 = sub_10112A3CC(v8, a4, a5);

  return v10;
}

- (id)selectionRectsFor:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10112A654(v4);

  sub_100C69B0C();
  v6.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v6.super.isa;
}

- (CGRect)caretRectFor:(id)a3
{
  v4 = qword_1019F1570;
  v5 = a3;
  v6 = self;
  if (v4 != -1)
  {
    swift_once();
  }

  v17[3] = type metadata accessor for CRLTextPosition();
  v17[0] = v5;
  v7 = v5;
  sub_10112AC24(v6, v7, v16);
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

- (id)closestPositionTo:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = qword_1019F1570;
  v6 = self;
  if (v5 != -1)
  {
    swift_once();
  }

  sub_10112AE2C(v6, &v9, x, y);

  v7 = v9;

  return v7;
}

- (id)positionWithin:(id)a3 farthestIn:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  v8 = sub_10112A2B4(v6, a4);

  return v8;
}

- (id)characterRangeByExtending:(id)a3 in:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  v8 = sub_10112A2CC(v6, a4);

  return v8;
}

- (BOOL)isSelectingCaret:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = self;
  v6 = sub_10112B0F8(x, y);

  return v6 & 1;
}

- (void)updateSelectionViews
{
  v2 = *(&self->super.super.isa + OBJC_IVAR____TtC8Freeform25CRLWPTextSelectionManager_selectionViewController);
  if (v2)
  {
    v3 = *((swift_isaMask & *v2) + 0x190);
    v5 = self;
    v4 = v2;
    v3();
  }
}

- (void)endLoupeSession
{
  v2 = qword_1019F1570;
  v3 = self;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = OBJC_IVAR____TtC8Freeform27CRLWPTextSelectionManager_i_loupeSession;
  [*(&v3->super.super.isa + OBJC_IVAR____TtC8Freeform27CRLWPTextSelectionManager_i_loupeSession) invalidate];
  v5 = *(&v3->super.super.isa + v4);
  *(&v3->super.super.isa + v4) = 0;
}

@end
@interface CRLWPTextSelectionManager
- (BOOL)isSelectingCaret:(CGPoint)a3;
- (CGRect)caretRectFor:(id)a3;
- (CGRect)firstRectFor:(id)a3;
- (CGRect)firstRectForCharacterRange:(_NSRange)a3 actualRange:(_NSRange *)a4;
- (NSString)selectedText;
- (_NSRange)selectedRange;
- (_TtC8Freeform11CRLWPLayout)layout;
- (_TtC8Freeform12CRLTextRange)markedTextSelection;
- (_TtC8Freeform12CRLTextRange)selectedTextRange;
- (_TtC8Freeform15CRLTextPosition)beginningOfDocument;
- (_TtC8Freeform15CRLTextPosition)endOfDocument;
- (_TtC8Freeform25CRLWPTextSelectionManager)init;
- (id)characterRangeAt:(CGPoint)a3;
- (id)characterRangeByExtending:(id)a3 in:(int64_t)a4;
- (id)closestPositionTo:(CGPoint)a3;
- (id)closestPositionTo:(CGPoint)a3 within:(id)a4;
- (id)positionFrom:(id)a3 in:(int64_t)a4 offset:(int64_t)a5;
- (id)positionFrom:(id)a3 offset:(int64_t)a4;
- (id)positionWithin:(id)a3 farthestIn:(int64_t)a4;
- (id)selectWordAt:(CGPoint)a3;
- (id)selectionRectsFor:(id)a3;
- (id)textIn:(id)a3;
- (id)textRangeFrom:(id)a3 to:(id)a4;
- (int64_t)characterIndexForPoint:(CGPoint)a3;
- (int64_t)compare:(id)a3 to:(id)a4;
- (int64_t)offsetFrom:(id)a3 to:(id)a4;
- (void)beginLoupeSessionAt:(CGPoint)a3;
- (void)endLoupeSession;
- (void)moveLoupeTo:(CGPoint)a3;
- (void)refresh;
- (void)setSelectedRange:(_NSRange)a3;
- (void)setSelectedTextRange:(id)a3;
- (void)setSelectedTextRangeFor:(CGPoint)a3;
- (void)setSelectionViewController:(id)a3;
- (void)updateSelectionViews;
@end

@implementation CRLWPTextSelectionManager

- (_TtC8Freeform11CRLWPLayout)layout
{
  v2 = self;
  v3 = sub_100753708();

  return v3;
}

- (_TtC8Freeform12CRLTextRange)markedTextSelection
{
  v2 = self;
  v3 = sub_1007537F8();

  return v3;
}

- (_TtC8Freeform12CRLTextRange)selectedTextRange
{
  v2 = self;
  v3 = sub_1007539C4();

  return v3;
}

- (void)setSelectedTextRange:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC8Freeform25CRLWPTextSelectionManager__selectedTextRange);
  *(&self->super.isa + OBJC_IVAR____TtC8Freeform25CRLWPTextSelectionManager__selectedTextRange) = a3;
  v5 = a3;
  v6 = self;

  (*((swift_isaMask & v6->super.isa) + 0x268))();
}

- (_NSRange)selectedRange
{
  v2 = self;
  sub_100753B78();
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.length = v8;
  result.location = v7;
  return result;
}

- (void)setSelectedRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v6 = objc_allocWithZone(type metadata accessor for CRLTextRange());
  v11 = self;
  v7 = sub_10078CDF0(location, length);
  v8 = *(&v11->super.isa + OBJC_IVAR____TtC8Freeform25CRLWPTextSelectionManager__selectedTextRange);
  *(&v11->super.isa + OBJC_IVAR____TtC8Freeform25CRLWPTextSelectionManager__selectedTextRange) = v7;
  v9 = v7;

  v10 = *((swift_isaMask & v11->super.isa) + 0x268);
  v10();

  v10();
}

- (NSString)selectedText
{
  v2 = self;
  sub_100753E00();
  v4 = v3;

  if (v4)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (_TtC8Freeform15CRLTextPosition)beginningOfDocument
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC8Freeform25CRLWPTextSelectionManager_textStorage);
  v3 = self;
  v4 = v2;
  sub_100A28D8C();
  v6 = v5;

  v7 = sub_1007570BC();
  v8 = [v7 start];

  return v8;
}

- (_TtC8Freeform15CRLTextPosition)endOfDocument
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC8Freeform25CRLWPTextSelectionManager_textStorage);
  v3 = self;
  v4 = v2;
  sub_100A28D8C();
  v6 = v5;

  v7 = v6;
  v8 = sub_100756EC0(v7);

  v9 = [v8 start];

  return v9;
}

- (id)selectWordAt:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = self;
  v6 = sub_1007543E8(x, y);

  return v6;
}

- (id)textIn:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100754D24(v4);
  v7 = v6;

  if (v7)
  {
    v8 = String._bridgeToObjectiveC()();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)textRangeFrom:(id)a3 to:(id)a4
{
  v4 = sub_10078E988(a3, a4);

  return v4;
}

- (id)positionFrom:(id)a3 offset:(int64_t)a4
{
  v6 = qword_1019F1570;
  v7 = a3;
  v8 = self;
  if (v6 != -1)
  {
    swift_once();
  }

  v9 = *&v7[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location];
  if (v9 == NSNotFound.getter())
  {

    v10 = 0;
  }

  else
  {
    v11 = *(&v8->super.isa + OBJC_IVAR____TtC8Freeform25CRLWPTextSelectionManager_textStorage);
    sub_100A28D8C();
    v13 = v12;

    v14 = sub_100B7FBAC(a4, v13);
    v10 = v14;
  }

  return v10;
}

- (int64_t)offsetFrom:(id)a3 to:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_100757198(v6, v7);

  return v9;
}

- (int64_t)compare:(id)a3 to:(id)a4
{
  v4 = *(a3 + OBJC_IVAR____TtC8Freeform15CRLTextPosition_location);
  v5 = *(a4 + OBJC_IVAR____TtC8Freeform15CRLTextPosition_location);
  if (v4 >= v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = -1;
  }

  if (v5 < v4)
  {
    return 1;
  }

  else
  {
    return v6;
  }
}

- (CGRect)firstRectFor:(id)a3
{
  v3 = sub_100755D94(self, a2, a3, type metadata accessor for CRLTextRange, sub_1007553C8);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)firstRectForCharacterRange:(_NSRange)a3 actualRange:(_NSRange *)a4
{
  length = a3.length;
  location = a3.location;
  v7 = qword_1019F1570;
  v8 = self;
  if (v7 != -1)
  {
    swift_once();
  }

  sub_10075553C(v8, location, length, a4, &v13);

  v10 = *(&v13 + 1);
  v9 = *&v13;
  v11 = v14;
  v12 = v15;
  result.size.height = v12;
  result.size.width = v11;
  result.origin.y = v10;
  result.origin.x = v9;
  return result;
}

- (CGRect)caretRectFor:(id)a3
{
  v3 = sub_100755D94(self, a2, a3, type metadata accessor for CRLTextPosition, sub_100755C68);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (id)closestPositionTo:(CGPoint)a3
{
  v3 = qword_1019F1570;
  v4 = self;
  if (v3 != -1)
  {
    swift_once();
  }

  sub_100755E80(v4, &v7);

  v5 = v7;

  return v5;
}

- (id)closestPositionTo:(CGPoint)a3 within:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = qword_1019F1570;
  v8 = a4;
  v9 = self;
  if (v7 != -1)
  {
    swift_once();
  }

  type metadata accessor for CGPoint(0);
  v14[8] = v10;
  *&v14[5] = x;
  *&v14[6] = y;
  v14[12] = type metadata accessor for CRLTextRange();
  v14[9] = v8;
  v11 = v8;
  sub_10075603C(v9, v14);
  swift_arrayDestroy();
  v12 = v14[0];

  return v12;
}

- (int64_t)characterIndexForPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = qword_1019F1570;
  v6 = self;
  if (v5 != -1)
  {
    swift_once();
  }

  v7 = sub_1007562D8(1, x, y);

  return v7;
}

- (id)characterRangeAt:(CGPoint)a3
{
  v3 = self;
  sub_100C0A2A4(v3, &_mh_execute_header, "characterRange(at:)", 19, 2, "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Editor/CRLWPTextSelectionManager.swift", 98, 2, 272);

  return 0;
}

- (void)setSelectedTextRangeFor:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = self;
  sub_1007564CC(x, y);
}

- (void)setSelectionViewController:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC8Freeform25CRLWPTextSelectionManager_selectionViewController);
  *(&self->super.isa + OBJC_IVAR____TtC8Freeform25CRLWPTextSelectionManager_selectionViewController) = a3;
  v3 = a3;
}

- (void)refresh
{
  v2 = *((swift_isaMask & self->super.isa) + 0x268);
  v3 = self;
  v2();
}

- (void)updateSelectionViews
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC8Freeform25CRLWPTextSelectionManager_selectionViewController);
  if (v2)
  {
    v3 = *((swift_isaMask & *v2) + 0x190);
    v5 = self;
    v4 = v2;
    v3();
  }
}

- (id)selectionRectsFor:(id)a3
{
  v3 = self;
  sub_100C0A2A4(v3, &_mh_execute_header, "selectionRects(for:)", 20, 2, "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Editor/CRLWPTextSelectionManager.swift", 98, 2, 396);

  sub_100006370(0, &qword_101A012B0);
  v4.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v4.super.isa;
}

- (id)positionWithin:(id)a3 farthestIn:(int64_t)a4
{
  v4 = self;
  sub_100C0A2A4(v4, &_mh_execute_header, "position(within:farthestIn:)", 28, 2, "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Editor/CRLWPTextSelectionManager.swift", 98, 2, 401);

  return 0;
}

- (id)characterRangeByExtending:(id)a3 in:(int64_t)a4
{
  v4 = self;
  sub_100C0A2A4(v4, &_mh_execute_header, "characterRange(byExtending:in:)", 31, 2, "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Editor/CRLWPTextSelectionManager.swift", 98, 2, 406);

  return 0;
}

- (id)positionFrom:(id)a3 in:(int64_t)a4 offset:(int64_t)a5
{
  v5 = self;
  sub_100C0A2A4(v5, &_mh_execute_header, "position(from:in:offset:)", 25, 2, "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Editor/CRLWPTextSelectionManager.swift", 98, 2, 411);

  return 0;
}

- (BOOL)isSelectingCaret:(CGPoint)a3
{
  v3 = self;
  sub_100C0A2A4(v3, &_mh_execute_header, "isSelectingCaret(_:)", 20, 2, "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Editor/CRLWPTextSelectionManager.swift", 98, 2, 416);

  return 0;
}

- (void)beginLoupeSessionAt:(CGPoint)a3
{
  v3 = self;
  sub_100C0A2A4(v3, &_mh_execute_header, "beginLoupeSession(at:)", 22, 2, "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Editor/CRLWPTextSelectionManager.swift", 98, 2, 421);
}

- (void)moveLoupeTo:(CGPoint)a3
{
  v3 = self;
  sub_100C0A2A4(v3, &_mh_execute_header, "moveLoupe(to:)", 14, 2, "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Editor/CRLWPTextSelectionManager.swift", 98, 2, 425);
}

- (void)endLoupeSession
{
  v2 = self;
  sub_100C0A2A4(v2, &_mh_execute_header, "endLoupeSession()", 17, 2, "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Editor/CRLWPTextSelectionManager.swift", 98, 2, 429);
}

- (_TtC8Freeform25CRLWPTextSelectionManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
@interface CRLWPTextSelectionManager
- (BOOL)isSelectingCaret:(CGPoint)caret;
- (CGRect)caretRectFor:(id)for;
- (CGRect)firstRectFor:(id)for;
- (CGRect)firstRectForCharacterRange:(_NSRange)range actualRange:(_NSRange *)actualRange;
- (NSString)selectedText;
- (_NSRange)selectedRange;
- (_TtC8Freeform11CRLWPLayout)layout;
- (_TtC8Freeform12CRLTextRange)markedTextSelection;
- (_TtC8Freeform12CRLTextRange)selectedTextRange;
- (_TtC8Freeform15CRLTextPosition)beginningOfDocument;
- (_TtC8Freeform15CRLTextPosition)endOfDocument;
- (_TtC8Freeform25CRLWPTextSelectionManager)init;
- (id)characterRangeAt:(CGPoint)at;
- (id)characterRangeByExtending:(id)extending in:(int64_t)in;
- (id)closestPositionTo:(CGPoint)to;
- (id)closestPositionTo:(CGPoint)to within:(id)within;
- (id)positionFrom:(id)from in:(int64_t)in offset:(int64_t)offset;
- (id)positionFrom:(id)from offset:(int64_t)offset;
- (id)positionWithin:(id)within farthestIn:(int64_t)in;
- (id)selectWordAt:(CGPoint)at;
- (id)selectionRectsFor:(id)for;
- (id)textIn:(id)in;
- (id)textRangeFrom:(id)from to:(id)to;
- (int64_t)characterIndexForPoint:(CGPoint)point;
- (int64_t)compare:(id)compare to:(id)to;
- (int64_t)offsetFrom:(id)from to:(id)to;
- (void)beginLoupeSessionAt:(CGPoint)at;
- (void)endLoupeSession;
- (void)moveLoupeTo:(CGPoint)to;
- (void)refresh;
- (void)setSelectedRange:(_NSRange)range;
- (void)setSelectedTextRange:(id)range;
- (void)setSelectedTextRangeFor:(CGPoint)for;
- (void)setSelectionViewController:(id)controller;
- (void)updateSelectionViews;
@end

@implementation CRLWPTextSelectionManager

- (_TtC8Freeform11CRLWPLayout)layout
{
  selfCopy = self;
  v3 = sub_100753708();

  return v3;
}

- (_TtC8Freeform12CRLTextRange)markedTextSelection
{
  selfCopy = self;
  v3 = sub_1007537F8();

  return v3;
}

- (_TtC8Freeform12CRLTextRange)selectedTextRange
{
  selfCopy = self;
  v3 = sub_1007539C4();

  return v3;
}

- (void)setSelectedTextRange:(id)range
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC8Freeform25CRLWPTextSelectionManager__selectedTextRange);
  *(&self->super.isa + OBJC_IVAR____TtC8Freeform25CRLWPTextSelectionManager__selectedTextRange) = range;
  rangeCopy = range;
  selfCopy = self;

  (*((swift_isaMask & selfCopy->super.isa) + 0x268))();
}

- (_NSRange)selectedRange
{
  selfCopy = self;
  sub_100753B78();
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.length = v8;
  result.location = v7;
  return result;
}

- (void)setSelectedRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v6 = objc_allocWithZone(type metadata accessor for CRLTextRange());
  selfCopy = self;
  v7 = sub_10078CDF0(location, length);
  v8 = *(&selfCopy->super.isa + OBJC_IVAR____TtC8Freeform25CRLWPTextSelectionManager__selectedTextRange);
  *(&selfCopy->super.isa + OBJC_IVAR____TtC8Freeform25CRLWPTextSelectionManager__selectedTextRange) = v7;
  v9 = v7;

  v10 = *((swift_isaMask & selfCopy->super.isa) + 0x268);
  v10();

  v10();
}

- (NSString)selectedText
{
  selfCopy = self;
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
  selfCopy = self;
  v4 = v2;
  sub_100A28D8C();
  v6 = v5;

  v7 = sub_1007570BC();
  start = [v7 start];

  return start;
}

- (_TtC8Freeform15CRLTextPosition)endOfDocument
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC8Freeform25CRLWPTextSelectionManager_textStorage);
  selfCopy = self;
  v4 = v2;
  sub_100A28D8C();
  v6 = v5;

  v7 = v6;
  v8 = sub_100756EC0(v7);

  start = [v8 start];

  return start;
}

- (id)selectWordAt:(CGPoint)at
{
  y = at.y;
  x = at.x;
  selfCopy = self;
  v6 = sub_1007543E8(x, y);

  return v6;
}

- (id)textIn:(id)in
{
  inCopy = in;
  selfCopy = self;
  sub_100754D24(inCopy);
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

- (id)textRangeFrom:(id)from to:(id)to
{
  v4 = sub_10078E988(from, to);

  return v4;
}

- (id)positionFrom:(id)from offset:(int64_t)offset
{
  v6 = qword_1019F1570;
  fromCopy = from;
  selfCopy = self;
  if (v6 != -1)
  {
    swift_once();
  }

  v9 = *&fromCopy[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location];
  if (v9 == NSNotFound.getter())
  {

    v10 = 0;
  }

  else
  {
    v11 = *(&selfCopy->super.isa + OBJC_IVAR____TtC8Freeform25CRLWPTextSelectionManager_textStorage);
    sub_100A28D8C();
    v13 = v12;

    v14 = sub_100B7FBAC(offset, v13);
    v10 = v14;
  }

  return v10;
}

- (int64_t)offsetFrom:(id)from to:(id)to
{
  fromCopy = from;
  toCopy = to;
  selfCopy = self;
  v9 = sub_100757198(fromCopy, toCopy);

  return v9;
}

- (int64_t)compare:(id)compare to:(id)to
{
  v4 = *(compare + OBJC_IVAR____TtC8Freeform15CRLTextPosition_location);
  v5 = *(to + OBJC_IVAR____TtC8Freeform15CRLTextPosition_location);
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

- (CGRect)firstRectFor:(id)for
{
  v3 = sub_100755D94(self, a2, for, type metadata accessor for CRLTextRange, sub_1007553C8);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)firstRectForCharacterRange:(_NSRange)range actualRange:(_NSRange *)actualRange
{
  length = range.length;
  location = range.location;
  v7 = qword_1019F1570;
  selfCopy = self;
  if (v7 != -1)
  {
    swift_once();
  }

  sub_10075553C(selfCopy, location, length, actualRange, &v13);

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

- (CGRect)caretRectFor:(id)for
{
  v3 = sub_100755D94(self, a2, for, type metadata accessor for CRLTextPosition, sub_100755C68);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (id)closestPositionTo:(CGPoint)to
{
  v3 = qword_1019F1570;
  selfCopy = self;
  if (v3 != -1)
  {
    swift_once();
  }

  sub_100755E80(selfCopy, &v7);

  v5 = v7;

  return v5;
}

- (id)closestPositionTo:(CGPoint)to within:(id)within
{
  y = to.y;
  x = to.x;
  v7 = qword_1019F1570;
  withinCopy = within;
  selfCopy = self;
  if (v7 != -1)
  {
    swift_once();
  }

  type metadata accessor for CGPoint(0);
  v14[8] = v10;
  *&v14[5] = x;
  *&v14[6] = y;
  v14[12] = type metadata accessor for CRLTextRange();
  v14[9] = withinCopy;
  v11 = withinCopy;
  sub_10075603C(selfCopy, v14);
  swift_arrayDestroy();
  v12 = v14[0];

  return v12;
}

- (int64_t)characterIndexForPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v5 = qword_1019F1570;
  selfCopy = self;
  if (v5 != -1)
  {
    swift_once();
  }

  v7 = sub_1007562D8(1, x, y);

  return v7;
}

- (id)characterRangeAt:(CGPoint)at
{
  selfCopy = self;
  sub_100C0A2A4(selfCopy, &_mh_execute_header, "characterRange(at:)", 19, 2, "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Editor/CRLWPTextSelectionManager.swift", 98, 2, 272);

  return 0;
}

- (void)setSelectedTextRangeFor:(CGPoint)for
{
  y = for.y;
  x = for.x;
  selfCopy = self;
  sub_1007564CC(x, y);
}

- (void)setSelectionViewController:(id)controller
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC8Freeform25CRLWPTextSelectionManager_selectionViewController);
  *(&self->super.isa + OBJC_IVAR____TtC8Freeform25CRLWPTextSelectionManager_selectionViewController) = controller;
  controllerCopy = controller;
}

- (void)refresh
{
  v2 = *((swift_isaMask & self->super.isa) + 0x268);
  selfCopy = self;
  v2();
}

- (void)updateSelectionViews
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC8Freeform25CRLWPTextSelectionManager_selectionViewController);
  if (v2)
  {
    v3 = *((swift_isaMask & *v2) + 0x190);
    selfCopy = self;
    v4 = v2;
    v3();
  }
}

- (id)selectionRectsFor:(id)for
{
  selfCopy = self;
  sub_100C0A2A4(selfCopy, &_mh_execute_header, "selectionRects(for:)", 20, 2, "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Editor/CRLWPTextSelectionManager.swift", 98, 2, 396);

  sub_100006370(0, &qword_101A012B0);
  v4.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v4.super.isa;
}

- (id)positionWithin:(id)within farthestIn:(int64_t)in
{
  selfCopy = self;
  sub_100C0A2A4(selfCopy, &_mh_execute_header, "position(within:farthestIn:)", 28, 2, "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Editor/CRLWPTextSelectionManager.swift", 98, 2, 401);

  return 0;
}

- (id)characterRangeByExtending:(id)extending in:(int64_t)in
{
  selfCopy = self;
  sub_100C0A2A4(selfCopy, &_mh_execute_header, "characterRange(byExtending:in:)", 31, 2, "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Editor/CRLWPTextSelectionManager.swift", 98, 2, 406);

  return 0;
}

- (id)positionFrom:(id)from in:(int64_t)in offset:(int64_t)offset
{
  selfCopy = self;
  sub_100C0A2A4(selfCopy, &_mh_execute_header, "position(from:in:offset:)", 25, 2, "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Editor/CRLWPTextSelectionManager.swift", 98, 2, 411);

  return 0;
}

- (BOOL)isSelectingCaret:(CGPoint)caret
{
  selfCopy = self;
  sub_100C0A2A4(selfCopy, &_mh_execute_header, "isSelectingCaret(_:)", 20, 2, "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Editor/CRLWPTextSelectionManager.swift", 98, 2, 416);

  return 0;
}

- (void)beginLoupeSessionAt:(CGPoint)at
{
  selfCopy = self;
  sub_100C0A2A4(selfCopy, &_mh_execute_header, "beginLoupeSession(at:)", 22, 2, "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Editor/CRLWPTextSelectionManager.swift", 98, 2, 421);
}

- (void)moveLoupeTo:(CGPoint)to
{
  selfCopy = self;
  sub_100C0A2A4(selfCopy, &_mh_execute_header, "moveLoupe(to:)", 14, 2, "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Editor/CRLWPTextSelectionManager.swift", 98, 2, 425);
}

- (void)endLoupeSession
{
  selfCopy = self;
  sub_100C0A2A4(selfCopy, &_mh_execute_header, "endLoupeSession()", 17, 2, "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Editor/CRLWPTextSelectionManager.swift", 98, 2, 429);
}

- (_TtC8Freeform25CRLWPTextSelectionManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
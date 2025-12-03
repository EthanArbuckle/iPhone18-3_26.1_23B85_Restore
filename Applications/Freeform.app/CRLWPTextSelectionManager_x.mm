@interface CRLWPTextSelectionManager_x
- (BOOL)isSelectingCaret:(CGPoint)caret;
- (CGRect)caretRectFor:(id)for;
- (CGRect)firstRectFor:(id)for;
- (CGRect)firstRectForCharacterRange:(_NSRange)range actualRange:(_NSRange *)actualRange;
- (id)selectionRectsFor:(id)for;
@end

@implementation CRLWPTextSelectionManager_x

- (id)selectionRectsFor:(id)for
{
  v4 = qword_1019F1570;
  forCopy = for;
  selfCopy = self;
  if (v4 != -1)
  {
    swift_once();
  }

  v11[3] = type metadata accessor for CRLTextRange();
  v11[0] = forCopy;
  v7 = forCopy;
  sub_100C6891C(selfCopy, v7, &v10);
  sub_100005070(v11);

  sub_100C69B0C();
  v8.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v8.super.isa;
}

- (BOOL)isSelectingCaret:(CGPoint)caret
{
  y = caret.y;
  x = caret.x;
  selfCopy = self;
  v6 = sub_100C68D98(x, y);

  return v6 & 1;
}

- (CGRect)firstRectFor:(id)for
{
  v3 = sub_100C69A34(self, a2, for, sub_100C69024);
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
  selfCopy = self;
  sub_100C691B8(location, length, actualRange);
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v16 = v9;
  v17 = v11;
  v18 = v13;
  v19 = v15;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (CGRect)caretRectFor:(id)for
{
  v3 = sub_100C69A34(self, a2, for, sub_100C69908);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

@end
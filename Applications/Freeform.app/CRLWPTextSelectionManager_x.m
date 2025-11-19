@interface CRLWPTextSelectionManager_x
- (BOOL)isSelectingCaret:(CGPoint)a3;
- (CGRect)caretRectFor:(id)a3;
- (CGRect)firstRectFor:(id)a3;
- (CGRect)firstRectForCharacterRange:(_NSRange)a3 actualRange:(_NSRange *)a4;
- (id)selectionRectsFor:(id)a3;
@end

@implementation CRLWPTextSelectionManager_x

- (id)selectionRectsFor:(id)a3
{
  v4 = qword_1019F1570;
  v5 = a3;
  v6 = self;
  if (v4 != -1)
  {
    swift_once();
  }

  v11[3] = type metadata accessor for CRLTextRange();
  v11[0] = v5;
  v7 = v5;
  sub_100C6891C(v6, v7, &v10);
  sub_100005070(v11);

  sub_100C69B0C();
  v8.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v8.super.isa;
}

- (BOOL)isSelectingCaret:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = self;
  v6 = sub_100C68D98(x, y);

  return v6 & 1;
}

- (CGRect)firstRectFor:(id)a3
{
  v3 = sub_100C69A34(self, a2, a3, sub_100C69024);
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
  v7 = self;
  sub_100C691B8(location, length, a4);
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

- (CGRect)caretRectFor:(id)a3
{
  v3 = sub_100C69A34(self, a2, a3, sub_100C69908);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

@end
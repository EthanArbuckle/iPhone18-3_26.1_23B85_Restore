@interface TextViewWithPlaceHolder
- (NSString)text;
- (UIEdgeInsets)textContainerInset;
- (UIFont)font;
- (_TtC17SequoiaTranslator23TextViewWithPlaceHolder)initWithCoder:(id)a3;
- (_TtC17SequoiaTranslator23TextViewWithPlaceHolder)initWithFrame:(CGRect)a3 textContainer:(id)a4;
- (id)_axPlaceholderTextView;
- (int64_t)textAlignment;
- (void)paste:(id)a3;
- (void)setFont:(id)a3;
- (void)setMarkedText:(id)a3 selectedRange:(_NSRange)a4;
- (void)setText:(id)a3;
- (void)setTextAlignment:(int64_t)a3;
- (void)setTextContainerInset:(UIEdgeInsets)a3;
- (void)textDidUpdate;
@end

@implementation TextViewWithPlaceHolder

- (UIFont)font
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for TextViewWithPlaceHolder();
  v2 = [(TextViewWithPlaceHolder *)&v4 font];

  return v2;
}

- (void)setFont:(id)a3
{
  v8.receiver = self;
  v8.super_class = type metadata accessor for TextViewWithPlaceHolder();
  v4 = a3;
  v5 = v8.receiver;
  [(TextViewWithPlaceHolder *)&v8 setFont:v4];
  v6 = sub_10026DB48();
  v7 = [v5 font];
  [v6 setFont:v7];
}

- (int64_t)textAlignment
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for TextViewWithPlaceHolder();
  return [(TextViewWithPlaceHolder *)&v3 textAlignment];
}

- (void)setTextAlignment:(int64_t)a3
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for TextViewWithPlaceHolder();
  v4 = v6.receiver;
  [(TextViewWithPlaceHolder *)&v6 setTextAlignment:a3];
  v5 = sub_10026DB48();
  [v5 setTextAlignment:{objc_msgSend(v4, "textAlignment", v6.receiver, v6.super_class)}];
}

- (UIEdgeInsets)textContainerInset
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for TextViewWithPlaceHolder();
  [(TextViewWithPlaceHolder *)&v6 textContainerInset];
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (void)setTextContainerInset:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  v7 = self;
  v8 = sub_10026DB48();
  [v8 setTextContainerInset:{top, left, bottom, right}];

  v9.receiver = v7;
  v9.super_class = type metadata accessor for TextViewWithPlaceHolder();
  [(TextViewWithPlaceHolder *)&v9 setTextContainerInset:top, left, bottom, right];
}

- (NSString)text
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for TextViewWithPlaceHolder();
  v2 = v7.receiver;
  v3 = [(TextViewWithPlaceHolder *)&v7 text];
  if (v3)
  {
    v4 = v3;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = String._bridgeToObjectiveC()();
  }

  else
  {

    v5 = 0;
  }

  return v5;
}

- (void)setText:(id)a3
{
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = self;
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v6 = self;
    v5 = 0;
  }

  v7.receiver = self;
  v7.super_class = type metadata accessor for TextViewWithPlaceHolder();
  [(TextViewWithPlaceHolder *)&v7 setText:v5];

  sub_10026DBAC();
}

- (_TtC17SequoiaTranslator23TextViewWithPlaceHolder)initWithFrame:(CGRect)a3 textContainer:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  return sub_10026E3E0(a4, x, y, width, height);
}

- (_TtC17SequoiaTranslator23TextViewWithPlaceHolder)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = sub_10026EE24(v3);

  return v4;
}

- (void)textDidUpdate
{
  v2 = self;
  sub_10026DBAC();
}

- (void)setMarkedText:(id)a3 selectedRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = self;
    v8 = String._bridgeToObjectiveC()();
  }

  else
  {
    v9 = self;
    v8 = 0;
  }

  v10.receiver = self;
  v10.super_class = type metadata accessor for TextViewWithPlaceHolder();
  [(TextViewWithPlaceHolder *)&v10 setMarkedText:v8 selectedRange:location, length];

  sub_10026DBAC();
}

- (void)paste:(id)a3
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
    memset(v6, 0, sizeof(v6));
    v5 = self;
  }

  sub_10026E9A4(v6);

  sub_10026ED4C(v6);
}

- (id)_axPlaceholderTextView
{
  v2 = self;
  v3 = sub_10026DB48();

  return v3;
}

@end
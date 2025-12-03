@interface TextViewWithPlaceHolder
- (NSString)text;
- (UIEdgeInsets)textContainerInset;
- (UIFont)font;
- (_TtC17SequoiaTranslator23TextViewWithPlaceHolder)initWithCoder:(id)coder;
- (_TtC17SequoiaTranslator23TextViewWithPlaceHolder)initWithFrame:(CGRect)frame textContainer:(id)container;
- (id)_axPlaceholderTextView;
- (int64_t)textAlignment;
- (void)paste:(id)paste;
- (void)setFont:(id)font;
- (void)setMarkedText:(id)text selectedRange:(_NSRange)range;
- (void)setText:(id)text;
- (void)setTextAlignment:(int64_t)alignment;
- (void)setTextContainerInset:(UIEdgeInsets)inset;
- (void)textDidUpdate;
@end

@implementation TextViewWithPlaceHolder

- (UIFont)font
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for TextViewWithPlaceHolder();
  font = [(TextViewWithPlaceHolder *)&v4 font];

  return font;
}

- (void)setFont:(id)font
{
  v8.receiver = self;
  v8.super_class = type metadata accessor for TextViewWithPlaceHolder();
  fontCopy = font;
  v5 = v8.receiver;
  [(TextViewWithPlaceHolder *)&v8 setFont:fontCopy];
  v6 = sub_10026DB48();
  font = [v5 font];
  [v6 setFont:font];
}

- (int64_t)textAlignment
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for TextViewWithPlaceHolder();
  return [(TextViewWithPlaceHolder *)&v3 textAlignment];
}

- (void)setTextAlignment:(int64_t)alignment
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for TextViewWithPlaceHolder();
  v4 = v6.receiver;
  [(TextViewWithPlaceHolder *)&v6 setTextAlignment:alignment];
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

- (void)setTextContainerInset:(UIEdgeInsets)inset
{
  right = inset.right;
  bottom = inset.bottom;
  left = inset.left;
  top = inset.top;
  selfCopy = self;
  v8 = sub_10026DB48();
  [v8 setTextContainerInset:{top, left, bottom, right}];

  v9.receiver = selfCopy;
  v9.super_class = type metadata accessor for TextViewWithPlaceHolder();
  [(TextViewWithPlaceHolder *)&v9 setTextContainerInset:top, left, bottom, right];
}

- (NSString)text
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for TextViewWithPlaceHolder();
  v2 = v7.receiver;
  text = [(TextViewWithPlaceHolder *)&v7 text];
  if (text)
  {
    v4 = text;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = String._bridgeToObjectiveC()();
  }

  else
  {

    v5 = 0;
  }

  return v5;
}

- (void)setText:(id)text
{
  if (text)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    selfCopy = self;
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    selfCopy2 = self;
    v5 = 0;
  }

  v7.receiver = self;
  v7.super_class = type metadata accessor for TextViewWithPlaceHolder();
  [(TextViewWithPlaceHolder *)&v7 setText:v5];

  sub_10026DBAC();
}

- (_TtC17SequoiaTranslator23TextViewWithPlaceHolder)initWithFrame:(CGRect)frame textContainer:(id)container
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  containerCopy = container;
  return sub_10026E3E0(container, x, y, width, height);
}

- (_TtC17SequoiaTranslator23TextViewWithPlaceHolder)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = sub_10026EE24(coderCopy);

  return v4;
}

- (void)textDidUpdate
{
  selfCopy = self;
  sub_10026DBAC();
}

- (void)setMarkedText:(id)text selectedRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  if (text)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    selfCopy = self;
    v8 = String._bridgeToObjectiveC()();
  }

  else
  {
    selfCopy2 = self;
    v8 = 0;
  }

  v10.receiver = self;
  v10.super_class = type metadata accessor for TextViewWithPlaceHolder();
  [(TextViewWithPlaceHolder *)&v10 setMarkedText:v8 selectedRange:location, length];

  sub_10026DBAC();
}

- (void)paste:(id)paste
{
  if (paste)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    selfCopy2 = self;
  }

  sub_10026E9A4(v6);

  sub_10026ED4C(v6);
}

- (id)_axPlaceholderTextView
{
  selfCopy = self;
  v3 = sub_10026DB48();

  return v3;
}

@end
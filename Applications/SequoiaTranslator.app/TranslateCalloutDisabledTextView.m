@interface TranslateCalloutDisabledTextView
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (_TtC17SequoiaTranslator32TranslateCalloutDisabledTextView)initWithCoder:(id)a3;
- (_TtC17SequoiaTranslator32TranslateCalloutDisabledTextView)initWithFrame:(CGRect)a3 textContainer:(id)a4;
@end

@implementation TranslateCalloutDisabledTextView

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  if (a4)
  {
    v6 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v7 = self;
  }

  v8 = TranslateCalloutDisabledTextView.canPerformAction(_:withSender:)(a3, v10);

  sub_10026ED4C(v10);
  return v8 & 1;
}

- (_TtC17SequoiaTranslator32TranslateCalloutDisabledTextView)initWithFrame:(CGRect)a3 textContainer:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10.receiver = self;
  v10.super_class = type metadata accessor for TranslateCalloutDisabledTextView();
  return [(TranslateCalloutDisabledTextView *)&v10 initWithFrame:a4 textContainer:x, y, width, height];
}

- (_TtC17SequoiaTranslator32TranslateCalloutDisabledTextView)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for TranslateCalloutDisabledTextView();
  v4 = a3;
  v5 = [(TranslateCalloutDisabledTextView *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end
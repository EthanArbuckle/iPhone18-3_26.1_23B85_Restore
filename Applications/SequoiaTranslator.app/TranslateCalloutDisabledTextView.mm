@interface TranslateCalloutDisabledTextView
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (_TtC17SequoiaTranslator32TranslateCalloutDisabledTextView)initWithCoder:(id)coder;
- (_TtC17SequoiaTranslator32TranslateCalloutDisabledTextView)initWithFrame:(CGRect)frame textContainer:(id)container;
@end

@implementation TranslateCalloutDisabledTextView

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  if (sender)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    selfCopy2 = self;
  }

  v8 = TranslateCalloutDisabledTextView.canPerformAction(_:withSender:)(action, v10);

  sub_10026ED4C(v10);
  return v8 & 1;
}

- (_TtC17SequoiaTranslator32TranslateCalloutDisabledTextView)initWithFrame:(CGRect)frame textContainer:(id)container
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v10.receiver = self;
  v10.super_class = type metadata accessor for TranslateCalloutDisabledTextView();
  return [(TranslateCalloutDisabledTextView *)&v10 initWithFrame:container textContainer:x, y, width, height];
}

- (_TtC17SequoiaTranslator32TranslateCalloutDisabledTextView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for TranslateCalloutDisabledTextView();
  coderCopy = coder;
  v5 = [(TranslateCalloutDisabledTextView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end
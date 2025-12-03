@interface CustomTextView
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (_TtC6FindMy14CustomTextView)initWithCoder:(id)coder;
- (_TtC6FindMy14CustomTextView)initWithFrame:(CGRect)frame textContainer:(id)container;
@end

@implementation CustomTextView

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

  v8 = sub_1002ED870(action, v10);

  sub_100012DF0(v10, &unk_1006B8740);
  return v8 & 1;
}

- (_TtC6FindMy14CustomTextView)initWithFrame:(CGRect)frame textContainer:(id)container
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v10.receiver = self;
  v10.super_class = type metadata accessor for CustomTextView();
  return [(CustomTextView *)&v10 initWithFrame:container textContainer:x, y, width, height];
}

- (_TtC6FindMy14CustomTextView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for CustomTextView();
  coderCopy = coder;
  v5 = [(CustomTextView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end
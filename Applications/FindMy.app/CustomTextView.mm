@interface CustomTextView
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (_TtC6FindMy14CustomTextView)initWithCoder:(id)a3;
- (_TtC6FindMy14CustomTextView)initWithFrame:(CGRect)a3 textContainer:(id)a4;
@end

@implementation CustomTextView

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

  v8 = sub_1002ED870(a3, v10);

  sub_100012DF0(v10, &unk_1006B8740);
  return v8 & 1;
}

- (_TtC6FindMy14CustomTextView)initWithFrame:(CGRect)a3 textContainer:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10.receiver = self;
  v10.super_class = type metadata accessor for CustomTextView();
  return [(CustomTextView *)&v10 initWithFrame:a4 textContainer:x, y, width, height];
}

- (_TtC6FindMy14CustomTextView)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for CustomTextView();
  v4 = a3;
  v5 = [(CustomTextView *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end
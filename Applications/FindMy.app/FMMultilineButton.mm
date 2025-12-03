@interface FMMultilineButton
- (CGSize)intrinsicContentSize;
- (_TtC6FindMy17FMMultilineButton)initWithCoder:(id)coder;
- (_TtC6FindMy17FMMultilineButton)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation FMMultilineButton

- (_TtC6FindMy17FMMultilineButton)initWithCoder:(id)coder
{
  v9.receiver = self;
  v9.super_class = type metadata accessor for FMMultilineButton();
  coderCopy = coder;
  v5 = [(FMMultilineButton *)&v9 initWithCoder:coderCopy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    sub_1002434C8();
  }

  return v6;
}

- (_TtC6FindMy17FMMultilineButton)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v9.receiver = self;
  v9.super_class = type metadata accessor for FMMultilineButton();
  height = [(FMMultilineButton *)&v9 initWithFrame:x, y, width, height];
  sub_1002434C8();

  return height;
}

- (CGSize)intrinsicContentSize
{
  selfCopy = self;
  sub_1002435F8();
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)layoutSubviews
{
  v9.receiver = self;
  v9.super_class = type metadata accessor for FMMultilineButton();
  v2 = v9.receiver;
  [(FMMultilineButton *)&v9 layoutSubviews];
  titleLabel = [v2 titleLabel];
  if (titleLabel)
  {
    v4 = titleLabel;
    titleLabel2 = [v2 titleLabel];
    if (titleLabel2)
    {
      v6 = titleLabel2;
      [titleLabel2 frame];
      v8 = v7;
    }

    else
    {
      v8 = 0.0;
    }

    [v4 setPreferredMaxLayoutWidth:v8];
  }
}

@end
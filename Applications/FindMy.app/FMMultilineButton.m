@interface FMMultilineButton
- (CGSize)intrinsicContentSize;
- (_TtC6FindMy17FMMultilineButton)initWithCoder:(id)a3;
- (_TtC6FindMy17FMMultilineButton)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation FMMultilineButton

- (_TtC6FindMy17FMMultilineButton)initWithCoder:(id)a3
{
  v9.receiver = self;
  v9.super_class = type metadata accessor for FMMultilineButton();
  v4 = a3;
  v5 = [(FMMultilineButton *)&v9 initWithCoder:v4];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    sub_1002434C8();
  }

  return v6;
}

- (_TtC6FindMy17FMMultilineButton)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9.receiver = self;
  v9.super_class = type metadata accessor for FMMultilineButton();
  v7 = [(FMMultilineButton *)&v9 initWithFrame:x, y, width, height];
  sub_1002434C8();

  return v7;
}

- (CGSize)intrinsicContentSize
{
  v2 = self;
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
  v3 = [v2 titleLabel];
  if (v3)
  {
    v4 = v3;
    v5 = [v2 titleLabel];
    if (v5)
    {
      v6 = v5;
      [v5 frame];
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
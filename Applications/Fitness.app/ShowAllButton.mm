@interface ShowAllButton
- (CGSize)intrinsicContentSize;
- (_TtC10FitnessApp13ShowAllButton)initWithCoder:(id)a3;
- (_TtC10FitnessApp13ShowAllButton)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation ShowAllButton

- (CGSize)intrinsicContentSize
{
  v2 = self;
  v3 = [(ShowAllButton *)v2 titleLabel];
  if (v3)
  {
    v4 = v3;
    [v3 intrinsicContentSize];
    v6 = v5;
    v8 = v7;
  }

  else
  {

    v6 = 0.0;
    v8 = 0.0;
  }

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)layoutSubviews
{
  v9.receiver = self;
  v9.super_class = type metadata accessor for ShowAllButton();
  v2 = v9.receiver;
  [(ShowAllButton *)&v9 layoutSubviews];
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

- (_TtC10FitnessApp13ShowAllButton)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for ShowAllButton();
  return [(ShowAllButton *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC10FitnessApp13ShowAllButton)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for ShowAllButton();
  v4 = a3;
  v5 = [(ShowAllButton *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end
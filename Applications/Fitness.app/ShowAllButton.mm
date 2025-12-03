@interface ShowAllButton
- (CGSize)intrinsicContentSize;
- (_TtC10FitnessApp13ShowAllButton)initWithCoder:(id)coder;
- (_TtC10FitnessApp13ShowAllButton)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation ShowAllButton

- (CGSize)intrinsicContentSize
{
  selfCopy = self;
  titleLabel = [(ShowAllButton *)selfCopy titleLabel];
  if (titleLabel)
  {
    v4 = titleLabel;
    [titleLabel intrinsicContentSize];
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

- (_TtC10FitnessApp13ShowAllButton)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for ShowAllButton();
  return [(ShowAllButton *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC10FitnessApp13ShowAllButton)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for ShowAllButton();
  coderCopy = coder;
  v5 = [(ShowAllButton *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end
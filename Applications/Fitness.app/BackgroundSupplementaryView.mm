@interface BackgroundSupplementaryView
- (_TtC10FitnessApp27BackgroundSupplementaryView)initWithCoder:(id)coder;
- (_TtC10FitnessApp27BackgroundSupplementaryView)initWithFrame:(CGRect)frame;
@end

@implementation BackgroundSupplementaryView

- (_TtC10FitnessApp27BackgroundSupplementaryView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v13.receiver = self;
  v13.super_class = type metadata accessor for BackgroundSupplementaryView();
  height = [(BackgroundSupplementaryView *)&v13 initWithFrame:x, y, width, height];
  layer = [(BackgroundSupplementaryView *)height layer];
  v9 = _UISolariumEnabled();
  v10 = 8.0;
  if (v9)
  {
    v10 = 16.0;
  }

  [layer setCornerRadius:v10];

  v11 = sub_100046170();
  [(BackgroundSupplementaryView *)height setBackgroundColor:v11];

  return height;
}

- (_TtC10FitnessApp27BackgroundSupplementaryView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for BackgroundSupplementaryView();
  coderCopy = coder;
  v5 = [(BackgroundSupplementaryView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end
@interface BackgroundSupplementaryView
- (_TtC10FitnessApp27BackgroundSupplementaryView)initWithCoder:(id)a3;
- (_TtC10FitnessApp27BackgroundSupplementaryView)initWithFrame:(CGRect)a3;
@end

@implementation BackgroundSupplementaryView

- (_TtC10FitnessApp27BackgroundSupplementaryView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v13.receiver = self;
  v13.super_class = type metadata accessor for BackgroundSupplementaryView();
  v7 = [(BackgroundSupplementaryView *)&v13 initWithFrame:x, y, width, height];
  v8 = [(BackgroundSupplementaryView *)v7 layer];
  v9 = _UISolariumEnabled();
  v10 = 8.0;
  if (v9)
  {
    v10 = 16.0;
  }

  [v8 setCornerRadius:v10];

  v11 = sub_100046170();
  [(BackgroundSupplementaryView *)v7 setBackgroundColor:v11];

  return v7;
}

- (_TtC10FitnessApp27BackgroundSupplementaryView)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for BackgroundSupplementaryView();
  v4 = a3;
  v5 = [(BackgroundSupplementaryView *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end
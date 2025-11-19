@interface UIView.Separator
- (CGSize)intrinsicContentSize;
- (_TtCE16MusicApplicationCSo6UIView9Separator)initWithCoder:(id)a3;
- (_TtCE16MusicApplicationCSo6UIView9Separator)initWithFrame:(CGRect)a3;
@end

@implementation UIView.Separator

- (_TtCE16MusicApplicationCSo6UIView9Separator)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v13.receiver = self;
  v13.super_class = _s9SeparatorCMa();
  v7 = [(UIView.Separator *)&v13 initWithFrame:x, y, width, height];
  v8 = qword_DE6C70;
  v9 = v7;
  if (v8 != -1)
  {
    v12 = v9;
    swift_once();
    v9 = v12;
  }

  v10 = v9;
  [(UIView.Separator *)v9 setBackgroundColor:qword_E718B0];

  return v10;
}

- (_TtCE16MusicApplicationCSo6UIView9Separator)initWithCoder:(id)a3
{
  result = sub_ABAFD0();
  __break(1u);
  return result;
}

- (CGSize)intrinsicContentSize
{
  v2 = self;
  v3 = [(UIView.Separator *)v2 traitCollection];
  [v3 displayScale];
  v5 = v4;

  v6 = 1.0 / v5;
  v7 = UIViewNoIntrinsicMetric;
  result.height = v6;
  result.width = v7;
  return result;
}

@end
@interface UIView.Separator
- (CGSize)intrinsicContentSize;
- (_TtCE16MusicApplicationCSo6UIView9Separator)initWithCoder:(id)coder;
- (_TtCE16MusicApplicationCSo6UIView9Separator)initWithFrame:(CGRect)frame;
@end

@implementation UIView.Separator

- (_TtCE16MusicApplicationCSo6UIView9Separator)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v13.receiver = self;
  v13.super_class = _s9SeparatorCMa();
  height = [(UIView.Separator *)&v13 initWithFrame:x, y, width, height];
  v8 = qword_DE6C70;
  v9 = height;
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

- (_TtCE16MusicApplicationCSo6UIView9Separator)initWithCoder:(id)coder
{
  result = sub_ABAFD0();
  __break(1u);
  return result;
}

- (CGSize)intrinsicContentSize
{
  selfCopy = self;
  traitCollection = [(UIView.Separator *)selfCopy traitCollection];
  [traitCollection displayScale];
  v5 = v4;

  v6 = 1.0 / v5;
  v7 = UIViewNoIntrinsicMetric;
  result.height = v6;
  result.width = v7;
  return result;
}

@end
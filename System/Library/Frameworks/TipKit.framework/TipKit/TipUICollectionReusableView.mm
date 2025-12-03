@interface TipUICollectionReusableView
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (UIColor)backgroundColor;
- (_TtC6TipKit27TipUICollectionReusableView)initWithCoder:(id)coder;
- (_TtC6TipKit27TipUICollectionReusableView)initWithFrame:(CGRect)frame;
- (void)setBackgroundColor:(id)color;
@end

@implementation TipUICollectionReusableView

- (UIColor)backgroundColor
{
  sub_1A3622E3C();
  sub_1A3622E2C();
  sub_1A3622DFC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  selfCopy = self;
  v4 = TipUICollectionReusableView.backgroundColor.getter();

  return v4;
}

- (void)setBackgroundColor:(id)color
{
  sub_1A3622E3C();
  sub_1A3622E2C();
  sub_1A3622DFC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  colorCopy = color;
  selfCopy = self;
  TipUICollectionReusableView.backgroundColor.setter(color);
}

- (CGSize)intrinsicContentSize
{
  sub_1A3622E3C();
  sub_1A3622E2C();
  sub_1A3622DFC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  selfCopy = self;
  TipUICollectionReusableView.intrinsicContentSize.getter();
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  sub_1A3622E3C();
  sub_1A3622E2C();
  sub_1A3622DFC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  selfCopy = self;
  v7 = TipUICollectionReusableView.sizeThatFits(_:)(__PAIR128__(*&height, *&width));

  v8 = v7.width;
  v9 = v7.height;
  result.height = v9;
  result.width = v8;
  return result;
}

- (_TtC6TipKit27TipUICollectionReusableView)initWithFrame:(CGRect)frame
{
  sub_1A3622E3C();
  sub_1A3622E2C();
  sub_1A3622DFC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = TipUICollectionReusableView.init(frame:)();

  return v3;
}

- (_TtC6TipKit27TipUICollectionReusableView)initWithCoder:(id)coder
{
  sub_1A3622E3C();
  sub_1A3622E2C();
  sub_1A3622DFC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = TipUICollectionReusableView.init(coder:)(coder);

  return v4;
}

@end
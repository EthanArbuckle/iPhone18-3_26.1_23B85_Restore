@interface TipUICollectionReusableView
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (UIColor)backgroundColor;
- (_TtC6TipKit27TipUICollectionReusableView)initWithCoder:(id)a3;
- (_TtC6TipKit27TipUICollectionReusableView)initWithFrame:(CGRect)a3;
- (void)setBackgroundColor:(id)a3;
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

  v3 = self;
  v4 = TipUICollectionReusableView.backgroundColor.getter();

  return v4;
}

- (void)setBackgroundColor:(id)a3
{
  sub_1A3622E3C();
  sub_1A3622E2C();
  sub_1A3622DFC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = a3;
  v6 = self;
  TipUICollectionReusableView.backgroundColor.setter(a3);
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

  v3 = self;
  TipUICollectionReusableView.intrinsicContentSize.getter();
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  sub_1A3622E3C();
  sub_1A3622E2C();
  sub_1A3622DFC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = self;
  v7 = TipUICollectionReusableView.sizeThatFits(_:)(__PAIR128__(*&height, *&width));

  v8 = v7.width;
  v9 = v7.height;
  result.height = v9;
  result.width = v8;
  return result;
}

- (_TtC6TipKit27TipUICollectionReusableView)initWithFrame:(CGRect)a3
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

- (_TtC6TipKit27TipUICollectionReusableView)initWithCoder:(id)a3
{
  sub_1A3622E3C();
  sub_1A3622E2C();
  sub_1A3622DFC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = TipUICollectionReusableView.init(coder:)(a3);

  return v4;
}

@end
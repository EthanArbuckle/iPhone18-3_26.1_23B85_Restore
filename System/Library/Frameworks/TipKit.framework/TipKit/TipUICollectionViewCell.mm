@interface TipUICollectionViewCell
- (UIColor)backgroundColor;
- (_TtC6TipKit23TipUICollectionViewCell)initWithCoder:(id)a3;
- (_TtC6TipKit23TipUICollectionViewCell)initWithFrame:(CGRect)a3;
- (void)setBackgroundColor:(id)a3;
@end

@implementation TipUICollectionViewCell

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
  v4 = TipUICollectionViewCell.backgroundColor.getter();

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
  TipUICollectionViewCell.backgroundColor.setter(a3);
}

- (_TtC6TipKit23TipUICollectionViewCell)initWithFrame:(CGRect)a3
{
  sub_1A3622E3C();
  sub_1A3622E2C();
  sub_1A3622DFC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = TipUICollectionViewCell.init(frame:)();

  return v3;
}

- (_TtC6TipKit23TipUICollectionViewCell)initWithCoder:(id)a3
{
  sub_1A3622E3C();
  sub_1A3622E2C();
  sub_1A3622DFC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = TipUICollectionViewCell.init(coder:)(a3);

  return v4;
}

@end
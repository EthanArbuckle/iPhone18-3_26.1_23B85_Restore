@interface TipUICollectionViewCell
- (UIColor)backgroundColor;
- (_TtC6TipKit23TipUICollectionViewCell)initWithCoder:(id)coder;
- (_TtC6TipKit23TipUICollectionViewCell)initWithFrame:(CGRect)frame;
- (void)setBackgroundColor:(id)color;
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

  selfCopy = self;
  v4 = TipUICollectionViewCell.backgroundColor.getter();

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
  TipUICollectionViewCell.backgroundColor.setter(color);
}

- (_TtC6TipKit23TipUICollectionViewCell)initWithFrame:(CGRect)frame
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

- (_TtC6TipKit23TipUICollectionViewCell)initWithCoder:(id)coder
{
  sub_1A3622E3C();
  sub_1A3622E2C();
  sub_1A3622DFC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = TipUICollectionViewCell.init(coder:)(coder);

  return v4;
}

@end
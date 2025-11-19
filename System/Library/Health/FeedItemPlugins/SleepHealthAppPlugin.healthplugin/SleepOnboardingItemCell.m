@interface SleepOnboardingItemCell
- (_TtC20SleepHealthAppPlugin23SleepOnboardingItemCell)initWithCoder:(id)a3;
- (_TtC20SleepHealthAppPlugin23SleepOnboardingItemCell)initWithFrame:(CGRect)a3;
@end

@implementation SleepOnboardingItemCell

- (_TtC20SleepHealthAppPlugin23SleepOnboardingItemCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = sub_29E690C10(x, y, width, height);

  return v7;
}

- (_TtC20SleepHealthAppPlugin23SleepOnboardingItemCell)initWithCoder:(id)a3
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = self + OBJC_IVAR____TtC20SleepHealthAppPlugin23SleepOnboardingItemCell_item;
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC20SleepHealthAppPlugin23SleepOnboardingItemCell____lazy_storage___hostView) = 0;
  result = sub_29E754E48();
  __break(1u);
  return result;
}

@end
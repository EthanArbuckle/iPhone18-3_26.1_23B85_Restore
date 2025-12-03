@interface ScheduleAlertCell
- (_TtC20SleepHealthAppPlugin17ScheduleAlertCell)initWithCoder:(id)coder;
- (_TtC20SleepHealthAppPlugin17ScheduleAlertCell)initWithFrame:(CGRect)frame;
@end

@implementation ScheduleAlertCell

- (_TtC20SleepHealthAppPlugin17ScheduleAlertCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = self + OBJC_IVAR____TtC20SleepHealthAppPlugin17ScheduleAlertCell_item;
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 4) = 0;
  v9 = (&self->super.super.super.super.super.super.super.isa + OBJC_IVAR____TtC20SleepHealthAppPlugin17ScheduleAlertCell_textAccessibilityIdentifier);
  *v9 = 0;
  v9[1] = 0;
  v10 = (&self->super.super.super.super.super.super.super.isa + OBJC_IVAR____TtC20SleepHealthAppPlugin17ScheduleAlertCell_textTitle);
  v11 = type metadata accessor for ScheduleAlertCell();
  *v10 = 0;
  v10[1] = 0;
  v14.receiver = self;
  v14.super_class = v11;
  height = [(SleepCollectionViewListCell *)&v14 initWithFrame:x, y, width, height];

  return height;
}

- (_TtC20SleepHealthAppPlugin17ScheduleAlertCell)initWithCoder:(id)coder
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = self + OBJC_IVAR____TtC20SleepHealthAppPlugin17ScheduleAlertCell_item;
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *(v5 + 4) = 0;
  v6 = (&self->super.super.super.super.super.super.super.isa + OBJC_IVAR____TtC20SleepHealthAppPlugin17ScheduleAlertCell_textAccessibilityIdentifier);
  *v6 = 0;
  v6[1] = 0;
  v7 = (&self->super.super.super.super.super.super.super.isa + OBJC_IVAR____TtC20SleepHealthAppPlugin17ScheduleAlertCell_textTitle);
  *v7 = 0;
  v7[1] = 0;
  v11.receiver = self;
  v11.super_class = type metadata accessor for ScheduleAlertCell();
  coderCopy = coder;
  v9 = [(SleepCollectionViewListCell *)&v11 initWithCoder:coderCopy];

  if (v9)
  {
  }

  return v9;
}

@end
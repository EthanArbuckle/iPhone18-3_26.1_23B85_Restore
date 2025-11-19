@interface ScheduleOccurrenceCell
- (_TtC20SleepHealthAppPlugin22ScheduleOccurrenceCell)initWithCoder:(id)a3;
- (_TtC20SleepHealthAppPlugin22ScheduleOccurrenceCell)initWithFrame:(CGRect)a3;
- (void)didMoveToSuperview;
@end

@implementation ScheduleOccurrenceCell

- (void)didMoveToSuperview
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4.receiver = self;
  v4.super_class = type metadata accessor for ScheduleOccurrenceCell();
  v3 = self;
  [(SleepCollectionViewListCell *)&v4 didMoveToSuperview];
  sub_29E619138();
}

- (_TtC20SleepHealthAppPlugin22ScheduleOccurrenceCell)initWithFrame:(CGRect)a3
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

  v8 = self + OBJC_IVAR____TtC20SleepHealthAppPlugin22ScheduleOccurrenceCell_item;
  v9 = type metadata accessor for ScheduleOccurrenceCell();
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 4) = 0;
  v12.receiver = self;
  v12.super_class = v9;
  v10 = [(SleepCollectionViewListCell *)&v12 initWithFrame:x, y, width, height];

  return v10;
}

- (_TtC20SleepHealthAppPlugin22ScheduleOccurrenceCell)initWithCoder:(id)a3
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = self + OBJC_IVAR____TtC20SleepHealthAppPlugin22ScheduleOccurrenceCell_item;
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *(v5 + 4) = 0;
  v9.receiver = self;
  v9.super_class = type metadata accessor for ScheduleOccurrenceCell();
  v6 = a3;
  v7 = [(SleepCollectionViewListCell *)&v9 initWithCoder:v6];

  if (v7)
  {
  }

  return v7;
}

@end
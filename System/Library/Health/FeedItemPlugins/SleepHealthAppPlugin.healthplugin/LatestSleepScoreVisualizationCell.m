@interface LatestSleepScoreVisualizationCell
- (_TtC20SleepHealthAppPlugin33LatestSleepScoreVisualizationCell)initWithCoder:(id)a3;
- (_TtC20SleepHealthAppPlugin33LatestSleepScoreVisualizationCell)initWithFrame:(CGRect)a3;
@end

@implementation LatestSleepScoreVisualizationCell

- (_TtC20SleepHealthAppPlugin33LatestSleepScoreVisualizationCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  ObjectType = swift_getObjectType();
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = OBJC_IVAR____TtC20SleepHealthAppPlugin33LatestSleepScoreVisualizationCell_item;
  v10 = type metadata accessor for LatestSleepScoreVisualizationItem(0);
  (*(*(v10 - 8) + 56))(self + v9, 1, 1, v10);
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC20SleepHealthAppPlugin33LatestSleepScoreVisualizationCell_allowedToAnimate) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC20SleepHealthAppPlugin33LatestSleepScoreVisualizationCell_hasCompletedAnimation) = 0;
  v13.receiver = self;
  v13.super_class = ObjectType;
  v11 = [(HostingConfigurationCell *)&v13 initWithFrame:x, y, width, height];

  return v11;
}

- (_TtC20SleepHealthAppPlugin33LatestSleepScoreVisualizationCell)initWithCoder:(id)a3
{
  ObjectType = swift_getObjectType();
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = OBJC_IVAR____TtC20SleepHealthAppPlugin33LatestSleepScoreVisualizationCell_item;
  v7 = type metadata accessor for LatestSleepScoreVisualizationItem(0);
  (*(*(v7 - 8) + 56))(self + v6, 1, 1, v7);
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC20SleepHealthAppPlugin33LatestSleepScoreVisualizationCell_allowedToAnimate) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC20SleepHealthAppPlugin33LatestSleepScoreVisualizationCell_hasCompletedAnimation) = 0;
  v11.receiver = self;
  v11.super_class = ObjectType;
  v8 = a3;
  v9 = [(HostingConfigurationCell *)&v11 initWithCoder:v8];

  if (v9)
  {
  }

  return v9;
}

@end
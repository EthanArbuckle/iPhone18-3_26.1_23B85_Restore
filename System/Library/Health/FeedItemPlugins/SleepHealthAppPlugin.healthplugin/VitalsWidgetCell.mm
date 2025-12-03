@interface VitalsWidgetCell
- (_TtC20SleepHealthAppPlugin16VitalsWidgetCell)initWithCoder:(id)coder;
- (_TtC20SleepHealthAppPlugin16VitalsWidgetCell)initWithFrame:(CGRect)frame;
@end

@implementation VitalsWidgetCell

- (_TtC20SleepHealthAppPlugin16VitalsWidgetCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  ObjectType = swift_getObjectType();
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = OBJC_IVAR____TtC20SleepHealthAppPlugin16VitalsWidgetCell_item;
  v10 = type metadata accessor for VitalsWidgetItem(0);
  (*(*(v10 - 8) + 56))(self + v9, 1, 1, v10);
  v13.receiver = self;
  v13.super_class = ObjectType;
  height = [(HostingConfigurationCell *)&v13 initWithFrame:x, y, width, height];

  return height;
}

- (_TtC20SleepHealthAppPlugin16VitalsWidgetCell)initWithCoder:(id)coder
{
  ObjectType = swift_getObjectType();
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = OBJC_IVAR____TtC20SleepHealthAppPlugin16VitalsWidgetCell_item;
  v7 = type metadata accessor for VitalsWidgetItem(0);
  (*(*(v7 - 8) + 56))(self + v6, 1, 1, v7);
  v11.receiver = self;
  v11.super_class = ObjectType;
  coderCopy = coder;
  v9 = [(HostingConfigurationCell *)&v11 initWithCoder:coderCopy];

  if (v9)
  {
  }

  return v9;
}

@end
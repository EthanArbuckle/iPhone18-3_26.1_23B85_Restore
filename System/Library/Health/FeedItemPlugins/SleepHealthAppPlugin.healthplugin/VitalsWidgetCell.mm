@interface VitalsWidgetCell
- (_TtC20SleepHealthAppPlugin16VitalsWidgetCell)initWithCoder:(id)a3;
- (_TtC20SleepHealthAppPlugin16VitalsWidgetCell)initWithFrame:(CGRect)a3;
@end

@implementation VitalsWidgetCell

- (_TtC20SleepHealthAppPlugin16VitalsWidgetCell)initWithFrame:(CGRect)a3
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

  v9 = OBJC_IVAR____TtC20SleepHealthAppPlugin16VitalsWidgetCell_item;
  v10 = type metadata accessor for VitalsWidgetItem(0);
  (*(*(v10 - 8) + 56))(self + v9, 1, 1, v10);
  v13.receiver = self;
  v13.super_class = ObjectType;
  v11 = [(HostingConfigurationCell *)&v13 initWithFrame:x, y, width, height];

  return v11;
}

- (_TtC20SleepHealthAppPlugin16VitalsWidgetCell)initWithCoder:(id)a3
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
  v8 = a3;
  v9 = [(HostingConfigurationCell *)&v11 initWithCoder:v8];

  if (v9)
  {
  }

  return v9;
}

@end
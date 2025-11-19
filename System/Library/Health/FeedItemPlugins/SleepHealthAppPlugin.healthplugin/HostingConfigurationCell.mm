@interface HostingConfigurationCell
- (_TtC20SleepHealthAppPlugin24HostingConfigurationCell)initWithCoder:(id)a3;
- (_TtC20SleepHealthAppPlugin24HostingConfigurationCell)initWithFrame:(CGRect)a3;
- (void)_bridgedUpdateConfigurationUsingState:(id)a3;
@end

@implementation HostingConfigurationCell

- (_TtC20SleepHealthAppPlugin24HostingConfigurationCell)initWithFrame:(CGRect)a3
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

  v10.receiver = self;
  v10.super_class = type metadata accessor for HostingConfigurationCell();
  v8 = [(HostingConfigurationCell *)&v10 initWithFrame:x, y, width, height];
  [(HostingConfigurationCell *)v8 setAutomaticallyUpdatesContentConfiguration:0];

  return v8;
}

- (_TtC20SleepHealthAppPlugin24HostingConfigurationCell)initWithCoder:(id)a3
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = sub_29E754E48();
  __break(1u);
  return result;
}

- (void)_bridgedUpdateConfigurationUsingState:(id)a3
{
  v4 = sub_29E752168();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x2A1C7C4A8](v4);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v11 = &v16 - v10;
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E752158();
  (*(v5 + 16))(v9, v11, v4);
  v12 = self;
  [(HostingConfigurationCell *)v12 bounds];
  CGRectGetWidth(v17);
  v13 = sub_29E7509F8();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  sub_29E7509E8();
  (*((*MEMORY[0x29EDCA1E8] & v12->super.super.super.super.super.isa) + 0x50))();

  (*(v5 + 8))(v11, v4);
}

@end
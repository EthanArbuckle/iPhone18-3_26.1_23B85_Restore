@interface HostingConfigurationCell
- (_TtC20SleepHealthAppPlugin24HostingConfigurationCell)initWithCoder:(id)coder;
- (_TtC20SleepHealthAppPlugin24HostingConfigurationCell)initWithFrame:(CGRect)frame;
- (void)_bridgedUpdateConfigurationUsingState:(id)state;
@end

@implementation HostingConfigurationCell

- (_TtC20SleepHealthAppPlugin24HostingConfigurationCell)initWithFrame:(CGRect)frame
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

  v10.receiver = self;
  v10.super_class = type metadata accessor for HostingConfigurationCell();
  height = [(HostingConfigurationCell *)&v10 initWithFrame:x, y, width, height];
  [(HostingConfigurationCell *)height setAutomaticallyUpdatesContentConfiguration:0];

  return height;
}

- (_TtC20SleepHealthAppPlugin24HostingConfigurationCell)initWithCoder:(id)coder
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

- (void)_bridgedUpdateConfigurationUsingState:(id)state
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
  selfCopy = self;
  [(HostingConfigurationCell *)selfCopy bounds];
  CGRectGetWidth(v17);
  v13 = sub_29E7509F8();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  sub_29E7509E8();
  (*((*MEMORY[0x29EDCA1E8] & selfCopy->super.super.super.super.super.isa) + 0x50))();

  (*(v5 + 8))(v11, v4);
}

@end
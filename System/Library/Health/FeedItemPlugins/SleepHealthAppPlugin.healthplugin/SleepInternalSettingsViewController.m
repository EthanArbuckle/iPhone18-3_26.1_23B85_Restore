@interface SleepInternalSettingsViewController
- (_TtC20SleepHealthAppPlugin35SleepInternalSettingsViewController)initWithCoder:(id)a3;
- (_TtC20SleepHealthAppPlugin35SleepInternalSettingsViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC20SleepHealthAppPlugin35SleepInternalSettingsViewController)initWithStyle:(int64_t)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)switchCellValueChanged:(id)a3 value:(BOOL)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
@end

@implementation SleepInternalSettingsViewController

- (_TtC20SleepHealthAppPlugin35SleepInternalSettingsViewController)initWithCoder:(id)a3
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC20SleepHealthAppPlugin35SleepInternalSettingsViewController_sections) = &unk_2A24FCE88;
  result = sub_29E754E48();
  __break(1u);
  return result;
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = (*(&self->super.super.super.super.isa + OBJC_IVAR____TtC20SleepHealthAppPlugin35SleepInternalSettingsViewController_sections))[2];

  return v4;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  result = swift_task_isCurrentExecutor();
  if ((result & 1) == 0)
  {
    result = swift_task_reportUnexpectedExecutor();
  }

  if (a4 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC20SleepHealthAppPlugin35SleepInternalSettingsViewController_sections);
    if (*(v7 + 16) > a4)
    {
      sub_29E691AC4(*(v7 + a4 + 32));
      v9 = *(v8 + 16);

      return v9;
    }
  }

  __break(1u);
  return result;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = sub_29E74EEE8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E74EEA8();
  v11 = a3;
  v12 = self;
  v13 = sub_29E691CEC(v11);

  (*(v7 + 8))(v10, v6);

  return v13;
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v8 = sub_29E74EEE8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x2A1C7C4A8](v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E74EEA8();
  v13 = a3;
  v14 = a4;
  v15 = self;
  sub_29E693950();

  (*(v9 + 8))(v12, v8);
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = sub_29E74EEE8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E74EEA8();
  v11 = a3;
  v12 = self;
  sub_29E6921E0(v11);

  (*(v7 + 8))(v10, v6);
}

- (_TtC20SleepHealthAppPlugin35SleepInternalSettingsViewController)initWithStyle:(int64_t)a3
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC20SleepHealthAppPlugin35SleepInternalSettingsViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)switchCellValueChanged:(id)a3 value:(BOOL)a4
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = a3;
  v8 = self;
  sub_29E692820(a3, a4);
}

@end
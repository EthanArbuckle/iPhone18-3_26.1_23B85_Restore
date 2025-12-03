@interface SleepInternalSettingsViewController
- (_TtC20SleepHealthAppPlugin35SleepInternalSettingsViewController)initWithCoder:(id)coder;
- (_TtC20SleepHealthAppPlugin35SleepInternalSettingsViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC20SleepHealthAppPlugin35SleepInternalSettingsViewController)initWithStyle:(int64_t)style;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)switchCellValueChanged:(id)changed value:(BOOL)value;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
@end

@implementation SleepInternalSettingsViewController

- (_TtC20SleepHealthAppPlugin35SleepInternalSettingsViewController)initWithCoder:(id)coder
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

- (int64_t)numberOfSectionsInTableView:(id)view
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

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  result = swift_task_isCurrentExecutor();
  if ((result & 1) == 0)
  {
    result = swift_task_reportUnexpectedExecutor();
  }

  if (section < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC20SleepHealthAppPlugin35SleepInternalSettingsViewController_sections);
    if (*(v7 + 16) > section)
    {
      sub_29E691AC4(*(v7 + section + 32));
      v9 = *(v8 + 16);

      return v9;
    }
  }

  __break(1u);
  return result;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
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
  viewCopy = view;
  selfCopy = self;
  v13 = sub_29E691CEC(viewCopy);

  (*(v7 + 8))(v10, v6);

  return v13;
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
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
  viewCopy = view;
  cellCopy = cell;
  selfCopy = self;
  sub_29E693950();

  (*(v9 + 8))(v12, v8);
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
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
  viewCopy = view;
  selfCopy = self;
  sub_29E6921E0(viewCopy);

  (*(v7 + 8))(v10, v6);
}

- (_TtC20SleepHealthAppPlugin35SleepInternalSettingsViewController)initWithStyle:(int64_t)style
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

- (_TtC20SleepHealthAppPlugin35SleepInternalSettingsViewController)initWithNibName:(id)name bundle:(id)bundle
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

- (void)switchCellValueChanged:(id)changed value:(BOOL)value
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  changedCopy = changed;
  selfCopy = self;
  sub_29E692820(changed, value);
}

@end
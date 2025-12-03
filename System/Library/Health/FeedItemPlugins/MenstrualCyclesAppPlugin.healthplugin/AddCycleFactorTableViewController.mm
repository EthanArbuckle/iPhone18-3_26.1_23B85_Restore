@interface AddCycleFactorTableViewController
- (_TtC24MenstrualCyclesAppPlugin33AddCycleFactorTableViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC24MenstrualCyclesAppPlugin33AddCycleFactorTableViewController)initWithStyle:(int64_t)style;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForFooterInSection:(int64_t)section;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (void)saveNewFactorAndDismiss;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation AddCycleFactorTableViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_29E1FB104();
}

- (void)saveNewFactorAndDismiss
{
  selfCopy = self;
  sub_29E1FB360();
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  v4 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33AddCycleFactorTableViewController_sections;
  swift_beginAccess();
  return (*(&self->super.super.super.super.isa + v4))[2];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v6 = sub_29E2BCFB4();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2BCF44();
  viewCopy = view;
  selfCopy = self;
  sub_29E1FCB98(viewCopy);
  v13 = v12;

  (*(v7 + 8))(v9, v6);

  return v13;
}

- (id)tableView:(id)view viewForFooterInSection:(int64_t)section
{
  viewCopy = view;
  selfCopy = self;
  sub_29E1FE41C(viewCopy, section);
  v9 = v8;

  return v9;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v6 = sub_29E2BCFB4();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2BCF44();
  viewCopy = view;
  selfCopy = self;
  sub_29E1FE89C(viewCopy);

  (*(v7 + 8))(v9, v6);
}

- (_TtC24MenstrualCyclesAppPlugin33AddCycleFactorTableViewController)initWithStyle:(int64_t)style
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC24MenstrualCyclesAppPlugin33AddCycleFactorTableViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
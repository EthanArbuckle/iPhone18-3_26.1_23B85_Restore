@interface AddCycleFactorTableViewController
- (_TtC24MenstrualCyclesAppPlugin33AddCycleFactorTableViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC24MenstrualCyclesAppPlugin33AddCycleFactorTableViewController)initWithStyle:(int64_t)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (void)saveNewFactorAndDismiss;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation AddCycleFactorTableViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_29E1FB104();
}

- (void)saveNewFactorAndDismiss
{
  v2 = self;
  sub_29E1FB360();
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v4 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33AddCycleFactorTableViewController_sections;
  swift_beginAccess();
  return (*(&self->super.super.super.super.isa + v4))[2];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = sub_29E2BCFB4();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2BCF44();
  v10 = a3;
  v11 = self;
  sub_29E1FCB98(v10);
  v13 = v12;

  (*(v7 + 8))(v9, v6);

  return v13;
}

- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  sub_29E1FE41C(v6, a4);
  v9 = v8;

  return v9;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = sub_29E2BCFB4();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2BCF44();
  v10 = a3;
  v11 = self;
  sub_29E1FE89C(v10);

  (*(v7 + 8))(v9, v6);
}

- (_TtC24MenstrualCyclesAppPlugin33AddCycleFactorTableViewController)initWithStyle:(int64_t)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC24MenstrualCyclesAppPlugin33AddCycleFactorTableViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
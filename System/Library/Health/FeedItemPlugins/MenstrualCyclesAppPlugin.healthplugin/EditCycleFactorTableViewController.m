@interface EditCycleFactorTableViewController
- (_TtC24MenstrualCyclesAppPlugin34EditCycleFactorTableViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC24MenstrualCyclesAppPlugin34EditCycleFactorTableViewController)initWithStyle:(int64_t)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)cancelAndDismiss;
- (void)doneSaveAndDismiss;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
@end

@implementation EditCycleFactorTableViewController

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  if (a4 < 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v4 = *(self + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin34EditCycleFactorTableViewController_sections);
  if (*(v4 + 16) <= a4)
  {
LABEL_8:
    __break(1u);
    return self;
  }

  if (*(v4 + a4 + 32))
  {
    v5 = self + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin34EditCycleFactorTableViewController_deleteRows;
  }

  else
  {
    v5 = self + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin34EditCycleFactorTableViewController_dateRows;
    swift_beginAccess();
  }

  return *(*v5 + 16);
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = sub_29E2BCFB4();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2BCF44();
  v10 = a3;
  v11 = self;
  v12 = sub_29E16228C(v10);

  (*(v7 + 8))(v9, v6);

  return v12;
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
  sub_29E1633E0(v10);

  (*(v7 + 8))(v9, v6);
}

- (void)doneSaveAndDismiss
{
  v2 = self;
  sub_29E165064();
}

- (void)cancelAndDismiss
{
  v4 = self;
  v2 = [(EditCycleFactorTableViewController *)v4 presentingViewController];
  if (v2)
  {
    v3 = v2;
    [v2 dismissViewControllerAnimated:1 completion:0];
  }
}

- (_TtC24MenstrualCyclesAppPlugin34EditCycleFactorTableViewController)initWithStyle:(int64_t)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC24MenstrualCyclesAppPlugin34EditCycleFactorTableViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
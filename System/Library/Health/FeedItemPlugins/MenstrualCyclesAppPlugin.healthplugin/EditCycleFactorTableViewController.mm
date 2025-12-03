@interface EditCycleFactorTableViewController
- (_TtC24MenstrualCyclesAppPlugin34EditCycleFactorTableViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC24MenstrualCyclesAppPlugin34EditCycleFactorTableViewController)initWithStyle:(int64_t)style;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)cancelAndDismiss;
- (void)doneSaveAndDismiss;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation EditCycleFactorTableViewController

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  if (section < 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v4 = *(self + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin34EditCycleFactorTableViewController_sections);
  if (*(v4 + 16) <= section)
  {
LABEL_8:
    __break(1u);
    return self;
  }

  if (*(v4 + section + 32))
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

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v6 = sub_29E2BCFB4();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2BCF44();
  viewCopy = view;
  selfCopy = self;
  v12 = sub_29E16228C(viewCopy);

  (*(v7 + 8))(v9, v6);

  return v12;
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
  sub_29E1633E0(viewCopy);

  (*(v7 + 8))(v9, v6);
}

- (void)doneSaveAndDismiss
{
  selfCopy = self;
  sub_29E165064();
}

- (void)cancelAndDismiss
{
  selfCopy = self;
  presentingViewController = [(EditCycleFactorTableViewController *)selfCopy presentingViewController];
  if (presentingViewController)
  {
    v3 = presentingViewController;
    [presentingViewController dismissViewControllerAnimated:1 completion:0];
  }
}

- (_TtC24MenstrualCyclesAppPlugin34EditCycleFactorTableViewController)initWithStyle:(int64_t)style
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC24MenstrualCyclesAppPlugin34EditCycleFactorTableViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
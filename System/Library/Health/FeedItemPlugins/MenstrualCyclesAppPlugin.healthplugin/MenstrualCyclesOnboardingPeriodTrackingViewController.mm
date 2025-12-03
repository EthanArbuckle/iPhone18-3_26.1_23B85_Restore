@interface MenstrualCyclesOnboardingPeriodTrackingViewController
- (_TtC24MenstrualCyclesAppPlugin53MenstrualCyclesOnboardingPeriodTrackingViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon;
- (_TtC24MenstrualCyclesAppPlugin53MenstrualCyclesOnboardingPeriodTrackingViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon adoptTableViewScrollView:(BOOL)view;
- (_TtC24MenstrualCyclesAppPlugin53MenstrualCyclesOnboardingPeriodTrackingViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name;
- (_TtC24MenstrualCyclesAppPlugin53MenstrualCyclesOnboardingPeriodTrackingViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name adoptTableViewScrollView:(BOOL)view;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForFooterInSection:(int64_t)section;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (void)cancelButtonTapped:(id)tapped;
- (void)dealloc;
- (void)nextButtonTapped:(id)tapped;
- (void)switchCellValueChanged:(id)changed value:(BOOL)value;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation MenstrualCyclesOnboardingPeriodTrackingViewController

- (void)dealloc
{
  v2 = *(*(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin53MenstrualCyclesOnboardingPeriodTrackingViewController_userInfo) + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_observers);
  selfCopy = self;
  [v2 unregisterObserver_];
  v4.receiver = selfCopy;
  v4.super_class = type metadata accessor for MenstrualCyclesOnboardingPeriodTrackingViewController();
  [(MenstrualCyclesOnboardingPeriodTrackingViewController *)&v4 dealloc];
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_29E071130();
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_29E07138C();
}

- (void)nextButtonTapped:(id)tapped
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_29E2C43D4();
  swift_unknownObjectRelease();
  sub_29E07158C();

  sub_29DE93B3C(&v5);
}

- (void)cancelButtonTapped:(id)tapped
{
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  tappedCopy = tapped;
  selfCopy = self;

  v7 = sub_29DE9ABAC(tapped, sub_29E073D5C, v5);

  [(MenstrualCyclesOnboardingPeriodTrackingViewController *)selfCopy presentViewController:v7 animated:1 completion:0];
}

- (_TtC24MenstrualCyclesAppPlugin53MenstrualCyclesOnboardingPeriodTrackingViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC24MenstrualCyclesAppPlugin53MenstrualCyclesOnboardingPeriodTrackingViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC24MenstrualCyclesAppPlugin53MenstrualCyclesOnboardingPeriodTrackingViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name adoptTableViewScrollView:(BOOL)view
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC24MenstrualCyclesAppPlugin53MenstrualCyclesOnboardingPeriodTrackingViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon adoptTableViewScrollView:(BOOL)view
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  selfCopy = self;

  v4 = sub_29E06E164(0);

  v5 = v4[2];

  return v5;
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
  v12 = sub_29E072210(viewCopy);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (id)tableView:(id)view viewForFooterInSection:(int64_t)section
{
  viewCopy = view;
  selfCopy = self;
  sub_29E0727E8(viewCopy, section);
  v9 = v8;

  return v9;
}

- (void)switchCellValueChanged:(id)changed value:(BOOL)value
{
  valueCopy = value;
  changedCopy = changed;
  selfCopy = self;
  sub_29E072D18(changed, valueCopy);
}

@end
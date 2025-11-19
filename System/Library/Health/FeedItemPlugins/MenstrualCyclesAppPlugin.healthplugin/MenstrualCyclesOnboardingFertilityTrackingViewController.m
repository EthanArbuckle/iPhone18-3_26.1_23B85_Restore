@interface MenstrualCyclesOnboardingFertilityTrackingViewController
- (_TtC24MenstrualCyclesAppPlugin56MenstrualCyclesOnboardingFertilityTrackingViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5;
- (_TtC24MenstrualCyclesAppPlugin56MenstrualCyclesOnboardingFertilityTrackingViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 adoptTableViewScrollView:(BOOL)a6;
- (_TtC24MenstrualCyclesAppPlugin56MenstrualCyclesOnboardingFertilityTrackingViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5;
- (_TtC24MenstrualCyclesAppPlugin56MenstrualCyclesOnboardingFertilityTrackingViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 adoptTableViewScrollView:(BOOL)a6;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (void)cancelButtonTapped:(id)a3;
- (void)dealloc;
- (void)nextButtonTapped:(id)a3;
- (void)switchCellValueChanged:(id)a3 value:(BOOL)a4;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation MenstrualCyclesOnboardingFertilityTrackingViewController

- (void)dealloc
{
  v2 = *(*(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin56MenstrualCyclesOnboardingFertilityTrackingViewController_userInfo) + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_observers);
  v3 = self;
  [v2 unregisterObserver_];
  v4.receiver = v3;
  v4.super_class = type metadata accessor for MenstrualCyclesOnboardingFertilityTrackingViewController();
  [(MenstrualCyclesOnboardingFertilityTrackingViewController *)&v4 dealloc];
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_29E11D0C8();
}

- (void)viewDidLoad
{
  v2 = self;
  sub_29E11D324();
}

- (void)nextButtonTapped:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_29E2C43D4();
  swift_unknownObjectRelease();
  sub_29E11D4BC();

  sub_29DE93B3C(&v5);
}

- (void)cancelButtonTapped:(id)a3
{
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = a3;
  v8 = self;

  v7 = sub_29DE9ABAC(a3, sub_29E11FCA4, v5);

  [(MenstrualCyclesOnboardingFertilityTrackingViewController *)v8 presentViewController:v7 animated:1 completion:0];
}

- (_TtC24MenstrualCyclesAppPlugin56MenstrualCyclesOnboardingFertilityTrackingViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC24MenstrualCyclesAppPlugin56MenstrualCyclesOnboardingFertilityTrackingViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC24MenstrualCyclesAppPlugin56MenstrualCyclesOnboardingFertilityTrackingViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 adoptTableViewScrollView:(BOOL)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC24MenstrualCyclesAppPlugin56MenstrualCyclesOnboardingFertilityTrackingViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 adoptTableViewScrollView:(BOOL)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v3 = *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin56MenstrualCyclesOnboardingFertilityTrackingViewController_userInfo);
  v4 = sub_29E204168(1u, *(v3 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_suppressedAnalysisKinds));
  v5 = &unk_2A24AF0F0;
  if (!v4 && !*(v3 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_fertileWindowProjectionsEnabled))
  {
    v5 = &unk_2A24AF118;
  }

  v6 = v5[2];

  return v6;
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
  v12 = sub_29E11E378(v10);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  sub_29E11EA78(v6, a4);
  v9 = v8;

  return v9;
}

- (void)switchCellValueChanged:(id)a3 value:(BOOL)a4
{
  v7 = a3;
  v8 = self;
  sub_29E11F008(a3, a4);
}

@end
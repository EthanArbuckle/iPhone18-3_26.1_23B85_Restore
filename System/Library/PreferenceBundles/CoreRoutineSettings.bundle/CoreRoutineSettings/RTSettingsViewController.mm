@interface RTSettingsViewController
- (_TtC19CoreRoutineSettings24RTSettingsViewController)initWithCoder:(id)coder;
- (_TtC19CoreRoutineSettings24RTSettingsViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)setupSettingsMainView:(id)view;
- (void)dealloc;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWasBackgrounded;
@end

@implementation RTSettingsViewController

- (void)dealloc
{
  v3 = objc_opt_self();
  selfCopy = self;
  defaultCenter = [v3 defaultCenter];
  [defaultCenter removeObserver:selfCopy];

  v6.receiver = selfCopy;
  v6.super_class = type metadata accessor for RTSettingsViewController();
  [(RTSettingsViewController *)&v6 dealloc];
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1E3C();
}

- (id)setupSettingsMainView:(id)view
{
  viewCopy = view;
  sub_7548(&v7);
  v4 = objc_allocWithZone(sub_1DF4(&qword_21408));
  v5 = sub_126F0();

  return v5;
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v3 = *(&stru_68.reloff + (swift_isaMask & self->super.super.super.isa));
  selfCopy = self;
  v3();
}

- (void)viewDidAppear:(BOOL)appear
{
  v3 = *(&stru_68.offset + (swift_isaMask & self->super.super.super.isa));
  selfCopy = self;
  v3();
}

- (void)viewWasBackgrounded
{
  selfCopy = self;
  navigationController = [(RTSettingsViewController *)selfCopy navigationController];
  if (navigationController)
  {
    v3 = navigationController;
    v4 = [navigationController popViewControllerAnimated:0];
  }
}

- (_TtC19CoreRoutineSettings24RTSettingsViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_12A50();
    v6 = OBJC_IVAR____TtC19CoreRoutineSettings24RTSettingsViewController_sessionStartDate;
    v7 = sub_12520();
    (*(*(v7 - 8) + 56))(self + v6, 1, 1, v7);
    v8 = (self + OBJC_IVAR____TtC19CoreRoutineSettings24RTSettingsViewController_canBeShownFromSuspendedState);
    *v8 = sub_1AC8;
    v8[1] = 0;
    bundleCopy = bundle;
    v10 = sub_12A30();
  }

  else
  {
    v11 = OBJC_IVAR____TtC19CoreRoutineSettings24RTSettingsViewController_sessionStartDate;
    v12 = sub_12520();
    (*(*(v12 - 8) + 56))(self + v11, 1, 1, v12);
    v13 = (self + OBJC_IVAR____TtC19CoreRoutineSettings24RTSettingsViewController_canBeShownFromSuspendedState);
    *v13 = sub_1AC8;
    v13[1] = 0;
    bundleCopy2 = bundle;
    v10 = 0;
  }

  v17.receiver = self;
  v17.super_class = type metadata accessor for RTSettingsViewController();
  v15 = [(RTSettingsViewController *)&v17 initWithNibName:v10 bundle:bundle];

  return v15;
}

- (_TtC19CoreRoutineSettings24RTSettingsViewController)initWithCoder:(id)coder
{
  v5 = OBJC_IVAR____TtC19CoreRoutineSettings24RTSettingsViewController_sessionStartDate;
  v6 = sub_12520();
  (*(*(v6 - 8) + 56))(self + v5, 1, 1, v6);
  v7 = (self + OBJC_IVAR____TtC19CoreRoutineSettings24RTSettingsViewController_canBeShownFromSuspendedState);
  *v7 = sub_1AC8;
  v7[1] = 0;
  v11.receiver = self;
  v11.super_class = type metadata accessor for RTSettingsViewController();
  coderCopy = coder;
  v9 = [(RTSettingsViewController *)&v11 initWithCoder:coderCopy];

  if (v9)
  {
  }

  return v9;
}

@end
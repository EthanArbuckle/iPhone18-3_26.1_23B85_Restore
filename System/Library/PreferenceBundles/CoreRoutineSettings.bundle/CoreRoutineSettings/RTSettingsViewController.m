@interface RTSettingsViewController
- (_TtC19CoreRoutineSettings24RTSettingsViewController)initWithCoder:(id)a3;
- (_TtC19CoreRoutineSettings24RTSettingsViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)setupSettingsMainView:(id)a3;
- (void)dealloc;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWasBackgrounded;
@end

@implementation RTSettingsViewController

- (void)dealloc
{
  v3 = objc_opt_self();
  v4 = self;
  v5 = [v3 defaultCenter];
  [v5 removeObserver:v4];

  v6.receiver = v4;
  v6.super_class = type metadata accessor for RTSettingsViewController();
  [(RTSettingsViewController *)&v6 dealloc];
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1E3C();
}

- (id)setupSettingsMainView:(id)a3
{
  v3 = a3;
  sub_7548(&v7);
  v4 = objc_allocWithZone(sub_1DF4(&qword_21408));
  v5 = sub_126F0();

  return v5;
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = *(&stru_68.reloff + (swift_isaMask & self->super.super.super.isa));
  v4 = self;
  v3();
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = *(&stru_68.offset + (swift_isaMask & self->super.super.super.isa));
  v4 = self;
  v3();
}

- (void)viewWasBackgrounded
{
  v5 = self;
  v2 = [(RTSettingsViewController *)v5 navigationController];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 popViewControllerAnimated:0];
  }
}

- (_TtC19CoreRoutineSettings24RTSettingsViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_12A50();
    v6 = OBJC_IVAR____TtC19CoreRoutineSettings24RTSettingsViewController_sessionStartDate;
    v7 = sub_12520();
    (*(*(v7 - 8) + 56))(self + v6, 1, 1, v7);
    v8 = (self + OBJC_IVAR____TtC19CoreRoutineSettings24RTSettingsViewController_canBeShownFromSuspendedState);
    *v8 = sub_1AC8;
    v8[1] = 0;
    v9 = a4;
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
    v14 = a4;
    v10 = 0;
  }

  v17.receiver = self;
  v17.super_class = type metadata accessor for RTSettingsViewController();
  v15 = [(RTSettingsViewController *)&v17 initWithNibName:v10 bundle:a4];

  return v15;
}

- (_TtC19CoreRoutineSettings24RTSettingsViewController)initWithCoder:(id)a3
{
  v5 = OBJC_IVAR____TtC19CoreRoutineSettings24RTSettingsViewController_sessionStartDate;
  v6 = sub_12520();
  (*(*(v6 - 8) + 56))(self + v5, 1, 1, v6);
  v7 = (self + OBJC_IVAR____TtC19CoreRoutineSettings24RTSettingsViewController_canBeShownFromSuspendedState);
  *v7 = sub_1AC8;
  v7[1] = 0;
  v11.receiver = self;
  v11.super_class = type metadata accessor for RTSettingsViewController();
  v8 = a3;
  v9 = [(RTSettingsViewController *)&v11 initWithCoder:v8];

  if (v9)
  {
  }

  return v9;
}

@end
@interface TTRITimeZoneOverrideController
- (_TtC17RemindersSettings30TTRITimeZoneOverrideController)initWithCoder:(id)a3;
- (_TtC17RemindersSettings30TTRITimeZoneOverrideController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)specifiers;
- (id)timeZoneOverrideEnabled;
- (id)timeZoneOverrideSelected;
- (void)loadTimeZonePickerController:(id)a3;
- (void)setTimeZoneOverrideEnabled:(id)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation TTRITimeZoneOverrideController

- (_TtC17RemindersSettings30TTRITimeZoneOverrideController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_23C90();
  }

  return sub_E680();
}

- (_TtC17RemindersSettings30TTRITimeZoneOverrideController)initWithCoder:(id)a3
{
  *&self->PSListController_opaque[OBJC_IVAR____TtC17RemindersSettings30TTRITimeZoneOverrideController_timeZoneOverrideEnableSwitch] = 0;
  *&self->PSListController_opaque[OBJC_IVAR____TtC17RemindersSettings30TTRITimeZoneOverrideController_timeZonePickerSpecifier] = 0;
  *&self->PSListController_opaque[OBJC_IVAR____TtC17RemindersSettings30TTRITimeZoneOverrideController_daemonUserDefaultsTimeZoneOverrideObserver] = 0;
  *&self->PSListController_opaque[OBJC_IVAR____TtC17RemindersSettings30TTRITimeZoneOverrideController_timeZoneOverrideTask] = 0;
  v3 = &self->PSListController_opaque[OBJC_IVAR____TtC17RemindersSettings30TTRITimeZoneOverrideController_timeZoneCity];
  *v3 = 0;
  *(v3 + 1) = 0;
  result = sub_23FF0();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_C7A4();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_CF48(a3);
}

- (id)specifiers
{
  v2 = self;
  v3 = sub_D560();

  if (v3)
  {
    v4.super.isa = sub_23D00().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

- (void)setTimeZoneOverrideEnabled:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_DC24(v4);
}

- (id)timeZoneOverrideEnabled
{
  v2 = [objc_opt_self() daemonUserDefaults];
  v3 = [v2 timeZoneOverrideEnabled];

  v4 = [objc_allocWithZone(NSNumber) initWithBool:v3];

  return v4;
}

- (id)timeZoneOverrideSelected
{
  v2 = self;
  sub_DF10();

  v3 = sub_23C80();

  return v3;
}

- (void)loadTimeZonePickerController:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_E744();
}

@end
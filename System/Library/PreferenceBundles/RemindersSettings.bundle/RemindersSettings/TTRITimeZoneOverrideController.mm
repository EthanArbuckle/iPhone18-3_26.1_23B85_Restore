@interface TTRITimeZoneOverrideController
- (_TtC17RemindersSettings30TTRITimeZoneOverrideController)initWithCoder:(id)coder;
- (_TtC17RemindersSettings30TTRITimeZoneOverrideController)initWithNibName:(id)name bundle:(id)bundle;
- (id)specifiers;
- (id)timeZoneOverrideEnabled;
- (id)timeZoneOverrideSelected;
- (void)loadTimeZonePickerController:(id)controller;
- (void)setTimeZoneOverrideEnabled:(id)enabled;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation TTRITimeZoneOverrideController

- (_TtC17RemindersSettings30TTRITimeZoneOverrideController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_23C90();
  }

  return sub_E680();
}

- (_TtC17RemindersSettings30TTRITimeZoneOverrideController)initWithCoder:(id)coder
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
  selfCopy = self;
  sub_C7A4();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_CF48(appear);
}

- (id)specifiers
{
  selfCopy = self;
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

- (void)setTimeZoneOverrideEnabled:(id)enabled
{
  enabledCopy = enabled;
  selfCopy = self;
  sub_DC24(enabledCopy);
}

- (id)timeZoneOverrideEnabled
{
  daemonUserDefaults = [objc_opt_self() daemonUserDefaults];
  timeZoneOverrideEnabled = [daemonUserDefaults timeZoneOverrideEnabled];

  v4 = [objc_allocWithZone(NSNumber) initWithBool:timeZoneOverrideEnabled];

  return v4;
}

- (id)timeZoneOverrideSelected
{
  selfCopy = self;
  sub_DF10();

  v3 = sub_23C80();

  return v3;
}

- (void)loadTimeZonePickerController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  sub_E744();
}

@end
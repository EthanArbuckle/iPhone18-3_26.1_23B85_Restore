@interface SettingsViewController
- (_TtC24OxygenSaturationSettings22SettingsViewController)initWithCoder:(id)coder;
- (_TtC24OxygenSaturationSettings22SettingsViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)backgroundRecordingDisabledTextWithSpecifier:(id)specifier;
- (id)recordingsEnabledValueWithSpecifier:(id)specifier;
- (id)specifiers;
- (void)dealloc;
- (void)enablePressedWithAppropriateRegion:(BOOL)region;
- (void)onboardingScrollViewDidScroll:(id)scroll;
- (void)openArticle;
- (void)openPasscodeSettings;
- (void)oxygenSaturationSettingsDidChange:(id)change;
- (void)setWithRecordingsEnabledValue:(id)value specifier:(id)specifier;
- (void)setupLaterPressed;
- (void)showStartingControllerIfNeeded;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation SettingsViewController

- (_TtC24OxygenSaturationSettings22SettingsViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_5B80();
  }

  return sub_56F4();
}

- (_TtC24OxygenSaturationSettings22SettingsViewController)initWithCoder:(id)coder
{
  *&self->PSListController_opaque[OBJC_IVAR____TtC24OxygenSaturationSettings22SettingsViewController_startingController] = 0;
  self->PSListController_opaque[OBJC_IVAR____TtC24OxygenSaturationSettings22SettingsViewController_tabBarHidden] = 0;
  *&self->PSListController_opaque[OBJC_IVAR____TtC24OxygenSaturationSettings22SettingsViewController____lazy_storage___healthStore] = 0;
  *&self->PSListController_opaque[OBJC_IVAR____TtC24OxygenSaturationSettings22SettingsViewController____lazy_storage___featureAvailabilityStore] = 0;
  self->PSListController_opaque[OBJC_IVAR____TtC24OxygenSaturationSettings22SettingsViewController_isRegionSupported] = 0;
  result = sub_5CB0();
  __break(1u);
  return result;
}

- (void)dealloc
{
  v3 = objc_opt_self();
  selfCopy = self;
  defaultCenter = [v3 defaultCenter];
  [defaultCenter removeObserver:selfCopy name:UIApplicationWillEnterForegroundNotification object:0];

  v6.receiver = selfCopy;
  v6.super_class = type metadata accessor for SettingsViewController();
  [(SettingsViewController *)&v6 dealloc];
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for SettingsViewController();
  v2 = v4.receiver;
  [(SettingsViewController *)&v4 viewDidLoad];
  defaultCenter = [objc_opt_self() defaultCenter];
  [defaultCenter addObserver:v2 selector:"showStartingControllerIfNeeded" name:UIApplicationWillEnterForegroundNotification object:0];
}

- (void)showStartingControllerIfNeeded
{
  selfCopy = self;
  sub_1DD4();
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  selfCopy = self;
  sub_1F6C(appearCopy);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_2414(disappear);
}

- (id)specifiers
{
  selfCopy = self;
  sub_2BD0();
  v4 = v3;

  if (v4)
  {
    v5.super.isa = sub_5BC0().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  return v5.super.isa;
}

- (id)backgroundRecordingDisabledTextWithSpecifier:(id)specifier
{
  v3 = sub_5B60();
  v4 = HKRPLocalizedString();

  if (!v4)
  {
    sub_5B80();
    v4 = sub_5B60();
  }

  return v4;
}

- (void)setWithRecordingsEnabledValue:(id)value specifier:(id)specifier
{
  valueCopy = value;
  specifierCopy = specifier;
  selfCopy = self;
  sub_57D8();
}

- (id)recordingsEnabledValueWithSpecifier:(id)specifier
{
  v4 = OBJC_IVAR____TtC24OxygenSaturationSettings22SettingsViewController_settings;
  v5 = *&self->PSListController_opaque[OBJC_IVAR____TtC24OxygenSaturationSettings22SettingsViewController_settings];
  selfCopy = self;
  v7 = [v5 backgroundRecordingsEnabled] && (objc_msgSend(*&self->PSListController_opaque[v4], "oxygenSaturationDisabled") & 1) == 0 && !sub_1848();
  sub_59AC(0, &qword_CB30, NSNumber_ptr);
  v8.super.super.isa = sub_5C60(v7).super.super.isa;

  return v8.super.super.isa;
}

- (void)openArticle
{
  selfCopy = self;
  sub_413C();
}

- (void)enablePressedWithAppropriateRegion:(BOOL)region
{
  selfCopy = self;
  sub_43C4(region);
}

- (void)setupLaterPressed
{
  selfCopy = self;
  navigationController = [(SettingsViewController *)selfCopy navigationController];
  if (navigationController)
  {
    v3 = navigationController;
    v2NavigationController = [navigationController navigationController];

    if (v2NavigationController)
    {
      v5 = [v2NavigationController popViewControllerAnimated:1];
    }
  }
}

- (void)onboardingScrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  selfCopy = self;
  table = [(SettingsViewController *)selfCopy table];
  if (table)
  {
    v6 = table;
    [scrollCopy contentOffset];
    [v6 setContentOffset:?];
  }

  else
  {
    __break(1u);
  }
}

- (void)openPasscodeSettings
{
  v2 = sub_5AF0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v6, enum case for ExternalDeepLink.watchPasscodeSettings(_:), v2);
  sub_5AE0();
  (*(v3 + 8))(v6, v2);
}

- (void)oxygenSaturationSettingsDidChange:(id)change
{
  selfCopy = self;
  sub_5C20();
  if (qword_C940 != -1)
  {
    swift_once();
  }

  sub_5080();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_6A20;
  swift_getObjectType();
  sub_50E8();
  v5 = sub_5BA0();
  v7 = v6;
  *(v4 + 56) = &type metadata for String;
  *(v4 + 64) = sub_512C();
  *(v4 + 32) = v5;
  *(v4 + 40) = v7;
  sub_5B30();

  [(SettingsViewController *)selfCopy reloadSpecifiers];
}

@end
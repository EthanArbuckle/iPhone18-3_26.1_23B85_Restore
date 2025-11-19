@interface SettingsViewController
- (_TtC24OxygenSaturationSettings22SettingsViewController)initWithCoder:(id)a3;
- (_TtC24OxygenSaturationSettings22SettingsViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)backgroundRecordingDisabledTextWithSpecifier:(id)a3;
- (id)recordingsEnabledValueWithSpecifier:(id)a3;
- (id)specifiers;
- (void)dealloc;
- (void)enablePressedWithAppropriateRegion:(BOOL)a3;
- (void)onboardingScrollViewDidScroll:(id)a3;
- (void)openArticle;
- (void)openPasscodeSettings;
- (void)oxygenSaturationSettingsDidChange:(id)a3;
- (void)setWithRecordingsEnabledValue:(id)a3 specifier:(id)a4;
- (void)setupLaterPressed;
- (void)showStartingControllerIfNeeded;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation SettingsViewController

- (_TtC24OxygenSaturationSettings22SettingsViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_5B80();
  }

  return sub_56F4();
}

- (_TtC24OxygenSaturationSettings22SettingsViewController)initWithCoder:(id)a3
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
  v4 = self;
  v5 = [v3 defaultCenter];
  [v5 removeObserver:v4 name:UIApplicationWillEnterForegroundNotification object:0];

  v6.receiver = v4;
  v6.super_class = type metadata accessor for SettingsViewController();
  [(SettingsViewController *)&v6 dealloc];
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for SettingsViewController();
  v2 = v4.receiver;
  [(SettingsViewController *)&v4 viewDidLoad];
  v3 = [objc_opt_self() defaultCenter];
  [v3 addObserver:v2 selector:"showStartingControllerIfNeeded" name:UIApplicationWillEnterForegroundNotification object:0];
}

- (void)showStartingControllerIfNeeded
{
  v2 = self;
  sub_1DD4();
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v4 = self;
  sub_1F6C(v3);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  sub_2414(a3);
}

- (id)specifiers
{
  v2 = self;
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

- (id)backgroundRecordingDisabledTextWithSpecifier:(id)a3
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

- (void)setWithRecordingsEnabledValue:(id)a3 specifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_57D8();
}

- (id)recordingsEnabledValueWithSpecifier:(id)a3
{
  v4 = OBJC_IVAR____TtC24OxygenSaturationSettings22SettingsViewController_settings;
  v5 = *&self->PSListController_opaque[OBJC_IVAR____TtC24OxygenSaturationSettings22SettingsViewController_settings];
  v6 = self;
  v7 = [v5 backgroundRecordingsEnabled] && (objc_msgSend(*&self->PSListController_opaque[v4], "oxygenSaturationDisabled") & 1) == 0 && !sub_1848();
  sub_59AC(0, &qword_CB30, NSNumber_ptr);
  v8.super.super.isa = sub_5C60(v7).super.super.isa;

  return v8.super.super.isa;
}

- (void)openArticle
{
  v2 = self;
  sub_413C();
}

- (void)enablePressedWithAppropriateRegion:(BOOL)a3
{
  v4 = self;
  sub_43C4(a3);
}

- (void)setupLaterPressed
{
  v6 = self;
  v2 = [(SettingsViewController *)v6 navigationController];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 navigationController];

    if (v4)
    {
      v5 = [v4 popViewControllerAnimated:1];
    }
  }
}

- (void)onboardingScrollViewDidScroll:(id)a3
{
  v4 = a3;
  v7 = self;
  v5 = [(SettingsViewController *)v7 table];
  if (v5)
  {
    v6 = v5;
    [v4 contentOffset];
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

- (void)oxygenSaturationSettingsDidChange:(id)a3
{
  v3 = self;
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

  [(SettingsViewController *)v3 reloadSpecifiers];
}

@end
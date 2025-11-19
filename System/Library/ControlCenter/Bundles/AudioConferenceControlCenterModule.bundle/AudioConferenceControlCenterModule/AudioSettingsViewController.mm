@interface AudioSettingsViewController
- (BOOL)shouldBeginTransitionToExpandedContentModule;
- (BOOL)shouldLoadFromSensor;
- (CCUIContentModuleContext)contentModuleContext;
- (NSArray)containerViewsForPlatterTreatment;
- (_TtC34AudioConferenceControlCenterModule27AudioSettingsViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (double)compactContinuousCornerRadius;
- (double)getInputSelectionHeightConstant;
- (double)preferredExpandedContentHeight;
- (void)buttonDownWithSender:(id)a3;
- (void)buttonTappedWithSender:(id)a3;
- (void)displayLinkUpdate:(id)a3;
- (void)effectsDidUpdate;
- (void)inputViewController:(id)a3 didUpdateInputOptionsCount:(int64_t)a4;
- (void)inputViewControllerDidUpdateInputOptions:;
- (void)loadView;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3;
- (void)setCompactContinuousCornerRadius:(double)a3;
- (void)setContentModuleContext:(id)a3;
- (void)setShouldLoadFromSensor:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation AudioSettingsViewController

- (void)viewWillLayoutSubviews
{
  v2 = self;
  sub_1C44();
}

- (NSArray)containerViewsForPlatterTreatment
{
  v2 = self;
  v3 = sub_EDA0();

  if (v3)
  {
    sub_19F68(0, &qword_34F80);
    v4.super.isa = sub_1F5D4().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

- (BOOL)shouldLoadFromSensor
{
  v3 = OBJC_IVAR____TtC34AudioConferenceControlCenterModule27AudioSettingsViewController_shouldLoadFromSensor;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (void)setShouldLoadFromSensor:(BOOL)a3
{
  v5 = OBJC_IVAR____TtC34AudioConferenceControlCenterModule27AudioSettingsViewController_shouldLoadFromSensor;
  swift_beginAccess();
  *(&self->super.super.super.isa + v5) = a3;
}

- (CCUIContentModuleContext)contentModuleContext
{
  v3 = OBJC_IVAR____TtC34AudioConferenceControlCenterModule27AudioSettingsViewController_contentModuleContext;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (void)setContentModuleContext:(id)a3
{
  v5 = OBJC_IVAR____TtC34AudioConferenceControlCenterModule27AudioSettingsViewController_contentModuleContext;
  swift_beginAccess();
  v6 = *(&self->super.super.super.isa + v5);
  *(&self->super.super.super.isa + v5) = a3;
  v7 = a3;
  v8 = self;

  sub_F388();
}

- (double)preferredExpandedContentHeight
{
  v2 = self;
  v3 = sub_FF08();

  return v3;
}

- (double)compactContinuousCornerRadius
{
  v3 = OBJC_IVAR____TtC34AudioConferenceControlCenterModule27AudioSettingsViewController_compactContinuousCornerRadius;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (void)setCompactContinuousCornerRadius:(double)a3
{
  v5 = OBJC_IVAR____TtC34AudioConferenceControlCenterModule27AudioSettingsViewController_compactContinuousCornerRadius;
  swift_beginAccess();
  *(&self->super.super.super.isa + v5) = a3;
  v6 = self;
  sub_F9E4();
}

- (BOOL)shouldBeginTransitionToExpandedContentModule
{
  v2 = *(&stru_1F8.reserved2 + (swift_isaMask & self->super.super.super.isa));
  v3 = self;
  LOBYTE(v2) = v2();

  return (v2 & 1) == 0;
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_10024(a3);
  swift_unknownObjectRelease();
}

- (void)loadView
{
  v2 = self;
  sub_11014();
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1144C();
}

- (void)buttonDownWithSender:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_12C50(v4);
}

- (void)buttonTappedWithSender:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1307C(v4);
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_140D4(a3);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  sub_14644(a3);
}

- (void)displayLinkUpdate:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_188A4();
}

- (_TtC34AudioConferenceControlCenterModule27AudioSettingsViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = sub_1F584();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_15654(v5, v7, a4);
}

- (void)effectsDidUpdate
{
  v2 = self;
  sub_1608C();
}

- (void)inputViewController:(id)a3 didUpdateInputOptionsCount:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  sub_19120(a4);
}

- (double)getInputSelectionHeightConstant
{
  v2 = self;
  sub_17788();
  v4 = v3;

  return v4;
}

- (void)inputViewControllerDidUpdateInputOptions:
{
  if (qword_35250 != -1)
  {
    swift_once();
  }

  v0 = sub_1F4F4();
  sub_20E4(v0, qword_35258);
  oslog = sub_1F4D4();
  v1 = sub_1F634();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_211C(0xD00000000000002CLL, 0x8000000000024250, &v5);
    _os_log_impl(&dword_0, oslog, v1, "%s delegate callback", v2, 0xCu);
    sub_2350(v3);
  }
}

@end
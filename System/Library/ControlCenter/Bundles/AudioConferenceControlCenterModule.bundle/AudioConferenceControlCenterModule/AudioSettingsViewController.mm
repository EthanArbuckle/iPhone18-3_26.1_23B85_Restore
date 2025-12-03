@interface AudioSettingsViewController
- (BOOL)shouldBeginTransitionToExpandedContentModule;
- (BOOL)shouldLoadFromSensor;
- (CCUIContentModuleContext)contentModuleContext;
- (NSArray)containerViewsForPlatterTreatment;
- (_TtC34AudioConferenceControlCenterModule27AudioSettingsViewController)initWithNibName:(id)name bundle:(id)bundle;
- (double)compactContinuousCornerRadius;
- (double)getInputSelectionHeightConstant;
- (double)preferredExpandedContentHeight;
- (void)buttonDownWithSender:(id)sender;
- (void)buttonTappedWithSender:(id)sender;
- (void)displayLinkUpdate:(id)update;
- (void)effectsDidUpdate;
- (void)inputViewController:(id)controller didUpdateInputOptionsCount:(int64_t)count;
- (void)inputViewControllerDidUpdateInputOptions:;
- (void)loadView;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container;
- (void)setCompactContinuousCornerRadius:(double)radius;
- (void)setContentModuleContext:(id)context;
- (void)setShouldLoadFromSensor:(BOOL)sensor;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
@end

@implementation AudioSettingsViewController

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  sub_1C44();
}

- (NSArray)containerViewsForPlatterTreatment
{
  selfCopy = self;
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

- (void)setShouldLoadFromSensor:(BOOL)sensor
{
  v5 = OBJC_IVAR____TtC34AudioConferenceControlCenterModule27AudioSettingsViewController_shouldLoadFromSensor;
  swift_beginAccess();
  *(&self->super.super.super.isa + v5) = sensor;
}

- (CCUIContentModuleContext)contentModuleContext
{
  v3 = OBJC_IVAR____TtC34AudioConferenceControlCenterModule27AudioSettingsViewController_contentModuleContext;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (void)setContentModuleContext:(id)context
{
  v5 = OBJC_IVAR____TtC34AudioConferenceControlCenterModule27AudioSettingsViewController_contentModuleContext;
  swift_beginAccess();
  v6 = *(&self->super.super.super.isa + v5);
  *(&self->super.super.super.isa + v5) = context;
  contextCopy = context;
  selfCopy = self;

  sub_F388();
}

- (double)preferredExpandedContentHeight
{
  selfCopy = self;
  v3 = sub_FF08();

  return v3;
}

- (double)compactContinuousCornerRadius
{
  v3 = OBJC_IVAR____TtC34AudioConferenceControlCenterModule27AudioSettingsViewController_compactContinuousCornerRadius;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (void)setCompactContinuousCornerRadius:(double)radius
{
  v5 = OBJC_IVAR____TtC34AudioConferenceControlCenterModule27AudioSettingsViewController_compactContinuousCornerRadius;
  swift_beginAccess();
  *(&self->super.super.super.isa + v5) = radius;
  selfCopy = self;
  sub_F9E4();
}

- (BOOL)shouldBeginTransitionToExpandedContentModule
{
  v2 = *(&stru_1F8.reserved2 + (swift_isaMask & self->super.super.super.isa));
  selfCopy = self;
  LOBYTE(v2) = v2();

  return (v2 & 1) == 0;
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_10024(container);
  swift_unknownObjectRelease();
}

- (void)loadView
{
  selfCopy = self;
  sub_11014();
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1144C();
}

- (void)buttonDownWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  sub_12C50(senderCopy);
}

- (void)buttonTappedWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  sub_1307C(senderCopy);
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_140D4(appear);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_14644(disappear);
}

- (void)displayLinkUpdate:(id)update
{
  updateCopy = update;
  selfCopy = self;
  sub_188A4();
}

- (_TtC34AudioConferenceControlCenterModule27AudioSettingsViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_1F584();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_15654(v5, v7, bundle);
}

- (void)effectsDidUpdate
{
  selfCopy = self;
  sub_1608C();
}

- (void)inputViewController:(id)controller didUpdateInputOptionsCount:(int64_t)count
{
  controllerCopy = controller;
  selfCopy = self;
  sub_19120(count);
}

- (double)getInputSelectionHeightConstant
{
  selfCopy = self;
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
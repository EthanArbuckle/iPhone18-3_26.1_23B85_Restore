@interface BuddyMultitaskingController
- (BOOL)controllerNeedsToRun;
- (BYCapabilities)capabilities;
- (BYRunState)runState;
- (_TtC5Setup27BuddyMultitaskingController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6;
- (_TtC5Setup27BuddyMultitaskingController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6;
- (void)continueTapped;
- (void)performExtendedInitializationWithCompletion:(id)a3;
- (void)setAnalyticsManager:(id)a3;
- (void)setPaneFeatureAnalyticsManager:(id)a3;
- (void)useDefaultSettingsTapped;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation BuddyMultitaskingController

- (void)viewDidLoad
{
  v2 = self;
  sub_10000D414();
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_10000DB9C(a3);
}

- (void)continueTapped
{
  v2 = self;
  sub_10000DC7C();
}

- (void)useDefaultSettingsTapped
{
  v2 = self;
  sub_10000E0B8();
}

- (BYRunState)runState
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (BYCapabilities)capabilities
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setPaneFeatureAnalyticsManager:(id)a3
{
  v4 = *&self->OBSetupAssistantMultitaskingViewController_opaque[OBJC_IVAR____TtC5Setup27BuddyMultitaskingController_paneFeatureAnalyticsManager];
  *&self->OBSetupAssistantMultitaskingViewController_opaque[OBJC_IVAR____TtC5Setup27BuddyMultitaskingController_paneFeatureAnalyticsManager] = a3;
  v3 = a3;
}

- (void)setAnalyticsManager:(id)a3
{
  v4 = *&self->OBSetupAssistantMultitaskingViewController_opaque[OBJC_IVAR____TtC5Setup27BuddyMultitaskingController_analyticsManager];
  *&self->OBSetupAssistantMultitaskingViewController_opaque[OBJC_IVAR____TtC5Setup27BuddyMultitaskingController_analyticsManager] = a3;
  v3 = a3;
}

- (BOOL)controllerNeedsToRun
{
  v2 = self;
  v3 = sub_10000E56C();

  return v3 & 1;
}

- (void)performExtendedInitializationWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  sub_10000E678(sub_10000EEDC, v5);
}

- (_TtC5Setup27BuddyMultitaskingController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC5Setup27BuddyMultitaskingController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
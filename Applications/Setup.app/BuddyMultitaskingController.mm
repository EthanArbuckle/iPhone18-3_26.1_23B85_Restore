@interface BuddyMultitaskingController
- (BOOL)controllerNeedsToRun;
- (BYCapabilities)capabilities;
- (BYRunState)runState;
- (_TtC5Setup27BuddyMultitaskingController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (_TtC5Setup27BuddyMultitaskingController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (void)continueTapped;
- (void)performExtendedInitializationWithCompletion:(id)completion;
- (void)setAnalyticsManager:(id)manager;
- (void)setPaneFeatureAnalyticsManager:(id)manager;
- (void)useDefaultSettingsTapped;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation BuddyMultitaskingController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_10000D414();
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_10000DB9C(appear);
}

- (void)continueTapped
{
  selfCopy = self;
  sub_10000DC7C();
}

- (void)useDefaultSettingsTapped
{
  selfCopy = self;
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

- (void)setPaneFeatureAnalyticsManager:(id)manager
{
  v4 = *&self->OBSetupAssistantMultitaskingViewController_opaque[OBJC_IVAR____TtC5Setup27BuddyMultitaskingController_paneFeatureAnalyticsManager];
  *&self->OBSetupAssistantMultitaskingViewController_opaque[OBJC_IVAR____TtC5Setup27BuddyMultitaskingController_paneFeatureAnalyticsManager] = manager;
  managerCopy = manager;
}

- (void)setAnalyticsManager:(id)manager
{
  v4 = *&self->OBSetupAssistantMultitaskingViewController_opaque[OBJC_IVAR____TtC5Setup27BuddyMultitaskingController_analyticsManager];
  *&self->OBSetupAssistantMultitaskingViewController_opaque[OBJC_IVAR____TtC5Setup27BuddyMultitaskingController_analyticsManager] = manager;
  managerCopy = manager;
}

- (BOOL)controllerNeedsToRun
{
  selfCopy = self;
  v3 = sub_10000E56C();

  return v3 & 1;
}

- (void)performExtendedInitializationWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  sub_10000E678(sub_10000EEDC, v5);
}

- (_TtC5Setup27BuddyMultitaskingController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC5Setup27BuddyMultitaskingController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
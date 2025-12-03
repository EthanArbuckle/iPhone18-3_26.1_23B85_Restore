@interface BuddyAppearanceController
+ (id)cloudConfigSkipKey;
- (BOOL)controllerNeedsToRun;
- (BOOL)scrollViewContentIsUnderTray;
- (BYDeviceProvider)deviceProvider;
- (BYRunState)runState;
- (BuddyFeatureFlags)featureFlags;
- (_TtC5Setup25BuddyAppearanceController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (_TtC5Setup25BuddyAppearanceController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (void)continueTapped;
- (void)modeChanged;
- (void)performExtendedInitializationWithCompletion:(id)completion;
- (void)revertTapped;
- (void)setAnalyticsEventAppearance:(id)appearance;
- (void)setAppearanceModeProvider:(id)provider;
- (void)setDisplayZoomExecutor:(id)executor;
- (void)setFlowItemDispositionProvider:(id)provider;
- (void)showAccessibilitySettings;
- (void)updateContentViewForScrollViewLayoutChange;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation BuddyAppearanceController

- (BYRunState)runState
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (BuddyFeatureFlags)featureFlags
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setAppearanceModeProvider:(id)provider
{
  v4 = *&self->OBSetupAssistantAppearanceController_opaque[OBJC_IVAR____TtC5Setup25BuddyAppearanceController_appearanceModeProvider];
  *&self->OBSetupAssistantAppearanceController_opaque[OBJC_IVAR____TtC5Setup25BuddyAppearanceController_appearanceModeProvider] = provider;
  providerCopy = provider;
}

- (void)setDisplayZoomExecutor:(id)executor
{
  v4 = *&self->OBSetupAssistantAppearanceController_opaque[OBJC_IVAR____TtC5Setup25BuddyAppearanceController_displayZoomExecutor];
  *&self->OBSetupAssistantAppearanceController_opaque[OBJC_IVAR____TtC5Setup25BuddyAppearanceController_displayZoomExecutor] = executor;
  executorCopy = executor;
}

- (void)setFlowItemDispositionProvider:(id)provider
{
  v4 = *&self->OBSetupAssistantAppearanceController_opaque[OBJC_IVAR____TtC5Setup25BuddyAppearanceController_flowItemDispositionProvider];
  *&self->OBSetupAssistantAppearanceController_opaque[OBJC_IVAR____TtC5Setup25BuddyAppearanceController_flowItemDispositionProvider] = provider;
  providerCopy = provider;
}

- (void)setAnalyticsEventAppearance:(id)appearance
{
  v4 = *&self->OBSetupAssistantAppearanceController_opaque[OBJC_IVAR____TtC5Setup25BuddyAppearanceController_analyticsEventAppearance];
  *&self->OBSetupAssistantAppearanceController_opaque[OBJC_IVAR____TtC5Setup25BuddyAppearanceController_analyticsEventAppearance] = appearance;
  appearanceCopy = appearance;
}

- (BYDeviceProvider)deviceProvider
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_10005490C();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_100055E30(appear);
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for BuddyAppearanceController();
  v4 = v5.receiver;
  [(BuddyAppearanceController *)&v5 viewDidAppear:appearCopy];
  if ([v4 isMovingToParentViewController])
  {
    sub_100056084();
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for BuddyAppearanceController();
  v4 = v5.receiver;
  [(BuddyAppearanceController *)&v5 viewWillDisappear:disappearCopy];
  if (![v4 isMovingFromParentViewController])
  {
    goto LABEL_4;
  }

  if (*&v4[OBJC_IVAR____TtC5Setup25BuddyAppearanceController_viewModel])
  {

    sub_1000135FC();

LABEL_4:

    return;
  }

  __break(1u);
}

- (void)modeChanged
{
  selfCopy = self;
  sub_100057674();
}

- (void)updateContentViewForScrollViewLayoutChange
{
  selfCopy = self;
  view = [(BuddyAppearanceController *)selfCopy view];
  if (view)
  {
    v3 = view;
    [view layoutIfNeeded];

    sub_100057498();
  }

  else
  {
    __break(1u);
  }
}

- (BOOL)scrollViewContentIsUnderTray
{
  v3 = *&self->OBSetupAssistantAppearanceController_opaque[OBJC_IVAR____TtC5Setup25BuddyAppearanceController_revertButton];
  if (!v3)
  {
    selfCopy = self;
    goto LABEL_5;
  }

  selfCopy2 = self;
  if (([v3 isHidden] & 1) == 0)
  {
LABEL_5:
    v8.receiver = self;
    v8.super_class = type metadata accessor for BuddyAppearanceController();
    scrollViewContentIsUnderTray = [(BuddyAppearanceController *)&v8 scrollViewContentIsUnderTray];

    return scrollViewContentIsUnderTray;
  }

  return 0;
}

- (void)continueTapped
{
  selfCopy = self;
  sub_100057884();
}

- (void)revertTapped
{
  if (*&self->OBSetupAssistantAppearanceController_opaque[OBJC_IVAR____TtC5Setup25BuddyAppearanceController_viewModel])
  {
    selfCopy = self;

    sub_100012AC8();
  }

  else
  {
    __break(1u);
  }
}

- (void)showAccessibilitySettings
{
  v3 = objc_opt_self();
  selfCopy = self;
  accessibilityViewController = [v3 accessibilityViewController];
  if (accessibilityViewController)
  {
    v5 = accessibilityViewController;
    [(BuddyAppearanceController *)selfCopy presentViewController:accessibilityViewController animated:1 completion:0];
  }
}

+ (id)cloudConfigSkipKey
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (BOOL)controllerNeedsToRun
{
  selfCopy = self;
  v3 = sub_100058110();

  return v3 & 1;
}

- (void)performExtendedInitializationWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  _Block_copy(v4);
  selfCopy = self;
  sub_1000590E0(selfCopy, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (_TtC5Setup25BuddyAppearanceController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC5Setup25BuddyAppearanceController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
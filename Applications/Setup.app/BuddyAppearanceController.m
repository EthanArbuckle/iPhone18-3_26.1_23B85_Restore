@interface BuddyAppearanceController
+ (id)cloudConfigSkipKey;
- (BOOL)controllerNeedsToRun;
- (BOOL)scrollViewContentIsUnderTray;
- (BYDeviceProvider)deviceProvider;
- (BYRunState)runState;
- (BuddyFeatureFlags)featureFlags;
- (_TtC5Setup25BuddyAppearanceController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6;
- (_TtC5Setup25BuddyAppearanceController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6;
- (void)continueTapped;
- (void)modeChanged;
- (void)performExtendedInitializationWithCompletion:(id)a3;
- (void)revertTapped;
- (void)setAnalyticsEventAppearance:(id)a3;
- (void)setAppearanceModeProvider:(id)a3;
- (void)setDisplayZoomExecutor:(id)a3;
- (void)setFlowItemDispositionProvider:(id)a3;
- (void)showAccessibilitySettings;
- (void)updateContentViewForScrollViewLayoutChange;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
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

- (void)setAppearanceModeProvider:(id)a3
{
  v4 = *&self->OBSetupAssistantAppearanceController_opaque[OBJC_IVAR____TtC5Setup25BuddyAppearanceController_appearanceModeProvider];
  *&self->OBSetupAssistantAppearanceController_opaque[OBJC_IVAR____TtC5Setup25BuddyAppearanceController_appearanceModeProvider] = a3;
  v3 = a3;
}

- (void)setDisplayZoomExecutor:(id)a3
{
  v4 = *&self->OBSetupAssistantAppearanceController_opaque[OBJC_IVAR____TtC5Setup25BuddyAppearanceController_displayZoomExecutor];
  *&self->OBSetupAssistantAppearanceController_opaque[OBJC_IVAR____TtC5Setup25BuddyAppearanceController_displayZoomExecutor] = a3;
  v3 = a3;
}

- (void)setFlowItemDispositionProvider:(id)a3
{
  v4 = *&self->OBSetupAssistantAppearanceController_opaque[OBJC_IVAR____TtC5Setup25BuddyAppearanceController_flowItemDispositionProvider];
  *&self->OBSetupAssistantAppearanceController_opaque[OBJC_IVAR____TtC5Setup25BuddyAppearanceController_flowItemDispositionProvider] = a3;
  v3 = a3;
}

- (void)setAnalyticsEventAppearance:(id)a3
{
  v4 = *&self->OBSetupAssistantAppearanceController_opaque[OBJC_IVAR____TtC5Setup25BuddyAppearanceController_analyticsEventAppearance];
  *&self->OBSetupAssistantAppearanceController_opaque[OBJC_IVAR____TtC5Setup25BuddyAppearanceController_analyticsEventAppearance] = a3;
  v3 = a3;
}

- (BYDeviceProvider)deviceProvider
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_10005490C();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_100055E30(a3);
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for BuddyAppearanceController();
  v4 = v5.receiver;
  [(BuddyAppearanceController *)&v5 viewDidAppear:v3];
  if ([v4 isMovingToParentViewController])
  {
    sub_100056084();
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for BuddyAppearanceController();
  v4 = v5.receiver;
  [(BuddyAppearanceController *)&v5 viewWillDisappear:v3];
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
  v2 = self;
  sub_100057674();
}

- (void)updateContentViewForScrollViewLayoutChange
{
  v4 = self;
  v2 = [(BuddyAppearanceController *)v4 view];
  if (v2)
  {
    v3 = v2;
    [v2 layoutIfNeeded];

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
    v6 = self;
    goto LABEL_5;
  }

  v4 = self;
  if (([v3 isHidden] & 1) == 0)
  {
LABEL_5:
    v8.receiver = self;
    v8.super_class = type metadata accessor for BuddyAppearanceController();
    v5 = [(BuddyAppearanceController *)&v8 scrollViewContentIsUnderTray];

    return v5;
  }

  return 0;
}

- (void)continueTapped
{
  v2 = self;
  sub_100057884();
}

- (void)revertTapped
{
  if (*&self->OBSetupAssistantAppearanceController_opaque[OBJC_IVAR____TtC5Setup25BuddyAppearanceController_viewModel])
  {
    v2 = self;

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
  v6 = self;
  v4 = [v3 accessibilityViewController];
  if (v4)
  {
    v5 = v4;
    [(BuddyAppearanceController *)v6 presentViewController:v4 animated:1 completion:0];
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
  v2 = self;
  v3 = sub_100058110();

  return v3 & 1;
}

- (void)performExtendedInitializationWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  _Block_copy(v4);
  v5 = self;
  sub_1000590E0(v5, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (_TtC5Setup25BuddyAppearanceController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC5Setup25BuddyAppearanceController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
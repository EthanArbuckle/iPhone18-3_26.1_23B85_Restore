@interface BuddyMultitaskingSelectionFlowItem
+ (id)cloudConfigSkipKey;
- (BOOL)controllerNeedsToRun;
- (_TtP5Setup37BuddyMultitaskingSelectionManagerType_)iPadMultitaskingModeManager;
- (id)viewController;
- (void)controllerWasPopped;
- (void)setSettingsManager:(id)manager;
@end

@implementation BuddyMultitaskingSelectionFlowItem

- (_TtP5Setup37BuddyMultitaskingSelectionManagerType_)iPadMultitaskingModeManager
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setSettingsManager:(id)manager
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC5Setup34BuddyMultitaskingSelectionFlowItem_settingsManager);
  *(&self->super.isa + OBJC_IVAR____TtC5Setup34BuddyMultitaskingSelectionFlowItem_settingsManager) = manager;
  managerCopy = manager;
}

- (BOOL)controllerNeedsToRun
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC5Setup34BuddyMultitaskingSelectionFlowItem_iPadMultitaskingModeManager);
  if (v2)
  {
    LOBYTE(v2) = [v2 shouldShowFlow];
  }

  else
  {
    __break(1u);
  }

  return v2;
}

- (void)controllerWasPopped
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC5Setup34BuddyMultitaskingSelectionFlowItem_iPadMultitaskingModeManager);
  if (v2)
  {
    [v2 updatePanePresented:0];
  }

  else
  {
    __break(1u);
  }
}

- (id)viewController
{
  selfCopy = self;
  v3 = sub_100042470();

  return v3;
}

+ (id)cloudConfigSkipKey
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

@end
@interface BuddyButtonConfigurationController
+ (id)cloudConfigSkipKey;
- (BOOL)controllerNeedsToRun;
- (BYDeviceProvider)deviceProvider;
- (id)viewController;
- (void)performExtendedInitializationWithCompletion:(id)completion;
- (void)setBuddyPreferences:(id)preferences;
- (void)setSettingsManager:(id)manager;
@end

@implementation BuddyButtonConfigurationController

- (BYDeviceProvider)deviceProvider
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setBuddyPreferences:(id)preferences
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC5Setup34BuddyButtonConfigurationController_buddyPreferences);
  *(&self->super.isa + OBJC_IVAR____TtC5Setup34BuddyButtonConfigurationController_buddyPreferences) = preferences;
  preferencesCopy = preferences;
}

- (void)setSettingsManager:(id)manager
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC5Setup34BuddyButtonConfigurationController_settingsManager);
  *(&self->super.isa + OBJC_IVAR____TtC5Setup34BuddyButtonConfigurationController_settingsManager) = manager;
  managerCopy = manager;
}

- (id)viewController
{
  selfCopy = self;
  v3 = sub_100052624();

  return v3;
}

- (BOOL)controllerNeedsToRun
{
  selfCopy = self;
  v3 = sub_1000529E4();

  return v3 & 1;
}

- (void)performExtendedInitializationWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  sub_100052AC0(sub_100053900, v5);
}

+ (id)cloudConfigSkipKey
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

@end
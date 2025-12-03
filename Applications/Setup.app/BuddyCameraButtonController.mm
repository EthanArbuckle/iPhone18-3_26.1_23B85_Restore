@interface BuddyCameraButtonController
+ (id)cloudConfigSkipKey;
- (BOOL)controllerNeedsToRun;
- (BYDeviceProvider)deviceProvider;
- (BYRunState)runState;
- (_TtP5Setup20IntelligenceProvider_)intelligenceProvider;
- (void)cameraButtonViewControllerDidFinish:(id)finish;
- (void)controllerWasPopped;
- (void)performExtendedInitializationWithCompletion:(id)completion;
- (void)setBuddyPreferences:(id)preferences;
- (void)setSetupMethod:(id)method;
@end

@implementation BuddyCameraButtonController

- (void)setBuddyPreferences:(id)preferences
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC5Setup27BuddyCameraButtonController_buddyPreferences);
  *(&self->super.isa + OBJC_IVAR____TtC5Setup27BuddyCameraButtonController_buddyPreferences) = preferences;
  preferencesCopy = preferences;
}

- (BYDeviceProvider)deviceProvider
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (_TtP5Setup20IntelligenceProvider_)intelligenceProvider
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (BYRunState)runState
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setSetupMethod:(id)method
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC5Setup27BuddyCameraButtonController_setupMethod);
  *(&self->super.isa + OBJC_IVAR____TtC5Setup27BuddyCameraButtonController_setupMethod) = method;
  methodCopy = method;
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
  v3 = sub_10001619C();

  return v3 & 1;
}

- (void)performExtendedInitializationWithCompletion:(id)completion
{
  v5 = sub_100006410(&qword_1003A0110);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(completion);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = self;
  v11[5] = sub_100016ED0;
  v11[6] = v9;
  selfCopy = self;
  sub_100022A78(0, 0, v7, &unk_100297B90, v11);
}

- (void)controllerWasPopped
{
  selfCopy = self;
  sub_100016BCC();
}

- (void)cameraButtonViewControllerDidFinish:(id)finish
{
  finishCopy = finish;
  selfCopy = self;
  sub_100016E34();
}

@end
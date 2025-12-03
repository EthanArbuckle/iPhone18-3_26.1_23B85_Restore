@interface BuddyCameraControlPresentationProvider
- (BOOL)shouldPresentCameraControlPane;
- (BOOL)shouldPresentVisualIntelligencePane;
- (_TtC5Setup38BuddyCameraControlPresentationProvider)init;
- (_TtC5Setup38BuddyCameraControlPresentationProvider)initWithIsIntelligenceEnabled:(BOOL)enabled;
- (_TtC5Setup38BuddyCameraControlPresentationProvider)initWithIsIntelligenceEnabled:(BOOL)enabled preferenceController:(id)controller;
- (void)updatePaneVisibilityPreferencesWithNewState:(BOOL)state;
@end

@implementation BuddyCameraControlPresentationProvider

- (_TtC5Setup38BuddyCameraControlPresentationProvider)initWithIsIntelligenceEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  buddyPreferences = [objc_opt_self() buddyPreferences];
  v6 = [(BuddyCameraControlPresentationProvider *)self initWithIsIntelligenceEnabled:enabledCopy preferenceController:buddyPreferences];

  return v6;
}

- (_TtC5Setup38BuddyCameraControlPresentationProvider)initWithIsIntelligenceEnabled:(BOOL)enabled preferenceController:(id)controller
{
  *(&self->super.isa + OBJC_IVAR____TtC5Setup38BuddyCameraControlPresentationProvider_isIntelligenceEnabled) = enabled;
  *(&self->super.isa + OBJC_IVAR____TtC5Setup38BuddyCameraControlPresentationProvider_preferenceController) = controller;
  v7.receiver = self;
  v7.super_class = type metadata accessor for BuddyCameraControlPresentationProvider();
  controllerCopy = controller;
  return [(BuddyCameraControlPresentationProvider *)&v7 init];
}

- (BOOL)shouldPresentCameraControlPane
{
  selfCopy = self;
  v3 = BuddyCameraControlPresentationProvider.shouldPresentCameraControlPane()();

  return v3;
}

- (BOOL)shouldPresentVisualIntelligencePane
{
  if (*(&self->super.isa + OBJC_IVAR____TtC5Setup38BuddyCameraControlPresentationProvider_isIntelligenceEnabled) != 1)
  {
    return 0;
  }

  v2 = *(&self->super.isa + OBJC_IVAR____TtC5Setup38BuddyCameraControlPresentationProvider_preferenceController);
  selfCopy = self;
  v4 = String._bridgeToObjectiveC()();
  LOBYTE(v2) = [v2 BOOLForKey:v4];

  return v2 ^ 1;
}

- (void)updatePaneVisibilityPreferencesWithNewState:(BOOL)state
{
  selfCopy = self;
  BuddyCameraControlPresentationProvider.updatePaneVisibilityPreferences(newState:)(state);
}

- (_TtC5Setup38BuddyCameraControlPresentationProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
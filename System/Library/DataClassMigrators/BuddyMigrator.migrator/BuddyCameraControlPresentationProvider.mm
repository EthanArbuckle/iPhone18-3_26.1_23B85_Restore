@interface BuddyCameraControlPresentationProvider
- (BOOL)shouldPresentCameraControlPane;
- (BOOL)shouldPresentVisualIntelligencePane;
- (_TtC13BuddyMigrator38BuddyCameraControlPresentationProvider)init;
- (_TtC13BuddyMigrator38BuddyCameraControlPresentationProvider)initWithIsIntelligenceEnabled:(BOOL)enabled preferenceController:(id)controller;
- (void)updatePaneVisibilityPreferencesWithNewState:(BOOL)state;
@end

@implementation BuddyCameraControlPresentationProvider

- (_TtC13BuddyMigrator38BuddyCameraControlPresentationProvider)initWithIsIntelligenceEnabled:(BOOL)enabled preferenceController:(id)controller
{
  *(&self->super.isa + OBJC_IVAR____TtC13BuddyMigrator38BuddyCameraControlPresentationProvider_isIntelligenceEnabled) = enabled;
  *(&self->super.isa + OBJC_IVAR____TtC13BuddyMigrator38BuddyCameraControlPresentationProvider_preferenceController) = controller;
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
  if (*(&self->super.isa + OBJC_IVAR____TtC13BuddyMigrator38BuddyCameraControlPresentationProvider_isIntelligenceEnabled) != 1)
  {
    return 0;
  }

  v2 = *(&self->super.isa + OBJC_IVAR____TtC13BuddyMigrator38BuddyCameraControlPresentationProvider_preferenceController);
  selfCopy = self;
  v4 = sub_19360();
  LOBYTE(v2) = [v2 BOOLForKey:v4];

  return v2 ^ 1;
}

- (void)updatePaneVisibilityPreferencesWithNewState:(BOOL)state
{
  selfCopy = self;
  BuddyCameraControlPresentationProvider.updatePaneVisibilityPreferences(newState:)(state);
}

- (_TtC13BuddyMigrator38BuddyCameraControlPresentationProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
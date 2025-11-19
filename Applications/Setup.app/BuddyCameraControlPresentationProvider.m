@interface BuddyCameraControlPresentationProvider
- (BOOL)shouldPresentCameraControlPane;
- (BOOL)shouldPresentVisualIntelligencePane;
- (_TtC5Setup38BuddyCameraControlPresentationProvider)init;
- (_TtC5Setup38BuddyCameraControlPresentationProvider)initWithIsIntelligenceEnabled:(BOOL)a3;
- (_TtC5Setup38BuddyCameraControlPresentationProvider)initWithIsIntelligenceEnabled:(BOOL)a3 preferenceController:(id)a4;
- (void)updatePaneVisibilityPreferencesWithNewState:(BOOL)a3;
@end

@implementation BuddyCameraControlPresentationProvider

- (_TtC5Setup38BuddyCameraControlPresentationProvider)initWithIsIntelligenceEnabled:(BOOL)a3
{
  v3 = a3;
  v5 = [objc_opt_self() buddyPreferences];
  v6 = [(BuddyCameraControlPresentationProvider *)self initWithIsIntelligenceEnabled:v3 preferenceController:v5];

  return v6;
}

- (_TtC5Setup38BuddyCameraControlPresentationProvider)initWithIsIntelligenceEnabled:(BOOL)a3 preferenceController:(id)a4
{
  *(&self->super.isa + OBJC_IVAR____TtC5Setup38BuddyCameraControlPresentationProvider_isIntelligenceEnabled) = a3;
  *(&self->super.isa + OBJC_IVAR____TtC5Setup38BuddyCameraControlPresentationProvider_preferenceController) = a4;
  v7.receiver = self;
  v7.super_class = type metadata accessor for BuddyCameraControlPresentationProvider();
  v5 = a4;
  return [(BuddyCameraControlPresentationProvider *)&v7 init];
}

- (BOOL)shouldPresentCameraControlPane
{
  v2 = self;
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
  v3 = self;
  v4 = String._bridgeToObjectiveC()();
  LOBYTE(v2) = [v2 BOOLForKey:v4];

  return v2 ^ 1;
}

- (void)updatePaneVisibilityPreferencesWithNewState:(BOOL)a3
{
  v4 = self;
  BuddyCameraControlPresentationProvider.updatePaneVisibilityPreferences(newState:)(a3);
}

- (_TtC5Setup38BuddyCameraControlPresentationProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
@interface BuddyControlCenterVisualIntelligencePresentationManager
- (BOOL)shouldPresentVisualIntelligencePane;
- (_TtC5Setup55BuddyControlCenterVisualIntelligencePresentationManager)init;
- (_TtC5Setup55BuddyControlCenterVisualIntelligencePresentationManager)initWithPreferenceController:(id)a3 deviceProvider:(id)a4 chronicle:(id)a5;
- (void)updatePresentedKeyWithNewState:(BOOL)a3;
@end

@implementation BuddyControlCenterVisualIntelligencePresentationManager

- (_TtC5Setup55BuddyControlCenterVisualIntelligencePresentationManager)initWithPreferenceController:(id)a3 deviceProvider:(id)a4 chronicle:(id)a5
{
  v7 = a3;
  swift_unknownObjectRetain();
  return BuddyControlCenterVisualIntelligencePresentationManager.init(preferenceController:deviceProvider:chronicle:)(v7, a4, a5);
}

- (BOOL)shouldPresentVisualIntelligencePane
{
  v2 = self;
  v3 = BuddyControlCenterVisualIntelligencePresentationManager.shouldPresentVisualIntelligencePane()();

  return v3;
}

- (void)updatePresentedKeyWithNewState:(BOOL)a3
{
  v4 = self;
  BuddyControlCenterVisualIntelligencePresentationManager.updatePresentedKey(newState:)(a3);
}

- (_TtC5Setup55BuddyControlCenterVisualIntelligencePresentationManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
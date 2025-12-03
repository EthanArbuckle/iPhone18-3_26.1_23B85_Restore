@interface BuddyControlCenterVisualIntelligencePresentationManager
- (BOOL)shouldPresentVisualIntelligencePane;
- (_TtC5Setup55BuddyControlCenterVisualIntelligencePresentationManager)init;
- (_TtC5Setup55BuddyControlCenterVisualIntelligencePresentationManager)initWithPreferenceController:(id)controller deviceProvider:(id)provider chronicle:(id)chronicle;
- (void)updatePresentedKeyWithNewState:(BOOL)state;
@end

@implementation BuddyControlCenterVisualIntelligencePresentationManager

- (_TtC5Setup55BuddyControlCenterVisualIntelligencePresentationManager)initWithPreferenceController:(id)controller deviceProvider:(id)provider chronicle:(id)chronicle
{
  controllerCopy = controller;
  swift_unknownObjectRetain();
  return BuddyControlCenterVisualIntelligencePresentationManager.init(preferenceController:deviceProvider:chronicle:)(controllerCopy, provider, chronicle);
}

- (BOOL)shouldPresentVisualIntelligencePane
{
  selfCopy = self;
  v3 = BuddyControlCenterVisualIntelligencePresentationManager.shouldPresentVisualIntelligencePane()();

  return v3;
}

- (void)updatePresentedKeyWithNewState:(BOOL)state
{
  selfCopy = self;
  BuddyControlCenterVisualIntelligencePresentationManager.updatePresentedKey(newState:)(state);
}

- (_TtC5Setup55BuddyControlCenterVisualIntelligencePresentationManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
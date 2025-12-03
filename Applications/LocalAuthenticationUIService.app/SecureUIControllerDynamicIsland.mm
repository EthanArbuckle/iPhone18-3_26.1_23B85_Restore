@interface SecureUIControllerDynamicIsland
- (BOOL)confirmTransitionToFlipbookName:(id)name stateName:(id)stateName;
- (BOOL)hasPendingTransitions;
- (BOOL)isRecording;
- (NSArray)supportedConfigurations;
- (NSDictionary)currentStates;
- (SecureUIElement)currentConfiguration;
- (_TtC28LocalAuthenticationUIService31SecureUIControllerDynamicIsland)init;
- (void)recordingResettingToDescriptionOfFlipbook:(id)flipbook;
- (void)recordingUpdatedGlyphState:(int64_t)state;
- (void)setCurrentStates:(id)states;
- (void)setIsRecording:(BOOL)recording;
- (void)setObserverOfPlayback:(id)playback;
- (void)setObserverOfRecording:(id)recording;
- (void)transitionToState:(int64_t)state;
- (void)updateCurrentConfiguration:(id)configuration;
@end

@implementation SecureUIControllerDynamicIsland

- (void)setObserverOfRecording:(id)recording
{
  v5 = OBJC_IVAR____TtC28LocalAuthenticationUIService31SecureUIControllerDynamicIsland_observerOfRecording;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = recording;
  swift_unknownObjectRetain_n();
  selfCopy = self;
  swift_unknownObjectRelease();
  SecureUIControllerDynamicIsland.observerChanged()();
  swift_unknownObjectRelease();
}

- (void)setObserverOfPlayback:(id)playback
{
  v5 = OBJC_IVAR____TtC28LocalAuthenticationUIService31SecureUIControllerDynamicIsland_observerOfPlayback;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = playback;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
}

- (BOOL)isRecording
{
  v3 = OBJC_IVAR____TtC28LocalAuthenticationUIService31SecureUIControllerDynamicIsland_isRecording;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsRecording:(BOOL)recording
{
  v5 = OBJC_IVAR____TtC28LocalAuthenticationUIService31SecureUIControllerDynamicIsland_isRecording;
  swift_beginAccess();
  *(self + v5) = recording;
}

- (NSArray)supportedConfigurations
{
  v2 = *(self + OBJC_IVAR____TtC28LocalAuthenticationUIService31SecureUIControllerDynamicIsland_supportedConfigurations);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15SecureUIElement_pMd, &_sSo15SecureUIElement_pMR);
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (BOOL)hasPendingTransitions
{
  selfCopy = self;
  v3 = SecureUIControllerDynamicIsland.hasPendingTransitions.getter();

  return v3 & 1;
}

- (SecureUIElement)currentConfiguration
{
  selfCopy = self;
  v3 = SecureUIControllerDynamicIsland.currentConfiguration.getter();

  return v3;
}

- (NSDictionary)currentStates
{
  v3 = OBJC_IVAR____TtC28LocalAuthenticationUIService31SecureUIControllerDynamicIsland_currentStates;
  swift_beginAccess();
  v4 = *(self + v3);

  v5.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v5.super.isa;
}

- (void)setCurrentStates:(id)states
{
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = OBJC_IVAR____TtC28LocalAuthenticationUIService31SecureUIControllerDynamicIsland_currentStates;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = v4;
}

- (void)updateCurrentConfiguration:(id)configuration
{
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = *(self + OBJC_IVAR____TtC28LocalAuthenticationUIService31SecureUIControllerDynamicIsland_configuration);
    *(self + OBJC_IVAR____TtC28LocalAuthenticationUIService31SecureUIControllerDynamicIsland_configuration) = v4;
    swift_unknownObjectRetain();
  }
}

- (void)transitionToState:(int64_t)state
{
  selfCopy = self;
  SecureUIControllerDynamicIsland.transition(to:)(state);
}

- (BOOL)confirmTransitionToFlipbookName:(id)name stateName:(id)stateName
{
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  selfCopy = self;
  v12._countAndFlagsBits = v5;
  v12._object = v7;
  v13._countAndFlagsBits = v8;
  v13._object = v10;
  LOBYTE(v8) = SecureUIControllerDynamicIsland.confirmTransition(toFlipbookName:stateName:)(v12, v13);

  return v8 & 1;
}

- (void)recordingResettingToDescriptionOfFlipbook:(id)flipbook
{
  v4 = *((swift_isaMask & *self) + 0xA0);
  flipbookCopy = flipbook;
  selfCopy = self;
  v6 = v4();
  if (v6)
  {
    [v6 recordingResettingToDescriptionOfFlipbook:flipbookCopy];

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

- (void)recordingUpdatedGlyphState:(int64_t)state
{
  v4 = *((swift_isaMask & *self) + 0xA0);
  selfCopy = self;
  v5 = v4();
  if (v5)
  {
    [v5 recordingUpdatedGlyphState:state];
    swift_unknownObjectRelease();
  }
}

- (_TtC28LocalAuthenticationUIService31SecureUIControllerDynamicIsland)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
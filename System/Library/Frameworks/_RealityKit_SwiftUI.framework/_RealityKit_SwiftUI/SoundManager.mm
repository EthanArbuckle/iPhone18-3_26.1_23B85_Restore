@interface SoundManager
- (void)handleEngineConfigChange:(id)a3;
@end

@implementation SoundManager

- (void)handleEngineConfigChange:(id)a3
{
  v3 = type metadata accessor for Notification();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  specialized SoundManager.handleEngineConfigChange(_:)(v7);
  (*(v4 + 8))(v7, v3);
}

@end
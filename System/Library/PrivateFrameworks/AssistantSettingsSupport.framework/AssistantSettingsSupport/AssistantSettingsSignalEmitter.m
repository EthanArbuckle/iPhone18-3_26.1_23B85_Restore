@interface AssistantSettingsSignalEmitter
- (void)_emitDiscoverabilitySignalEventForIdentifier:(id)a3;
@end

@implementation AssistantSettingsSignalEmitter

- (void)_emitDiscoverabilitySignalEventForIdentifier:(id)a3
{
  v3 = MEMORY[0x277CF1B58];
  v4 = a3;
  v7 = [v3 discoverabilitySignal];
  v5 = [v7 source];
  v6 = [objc_alloc(MEMORY[0x277CF1938]) initWithIdentifier:v4 bundleID:@"com.apple.siri" context:0];

  [v5 sendEvent:v6];
}

@end
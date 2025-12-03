@interface AssistantSettingsSignalEmitter
- (void)_emitDiscoverabilitySignalEventForIdentifier:(id)identifier;
@end

@implementation AssistantSettingsSignalEmitter

- (void)_emitDiscoverabilitySignalEventForIdentifier:(id)identifier
{
  v3 = MEMORY[0x277CF1B58];
  identifierCopy = identifier;
  discoverabilitySignal = [v3 discoverabilitySignal];
  source = [discoverabilitySignal source];
  v6 = [objc_alloc(MEMORY[0x277CF1938]) initWithIdentifier:identifierCopy bundleID:@"com.apple.siri" context:0];

  [source sendEvent:v6];
}

@end
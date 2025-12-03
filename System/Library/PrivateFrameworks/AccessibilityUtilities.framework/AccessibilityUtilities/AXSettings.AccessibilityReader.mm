@interface AXSettings.AccessibilityReader
- (BOOL)accessibilityReaderAutomaticallyStartSpeaking;
- (BOOL)accessibilityReaderEnabled;
- (void)setAccessibilityReaderAutomaticallyStartSpeaking:(BOOL)speaking;
- (void)setAccessibilityReaderEnabled:(BOOL)enabled;
@end

@implementation AXSettings.AccessibilityReader

- (BOOL)accessibilityReaderEnabled
{
  selfCopy = self;
  v3 = AXSettings.AccessibilityReader.enabled.getter();

  return v3 & 1;
}

- (void)setAccessibilityReaderEnabled:(BOOL)enabled
{
  selfCopy = self;
  AXSettings.AccessibilityReader.enabled.setter(enabled);
}

- (BOOL)accessibilityReaderAutomaticallyStartSpeaking
{
  selfCopy = self;
  started = AXSettings.AccessibilityReader.automaticallyStartSpeaking.getter();

  return started & 1;
}

- (void)setAccessibilityReaderAutomaticallyStartSpeaking:(BOOL)speaking
{
  selfCopy = self;
  AXSettings.AccessibilityReader.automaticallyStartSpeaking.setter(speaking);
}

@end
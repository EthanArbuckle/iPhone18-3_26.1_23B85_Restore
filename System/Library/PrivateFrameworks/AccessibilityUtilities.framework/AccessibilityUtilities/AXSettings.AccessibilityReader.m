@interface AXSettings.AccessibilityReader
- (BOOL)accessibilityReaderAutomaticallyStartSpeaking;
- (BOOL)accessibilityReaderEnabled;
- (void)setAccessibilityReaderAutomaticallyStartSpeaking:(BOOL)a3;
- (void)setAccessibilityReaderEnabled:(BOOL)a3;
@end

@implementation AXSettings.AccessibilityReader

- (BOOL)accessibilityReaderEnabled
{
  v2 = self;
  v3 = AXSettings.AccessibilityReader.enabled.getter();

  return v3 & 1;
}

- (void)setAccessibilityReaderEnabled:(BOOL)a3
{
  v4 = self;
  AXSettings.AccessibilityReader.enabled.setter(a3);
}

- (BOOL)accessibilityReaderAutomaticallyStartSpeaking
{
  v2 = self;
  started = AXSettings.AccessibilityReader.automaticallyStartSpeaking.getter();

  return started & 1;
}

- (void)setAccessibilityReaderAutomaticallyStartSpeaking:(BOOL)a3
{
  v4 = self;
  AXSettings.AccessibilityReader.automaticallyStartSpeaking.setter(a3);
}

@end
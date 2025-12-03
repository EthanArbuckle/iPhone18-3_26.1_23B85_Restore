@interface AXSettings.Magnifier
- (BOOL)magnifierEnabled;
- (void)setMagnifierEnabled:(BOOL)enabled;
@end

@implementation AXSettings.Magnifier

- (BOOL)magnifierEnabled
{
  selfCopy = self;
  v3 = AXSettings.Magnifier.enabled.getter();

  return v3 & 1;
}

- (void)setMagnifierEnabled:(BOOL)enabled
{
  selfCopy = self;
  AXSettings.Magnifier.enabled.setter(enabled);
}

@end
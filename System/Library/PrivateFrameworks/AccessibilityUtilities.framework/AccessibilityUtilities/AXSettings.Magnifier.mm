@interface AXSettings.Magnifier
- (BOOL)magnifierEnabled;
- (void)setMagnifierEnabled:(BOOL)a3;
@end

@implementation AXSettings.Magnifier

- (BOOL)magnifierEnabled
{
  v2 = self;
  v3 = AXSettings.Magnifier.enabled.getter();

  return v3 & 1;
}

- (void)setMagnifierEnabled:(BOOL)a3
{
  v4 = self;
  AXSettings.Magnifier.enabled.setter(a3);
}

@end
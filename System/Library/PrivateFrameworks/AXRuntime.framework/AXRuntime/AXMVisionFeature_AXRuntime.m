@interface AXMVisionFeature_AXRuntime
- (CGPoint)activationPoint;
- (void)setActivationPoint:(CGPoint)a3;
@end

@implementation AXMVisionFeature_AXRuntime

- (void)setActivationPoint:(CGPoint)a3
{
  v4 = [MEMORY[0x1E696B098] valueWithPoint:{a3.x, a3.y}];
  objc_setAssociatedObject(self, &ActivationPointKey, v4, 1);
}

- (CGPoint)activationPoint
{
  v2 = objc_getAssociatedObject(self, &ActivationPointKey);
  [v2 pointValue];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

@end
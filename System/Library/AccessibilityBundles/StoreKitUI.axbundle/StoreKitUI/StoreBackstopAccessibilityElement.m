@interface StoreBackstopAccessibilityElement
- (BOOL)accessibilityActivate;
- (CGRect)accessibilityFrame;
@end

@implementation StoreBackstopAccessibilityElement

- (CGRect)accessibilityFrame
{
  v2 = [(StoreBackstopAccessibilityElement *)self accessibilityContainer];
  [v2 accessibilityFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (BOOL)accessibilityActivate
{
  v2 = MEMORY[0x29EDC7DA8];
  v3 = [(StoreBackstopAccessibilityElement *)self accessibilityContainer];
  v4 = [v2 viewControllerForView:v3];
  v5 = __UIAccessibilitySafeClass();

  LOBYTE(v3) = [v5 accessibilityPerformEscape];
  return v3;
}

@end
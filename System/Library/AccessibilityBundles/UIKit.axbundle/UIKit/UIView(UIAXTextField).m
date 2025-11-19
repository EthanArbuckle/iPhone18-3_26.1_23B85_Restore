@interface UIView(UIAXTextField)
- (double)_accessibilityFontSize;
@end

@implementation UIView(UIAXTextField)

- (double)_accessibilityFontSize
{
  v3 = [a1 font];
  [v3 pointSize];
  v4 = v1;
  MEMORY[0x29EDC9740](v3);
  return v4;
}

@end
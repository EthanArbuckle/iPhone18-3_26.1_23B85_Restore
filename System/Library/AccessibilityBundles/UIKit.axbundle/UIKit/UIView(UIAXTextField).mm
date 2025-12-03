@interface UIView(UIAXTextField)
- (double)_accessibilityFontSize;
@end

@implementation UIView(UIAXTextField)

- (double)_accessibilityFontSize
{
  font = [self font];
  [font pointSize];
  v4 = v1;
  MEMORY[0x29EDC9740](font);
  return v4;
}

@end
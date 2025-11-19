@interface UIScrollView(UIAXPrivate)
- (double)_accessibilityContentSize;
@end

@implementation UIScrollView(UIAXPrivate)

- (double)_accessibilityContentSize
{
  v3 = [a1 safeValueForKey:@"_contentSize"];
  [v3 sizeValue];
  v4 = v1;
  MEMORY[0x29EDC9740](v3);
  return v4;
}

@end
@interface UIScrollView(UIScrollViewAccessibility)
- (void)setSwiftUI_accessibilityAttributedScrollStatus:()UIScrollViewAccessibility;
- (void)setSwiftUI_accessibilityScrollStatus:()UIScrollViewAccessibility;
@end

@implementation UIScrollView(UIScrollViewAccessibility)

- (void)setSwiftUI_accessibilityScrollStatus:()UIScrollViewAccessibility
{
  v4 = _Block_copy(aBlock);
  objc_setAssociatedObject(self, sel_swiftUI_accessibilityScrollStatus, v4, 0x303);
}

- (void)setSwiftUI_accessibilityAttributedScrollStatus:()UIScrollViewAccessibility
{
  v4 = _Block_copy(aBlock);
  objc_setAssociatedObject(self, sel_swiftUI_accessibilityAttributedScrollStatus, v4, 0x303);
}

@end
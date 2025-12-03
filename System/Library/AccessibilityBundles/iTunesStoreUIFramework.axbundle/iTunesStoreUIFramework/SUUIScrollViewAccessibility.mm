@interface SUUIScrollViewAccessibility
- (void)setTopExtensionViewColor:(id)color;
@end

@implementation SUUIScrollViewAccessibility

- (void)setTopExtensionViewColor:(id)color
{
  v5.receiver = self;
  v5.super_class = SUUIScrollViewAccessibility;
  [(SUUIScrollViewAccessibility *)&v5 setTopExtensionViewColor:color];
  v4 = [(SUUIScrollViewAccessibility *)self viewWithTag:800];
  [v4 setAccessibilityViewIsModal:0];
}

@end
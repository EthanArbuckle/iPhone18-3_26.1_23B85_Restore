@interface SUUIScrollViewAccessibility
- (void)setTopExtensionViewColor:(id)a3;
@end

@implementation SUUIScrollViewAccessibility

- (void)setTopExtensionViewColor:(id)a3
{
  v5.receiver = self;
  v5.super_class = SUUIScrollViewAccessibility;
  [(SUUIScrollViewAccessibility *)&v5 setTopExtensionViewColor:a3];
  v4 = [(SUUIScrollViewAccessibility *)self viewWithTag:800];
  [v4 setAccessibilityViewIsModal:0];
}

@end
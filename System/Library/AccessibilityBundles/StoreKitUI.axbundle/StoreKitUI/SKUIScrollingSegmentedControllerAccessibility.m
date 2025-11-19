@interface SKUIScrollingSegmentedControllerAccessibility
- (void)scrollingSegmentedControllerCollectionViewDidLayoutSubviews:(id)a3;
@end

@implementation SKUIScrollingSegmentedControllerAccessibility

- (void)scrollingSegmentedControllerCollectionViewDidLayoutSubviews:(id)a3
{
  v4 = a3;
  v5 = [(SKUIScrollingSegmentedControllerAccessibility *)self valueForKey:@"_focusedViewControllerIndex"];
  v6 = [v5 unsignedIntegerValue];

  v9.receiver = self;
  v9.super_class = SKUIScrollingSegmentedControllerAccessibility;
  [(SKUIScrollingSegmentedControllerAccessibility *)&v9 scrollingSegmentedControllerCollectionViewDidLayoutSubviews:v4];

  v7 = [(SKUIScrollingSegmentedControllerAccessibility *)self valueForKey:@"_focusedViewControllerIndex"];
  v8 = [v7 unsignedIntegerValue];

  if (v6 != v8)
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
  }
}

@end
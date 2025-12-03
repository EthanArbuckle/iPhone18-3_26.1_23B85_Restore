@interface SKUIScrollingSegmentedControllerAccessibility
- (void)scrollingSegmentedControllerCollectionViewDidLayoutSubviews:(id)subviews;
@end

@implementation SKUIScrollingSegmentedControllerAccessibility

- (void)scrollingSegmentedControllerCollectionViewDidLayoutSubviews:(id)subviews
{
  subviewsCopy = subviews;
  v5 = [(SKUIScrollingSegmentedControllerAccessibility *)self valueForKey:@"_focusedViewControllerIndex"];
  unsignedIntegerValue = [v5 unsignedIntegerValue];

  v9.receiver = self;
  v9.super_class = SKUIScrollingSegmentedControllerAccessibility;
  [(SKUIScrollingSegmentedControllerAccessibility *)&v9 scrollingSegmentedControllerCollectionViewDidLayoutSubviews:subviewsCopy];

  v7 = [(SKUIScrollingSegmentedControllerAccessibility *)self valueForKey:@"_focusedViewControllerIndex"];
  unsignedIntegerValue2 = [v7 unsignedIntegerValue];

  if (unsignedIntegerValue != unsignedIntegerValue2)
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
  }
}

@end
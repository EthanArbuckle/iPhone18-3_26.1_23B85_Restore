@interface SUUIScrollingSegmentedControllerAccessibility
- (void)scrollingSegmentedControllerCollectionViewDidLayoutSubviews:(id)subviews;
@end

@implementation SUUIScrollingSegmentedControllerAccessibility

- (void)scrollingSegmentedControllerCollectionViewDidLayoutSubviews:(id)subviews
{
  subviewsCopy = subviews;
  v5 = [(SUUIScrollingSegmentedControllerAccessibility *)self valueForKey:@"_focusedViewControllerIndex"];
  unsignedIntegerValue = [v5 unsignedIntegerValue];

  v9.receiver = self;
  v9.super_class = SUUIScrollingSegmentedControllerAccessibility;
  [(SUUIScrollingSegmentedControllerAccessibility *)&v9 scrollingSegmentedControllerCollectionViewDidLayoutSubviews:subviewsCopy];

  v7 = [(SUUIScrollingSegmentedControllerAccessibility *)self valueForKey:@"_focusedViewControllerIndex"];
  unsignedIntegerValue2 = [v7 unsignedIntegerValue];

  if (unsignedIntegerValue != unsignedIntegerValue2)
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
  }
}

@end
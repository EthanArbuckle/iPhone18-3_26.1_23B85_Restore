@interface ViewControllerHostingCollectionViewCellAccessibility
- (BOOL)canBecomeFocused;
@end

@implementation ViewControllerHostingCollectionViewCellAccessibility

- (BOOL)canBecomeFocused
{
  v5.receiver = self;
  v5.super_class = ViewControllerHostingCollectionViewCellAccessibility;
  canBecomeFocused = [(ViewControllerHostingCollectionViewCellAccessibility *)&v5 canBecomeFocused];
  return ([(ViewControllerHostingCollectionViewCellAccessibility *)self _accessibilityIsFKARunningForFocusItem]^ 1) & canBecomeFocused;
}

@end
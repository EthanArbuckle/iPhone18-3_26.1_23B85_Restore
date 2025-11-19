@interface MTToolbarAccessibility
- (BOOL)shouldGroupAccessibilityChildren;
@end

@implementation MTToolbarAccessibility

- (BOOL)shouldGroupAccessibilityChildren
{
  if (([(MTToolbarAccessibility *)self _accessibilityHasDescendantOfType:objc_opt_class()]& 1) != 0)
  {
    return 0;
  }

  v4.receiver = self;
  v4.super_class = MTToolbarAccessibility;
  return [(MTToolbarAccessibility *)&v4 shouldGroupAccessibilityChildren];
}

@end
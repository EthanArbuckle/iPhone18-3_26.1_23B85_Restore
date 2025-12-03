@interface PRSubviewHitTestingViewAccessibility
- (id)automationElements;
@end

@implementation PRSubviewHitTestingViewAccessibility

- (id)automationElements
{
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  subviews = [v2 subviews];

  return subviews;
}

@end
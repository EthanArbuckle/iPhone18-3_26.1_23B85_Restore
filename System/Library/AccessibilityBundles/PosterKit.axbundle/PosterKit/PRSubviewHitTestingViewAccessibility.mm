@interface PRSubviewHitTestingViewAccessibility
- (id)automationElements;
@end

@implementation PRSubviewHitTestingViewAccessibility

- (id)automationElements
{
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  v3 = [v2 subviews];

  return v3;
}

@end
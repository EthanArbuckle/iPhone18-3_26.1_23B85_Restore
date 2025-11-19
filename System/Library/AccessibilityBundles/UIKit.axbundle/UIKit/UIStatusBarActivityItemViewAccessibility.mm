@interface UIStatusBarActivityItemViewAccessibility
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation UIStatusBarActivityItemViewAccessibility

- (id)accessibilityLabel
{
  v3 = [(UIStatusBarActivityItemViewAccessibility *)self safeValueForKey:@"_syncActivity"];
  v4 = [v3 BOOLValue];
  MEMORY[0x29EDC9740](v3);
  if (v4)
  {
    v5 = accessibilityLocalizedString(@"status.synching.inprogress");
  }

  else
  {
    v5 = accessibilityLocalizedString(@"status.network.connection.inprogress");
  }

  return v5;
}

- (unint64_t)accessibilityTraits
{
  v5 = self;
  v4 = a2;
  v3.receiver = self;
  v3.super_class = UIStatusBarActivityItemViewAccessibility;
  return [(UIStatusBarActivityItemViewAccessibility *)&v3 accessibilityTraits]| *MEMORY[0x29EDC7580];
}

@end
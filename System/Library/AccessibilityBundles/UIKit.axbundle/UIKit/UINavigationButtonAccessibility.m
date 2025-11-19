@interface UINavigationButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_accessibilityUserTestingIsCancelButton;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation UINavigationButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v5 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = @"UINavigationButton";
  [location[0] validateClass:0 hasInstanceMethod:? withFullSignature:?];
  [location[0] validateClass:v3 hasInstanceMethod:@"style" withFullSignature:{"i", 0}];
  objc_storeStrong(v5, obj);
}

- (id)accessibilityLabel
{
  v9 = self;
  v8[1] = a2;
  v8[0] = [(UINavigationButtonAccessibility *)self additionsSelf];
  if (-[UINavigationBarAccessibility_UIViewAccessibilityAdditions _accessibilityIsNavigationView](v8[0]) || ((v7 = -[UINavigationButtonAccessibility safeValueForKey:](v9, "safeValueForKey:", @"originatingButtonItem"), (location = [v8[0] _accessibilityComputedLabelForNavigationBarWithAssociatedBarButtonItem:v7]) == 0) ? (v5 = 0) : (v10 = MEMORY[0x29EDC9748](location), v5 = 1), objc_storeStrong(&location, 0), objc_storeStrong(&v7, 0), !v5))
  {
    v4.receiver = v9;
    v4.super_class = UINavigationButtonAccessibility;
    v10 = [(UINavigationButtonAccessibility *)&v4 accessibilityLabel];
    v5 = 1;
  }

  objc_storeStrong(v8, 0);
  v2 = v10;

  return v2;
}

- (unint64_t)accessibilityTraits
{
  v10 = self;
  v9 = a2;
  v5 = [(UINavigationButtonAccessibility *)self additionsSelf];
  IsNavigation = [(UINavigationBarAccessibility_UIViewAccessibilityAdditions *)v5 _accessibilityIsNavigationView];
  *&v2 = MEMORY[0x29EDC9740](v5).n128_u64[0];
  if (IsNavigation)
  {
    v7.receiver = v10;
    v7.super_class = UINavigationButtonAccessibility;
    return [(UINavigationButtonAccessibility *)&v7 accessibilityTraits];
  }

  else
  {
    v4 = *MEMORY[0x29EDC7F70];
    v8.receiver = v10;
    v8.super_class = UINavigationButtonAccessibility;
    return v4 | [(UINavigationButtonAccessibility *)&v8 accessibilityTraits];
  }
}

- (BOOL)_accessibilityUserTestingIsCancelButton
{
  v6 = self;
  v5 = a2;
  v3.receiver = self;
  v3.super_class = UINavigationButtonAccessibility;
  v4 = [(UINavigationButtonAccessibility *)&v3 _accessibilityUserTestingIsCancelButton];
  if ((v4 & 1) == 0 && [(UINavigationButtonAccessibility *)v6 safeIntForKey:@"style"]== 3)
  {
    v4 = 1;
  }

  return v4 & 1;
}

@end
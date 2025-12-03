@interface UINavigationButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_accessibilityUserTestingIsCancelButton;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation UINavigationButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v5 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  v3 = @"UINavigationButton";
  [location[0] validateClass:0 hasInstanceMethod:? withFullSignature:?];
  [location[0] validateClass:v3 hasInstanceMethod:@"style" withFullSignature:{"i", 0}];
  objc_storeStrong(v5, obj);
}

- (id)accessibilityLabel
{
  selfCopy = self;
  v8[1] = a2;
  v8[0] = [(UINavigationButtonAccessibility *)self additionsSelf];
  if (-[UINavigationBarAccessibility_UIViewAccessibilityAdditions _accessibilityIsNavigationView](v8[0]) || ((v7 = -[UINavigationButtonAccessibility safeValueForKey:](selfCopy, "safeValueForKey:", @"originatingButtonItem"), (location = [v8[0] _accessibilityComputedLabelForNavigationBarWithAssociatedBarButtonItem:v7]) == 0) ? (v5 = 0) : (accessibilityLabel = MEMORY[0x29EDC9748](location), v5 = 1), objc_storeStrong(&location, 0), objc_storeStrong(&v7, 0), !v5))
  {
    v4.receiver = selfCopy;
    v4.super_class = UINavigationButtonAccessibility;
    accessibilityLabel = [(UINavigationButtonAccessibility *)&v4 accessibilityLabel];
    v5 = 1;
  }

  objc_storeStrong(v8, 0);
  v2 = accessibilityLabel;

  return v2;
}

- (unint64_t)accessibilityTraits
{
  selfCopy = self;
  v9 = a2;
  additionsSelf = [(UINavigationButtonAccessibility *)self additionsSelf];
  IsNavigation = [(UINavigationBarAccessibility_UIViewAccessibilityAdditions *)additionsSelf _accessibilityIsNavigationView];
  *&v2 = MEMORY[0x29EDC9740](additionsSelf).n128_u64[0];
  if (IsNavigation)
  {
    v7.receiver = selfCopy;
    v7.super_class = UINavigationButtonAccessibility;
    return [(UINavigationButtonAccessibility *)&v7 accessibilityTraits];
  }

  else
  {
    v4 = *MEMORY[0x29EDC7F70];
    v8.receiver = selfCopy;
    v8.super_class = UINavigationButtonAccessibility;
    return v4 | [(UINavigationButtonAccessibility *)&v8 accessibilityTraits];
  }
}

- (BOOL)_accessibilityUserTestingIsCancelButton
{
  selfCopy = self;
  v5 = a2;
  v3.receiver = self;
  v3.super_class = UINavigationButtonAccessibility;
  _accessibilityUserTestingIsCancelButton = [(UINavigationButtonAccessibility *)&v3 _accessibilityUserTestingIsCancelButton];
  if ((_accessibilityUserTestingIsCancelButton & 1) == 0 && [(UINavigationButtonAccessibility *)selfCopy safeIntForKey:@"style"]== 3)
  {
    _accessibilityUserTestingIsCancelButton = 1;
  }

  return _accessibilityUserTestingIsCancelButton & 1;
}

@end
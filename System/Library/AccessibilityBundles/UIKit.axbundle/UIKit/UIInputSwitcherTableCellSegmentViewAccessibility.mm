@interface UIInputSwitcherTableCellSegmentViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation UIInputSwitcherTableCellSegmentViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v5 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  v3 = @"UIInputSwitcherTableCellSegmentView";
  [location[0] validateClass:0 hasInstanceMethod:? withFullSignature:?];
  [location[0] validateClass:v3 hasInstanceMethod:@"label" withFullSignature:{"@", 0}];
  objc_storeStrong(v5, obj);
}

- (id)accessibilityLabel
{
  selfCopy = self;
  v11[1] = a2;
  v10 = 0;
  objc_opt_class();
  v5 = [(UIInputSwitcherTableCellSegmentViewAccessibility *)selfCopy safeValueForKey:@"label"];
  v9 = __UIAccessibilityCastAsClass();
  MEMORY[0x29EDC9740](v5);
  v8 = MEMORY[0x29EDC9748](v9);
  objc_storeStrong(&v9, 0);
  v11[0] = [v8 text];
  *&v2 = MEMORY[0x29EDC9740](v8).n128_u64[0];
  if ([v11[0] length])
  {
    accessibilityLabel = MEMORY[0x29EDC9748](v11[0]);
  }

  else
  {
    v6.receiver = selfCopy;
    v6.super_class = UIInputSwitcherTableCellSegmentViewAccessibility;
    accessibilityLabel = [(UIInputSwitcherTableCellSegmentViewAccessibility *)&v6 accessibilityLabel];
  }

  v7 = 1;
  objc_storeStrong(v11, 0);
  v3 = accessibilityLabel;

  return v3;
}

- (unint64_t)accessibilityTraits
{
  selfCopy = self;
  v7 = a2;
  v6 = [(UIInputSwitcherTableCellSegmentViewAccessibility *)self safeBoolForKey:@"isSelected"];
  v5.receiver = selfCopy;
  v5.super_class = UIInputSwitcherTableCellSegmentViewAccessibility;
  v4 = [(UIInputSwitcherTableCellSegmentViewAccessibility *)&v5 accessibilityTraits]| *MEMORY[0x29EDC7F70];
  if (v6)
  {
    v3 = *MEMORY[0x29EDC7FC0];
  }

  else
  {
    v3 = 0;
  }

  return v4 | v3;
}

@end
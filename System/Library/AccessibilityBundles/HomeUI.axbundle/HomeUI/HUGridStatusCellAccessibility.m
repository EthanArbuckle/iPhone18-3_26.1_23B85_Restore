@interface HUGridStatusCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation HUGridStatusCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"HFItem"];
  [v3 validateClass:@"HUGridStatusCell" hasInstanceMethod:@"item" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  objc_opt_class();
  v3 = [(HUGridStatusCellAccessibility *)self safeValueForKey:@"item"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = [v4 latestResults];
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x29EDC5320]];
  v7 = __UIAccessibilitySafeClass();

  v8 = [v7 midValue];
  v9 = [v8 integerValue];

  v10 = [v5 objectForKeyedSubscript:*MEMORY[0x29EDC5328]];
  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    accessibilityHomeUILocalizedString(@"unknown.percent");
  }

  else
  {
    [v5 objectForKeyedSubscript:*MEMORY[0x29EDC5308]];
  }
  v13 = ;
  v11 = __UIAXStringForVariables();

  return v11;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = HUGridStatusCellAccessibility;
  return *MEMORY[0x29EDC7F70] | [(HUGridStatusCellAccessibility *)&v3 accessibilityTraits];
}

@end
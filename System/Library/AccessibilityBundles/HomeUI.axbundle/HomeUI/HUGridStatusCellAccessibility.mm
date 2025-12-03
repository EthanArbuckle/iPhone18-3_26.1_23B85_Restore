@interface HUGridStatusCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation HUGridStatusCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"HFItem"];
  [validationsCopy validateClass:@"HUGridStatusCell" hasInstanceMethod:@"item" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  objc_opt_class();
  v3 = [(HUGridStatusCellAccessibility *)self safeValueForKey:@"item"];
  v4 = __UIAccessibilityCastAsClass();

  latestResults = [v4 latestResults];
  v6 = [latestResults objectForKeyedSubscript:*MEMORY[0x29EDC5320]];
  v7 = __UIAccessibilitySafeClass();

  midValue = [v7 midValue];
  integerValue = [midValue integerValue];

  v10 = [latestResults objectForKeyedSubscript:*MEMORY[0x29EDC5328]];
  if (integerValue == 0x7FFFFFFFFFFFFFFFLL)
  {
    accessibilityHomeUILocalizedString(@"unknown.percent");
  }

  else
  {
    [latestResults objectForKeyedSubscript:*MEMORY[0x29EDC5308]];
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
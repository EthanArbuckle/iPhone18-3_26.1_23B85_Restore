@interface FlowcaseCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation FlowcaseCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MusicApplication.FlowcaseCell" hasInstanceMethod:@"headline" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MusicApplication.FlowcaseCell" hasInstanceMethod:@"title" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MusicApplication.FlowcaseCell" hasInstanceMethod:@"subtitle" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MusicApplication.FlowcaseCell" hasInstanceMethod:@"descriptionText" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(FlowcaseCellAccessibility *)self safeValueForKey:@"headline"];
  v4 = [(FlowcaseCellAccessibility *)self safeValueForKey:@"title"];
  v5 = [(FlowcaseCellAccessibility *)self safeValueForKey:@"subtitle"];
  v8 = [(FlowcaseCellAccessibility *)self safeValueForKey:@"descriptionText"];
  v6 = __UIAXStringForVariables();

  return v6;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = FlowcaseCellAccessibility;
  return *MEMORY[0x29EDC7F70] | [(FlowcaseCellAccessibility *)&v3 accessibilityTraits];
}

@end
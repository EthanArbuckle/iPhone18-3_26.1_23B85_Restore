@interface ComposePlaceholderViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityValue;
@end

@implementation ComposePlaceholderViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"ComposePlaceholderView" hasInstanceMethod:@"subjectField" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MFComposeSubjectView" hasInstanceMethod:@"text" withFullSignature:{"@", 0}];
}

- (id)accessibilityValue
{
  v2 = [(ComposePlaceholderViewAccessibility *)self safeValueForKey:@"subjectField"];
  v3 = [v2 safeStringForKey:@"text"];

  return v3;
}

@end
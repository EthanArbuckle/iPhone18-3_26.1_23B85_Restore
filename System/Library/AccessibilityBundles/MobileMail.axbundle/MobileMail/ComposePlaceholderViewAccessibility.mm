@interface ComposePlaceholderViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityValue;
@end

@implementation ComposePlaceholderViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"ComposePlaceholderView" hasInstanceMethod:@"subjectField" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MFComposeSubjectView" hasInstanceMethod:@"text" withFullSignature:{"@", 0}];
}

- (id)accessibilityValue
{
  v2 = [(ComposePlaceholderViewAccessibility *)self safeValueForKey:@"subjectField"];
  v3 = [v2 safeStringForKey:@"text"];

  return v3;
}

@end
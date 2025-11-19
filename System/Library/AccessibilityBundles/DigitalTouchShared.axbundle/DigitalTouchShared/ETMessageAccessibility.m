@interface ETMessageAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_accessibilityColorString;
@end

@implementation ETMessageAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"ETMessageAccessibility"];
  [v3 validateClass:@"ETMessage" hasInstanceMethod:@"color" withFullSignature:{"@", 0}];
}

- (id)_accessibilityColorString
{
  v2 = [(ETMessageAccessibility *)self safeValueForKey:@"color"];
  v3 = [v2 axColorStringForSpeaking];

  return v3;
}

@end
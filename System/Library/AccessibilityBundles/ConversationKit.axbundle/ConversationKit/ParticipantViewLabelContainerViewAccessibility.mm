@interface ParticipantViewLabelContainerViewAccessibility
- (id)accessibilityLabel;
@end

@implementation ParticipantViewLabelContainerViewAccessibility

- (id)accessibilityLabel
{
  objc_opt_class();
  v3 = [(ParticipantViewLabelContainerViewAccessibility *)self safeValueForKey:@"label"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = [v4 text];

  return v5;
}

@end
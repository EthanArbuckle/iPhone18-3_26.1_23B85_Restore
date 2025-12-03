@interface ParticipantViewLabelContainerViewAccessibility
- (id)accessibilityLabel;
@end

@implementation ParticipantViewLabelContainerViewAccessibility

- (id)accessibilityLabel
{
  objc_opt_class();
  v3 = [(ParticipantViewLabelContainerViewAccessibility *)self safeValueForKey:@"label"];
  v4 = __UIAccessibilityCastAsClass();

  text = [v4 text];

  return text;
}

@end
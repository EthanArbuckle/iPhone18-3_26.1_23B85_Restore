@interface TVFocusableTextViewAccessibility
- (BOOL)isAccessibilityElement;
- (id)accessibilityLabel;
- (unint64_t)_accessibilityExplorerElementReadPriority;
@end

@implementation TVFocusableTextViewAccessibility

- (BOOL)isAccessibilityElement
{
  objc_opt_class();
  v3 = [(TVFocusableTextViewAccessibility *)self safeValueForKey:@"descriptionTextView"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = [v4 text];
  v6 = [v5 length] != 0;

  [v4 setIsAccessibilityElement:v6];
  return v6;
}

- (unint64_t)_accessibilityExplorerElementReadPriority
{
  v3 = NSClassFromString(&cfstr_Tvrelatedconte.isa);
  v4 = [(TVFocusableTextViewAccessibility *)self _accessibilityAncestorIsKindOf:v3];
  v7 = 0;
  if (v4)
  {
    v5 = [*MEMORY[0x29EDC8008] _accessibilityNativeFocusElement];
    v6 = [v5 _accessibilityAncestorIsKindOf:v3];

    if (v4 == v6)
    {
      v7 = 1;
    }
  }

  return v7;
}

- (id)accessibilityLabel
{
  v2 = [(TVFocusableTextViewAccessibility *)self safeValueForKey:@"descriptionTextView"];
  v3 = __UIAccessibilitySafeClass();

  v4 = [v3 accessibilityValue];

  return v4;
}

@end
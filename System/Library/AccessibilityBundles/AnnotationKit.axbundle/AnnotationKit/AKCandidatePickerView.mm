@interface AKCandidatePickerView
@end

@implementation AKCandidatePickerView

void __70__AKCandidatePickerView_iOSAccessibility__createButtonsWithBlurStyle___block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = a2;
  if ([*(a1 + 32) count] > a3)
  {
    objc_opt_class();
    v6 = [*(a1 + 32) objectAtIndex:a3];
    v7 = __UIAccessibilityCastAsClass();

    v8 = accessibilityLocalizedString(@"sketch.suggestion.label");
    [v5 setAccessibilityLabel:v8];

    v9 = [v7 displayName];
    [v5 setAccessibilityValue:v9];
  }
}

@end
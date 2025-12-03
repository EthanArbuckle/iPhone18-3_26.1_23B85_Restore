@interface CKEntryViewButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_accessibilityElementHelpForCatalyst;
- (id)_accessibilityHint;
- (id)_accessibilityLabel;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation CKEntryViewButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CKEntryViewButton" hasInstanceMethod:@"entryViewButtonType" withFullSignature:{"q", 0}];
  [validationsCopy validateClass:@"CKEntryViewButton" hasInstanceMethod:@"button" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v9.receiver = self;
  v9.super_class = CKEntryViewButtonAccessibility;
  [(CKEntryViewButtonAccessibility *)&v9 _accessibilityLoadAccessibilityInformation];
  v3 = [(CKEntryViewButtonAccessibility *)self safeUIViewForKey:@"button"];
  _accessibilityLabel = [(CKEntryViewButtonAccessibility *)self _accessibilityLabel];
  [v3 setAccessibilityLabel:_accessibilityLabel];

  _accessibilityHint = [(CKEntryViewButtonAccessibility *)self _accessibilityHint];
  [v3 setAccessibilityHint:_accessibilityHint];

  objc_initWeak(&location, v3);
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 3221225472;
  v6[2] = __76__CKEntryViewButtonAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v6[3] = &unk_29F2B0D08;
  objc_copyWeak(&v7, &location);
  [(CKEntryViewButtonAccessibility *)self setAccessibilityTraitsBlock:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

uint64_t __76__CKEntryViewButtonAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained accessibilityTraits];

  return v2;
}

- (id)_accessibilityLabel
{
  _axButtonType = [(CKEntryViewButtonAccessibility *)self _axButtonType];
  if (_axButtonType > 3)
  {
    v3 = 0;
  }

  else
  {
    v3 = accessibilityLocalizedString(off_29F2B0D28[_axButtonType]);
  }

  return v3;
}

- (id)_accessibilityHint
{
  if ([(CKEntryViewButtonAccessibility *)self _axButtonType]== 1)
  {
    v2 = accessibilityLocalizedString(@"audio.button.hint");
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)_accessibilityElementHelpForCatalyst
{
  if ([(CKEntryViewButtonAccessibility *)self _axButtonType]== 1)
  {
    v2 = accessibilityLocalizedString(@"audio.button.hint.macos");
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end
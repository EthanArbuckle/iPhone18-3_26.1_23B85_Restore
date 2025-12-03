@interface PXPeopleSuggestionViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation PXPeopleSuggestionViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PXPeopleSuggestionView" hasInstanceMethod:@"suggestion" withFullSignature:{"@", 0}];
  [validationsCopy validateProtocol:@"PXPerson" hasRequiredInstanceMethod:@"px_localizedName"];
}

- (id)accessibilityLabel
{
  v3 = [(PXPeopleSuggestionViewAccessibility *)self safeValueForKey:@"suggestion"];
  v4 = [v3 safeValueForKey:@"px_localizedName"];
  if ([v4 length])
  {
    v5 = MEMORY[0x29EDBA0F8];
    v6 = accessibilityPhotosUICoreLocalizedString(@"avatar.for.name.label");
    v7 = [v5 stringWithFormat:v6, v4];
  }

  else
  {
    v7 = accessibilityPhotosUICoreLocalizedString(@"avatar.for.unknown.person.label");
  }

  v8 = [(PXPeopleSuggestionViewAccessibility *)self safeValueForKey:@"imageView"];
  accessibilityLabel = [v8 accessibilityLabel];
  v9 = __UIAXStringForVariables();

  return v9;
}

- (unint64_t)accessibilityTraits
{
  v2 = [(PXPeopleSuggestionViewAccessibility *)self safeValueForKey:@"imageView"];
  accessibilityTraits = [v2 accessibilityTraits];

  return accessibilityTraits;
}

- (id)accessibilityValue
{
  v2 = [(PXPeopleSuggestionViewAccessibility *)self safeValueForKey:@"imageView"];
  accessibilityValue = [v2 accessibilityValue];

  return accessibilityValue;
}

@end
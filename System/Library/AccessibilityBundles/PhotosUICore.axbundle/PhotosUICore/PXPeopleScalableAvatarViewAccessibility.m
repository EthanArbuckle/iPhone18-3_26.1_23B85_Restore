@interface PXPeopleScalableAvatarViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation PXPeopleScalableAvatarViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PXPeopleScalableAvatarView" hasInstanceMethod:@"imageView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PXPeopleScalableAvatarView" hasInstanceMethod:@"person" withFullSignature:{"@", 0}];
  [v3 validateProtocol:@"PXPerson" hasRequiredInstanceMethod:@"px_localizedName"];
}

- (id)accessibilityLabel
{
  v3 = [(PXPeopleScalableAvatarViewAccessibility *)self safeValueForKey:@"person"];
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

  v8 = [(PXPeopleScalableAvatarViewAccessibility *)self safeValueForKey:@"imageView"];
  v11 = [v8 accessibilityLabel];
  v9 = __UIAXStringForVariables();

  return v9;
}

- (unint64_t)accessibilityTraits
{
  v2 = [(PXPeopleScalableAvatarViewAccessibility *)self safeValueForKey:@"imageView"];
  v3 = [v2 accessibilityTraits];

  return v3;
}

- (id)accessibilityValue
{
  v2 = [(PXPeopleScalableAvatarViewAccessibility *)self safeValueForKey:@"imageView"];
  v3 = [v2 accessibilityValue];

  return v3;
}

@end
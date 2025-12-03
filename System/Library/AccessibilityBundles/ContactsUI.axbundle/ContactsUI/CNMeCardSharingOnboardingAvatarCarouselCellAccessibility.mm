@interface CNMeCardSharingOnboardingAvatarCarouselCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
- (unint64_t)_axImageType;
- (unint64_t)accessibilityTraits;
@end

@implementation CNMeCardSharingOnboardingAvatarCarouselCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CNMeCardSharingOnboardingAvatarCarouselItem"];
  [validationsCopy validateClass:@"CNMeCardSharingOnboardingAvatarCarouselItem" hasInstanceMethod:@"title" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CNMeCardSharingOnboardingAvatarCarouselItem" hasInstanceMethod:@"imageType" withFullSignature:{"Q", 0}];
}

- (id)accessibilityLabel
{
  _axCarouselItem = [(CNMeCardSharingOnboardingAvatarCarouselCellAccessibility *)self _axCarouselItem];
  v3 = [_axCarouselItem safeStringForKey:@"title"];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
LABEL_5:
    v7 = v5;
    goto LABEL_6;
  }

  v6 = [_axCarouselItem safeIntegerForKey:@"imageType"];
  if (v6 <= 4)
  {
    v5 = accessibilityLocalizedString(off_29F2B5D00[v6]);
    goto LABEL_5;
  }

  v7 = 0;
LABEL_6:

  return v7;
}

- (unint64_t)accessibilityTraits
{
  v2 = *MEMORY[0x29EDC7F70];
  _axImageType = [(CNMeCardSharingOnboardingAvatarCarouselCellAccessibility *)self _axImageType];
  if (_axImageType <= 4 && ((1 << _axImageType) & 0x1A) != 0)
  {
    v2 |= *MEMORY[0x29EDC7F88];
  }

  return v2;
}

- (unint64_t)_axImageType
{
  _axCarouselItem = [(CNMeCardSharingOnboardingAvatarCarouselCellAccessibility *)self _axCarouselItem];
  v3 = [_axCarouselItem safeIntegerForKey:@"imageType"];

  return v3;
}

@end
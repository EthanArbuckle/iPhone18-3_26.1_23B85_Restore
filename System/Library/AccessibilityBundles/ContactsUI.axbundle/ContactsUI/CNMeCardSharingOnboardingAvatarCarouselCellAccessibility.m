@interface CNMeCardSharingOnboardingAvatarCarouselCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
- (unint64_t)_axImageType;
- (unint64_t)accessibilityTraits;
@end

@implementation CNMeCardSharingOnboardingAvatarCarouselCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CNMeCardSharingOnboardingAvatarCarouselItem"];
  [v3 validateClass:@"CNMeCardSharingOnboardingAvatarCarouselItem" hasInstanceMethod:@"title" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CNMeCardSharingOnboardingAvatarCarouselItem" hasInstanceMethod:@"imageType" withFullSignature:{"Q", 0}];
}

- (id)accessibilityLabel
{
  v2 = [(CNMeCardSharingOnboardingAvatarCarouselCellAccessibility *)self _axCarouselItem];
  v3 = [v2 safeStringForKey:@"title"];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
LABEL_5:
    v7 = v5;
    goto LABEL_6;
  }

  v6 = [v2 safeIntegerForKey:@"imageType"];
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
  v3 = [(CNMeCardSharingOnboardingAvatarCarouselCellAccessibility *)self _axImageType];
  if (v3 <= 4 && ((1 << v3) & 0x1A) != 0)
  {
    v2 |= *MEMORY[0x29EDC7F88];
  }

  return v2;
}

- (unint64_t)_axImageType
{
  v2 = [(CNMeCardSharingOnboardingAvatarCarouselCellAccessibility *)self _axCarouselItem];
  v3 = [v2 safeIntegerForKey:@"imageType"];

  return v3;
}

@end
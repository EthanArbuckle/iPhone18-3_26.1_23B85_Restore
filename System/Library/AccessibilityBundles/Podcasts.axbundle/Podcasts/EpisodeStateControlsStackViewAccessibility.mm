@interface EpisodeStateControlsStackViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation EpisodeStateControlsStackViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"ShelfKitCollectionViews.EpisodeStateControlsStackView" hasInstanceMethod:@"accessibilityBookmarkBadge" withFullSignature:{"@", 0}];
  [v3 validateClass:@"ShelfKitCollectionViews.EpisodeStateControlsStackView" hasInstanceMethod:@"accessibilityDownloadBadge" withFullSignature:{"@", 0}];
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = EpisodeStateControlsStackViewAccessibility;
  return *MEMORY[0x29EDC7F70] | [(EpisodeStateControlsStackViewAccessibility *)&v3 accessibilityTraits];
}

- (id)accessibilityLabel
{
  v3 = [(EpisodeStateControlsStackViewAccessibility *)self safeValueForKey:@"accessibilityBookmarkBadge"];
  if ([v3 _accessibilityViewIsVisible])
  {
    v4 = accessibilityLocalizedString(@"saved");
  }

  else
  {
    v4 = 0;
  }

  v5 = [(EpisodeStateControlsStackViewAccessibility *)self safeValueForKey:@"accessibilityDownloadBadge"];
  if ([v5 _accessibilityViewIsVisible])
  {
    v6 = accessibilityLocalizedString(@"downloaded");
  }

  else
  {
    v6 = 0;
  }

  v7 = __UIAXStringForVariables();

  return v7;
}

@end
@interface MUPlaceHeaderViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_accessibilitySupplementaryFooterViews;
- (id)automationElements;
- (unint64_t)accessibilityTraits;
@end

@implementation MUPlaceHeaderViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MUPlaceHeaderView" hasInstanceVariable:@"_titleLabel" withType:"MUFadingMarqueeLabel"];
  [v3 validateClass:@"MUPlaceHeaderView" hasInstanceVariable:@"_secondaryTitleLabel" withType:"UILabel"];
  [v3 validateClass:@"MUPlaceHeaderView" hasInstanceVariable:@"_verifiedLabel" withType:"UILabel"];
  [v3 validateClass:@"MUPlaceHeaderView" hasInstanceVariable:@"_containmentLabel" withType:"MULinkView"];
  [v3 validateClass:@"MUPlaceHeaderView" hasInstanceVariable:@"_heroImageView" withType:"MUImageView"];
  [v3 validateClass:@"MUPlaceHeaderView" hasInstanceVariable:@"_transitInfoLabelView" withType:"MKTransitInfoLabelView"];
  [v3 validateClass:@"MUPlaceHeaderView" hasInstanceVariable:@"_verifiedBusinessCoverPhotoImageView" withType:"MUPlaceHeaderCoverPhotoView"];
  [v3 validateClass:@"MUPlaceHeaderView" hasInstanceVariable:@"_verifiedBusinessLogoImageView" withType:"MUVerifiedLogoImageView"];
  [v3 validateClass:@"MUCardButton"];
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = MUPlaceHeaderViewAccessibility;
  return *MEMORY[0x29EDC7F80] | [(MUPlaceHeaderViewAccessibility *)&v3 accessibilityTraits];
}

- (id)automationElements
{
  v3 = MEMORY[0x29EDB8D80];
  v4 = [(MUPlaceHeaderViewAccessibility *)self safeValueForKey:@"_titleLabel"];
  v5 = [(MUPlaceHeaderViewAccessibility *)self safeValueForKey:@"_secondaryTitleLabel"];
  v6 = [(MUPlaceHeaderViewAccessibility *)self safeValueForKey:@"_verifiedLabel"];
  v7 = [(MUPlaceHeaderViewAccessibility *)self safeValueForKey:@"_containmentLabel"];
  v8 = [(MUPlaceHeaderViewAccessibility *)self safeValueForKey:@"_heroImageView"];
  v9 = [(MUPlaceHeaderViewAccessibility *)self safeValueForKey:@"_transitInfoLabelView"];
  v10 = [(MUPlaceHeaderViewAccessibility *)self safeValueForKey:@"_verifiedBusinessCoverPhotoImageView"];
  v11 = [(MUPlaceHeaderViewAccessibility *)self safeValueForKey:@"_verifiedBusinessLogoImageView"];
  v12 = [v3 axArrayByIgnoringNilElementsWithCount:{8, v4, v5, v6, v7, v8, v9, v10, v11}];

  return v12;
}

- (id)_accessibilitySupplementaryFooterViews
{
  v2 = [(MUPlaceHeaderViewAccessibility *)self _accessibilityFindViewAncestor:&__block_literal_global_0 startWithSelf:0];
  v3 = [v2 _accessibilityFindSubviewDescendantsPassingTest:&__block_literal_global_328];

  return v3;
}

uint64_t __72__MUPlaceHeaderViewAccessibility__accessibilitySupplementaryFooterViews__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 _accessibilityViewController];
  MEMORY[0x29C2DD160](@"PlaceCardViewController");
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

uint64_t __72__MUPlaceHeaderViewAccessibility__accessibilitySupplementaryFooterViews__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  MEMORY[0x29C2DD160](@"MUCardButton");
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end
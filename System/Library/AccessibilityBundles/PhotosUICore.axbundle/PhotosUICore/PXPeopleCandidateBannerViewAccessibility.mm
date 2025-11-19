@interface PXPeopleCandidateBannerViewAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation PXPeopleCandidateBannerViewAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = PXPeopleCandidateBannerViewAccessibility;
  [(PXPeopleCandidateBannerViewAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v3 = [(PXPeopleCandidateBannerViewAccessibility *)self safeUIViewForKey:@"_notNowButton"];
  v4 = accessibilityPhotosUICoreLocalizedString(@"review.later.button.label");
  [v3 setAccessibilityLabel:v4];
}

@end
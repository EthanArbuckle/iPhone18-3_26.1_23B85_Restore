@interface SFPrivacyReportBannerCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)isAccessibilityElement;
- (SFPrivacyReportBannerCellAccessibility)initWithFrame:(CGRect)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axMarkupTrackerLabel;
@end

@implementation SFPrivacyReportBannerCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SFInteractiveBannerCell" hasInstanceMethod:@"leadingLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SFPrivacyReportBannerCell" isKindOfClass:@"SFInteractiveBannerCell"];
  [v3 validateClass:@"SFPrivacyReportBannerCell" hasInstanceVariable:@"_numberOfTrackers" withType:"q"];
  [v3 validateClass:@"SFPrivacyReportBannerCell" hasInstanceMethod:@"initWithFrame:" withFullSignature:{"@", "{CGRect={CGPoint=dd}{CGSize=dd}}", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = SFPrivacyReportBannerCellAccessibility;
  [(SFPrivacyReportBannerCellAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(SFPrivacyReportBannerCellAccessibility *)self _axMarkupTrackerLabel];
}

- (BOOL)isAccessibilityElement
{
  if (AXRequestingClient() == 4)
  {
    return 1;
  }

  v4.receiver = self;
  v4.super_class = SFPrivacyReportBannerCellAccessibility;
  return [(SFPrivacyReportBannerCellAccessibility *)&v4 isAccessibilityElement];
}

- (SFPrivacyReportBannerCellAccessibility)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = SFPrivacyReportBannerCellAccessibility;
  v3 = [(SFPrivacyReportBannerCellAccessibility *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(SFPrivacyReportBannerCellAccessibility *)v3 _axMarkupTrackerLabel];
  }

  return v4;
}

- (void)_axMarkupTrackerLabel
{
  objc_initWeak(&location, self);
  v3 = [(SFPrivacyReportBannerCellAccessibility *)self safeValueForKey:@"leadingLabel"];
  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 3221225472;
  v4[2] = __63__SFPrivacyReportBannerCellAccessibility__axMarkupTrackerLabel__block_invoke;
  v4[3] = &unk_29F2D6910;
  objc_copyWeak(&v5, &location);
  [v3 _setAccessibilityLabelBlock:v4];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

__CFString *__63__SFPrivacyReportBannerCellAccessibility__axMarkupTrackerLabel__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained safeIntegerForKey:@"_numberOfTrackers"];

  if (v2 < 0)
  {
    v5 = &stru_2A2220B98;
  }

  else
  {
    v3 = MEMORY[0x29EDBA0F8];
    v4 = accessibilityMobileSafariLocalizedString(@"number.of.trackers.blocked");
    v5 = [v3 localizedStringWithFormat:v4, v2];
  }

  return v5;
}

@end
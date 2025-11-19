@interface SFCrashBannerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (SFCrashBannerAccessibility)initWithFrame:(CGRect)a3;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation SFCrashBannerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SFCrashBanner" hasInstanceVariable:@"_closeButton" withType:"UIButton"];
  [v3 validateClass:@"SFCrashBanner" hasInstanceMethod:@"initWithFrame:" withFullSignature:{"@", "{CGRect={CGPoint=dd}{CGSize=dd}}", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = SFCrashBannerAccessibility;
  [(SFCrashBannerAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v3 = [(SFCrashBannerAccessibility *)self safeValueForKey:@"_closeButton"];
  v4 = accessibilitySafariServicesLocalizedString(@"close.crash.banner.button");
  [v3 setAccessibilityLabel:v4];
}

- (SFCrashBannerAccessibility)initWithFrame:(CGRect)a3
{
  v5.receiver = self;
  v5.super_class = SFCrashBannerAccessibility;
  v3 = [(SFCrashBannerAccessibility *)&v5 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(SFCrashBannerAccessibility *)v3 _accessibilityLoadAccessibilityInformation];

  return v3;
}

@end
@interface SFCrashBannerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (SFCrashBannerAccessibility)initWithFrame:(CGRect)frame;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation SFCrashBannerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SFCrashBanner" hasInstanceVariable:@"_closeButton" withType:"UIButton"];
  [validationsCopy validateClass:@"SFCrashBanner" hasInstanceMethod:@"initWithFrame:" withFullSignature:{"@", "{CGRect={CGPoint=dd}{CGSize=dd}}", 0}];
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

- (SFCrashBannerAccessibility)initWithFrame:(CGRect)frame
{
  v5.receiver = self;
  v5.super_class = SFCrashBannerAccessibility;
  v3 = [(SFCrashBannerAccessibility *)&v5 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(SFCrashBannerAccessibility *)v3 _accessibilityLoadAccessibilityInformation];

  return v3;
}

@end
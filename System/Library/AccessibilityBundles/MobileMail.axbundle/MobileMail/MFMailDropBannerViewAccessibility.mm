@interface MFMailDropBannerViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (MFMailDropBannerViewAccessibility)initWithFrame:(CGRect)frame;
- (id)_accessibilitySupplementaryFooterViews;
- (id)accessibilityLabel;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_setupDownloadIcon;
@end

@implementation MFMailDropBannerViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MFMailDropBannerView" hasInstanceMethod:@"_setupDownloadIcon" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"MFMailDropBannerView" hasInstanceMethod:@"initWithFrame:" withFullSignature:{"@", "{CGRect={CGPoint=dd}{CGSize=dd}}", 0}];
  [validationsCopy validateClass:@"MFMailDropBannerView" hasInstanceMethod:@"bannerState" withFullSignature:{"Q", 0}];
  [validationsCopy validateClass:@"MFMailDropBannerView" hasInstanceVariable:@"_downloadLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"MFMailDropBannerView" hasInstanceVariable:@"_expirationLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"MFMailDropBannerView" hasInstanceVariable:@"_downloadIcon" withType:"UIButton"];
  [validationsCopy validateClass:@"MFMailDropBannerView" hasInstanceVariable:@"_progressView" withType:"MFProgressView"];
}

- (id)accessibilityLabel
{
  v3 = [(MFMailDropBannerViewAccessibility *)self safeValueForKey:@"_downloadLabel"];
  accessibilityLabel = [v3 accessibilityLabel];
  v5 = [(MFMailDropBannerViewAccessibility *)self safeValueForKey:@"_expirationLabel"];
  accessibilityLabel2 = [v5 accessibilityLabel];
  v6 = __UIAXStringForVariables();

  return v6;
}

- (void)_setupDownloadIcon
{
  v3.receiver = self;
  v3.super_class = MFMailDropBannerViewAccessibility;
  [(MFMailDropBannerViewAccessibility *)&v3 _setupDownloadIcon];
  [(MFMailDropBannerViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v7.receiver = self;
  v7.super_class = MFMailDropBannerViewAccessibility;
  [(MFMailDropBannerViewAccessibility *)&v7 _accessibilityLoadAccessibilityInformation];
  v3 = [(MFMailDropBannerViewAccessibility *)self safeValueForKey:@"_downloadIcon"];
  v4 = [(MFMailDropBannerViewAccessibility *)self safeIntegerForKey:@"bannerState"];
  v5 = *MEMORY[0x29EDC7F70];
  if (v4 >= 2)
  {
    if (v4 == 2)
    {
      v6 = accessibilityLocalizedString(@"air.drop.downloading");
      v5 |= *MEMORY[0x29EDC7FA8];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = accessibilityLocalizedString(@"air.drop.download");
  }

  [v3 setAccessibilityLabel:v6];
  [v3 setAccessibilityTraits:v5];
}

- (MFMailDropBannerViewAccessibility)initWithFrame:(CGRect)frame
{
  v5.receiver = self;
  v5.super_class = MFMailDropBannerViewAccessibility;
  v3 = [(MFMailDropBannerViewAccessibility *)&v5 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(MFMailDropBannerViewAccessibility *)v3 _accessibilityLoadAccessibilityInformation];

  return v3;
}

- (id)_accessibilitySupplementaryFooterViews
{
  v3 = [(MFMailDropBannerViewAccessibility *)self safeValueForKey:@"_downloadIcon"];
  v4 = [(MFMailDropBannerViewAccessibility *)self safeValueForKey:@"_progressView"];
  v5 = [(MFMailDropBannerViewAccessibility *)self safeIntegerForKey:@"bannerState"];
  array = [MEMORY[0x29EDB8DE8] array];
  if ([v3 _accessibilityViewIsVisible] && (v5 - 1) <= 1)
  {
    [array addObject:v3];
  }

  if ([v4 _accessibilityViewIsVisible])
  {
    [array addObject:v4];
  }

  return array;
}

@end
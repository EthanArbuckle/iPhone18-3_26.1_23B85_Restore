@interface ENUIRegionalDetailsHeaderCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityElements;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)commonInit;
@end

@implementation ENUIRegionalDetailsHeaderCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"ENUIRegionalDetailsHeaderCell" hasInstanceMethod:@"subtitleText" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"ENUIRegionalDetailsHeaderCell" hasInstanceMethod:@"headerView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"HealthExposureNotificationUI.OnboardingHeaderView" hasInstanceMethod:@"imageView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"HealthExposureNotificationUI.OnboardingHeaderView" hasInstanceMethod:@"header" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"HealthExposureNotificationUI.ENUIPublicHealthHeader" hasInstanceMethod:@"title" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"ENUIRegionalDetailsHeaderCell" hasInstanceMethod:@"commonInit" withFullSignature:{"v", 0}];
}

- (id)accessibilityElements
{
  v3 = MEMORY[0x29EDB8D80];
  _accessibilityImageView = [(ENUIRegionalDetailsHeaderCellAccessibility *)self _accessibilityImageView];
  v5 = [(ENUIRegionalDetailsHeaderCellAccessibility *)self safeValueForKey:@"subtitleText"];
  v6 = [v3 axArrayByIgnoringNilElementsWithCount:{2, _accessibilityImageView, v5}];

  return v6;
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v6.receiver = self;
  v6.super_class = ENUIRegionalDetailsHeaderCellAccessibility;
  [(ENUIRegionalDetailsHeaderCellAccessibility *)&v6 _accessibilityLoadAccessibilityInformation];
  _accessibilityImageView = [(ENUIRegionalDetailsHeaderCellAccessibility *)self _accessibilityImageView];
  v4 = [(ENUIRegionalDetailsHeaderCellAccessibility *)self safeValueForKeyPath:@"headerView.header.title"];
  [_accessibilityImageView setIsAccessibilityElement:1];
  [_accessibilityImageView setAccessibilityLabel:v4];
  v5 = [(ENUIRegionalDetailsHeaderCellAccessibility *)self safeValueForKey:@"subtitleText"];
  [v5 setIsAccessibilityElement:1];
}

- (void)commonInit
{
  v3.receiver = self;
  v3.super_class = ENUIRegionalDetailsHeaderCellAccessibility;
  [(ENUIRegionalDetailsHeaderCellAccessibility *)&v3 commonInit];
  [(ENUIRegionalDetailsHeaderCellAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end
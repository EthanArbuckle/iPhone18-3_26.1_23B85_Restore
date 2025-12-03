@interface PHBottomBarAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)buttonPressed:(id)pressed;
- (void)layoutSubviews;
- (void)refreshCustomizedActionTypeTitles;
@end

@implementation PHBottomBarAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PHBottomBar" hasInstanceMethod:@"supplementalBottomRightButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PHBottomBar" hasInstanceMethod:@"refreshCustomizedActionTypeTitles" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"PHBottomBar" hasInstanceMethod:@"layoutSubviews" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"PHBottomBar" hasInstanceMethod:@"buttonPressed:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"PHBottomBar" hasInstanceMethod:@"setAnimating:" withFullSignature:{"v", "B", 0}];
  [validationsCopy validateClass:@"PHBottomBar" hasInstanceMethod:@"animating" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"PHBottomBar" hasInstanceMethod:@"supplementalBottomLeftButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PHBottomBar" hasInstanceMethod:@"setCurrentState: animated: animationCompletionBlock:" withFullSignature:{"v", "q", "B", "@?", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v9.receiver = self;
  v9.super_class = PHBottomBarAccessibility;
  [(PHBottomBarAccessibility *)&v9 _accessibilityLoadAccessibilityInformation];
  objc_opt_class();
  v3 = [(PHBottomBarAccessibility *)self safeValueForKey:@"supplementalBottomRightButton"];
  v4 = __UIAccessibilityCastAsClass();

  accessibilityLabel = [v4 accessibilityLabel];
  [v4 setIsAccessibilityElement:{objc_msgSend(accessibilityLabel, "length") != 0}];

  objc_opt_class();
  v6 = [(PHBottomBarAccessibility *)self safeValueForKey:@"supplementalBottomLeftButton"];
  v7 = __UIAccessibilityCastAsClass();

  accessibilityLabel2 = [v7 accessibilityLabel];
  [v7 setIsAccessibilityElement:{objc_msgSend(accessibilityLabel2, "length") != 0}];
}

- (void)refreshCustomizedActionTypeTitles
{
  v3.receiver = self;
  v3.super_class = PHBottomBarAccessibility;
  [(PHBottomBarAccessibility *)&v3 refreshCustomizedActionTypeTitles];
  [(PHBottomBarAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PHBottomBarAccessibility;
  [(PHBottomBarAccessibility *)&v3 layoutSubviews];
  [(PHBottomBarAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)buttonPressed:(id)pressed
{
  v3.receiver = self;
  v3.super_class = PHBottomBarAccessibility;
  [(PHBottomBarAccessibility *)&v3 buttonPressed:pressed];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], 0);
}

@end
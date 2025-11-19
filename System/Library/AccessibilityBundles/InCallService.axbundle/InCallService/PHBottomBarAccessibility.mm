@interface PHBottomBarAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)buttonPressed:(id)a3;
- (void)layoutSubviews;
- (void)refreshCustomizedActionTypeTitles;
@end

@implementation PHBottomBarAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PHBottomBar" hasInstanceMethod:@"supplementalBottomRightButton" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PHBottomBar" hasInstanceMethod:@"refreshCustomizedActionTypeTitles" withFullSignature:{"v", 0}];
  [v3 validateClass:@"PHBottomBar" hasInstanceMethod:@"layoutSubviews" withFullSignature:{"v", 0}];
  [v3 validateClass:@"PHBottomBar" hasInstanceMethod:@"buttonPressed:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"PHBottomBar" hasInstanceMethod:@"setAnimating:" withFullSignature:{"v", "B", 0}];
  [v3 validateClass:@"PHBottomBar" hasInstanceMethod:@"animating" withFullSignature:{"B", 0}];
  [v3 validateClass:@"PHBottomBar" hasInstanceMethod:@"supplementalBottomLeftButton" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PHBottomBar" hasInstanceMethod:@"setCurrentState: animated: animationCompletionBlock:" withFullSignature:{"v", "q", "B", "@?", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v9.receiver = self;
  v9.super_class = PHBottomBarAccessibility;
  [(PHBottomBarAccessibility *)&v9 _accessibilityLoadAccessibilityInformation];
  objc_opt_class();
  v3 = [(PHBottomBarAccessibility *)self safeValueForKey:@"supplementalBottomRightButton"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = [v4 accessibilityLabel];
  [v4 setIsAccessibilityElement:{objc_msgSend(v5, "length") != 0}];

  objc_opt_class();
  v6 = [(PHBottomBarAccessibility *)self safeValueForKey:@"supplementalBottomLeftButton"];
  v7 = __UIAccessibilityCastAsClass();

  v8 = [v7 accessibilityLabel];
  [v7 setIsAccessibilityElement:{objc_msgSend(v8, "length") != 0}];
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

- (void)buttonPressed:(id)a3
{
  v3.receiver = self;
  v3.super_class = PHBottomBarAccessibility;
  [(PHBottomBarAccessibility *)&v3 buttonPressed:a3];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], 0);
}

@end
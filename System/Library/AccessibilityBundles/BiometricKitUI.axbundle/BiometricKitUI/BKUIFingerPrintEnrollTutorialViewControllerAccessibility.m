@interface BKUIFingerPrintEnrollTutorialViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)setEnrollViewState:(unint64_t)a3;
@end

@implementation BKUIFingerPrintEnrollTutorialViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"BKUIFingerPrintEnrollTutorialViewController" hasInstanceMethod:@"setEnrollViewState:" withFullSignature:{"v", "Q", 0}];
  [v3 validateClass:@"BKUIFingerPrintEnrollTutorialViewController" hasInstanceMethod:@"enrollTutorialImageView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"BKUIFingerPrintEnrollTutorialViewController" hasInstanceMethod:@"continueButton" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v7.receiver = self;
  v7.super_class = BKUIFingerPrintEnrollTutorialViewControllerAccessibility;
  [(BKUIFingerPrintEnrollTutorialViewControllerAccessibility *)&v7 _accessibilityLoadAccessibilityInformation];
  v3 = [(BKUIFingerPrintEnrollTutorialViewControllerAccessibility *)self safeValueForKey:@"enrollTutorialImageView"];
  [v3 setIsAccessibilityElement:1];

  v4 = [(BKUIFingerPrintEnrollTutorialViewControllerAccessibility *)self safeValueForKey:@"enrollTutorialImageView"];
  if (AXDeviceIsPad())
  {
    v5 = @"enroll.tutor.image.label.ipad";
  }

  else
  {
    v5 = @"enroll.tutor.image.label.left.hand";
  }

  v6 = accessibilityLocalizedString(v5);
  [v4 setAccessibilityLabel:v6];
}

- (void)setEnrollViewState:(unint64_t)a3
{
  v8.receiver = self;
  v8.super_class = BKUIFingerPrintEnrollTutorialViewControllerAccessibility;
  [(BKUIFingerPrintEnrollTutorialViewControllerAccessibility *)&v8 setEnrollViewState:?];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], 0);
  if (a3 == 1)
  {
    v5 = [(BKUIFingerPrintEnrollTutorialViewControllerAccessibility *)self safeValueForKey:@"enrollTutorialImageView"];
    if (AXDeviceIsPad())
    {
      v6 = @"enroll.tutor.image.label.ipad";
    }

    else
    {
      v6 = @"enroll.tutor.image.label.right.hand";
    }

    v7 = accessibilityLocalizedString(v6);
    [v5 setAccessibilityLabel:v7];
  }
}

@end
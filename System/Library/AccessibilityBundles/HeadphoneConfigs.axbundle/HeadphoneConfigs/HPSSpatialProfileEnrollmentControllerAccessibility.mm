@interface HPSSpatialProfileEnrollmentControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)moveToStep:(int)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation HPSSpatialProfileEnrollmentControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"HPSSpatialProfileEnrollmentController" isKindOfClass:@"UIViewController"];
  [v3 validateClass:@"HPSSpatialProfileEnrollmentController" hasInstanceVariable:@"_stepSerialQueue" withType:"NSObject<OS_dispatch_queue>"];
  [v3 validateClass:@"HPSSpatialProfileEnrollmentController" hasInstanceVariable:@"_previousStep" withType:"i"];
  [v3 validateClass:@"HPSSpatialProfileEnrollmentController" hasInstanceVariable:@"_currentStep" withType:"i"];
  [v3 validateClass:@"HPSSpatialProfileEnrollmentController" hasInstanceVariable:@"_infoView" withType:"OBHeaderView"];
  [v3 validateClass:@"HPSSpatialProfileEnrollmentController" hasInstanceVariable:@"_enrollView" withType:"HPSSpatialProfileUIPearlEnrollView"];
  [v3 validateClass:@"HPSSpatialProfileEnrollmentController" hasInstanceVariable:@"_continueButton" withType:"OBTrayButton"];
  [v3 validateClass:@"HPSSpatialProfileEnrollmentController" hasInstanceMethod:@"moveToStep:" withFullSignature:{"v", "i", 0}];
  [v3 validateClass:@"OBHeaderView" hasInstanceMethod:@"detailLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"OBTemplateHeaderDetailLabel" isKindOfClass:@"UILabel"];
  [v3 validateClass:@"BKUIPearlEnrollView" hasInstanceVariable:@"_pillContainer" withType:"BKUIPearlPillContainerView"];
}

- (void)viewWillLayoutSubviews
{
  v9.receiver = self;
  v9.super_class = HPSSpatialProfileEnrollmentControllerAccessibility;
  [(HPSSpatialProfileEnrollmentControllerAccessibility *)&v9 viewWillLayoutSubviews];
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  v4 = [(HPSSpatialProfileEnrollmentControllerAccessibility *)self safeIntegerForKey:@"_currentStep"];
  v5 = [v3 presentedViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) != 0 && !v4)
  {
    v7 = *MEMORY[0x29EDC7ED8];
    v8 = [(HPSSpatialProfileEnrollmentControllerAccessibility *)self _axContinueButton];
    UIAccessibilityPostNotification(v7, v8);
  }
}

- (void)moveToStep:(int)a3
{
  v8.receiver = self;
  v8.super_class = HPSSpatialProfileEnrollmentControllerAccessibility;
  [(HPSSpatialProfileEnrollmentControllerAccessibility *)&v8 moveToStep:?];
  v5 = [(HPSSpatialProfileEnrollmentControllerAccessibility *)self safeValueForKey:@"_stepSerialQueue"];
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 3221225472;
  v6[2] = __65__HPSSpatialProfileEnrollmentControllerAccessibility_moveToStep___block_invoke;
  v6[3] = &unk_29F2C2020;
  v6[4] = self;
  v7 = a3;
  dispatch_async(v5, v6);
}

void __65__HPSSpatialProfileEnrollmentControllerAccessibility_moveToStep___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) safeIntegerForKey:@"_previousStep"];
  v3[0] = MEMORY[0x29EDCA5F8];
  v3[1] = 3221225472;
  v3[2] = __65__HPSSpatialProfileEnrollmentControllerAccessibility_moveToStep___block_invoke_2;
  v3[3] = &unk_29F2C1F88;
  v3[4] = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = v2;
  dispatch_async(MEMORY[0x29EDCA578], v3);
}

void __65__HPSSpatialProfileEnrollmentControllerAccessibility_moveToStep___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) safeValueForKey:@"_infoView"];
  v3 = [v2 safeValueForKey:@"detailLabel"];
  v4 = [v3 safeStringForKey:@"text"];
  v5 = [*(a1 + 32) safeUIViewForKey:@"_enrollView"];
  v6 = [v5 safeValueForKey:@"pillContainer"];
  v13 = MEMORY[0x29EDCA5F8];
  v7 = v6;
  v14 = v7;
  v15 = *(a1 + 32);
  AXPerformSafeBlock();
  v8 = *(a1 + 40);
  if (v8 <= 3)
  {
    if (v8 >= 2)
    {
      if (v8 != 2)
      {
        if (v8 != 3)
        {
          goto LABEL_13;
        }

        v11 = *MEMORY[0x29EDC7F10];
        v12 = v5;
LABEL_12:
        UIAccessibilityPostNotification(v11, v12);
        goto LABEL_13;
      }

      v11 = *MEMORY[0x29EDC7ED8];
      if (*(a1 + 44) != 1)
      {
        v12 = v3;
        goto LABEL_12;
      }

LABEL_11:
      v12 = v2;
      goto LABEL_12;
    }

LABEL_10:
    v11 = *MEMORY[0x29EDC7F10];
    goto LABEL_11;
  }

  if (v8 > 0x10)
  {
    goto LABEL_13;
  }

  if (((1 << v8) & 0xEE0) != 0)
  {
    goto LABEL_10;
  }

  if (((1 << v8) & 0x10110) != 0)
  {
    UIAccessibilitySpeakAndDoNotBeInterrupted();
    v9 = *MEMORY[0x29EDC7ED8];
    v10 = [*(a1 + 32) _axContinueButton];
    UIAccessibilityPostNotification(v9, v10);
  }

  else if (v8 == 12)
  {
    UIAccessibilitySpeakAndDoNotBeInterrupted();
  }

LABEL_13:
}

@end
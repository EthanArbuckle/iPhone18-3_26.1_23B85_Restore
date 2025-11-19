@interface ProximityStatusViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)accessibilityPerformEscape;
- (id)_axCreateAggregateStatusView:(id)a3 primaryTitle:(id)a4 batteryLevelLabel:(id)a5 chargingImage:(id)a6 warningImage:(id)a7;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_accessibilityUpdateAccessibilityElements;
- (void)_updateBatteryLevelLeft:(double)a3 levelRight:(double)a4 levelCase:(double)a5;
@end

@implementation ProximityStatusViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"ProximityStatusViewController" hasInstanceMethod:@"viewWillAppear:" withFullSignature:{"v", "B", 0}];
  [v3 validateClass:@"ProximityStatusViewController" hasInstanceMethod:@"handleTapOutsideView:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"ProximityStatusViewController" hasInstanceMethod:@"_updateBatteryLevelLeft: levelRight: levelCase:" withFullSignature:{"v", "d", "d", "d", 0}];
  [v3 validateClass:@"ProximityStatusViewController" hasInstanceVariable:@"titleLabel" withType:"UILabel"];
  [v3 validateClass:@"ProximityStatusViewController" hasInstanceVariable:@"dismissButton" withType:"UIButton"];
  [v3 validateClass:@"ProximityStatusViewController" hasInstanceVariable:@"leftImageView" withType:"_TtC18SharingViewService20SVSAdjustedImageView"];
  [v3 validateClass:@"ProximityStatusViewController" hasInstanceVariable:@"leftIndicatorImageView" withType:"UIImageView"];
  [v3 validateClass:@"ProximityStatusViewController" hasInstanceVariable:@"leftExclamationPointImageView" withType:"UIImageView"];
  [v3 validateClass:@"ProximityStatusViewController" hasInstanceVariable:@"leftBatteryLabel" withType:"UILabel"];
  [v3 validateClass:@"ProximityStatusViewController" hasInstanceVariable:@"leftBatteryLevelImageView" withType:"UIImageView"];
  [v3 validateClass:@"ProximityStatusViewController" hasInstanceVariable:@"leftBatteryShellImageView" withType:"UIImageView"];
  [v3 validateClass:@"ProximityStatusViewController" hasInstanceVariable:@"leftBatteryChargeImageView" withType:"UIImageView"];
  [v3 validateClass:@"ProximityStatusViewController" hasInstanceVariable:@"rightImageView" withType:"_TtC18SharingViewService20SVSAdjustedImageView"];
  [v3 validateClass:@"ProximityStatusViewController" hasInstanceVariable:@"rightIndicatorImageView" withType:"UIImageView"];
  [v3 validateClass:@"ProximityStatusViewController" hasInstanceVariable:@"rightExclamationPointImageView" withType:"UIImageView"];
  [v3 validateClass:@"ProximityStatusViewController" hasInstanceVariable:@"rightBatteryLabel" withType:"UILabel"];
  [v3 validateClass:@"ProximityStatusViewController" hasInstanceVariable:@"rightBatteryLevelImageView" withType:"UIImageView"];
  [v3 validateClass:@"ProximityStatusViewController" hasInstanceVariable:@"rightBatteryShellImageView" withType:"UIImageView"];
  [v3 validateClass:@"ProximityStatusViewController" hasInstanceVariable:@"rightBatteryChargeImageView" withType:"UIImageView"];
  [v3 validateClass:@"ProximityStatusViewController" hasInstanceVariable:@"bothBatteryLabel" withType:"UILabel"];
  [v3 validateClass:@"ProximityStatusViewController" hasInstanceVariable:@"bothBatteryLevelImageView" withType:"UIImageView"];
  [v3 validateClass:@"ProximityStatusViewController" hasInstanceVariable:@"bothBatteryShellImageView" withType:"UIImageView"];
  [v3 validateClass:@"ProximityStatusViewController" hasInstanceVariable:@"bothBatteryChargeImageView" withType:"UIImageView"];
  [v3 validateClass:@"ProximityStatusViewController" hasInstanceVariable:@"caseImageView" withType:"_TtC18SharingViewService20SVSAdjustedImageView"];
  [v3 validateClass:@"ProximityStatusViewController" hasInstanceVariable:@"caseBatteryLabel" withType:"UILabel"];
  [v3 validateClass:@"ProximityStatusViewController" hasInstanceVariable:@"caseBatteryLevelImageView" withType:"UIImageView"];
  [v3 validateClass:@"ProximityStatusViewController" hasInstanceVariable:@"caseBatteryShellImageView" withType:"UIImageView"];
  [v3 validateClass:@"ProximityStatusViewController" hasInstanceVariable:@"caseBatteryChargeImageView" withType:"UIImageView"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = ProximityStatusViewControllerAccessibility;
  [(ProximityStatusViewControllerAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(ProximityStatusViewControllerAccessibility *)self _accessibilityUpdateAccessibilityElements];
}

- (BOOL)accessibilityPerformEscape
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  AXPerformSafeBlock();
  v2 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v2;
}

uint64_t __72__ProximityStatusViewControllerAccessibility_accessibilityPerformEscape__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) handleTapOutsideView:0];
  *(*(*(a1 + 40) + 8) + 24) = 1;
  return result;
}

- (void)_updateBatteryLevelLeft:(double)a3 levelRight:(double)a4 levelCase:(double)a5
{
  v12.receiver = self;
  v12.super_class = ProximityStatusViewControllerAccessibility;
  [ProximityStatusViewControllerAccessibility _updateBatteryLevelLeft:sel__updateBatteryLevelLeft_levelRight_levelCase_ levelRight:? levelCase:?];
  [(ProximityStatusViewControllerAccessibility *)self _axLeftBatteryLevel];
  if (v9 != a3 || ([(ProximityStatusViewControllerAccessibility *)self _axRightBatteryLevel], v10 != a4) || ([(ProximityStatusViewControllerAccessibility *)self _axCaseBatteryLevel], v11 != a5))
  {
    [(ProximityStatusViewControllerAccessibility *)self _axSetLeftBatteryLevel:a3];
    [(ProximityStatusViewControllerAccessibility *)self _axSetRightBatteryLevel:a4];
    [(ProximityStatusViewControllerAccessibility *)self _axSetCaseBatteryLevel:a5];
    [(ProximityStatusViewControllerAccessibility *)self _accessibilityUpdateAccessibilityElements];
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
  }
}

- (void)_accessibilityUpdateAccessibilityElements
{
  [(ProximityStatusViewControllerAccessibility *)self _axSetLeftDevice:0];
  [(ProximityStatusViewControllerAccessibility *)self _axSetRightDevice:0];
  [(ProximityStatusViewControllerAccessibility *)self _axSetCombinedDevice:0];
  [(ProximityStatusViewControllerAccessibility *)self _axSetCaseDevice:0];
  v3 = [(ProximityStatusViewControllerAccessibility *)self _axLeftDevice];
  if (!v3)
  {
    v4 = [(ProximityStatusViewControllerAccessibility *)self safeValueForKey:@"leftBatteryLabel"];

    if (!v4)
    {
      goto LABEL_5;
    }

    v5 = MEMORY[0x29EDB8D80];
    v6 = [(ProximityStatusViewControllerAccessibility *)self safeValueForKey:@"leftImageView"];
    v7 = [(ProximityStatusViewControllerAccessibility *)self safeValueForKey:@"leftIndicatorImageView"];
    v8 = [(ProximityStatusViewControllerAccessibility *)self safeValueForKey:@"leftExclamationPointImageView"];
    v9 = [(ProximityStatusViewControllerAccessibility *)self safeValueForKey:@"leftBatteryLabel"];
    v10 = [(ProximityStatusViewControllerAccessibility *)self safeValueForKey:@"leftBatteryLevelImageView"];
    v11 = [(ProximityStatusViewControllerAccessibility *)self safeValueForKey:@"leftBatteryShellImageView"];
    v12 = [(ProximityStatusViewControllerAccessibility *)self safeValueForKey:@"leftBatteryChargeImageView"];
    v3 = [v5 axArrayByIgnoringNilElementsWithCount:{7, v6, v7, v8, v9, v10, v11, v12}];

    v13 = accessibilityB188LocalizedString(@"left.earbud");
    v14 = [(ProximityStatusViewControllerAccessibility *)self safeValueForKey:@"leftBatteryLabel"];
    v15 = [(ProximityStatusViewControllerAccessibility *)self safeValueForKey:@"leftBatteryChargeImageView"];
    v16 = [(ProximityStatusViewControllerAccessibility *)self safeValueForKey:@"leftExclamationPointImageView"];
    v17 = [(ProximityStatusViewControllerAccessibility *)self _axCreateAggregateStatusView:v3 primaryTitle:v13 batteryLevelLabel:v14 chargingImage:v15 warningImage:v16];

    [(ProximityStatusViewControllerAccessibility *)self _axSetLeftDevice:v17];
  }

LABEL_5:
  v18 = [(ProximityStatusViewControllerAccessibility *)self _axRightDevice];
  if (!v18)
  {
    v19 = [(ProximityStatusViewControllerAccessibility *)self safeValueForKey:@"rightBatteryLabel"];

    if (!v19)
    {
      goto LABEL_9;
    }

    v20 = MEMORY[0x29EDB8D80];
    v21 = [(ProximityStatusViewControllerAccessibility *)self safeValueForKey:@"rightImageView"];
    v22 = [(ProximityStatusViewControllerAccessibility *)self safeValueForKey:@"rightIndicatorImageView"];
    v23 = [(ProximityStatusViewControllerAccessibility *)self safeValueForKey:@"rightExclamationPointImageView"];
    v24 = [(ProximityStatusViewControllerAccessibility *)self safeValueForKey:@"rightBatteryLabel"];
    v25 = [(ProximityStatusViewControllerAccessibility *)self safeValueForKey:@"rightBatteryLevelImageView"];
    v26 = [(ProximityStatusViewControllerAccessibility *)self safeValueForKey:@"rightBatteryShellImageView"];
    v27 = [(ProximityStatusViewControllerAccessibility *)self safeValueForKey:@"rightBatteryChargeImageView"];
    v18 = [v20 axArrayByIgnoringNilElementsWithCount:{7, v21, v22, v23, v24, v25, v26, v27}];

    v28 = accessibilityB188LocalizedString(@"right.earbud");
    v29 = [(ProximityStatusViewControllerAccessibility *)self safeValueForKey:@"rightBatteryLabel"];
    v30 = [(ProximityStatusViewControllerAccessibility *)self safeValueForKey:@"rightBatteryChargeImageView"];
    v31 = [(ProximityStatusViewControllerAccessibility *)self safeValueForKey:@"rightExclamationPointImageView"];
    v32 = [(ProximityStatusViewControllerAccessibility *)self _axCreateAggregateStatusView:v18 primaryTitle:v28 batteryLevelLabel:v29 chargingImage:v30 warningImage:v31];

    [(ProximityStatusViewControllerAccessibility *)self _axSetRightDevice:v32];
  }

LABEL_9:
  v33 = [(ProximityStatusViewControllerAccessibility *)self _axCombinedDevice];
  if (v33)
  {
  }

  else
  {
    v34 = [(ProximityStatusViewControllerAccessibility *)self safeValueForKey:@"bothBatteryLabel"];

    if (v34)
    {
      v35 = MEMORY[0x29EDB8DE8];
      v36 = [(ProximityStatusViewControllerAccessibility *)self safeValueForKey:@"bothBatteryLabel"];
      v37 = [(ProximityStatusViewControllerAccessibility *)self safeValueForKey:@"bothBatteryLevelImageView"];
      v38 = [(ProximityStatusViewControllerAccessibility *)self safeValueForKey:@"bothBatteryShellImageView"];
      v39 = [(ProximityStatusViewControllerAccessibility *)self safeValueForKey:@"bothBatteryChargeImageView"];
      v40 = [v35 axArrayByIgnoringNilElementsWithCount:{4, v36, v37, v38, v39}];

      v41 = [(ProximityStatusViewControllerAccessibility *)self safeValueForKey:@"leftImageView"];
      v42 = [(ProximityStatusViewControllerAccessibility *)self safeValueForKey:@"rightImageView"];
      if (v41 | v42)
      {
        [v40 axSafelyAddObject:v41];
        [v40 axSafelyAddObject:v42];
      }

      else
      {
        objc_opt_class();
        v43 = [(ProximityStatusViewControllerAccessibility *)self safeValueForKey:@"bothBatteryLabel"];
        v44 = __UIAccessibilityCastAsClass();

        v45 = [v44 superview];
        [v40 axSafelyAddObject:v45];
      }

      v46 = [(ProximityStatusViewControllerAccessibility *)self safeValueForKey:@"titleLabel"];
      v47 = [v46 accessibilityLabel];

      v48 = [(ProximityStatusViewControllerAccessibility *)self safeValueForKey:@"bothBatteryLabel"];
      v49 = [(ProximityStatusViewControllerAccessibility *)self safeValueForKey:@"bothBatteryChargeImageView"];
      v50 = [(ProximityStatusViewControllerAccessibility *)self _axCreateAggregateStatusView:v40 primaryTitle:v47 batteryLevelLabel:v48 chargingImage:v49 warningImage:0];

      [(ProximityStatusViewControllerAccessibility *)self _axSetCombinedDevice:v50];
    }
  }

  v51 = [(ProximityStatusViewControllerAccessibility *)self _axCaseDevice];
  if (v51)
  {
    goto LABEL_23;
  }

  v52 = [(ProximityStatusViewControllerAccessibility *)self safeValueForKey:@"caseBatteryLabel"];

  if (!v52)
  {
    goto LABEL_24;
  }

  v53 = MEMORY[0x29EDB8D80];
  v54 = [(ProximityStatusViewControllerAccessibility *)self safeValueForKey:@"caseImageView"];
  v55 = [(ProximityStatusViewControllerAccessibility *)self safeValueForKey:@"caseBatteryLabel"];
  v56 = [(ProximityStatusViewControllerAccessibility *)self safeValueForKey:@"caseBatteryLevelImageView"];
  v57 = [(ProximityStatusViewControllerAccessibility *)self safeValueForKey:@"caseBatteryShellImageView"];
  v58 = [(ProximityStatusViewControllerAccessibility *)self safeValueForKey:@"caseBatteryChargeImageView"];
  v51 = [v53 axArrayByIgnoringNilElementsWithCount:{5, v54, v55, v56, v57, v58}];

  v59 = [(ProximityStatusViewControllerAccessibility *)self safeValueForKey:@"titleLabel"];
  v60 = [v59 accessibilityLabel];

  v61 = [(ProximityStatusViewControllerAccessibility *)self _axLeftDevice];
  if (v61 || ([(ProximityStatusViewControllerAccessibility *)self _axRightDevice], (v61 = objc_claimAutoreleasedReturnValue()) != 0))
  {
  }

  else
  {
    v75 = [(ProximityStatusViewControllerAccessibility *)self _axCombinedDevice];

    if (!v75)
    {
      goto LABEL_22;
    }
  }

  v62 = accessibilityB188LocalizedString(@"battery.case");

  v60 = v62;
LABEL_22:
  v63 = [(ProximityStatusViewControllerAccessibility *)self safeValueForKey:@"caseBatteryLabel"];
  v64 = [(ProximityStatusViewControllerAccessibility *)self safeValueForKey:@"caseBatteryChargeImageView"];
  v65 = [(ProximityStatusViewControllerAccessibility *)self _axCreateAggregateStatusView:v51 primaryTitle:v60 batteryLevelLabel:v63 chargingImage:v64 warningImage:0];

  [(ProximityStatusViewControllerAccessibility *)self _axSetCaseDevice:v65];
LABEL_23:

LABEL_24:
  v66 = [(ProximityStatusViewControllerAccessibility *)self safeValueForKey:@"titleLabel"];
  [v66 setAccessibilityTraits:*MEMORY[0x29EDC7F80]];
  v67 = [MEMORY[0x29EDB8DE8] array];
  [v67 axSafelyAddObject:v66];
  v68 = [(ProximityStatusViewControllerAccessibility *)self _axCombinedDevice];

  if (v68)
  {
    [(ProximityStatusViewControllerAccessibility *)self _axCombinedDevice];
  }

  else
  {
    v69 = [(ProximityStatusViewControllerAccessibility *)self _axLeftDevice];
    [v67 axSafelyAddObject:v69];

    [(ProximityStatusViewControllerAccessibility *)self _axRightDevice];
  }
  v70 = ;
  [v67 axSafelyAddObject:v70];

  v71 = [(ProximityStatusViewControllerAccessibility *)self _axCaseDevice];
  [v67 axSafelyAddObject:v71];

  v72 = [(ProximityStatusViewControllerAccessibility *)self safeUIViewForKey:@"dismissButton"];
  [v72 _accessibilitySetUserTestingIsCancelButton:1];
  [v67 axSafelyAddObject:v72];
  objc_opt_class();
  v73 = __UIAccessibilityCastAsClass();
  v74 = [v73 view];
  [v74 setAccessibilityElements:v67];
}

- (id)_axCreateAggregateStatusView:(id)a3 primaryTitle:(id)a4 batteryLevelLabel:(id)a5 chargingImage:(id)a6 warningImage:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if ([v12 count])
  {
    v17 = [AXAggregatedDeviceBatteryStatusView alloc];
    objc_opt_class();
    v18 = __UIAccessibilityCastAsClass();
    objc_opt_class();
    v19 = __UIAccessibilityCastAsClass();
    objc_opt_class();
    v20 = __UIAccessibilityCastAsClass();
    v21 = [(AXAggregatedDeviceBatteryStatusView *)v17 initWithAccessibilityContainer:self representedElements:v12 primaryTitle:v13 batteryLevelLabel:v18 chargingImage:v19 warningImage:v20];
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

@end
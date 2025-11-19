@interface MPAVRoutingTableViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_axIsVolumeSliderVisible;
- (CGPoint)accessibilityActivationPoint;
- (id)accessibilityLabel;
- (id)accessibilityValue;
@end

@implementation MPAVRoutingTableViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MPAVRoutingTableViewCell" hasInstanceVariable:@"_subtitleTextLabel" withType:"UILabel"];
  [v3 validateClass:@"MPAVRoutingTableViewCell" hasInstanceMethod:@"_shouldShowSeparateBatteryPercentagesForBatteryLevel:" withFullSignature:{"B", "@", 0}];
  [v3 validateClass:@"MPAVRoute" hasInstanceMethod:@"batteryLevel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MPAVRoutingTableViewCell" hasInstanceVariable:@"_routeNameLabel" withType:"UILabel"];
  [v3 validateClass:@"MPAVRoutingTableViewCell" hasInstanceMethod:@"updateForEndpoint:routeItem:inferLocalizedModelName:" withFullSignature:{"v", "@", "@", "B", 0}];
  [v3 validateClass:@"MPAVRoutingTableViewCell" hasInstanceMethod:@"useSmartAudioCheckmarkStyle" withFullSignature:{"B", 0}];
  [v3 validateClass:@"MPAVRoutingTableViewCell" hasInstanceVariable:@"_volumeSlider" withType:"MPVolumeSlider"];
  [v3 validateClass:@"MPAVRoutingViewItem" hasInstanceMethod:@"mainRoute" withFullSignature:{"@", 0}];
}

- (BOOL)_axIsVolumeSliderVisible
{
  v2 = [(MPAVRoutingTableViewCellAccessibility *)self safeUIViewForKey:@"_volumeSlider"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 isHidden] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (CGPoint)accessibilityActivationPoint
{
  if (-[MPAVRoutingTableViewCellAccessibility _axIsUsingSmartAudioCheckmarkStyle](self, "_axIsUsingSmartAudioCheckmarkStyle") && (v14 = 0, objc_opt_class(), __UIAccessibilityCastAsClass(), v3 = objc_claimAutoreleasedReturnValue(), [v3 accessoryView], v4 = objc_claimAutoreleasedReturnValue(), v3, v4))
  {
    [v4 accessibilityActivationPoint];
    v6 = v5;
    v8 = v7;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = MPAVRoutingTableViewCellAccessibility;
    [(MPAVRoutingTableViewCellAccessibility *)&v13 accessibilityActivationPoint];
    v6 = v9;
    v8 = v10;
  }

  v11 = v6;
  v12 = v8;
  result.y = v12;
  result.x = v11;
  return result;
}

- (id)accessibilityLabel
{
  objc_opt_class();
  v3 = [(MPAVRoutingTableViewCellAccessibility *)self accessibilityMediaRoute];
  v4 = __UIAccessibilityCastAsClass();

  if (v4)
  {
    v5 = [(MPAVRoutingTableViewCellAccessibility *)self _accessibilityDescriptionForRoute:v4];
  }

  else
  {
    v5 = 0;
  }

  v6 = [(MPAVRoutingTableViewCellAccessibility *)self safeValueForKey:@"_routeNameLabel"];
  v7 = __UIAXStringForVariables();

  return v7;
}

- (id)accessibilityValue
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy_;
  v21 = __Block_byref_object_dispose_;
  v22 = 0;
  objc_opt_class();
  v3 = [(MPAVRoutingTableViewCellAccessibility *)self accessibilityMediaRoute];
  v4 = __UIAccessibilityCastAsClass();

  objc_opt_class();
  v5 = [v4 safeValueForKey:@"batteryLevel"];
  v6 = __UIAccessibilityCastAsClass();

  if (v6 && v4 && ([v4 isPickedOnPairedDevice] & 1) == 0)
  {
    v12 = MEMORY[0x29EDCA5F8];
    v13 = 3221225472;
    v14 = __59__MPAVRoutingTableViewCellAccessibility_accessibilityValue__block_invoke;
    v15 = &unk_29F2CFE78;
    v16 = v6;
    AXPerformSafeBlock();
  }

  if (![v18[5] length])
  {
    v7 = [(MPAVRoutingTableViewCellAccessibility *)self safeValueForKey:@"_subtitleTextLabel"];
    v8 = [v7 accessibilityLabel];
    v9 = v18[5];
    v18[5] = v8;
  }

  v10 = v18[5];

  _Block_object_dispose(&v17, 8);

  return v10;
}

void __59__MPAVRoutingTableViewCellAccessibility_accessibilityValue__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) leftPercentage];
  if (v2)
  {
    v3 = v2;
    v4 = [*(a1 + 32) rightPercentage];

    if (v4)
    {
      if (![*(a1 + 40) _shouldShowSeparateBatteryPercentagesForBatteryLevel:*(a1 + 32)])
      {
        v15 = [*(a1 + 32) leftPercentage];
        [v15 floatValue];
        v17 = v16;
        v18 = [*(a1 + 32) rightPercentage];
        [v18 floatValue];
        v19 = *(a1 + 32);
        if (v17 < v20)
        {
          [v19 leftPercentage];
        }

        else
        {
          [v19 rightPercentage];
        }
        v21 = ;
        [v21 floatValue];

        v22 = MEMORY[0x29EDBA0F8];
        v6 = accessibilityLocalizedString(@"audio.route.single.battery.level");
        v7 = AXFormatFloatWithPercentage();
        v31 = [v22 stringWithFormat:v6, v7];
        goto LABEL_15;
      }

      v5 = MEMORY[0x29EDBA0F8];
      v6 = accessibilityLocalizedString(@"audio.route.left.right.battery.level");
      v7 = [*(a1 + 32) leftPercentage];
      [v7 floatValue];
      v8 = AXFormatFloatWithPercentage();
      v9 = [*(a1 + 32) rightPercentage];
      [v9 floatValue];
      v10 = AXFormatFloatWithPercentage();
      v31 = [v5 stringWithFormat:v6, v8, v10];

LABEL_10:
LABEL_15:

      goto LABEL_16;
    }
  }

  v11 = [*(a1 + 32) leftPercentage];

  if (v11)
  {
    v12 = MEMORY[0x29EDBA0F8];
    v6 = accessibilityLocalizedString(@"audio.route.single.battery.left.level");
    v13 = [*(a1 + 32) leftPercentage];
LABEL_9:
    v7 = v13;
    [v13 floatValue];
    v8 = AXFormatFloatWithPercentage();
    v31 = [v12 stringWithFormat:v6, v8];
    goto LABEL_10;
  }

  v14 = [*(a1 + 32) rightPercentage];

  if (v14)
  {
    v12 = MEMORY[0x29EDBA0F8];
    v6 = accessibilityLocalizedString(@"audio.route.single.battery.right.level");
    v13 = [*(a1 + 32) rightPercentage];
    goto LABEL_9;
  }

  v31 = 0;
LABEL_16:
  v23 = [*(a1 + 32) casePercentage];

  if (v23)
  {
    v24 = MEMORY[0x29EDBA0F8];
    v25 = accessibilityLocalizedString(@"audio.route.case.battery.level");
    v26 = [*(a1 + 32) casePercentage];
    [v26 floatValue];
    v27 = AXFormatFloatWithPercentage();
    v23 = [v24 stringWithFormat:v25, v27];
  }

  v28 = __UIAXStringForVariables();
  v29 = *(*(a1 + 48) + 8);
  v30 = *(v29 + 40);
  *(v29 + 40) = v28;
}

@end
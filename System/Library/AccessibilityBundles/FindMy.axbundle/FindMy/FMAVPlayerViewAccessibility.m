@interface FMAVPlayerViewAccessibility
- (BOOL)isAccessibilityElement;
- (id)_axAssetVideoLabel;
- (id)accessibilityLabel;
@end

@implementation FMAVPlayerViewAccessibility

- (BOOL)isAccessibilityElement
{
  v2 = [(FMAVPlayerViewAccessibility *)self _axAssetVideoLabel];
  v3 = v2 != 0;

  return v3;
}

- (id)_axAssetVideoLabel
{
  v2 = [(FMAVPlayerViewAccessibility *)self safeStringForKey:@"accessibilityAssetName"];
  if ([v2 isEqualToString:@"PairingLoopLight-HAWKEYE"] & 1) != 0 || (objc_msgSend(v2, "isEqualToString:", @"PairingLoopDark-HAWKEYE"))
  {
    v3 = @"pairing.loop.video";
LABEL_4:
    v4 = accessibilityB389LocalizedString(v3);
    goto LABEL_5;
  }

  if ([v2 isEqualToString:@"Add-Button_iPhone-B389"] & 1) != 0 || (objc_msgSend(v2, "isEqualToString:", @"Add-FaceID_iPhone-B389"))
  {
    v3 = @"add.item.to.iPhone";
    goto LABEL_4;
  }

  if ([v2 isEqualToString:@"Add-Button_iPad-B389"] & 1) != 0 || (objc_msgSend(v2, "isEqualToString:", @"Add-FaceID_iPad-B389"))
  {
    v3 = @"add.item.to.iPad";
    goto LABEL_4;
  }

  if ([v2 isEqualToString:@"BatterySwap_loop-B389"])
  {
    v3 = @"battery-swap-video";
    goto LABEL_4;
  }

  if ([v2 isEqualToString:@"FMR1Found-B389"])
  {
    v3 = @"found.item.video";
    goto LABEL_4;
  }

  v4 = 0;
LABEL_5:

  return v4;
}

- (id)accessibilityLabel
{
  v3 = [(FMAVPlayerViewAccessibility *)self _axAssetVideoLabel];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = FMAVPlayerViewAccessibility;
    v5 = [(FMAVPlayerViewAccessibility *)&v8 accessibilityLabel];
  }

  v6 = v5;

  return v6;
}

@end
@interface UIStatusBarIndicatorItemViewAccessibility
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation UIStatusBarIndicatorItemViewAccessibility

- (id)accessibilityLabel
{
  v30[2] = self;
  v30[1] = a2;
  v30[0] = 0;
  v29 = [(UIStatusBarIndicatorItemViewAccessibility *)self safeValueForKey:@"item"];
  location = [v29 safeValueForKey:@"indicatorName"];
  if ([location isEqualToString:@"Alarm"])
  {
    v2 = accessibilityLocalizedString(@"status.alarm.clock.icon");
    v3 = v30[0];
    v30[0] = v2;
    MEMORY[0x29EDC9740](v3);
  }

  else if ([location isEqualToString:@"Plus"])
  {
    v4 = accessibilityLocalizedString(@"status.nike.plus.icon");
    v5 = v30[0];
    v30[0] = v4;
    MEMORY[0x29EDC9740](v5);
  }

  else if ([location isEqualToString:@"Play"])
  {
    v6 = accessibilityLocalizedString(@"status.play.icon");
    v7 = v30[0];
    v30[0] = v6;
    MEMORY[0x29EDC9740](v7);
  }

  else if ([location isEqualToString:@"CallForward"])
  {
    v8 = accessibilityLocalizedString(@"status.call.forward.icon");
    v9 = v30[0];
    v30[0] = v8;
    MEMORY[0x29EDC9740](v9);
  }

  else if ([location isEqualToString:@"VPN"])
  {
    v10 = accessibilityLocalizedString(@"status.vpn.icon");
    v11 = v30[0];
    v30[0] = v10;
    MEMORY[0x29EDC9740](v11);
  }

  else if ([location isEqualToString:@"TTY"])
  {
    if ([MEMORY[0x29EDC6498] isRTTSupported])
    {
      v12 = accessibilityLocalizedString(@"status.rtt.tty.icon");
    }

    else
    {
      v12 = accessibilityLocalizedString(@"status.tty.icon");
    }

    v13 = v30[0];
    v30[0] = v12;
    MEMORY[0x29EDC9740](v13);
  }

  else if ([location isEqualToString:@"Location"])
  {
    v14 = accessibilityLocalizedString(@"status.location.icon");
    v15 = v30[0];
    v30[0] = v14;
    MEMORY[0x29EDC9740](v15);
  }

  else if ([location isEqualToString:@"RotationLock"])
  {
    v16 = accessibilityLocalizedString(@"status.rotationlock.icon");
    v17 = v30[0];
    v30[0] = v16;
    MEMORY[0x29EDC9740](v17);
  }

  else if ([location isEqualToString:@"AirPlay"])
  {
    v18 = accessibilityLocalizedString(@"status.airplay.icon");
    v19 = v30[0];
    v30[0] = v18;
    MEMORY[0x29EDC9740](v19);
  }

  else if ([location isEqualToString:@"BTHeadphones"])
  {
    v20 = accessibilityLocalizedString(@"status.bluetoothheadphones");
    v21 = v30[0];
    v30[0] = v20;
    MEMORY[0x29EDC9740](v21);
  }

  else if ([location isEqualToString:@"Siri"])
  {
    v22 = accessibilityLocalizedString(@"status.siri");
    v23 = v30[0];
    v30[0] = v22;
    MEMORY[0x29EDC9740](v23);
  }

  else if ([location isEqualToString:@"CarPlay"])
  {
    v24 = accessibilityLocalizedString(@"status.carplay");
    v25 = v30[0];
    v30[0] = v24;
    MEMORY[0x29EDC9740](v25);
  }

  v27 = MEMORY[0x29EDC9748](v30[0]);
  objc_storeStrong(&location, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(v30, 0);

  return v27;
}

- (unint64_t)accessibilityTraits
{
  v5 = self;
  v4 = a2;
  v3.receiver = self;
  v3.super_class = UIStatusBarIndicatorItemViewAccessibility;
  return [(UIStatusBarIndicatorItemViewAccessibility *)&v3 accessibilityTraits]| *MEMORY[0x29EDC7580];
}

@end
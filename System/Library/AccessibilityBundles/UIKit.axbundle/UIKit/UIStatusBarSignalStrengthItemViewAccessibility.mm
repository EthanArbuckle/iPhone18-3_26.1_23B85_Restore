@interface UIStatusBarSignalStrengthItemViewAccessibility
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
- (void)touchesEnded:(id)ended withEvent:(id)event;
@end

@implementation UIStatusBarSignalStrengthItemViewAccessibility

- (id)accessibilityLabel
{
  selfCopy = self;
  v21[1] = a2;
  v21[0] = 0;
  v19 = [(UIStatusBarSignalStrengthItemViewAccessibility *)self safeValueForKey:@"_showRSSI"];
  bOOLValue = [v19 BOOLValue];
  *&v2 = MEMORY[0x29EDC9740](v19).n128_u64[0];
  if (bOOLValue)
  {
    v15 = [(UIStatusBarSignalStrengthItemViewAccessibility *)selfCopy safeValueForKey:@"_signalStrengthRaw", v2];
    [v15 intValue];
    MEMORY[0x29EDC9740](v15);
    v16 = MEMORY[0x29EDBA0F8];
    v18 = accessibilityLocalizedString(@"status.signal.rssi");
    v17 = AXFormatInteger();
    v3 = [v16 stringWithFormat:v18, v17];
    v4 = v21[0];
    v21[0] = v3;
    MEMORY[0x29EDC9740](v4);
    MEMORY[0x29EDC9740](v17);
    MEMORY[0x29EDC9740](v18);
  }

  else
  {
    v13 = [(UIStatusBarSignalStrengthItemViewAccessibility *)selfCopy safeValueForKey:@"_signalStrengthBars", v2];
    intValue = [v13 intValue];
    MEMORY[0x29EDC9740](v13);
    if (intValue)
    {
      v11 = MEMORY[0x29EDBA0F8];
      v12 = accessibilityLocalizedString(@"status.signal.bars");
      v7 = [v11 localizedStringWithFormat:intValue, 4];
      v8 = v21[0];
      v21[0] = v7;
      MEMORY[0x29EDC9740](v8);
      MEMORY[0x29EDC9740](v12);
    }

    else
    {
      v5 = accessibilityLocalizedString(@"status.signal.no.signal");
      v6 = v21[0];
      v21[0] = v5;
      MEMORY[0x29EDC9740](v6);
    }
  }

  v10 = MEMORY[0x29EDC9748](v21[0]);
  objc_storeStrong(v21, 0);

  return v10;
}

- (unint64_t)accessibilityTraits
{
  selfCopy = self;
  v4 = a2;
  v3.receiver = self;
  v3.super_class = UIStatusBarSignalStrengthItemViewAccessibility;
  return [(UIStatusBarSignalStrengthItemViewAccessibility *)&v3 accessibilityTraits]| *MEMORY[0x29EDC7580];
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, ended);
  v13 = 0;
  objc_storeStrong(&v13, event);
  v6 = [(UIStatusBarSignalStrengthItemViewAccessibility *)selfCopy safeValueForKey:?];
  bOOLValue = [v6 BOOLValue];
  *&v4 = MEMORY[0x29EDC9740](v6).n128_u64[0];
  v12 = bOOLValue;
  v11.receiver = selfCopy;
  v11.super_class = UIStatusBarSignalStrengthItemViewAccessibility;
  [(UIStatusBarSignalStrengthItemViewAccessibility *)&v11 touchesEnded:location[0] withEvent:v13, v4];
  v10 = v12 & 1;
  v8 = [(UIStatusBarSignalStrengthItemViewAccessibility *)selfCopy safeValueForKey:@"_showRSSI"];
  bOOLValue2 = [v8 BOOLValue];
  MEMORY[0x29EDC9740](v8);
  if (v10 != bOOLValue2)
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
  }

  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

@end
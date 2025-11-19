@interface UIStatusBarDataNetworkItemViewAccessibility
- (BOOL)isWLAN;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
@end

@implementation UIStatusBarDataNetworkItemViewAccessibility

- (id)accessibilityValue
{
  v4[2] = self;
  v4[1] = a2;
  v4[0] = [objc_alloc(MEMORY[0x29EDBD7E8]) initWithString:@"SSID"];
  [v4[0] setAttribute:*MEMORY[0x29EDB8F00] forKey:*MEMORY[0x29EDBD998]];
  v3 = MEMORY[0x29EDC9748](v4[0]);
  objc_storeStrong(v4, 0);

  return v3;
}

- (id)accessibilityLabel
{
  v49 = self;
  v48[1] = a2;
  v48[0] = 0;
  v41 = [(UIStatusBarDataNetworkItemViewAccessibility *)self safeValueForKey:@"_showRSSI"];
  v42 = [v41 BOOLValue];
  *&v2 = MEMORY[0x29EDC9740](v41).n128_u64[0];
  if (v42)
  {
    v36 = [(UIStatusBarDataNetworkItemViewAccessibility *)v49 safeValueForKey:@"_wifiStrengthRaw", v2];
    v37 = [v36 intValue];
    *&v3 = MEMORY[0x29EDC9740](v36).n128_u64[0];
    v47 = v37;
    v38 = MEMORY[0x29EDBA0F8];
    if ([(UIStatusBarDataNetworkItemViewAccessibility *)v49 isWLAN])
    {
      v4 = @"status.network.wlan.rssi.strength";
    }

    else
    {
      v4 = @"status.network.wifi.rssi.strength";
    }

    v40 = accessibilityLocalizedString(v4);
    v39 = AXFormatInteger();
    v5 = [v38 stringWithFormat:v40, v39];
    v6 = v48[0];
    v48[0] = v5;
    MEMORY[0x29EDC9740](v6);
    MEMORY[0x29EDC9740](v39);
    MEMORY[0x29EDC9740](v40);
  }

  else
  {
    v34 = [(UIStatusBarDataNetworkItemViewAccessibility *)v49 safeValueForKey:@"_dataNetworkType", v2];
    v35 = [v34 intValue];
    *&v7 = MEMORY[0x29EDC9740](v34).n128_u64[0];
    v46 = v35;
    if (v35)
    {
      switch(v35)
      {
        case 1:
          v12 = accessibilityLocalizedString(@"status.network.edge");
          v13 = v48[0];
          v48[0] = v12;
          MEMORY[0x29EDC9740](v13);
          break;
        case 2:
          v16 = accessibilityLocalizedString(@"status.network.umts");
          v17 = v48[0];
          v48[0] = v16;
          MEMORY[0x29EDC9740](v17);
          break;
        case 3:
          v20 = accessibilityLocalizedString(@"status.network.4g");
          v21 = v48[0];
          v48[0] = v20;
          MEMORY[0x29EDC9740](v21);
          break;
        case 4:
          v22 = accessibilityLocalizedString(@"status.network.lte");
          v23 = v48[0];
          v48[0] = v22;
          MEMORY[0x29EDC9740](v23);
          break;
        case 5:
          v45 = [(UIStatusBarDataNetworkItemViewAccessibility *)v49 isWLAN];
          v32 = [(UIStatusBarDataNetworkItemViewAccessibility *)v49 safeValueForKey:@"_wifiStrengthBars"];
          v33 = [v32 intValue];
          MEMORY[0x29EDC9740](v32);
          v44 = v33;
          if (v33)
          {
            location = 0;
            if (v45)
            {
              objc_storeStrong(&location, @"status.network.wlan.signal.bars");
            }

            else
            {
              objc_storeStrong(&location, @"status.network.wifi.signal.bars");
            }

            v30 = MEMORY[0x29EDBA0F8];
            v31 = accessibilityLocalizedString(location);
            v10 = [v30 localizedStringWithFormat:v44, 3];
            v11 = v48[0];
            v48[0] = v10;
            MEMORY[0x29EDC9740](v11);
            MEMORY[0x29EDC9740](v31);
            objc_storeStrong(&location, 0);
          }

          else
          {
            if (v45)
            {
              v8 = accessibilityLocalizedString(@"status.network.wlan.no.signal");
            }

            else
            {
              v8 = accessibilityLocalizedString(@"status.network.wifi.no.signal");
            }

            v9 = v48[0];
            v48[0] = v8;
            MEMORY[0x29EDC9740](v9);
          }

          break;
        case 6:
          v18 = accessibilityLocalizedString(@"status.network.ios.hotspot");
          v19 = v48[0];
          v48[0] = v18;
          MEMORY[0x29EDC9740](v19);
          break;
        case 7:
          v24 = accessibilityLocalizedString(@"status.network.1x");
          v25 = v48[0];
          v48[0] = v24;
          MEMORY[0x29EDC9740](v25);
          break;
        case 8:
          v26 = accessibilityLocalizedString(@"status.network.5ge");
          v27 = v48[0];
          v48[0] = v26;
          MEMORY[0x29EDC9740](v27);
          break;
        default:
          _AXAssert();
          break;
      }
    }

    else
    {
      v14 = accessibilityLocalizedString(@"status.network.gprs");
      v15 = v48[0];
      v48[0] = v14;
      MEMORY[0x29EDC9740](v15);
    }
  }

  v29 = MEMORY[0x29EDC9748](v48[0]);
  objc_storeStrong(v48, 0);

  return v29;
}

- (unint64_t)accessibilityTraits
{
  v5 = self;
  v4 = a2;
  v3.receiver = self;
  v3.super_class = UIStatusBarDataNetworkItemViewAccessibility;
  return [(UIStatusBarDataNetworkItemViewAccessibility *)&v3 accessibilityTraits]| *MEMORY[0x29EDC7580];
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v13 = 0;
  objc_storeStrong(&v13, a4);
  v6 = [(UIStatusBarDataNetworkItemViewAccessibility *)v15 safeValueForKey:?];
  v7 = [v6 BOOLValue];
  *&v4 = MEMORY[0x29EDC9740](v6).n128_u64[0];
  v12 = v7;
  v11.receiver = v15;
  v11.super_class = UIStatusBarDataNetworkItemViewAccessibility;
  [(UIStatusBarDataNetworkItemViewAccessibility *)&v11 touchesEnded:location[0] withEvent:v13, v4];
  v10 = v12 & 1;
  v8 = [(UIStatusBarDataNetworkItemViewAccessibility *)v15 safeValueForKey:@"_showRSSI"];
  v9 = [v8 BOOLValue];
  MEMORY[0x29EDC9740](v8);
  if (v10 != v9)
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
  }

  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)isWLAN
{
  v10 = self;
  v9 = a2;
  *&v8[1] = [(UIStatusBarDataNetworkItemViewAccessibility *)self _accessibilityValueForKey:@"axIsWLAN"];
  if (!*&v8[1])
  {
    v7 = MEMORY[0x29EDBA070];
    *v8 = MGGetBoolAnswer();
    v2 = [v7 numberWithBool:v8[0] & 1];
    v3 = *&v8[1];
    *&v8[1] = v2;
    [(UIStatusBarDataNetworkItemViewAccessibility *)v10 _accessibilitySetRetainedValue:v2 forKey:@"axIsWLAN", MEMORY[0x29EDC9740](v3).n128_f64[0]];
  }

  v6 = [*&v8[1] BOOLValue];
  objc_storeStrong(location, 0);
  return v6;
}

@end
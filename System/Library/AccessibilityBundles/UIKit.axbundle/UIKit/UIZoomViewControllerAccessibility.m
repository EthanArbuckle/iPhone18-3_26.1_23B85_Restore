@interface UIZoomViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (double)_accessibilitySetZoomButtonLabel;
- (void)_changeZoom:(id)a3;
- (void)loadView;
@end

@implementation UIZoomViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v4 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] validateClass:@"UIApplication" hasInstanceMethod:@"_fakingRequiresHighResolution" withFullSignature:{"B", 0}];
  objc_storeStrong(v4, obj);
}

- (double)_accessibilitySetZoomButtonLabel
{
  if (a1)
  {
    v12 = [*MEMORY[0x29EDC8008] safeValueForKey:@"_shouldZoom"];
    v13 = [v12 BOOLValue];
    *&v2 = MEMORY[0x29EDC9740](v12).n128_u64[0];
    if (v13)
    {
      v9 = [a1 safeValueForKey:{@"_zoomButton", v2}];
      v8 = accessibilityLocalizedString(@"normal.zoom");
      [v9 setAccessibilityLabel:?];
      MEMORY[0x29EDC9740](v8);
      v3 = MEMORY[0x29EDC9740](v9).n128_u64[0];
    }

    else
    {
      v11 = [a1 safeValueForKey:{@"_zoomButton", v2}];
      v10 = accessibilityLocalizedString(@"fullscreen.zoom");
      [v11 setAccessibilityLabel:?];
      MEMORY[0x29EDC9740](v10);
      v3 = MEMORY[0x29EDC9740](v11).n128_u64[0];
    }

    v7 = [a1 safeValueForKey:*&v3];
    v6 = [a1 safeValueForKey:@"_zoomButton"];
    v5 = [v6 titleForState:0];
    [v7 setAccessibilityIdentifier:?];
    MEMORY[0x29EDC9740](v5);
    MEMORY[0x29EDC9740](v6);
    if ([*MEMORY[0x29EDC8008] safeBoolForKey:{@"_fakingRequiresHighResolution", MEMORY[0x29EDC9740](v7).n128_f64[0]}])
    {
      v4 = [a1 safeValueForKey:@"_zoomButton"];
      [v4 setAccessibilityElementsHidden:1];
      *&result = MEMORY[0x29EDC9740](v4).n128_u64[0];
    }
  }

  return result;
}

- (void)loadView
{
  v5 = self;
  v4 = a2;
  v3.receiver = self;
  v3.super_class = UIZoomViewControllerAccessibility;
  [(UIZoomViewControllerAccessibility *)&v3 loadView];
  [(UIZoomViewControllerAccessibility *)v5 _accessibilitySetZoomButtonLabel];
}

- (void)_changeZoom:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4.receiver = v6;
  v4.super_class = UIZoomViewControllerAccessibility;
  [(UIZoomViewControllerAccessibility *)&v4 _changeZoom:location[0]];
  [(UIZoomViewControllerAccessibility *)v6 _accessibilitySetZoomButtonLabel];
  objc_storeStrong(location, 0);
}

@end
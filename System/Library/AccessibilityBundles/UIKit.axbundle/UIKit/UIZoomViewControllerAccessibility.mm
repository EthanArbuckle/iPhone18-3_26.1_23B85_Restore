@interface UIZoomViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (double)_accessibilitySetZoomButtonLabel;
- (void)_changeZoom:(id)zoom;
- (void)loadView;
@end

@implementation UIZoomViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v4 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  [location[0] validateClass:@"UIApplication" hasInstanceMethod:@"_fakingRequiresHighResolution" withFullSignature:{"B", 0}];
  objc_storeStrong(v4, obj);
}

- (double)_accessibilitySetZoomButtonLabel
{
  if (self)
  {
    v12 = [*MEMORY[0x29EDC8008] safeValueForKey:@"_shouldZoom"];
    bOOLValue = [v12 BOOLValue];
    *&v2 = MEMORY[0x29EDC9740](v12).n128_u64[0];
    if (bOOLValue)
    {
      v9 = [self safeValueForKey:{@"_zoomButton", v2}];
      v8 = accessibilityLocalizedString(@"normal.zoom");
      [v9 setAccessibilityLabel:?];
      MEMORY[0x29EDC9740](v8);
      v3 = MEMORY[0x29EDC9740](v9).n128_u64[0];
    }

    else
    {
      v11 = [self safeValueForKey:{@"_zoomButton", v2}];
      v10 = accessibilityLocalizedString(@"fullscreen.zoom");
      [v11 setAccessibilityLabel:?];
      MEMORY[0x29EDC9740](v10);
      v3 = MEMORY[0x29EDC9740](v11).n128_u64[0];
    }

    v7 = [self safeValueForKey:*&v3];
    v6 = [self safeValueForKey:@"_zoomButton"];
    v5 = [v6 titleForState:0];
    [v7 setAccessibilityIdentifier:?];
    MEMORY[0x29EDC9740](v5);
    MEMORY[0x29EDC9740](v6);
    if ([*MEMORY[0x29EDC8008] safeBoolForKey:{@"_fakingRequiresHighResolution", MEMORY[0x29EDC9740](v7).n128_f64[0]}])
    {
      v4 = [self safeValueForKey:@"_zoomButton"];
      [v4 setAccessibilityElementsHidden:1];
      *&result = MEMORY[0x29EDC9740](v4).n128_u64[0];
    }
  }

  return result;
}

- (void)loadView
{
  selfCopy = self;
  v4 = a2;
  v3.receiver = self;
  v3.super_class = UIZoomViewControllerAccessibility;
  [(UIZoomViewControllerAccessibility *)&v3 loadView];
  [(UIZoomViewControllerAccessibility *)selfCopy _accessibilitySetZoomButtonLabel];
}

- (void)_changeZoom:(id)zoom
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, zoom);
  v4.receiver = selfCopy;
  v4.super_class = UIZoomViewControllerAccessibility;
  [(UIZoomViewControllerAccessibility *)&v4 _changeZoom:location[0]];
  [(UIZoomViewControllerAccessibility *)selfCopy _accessibilitySetZoomButtonLabel];
  objc_storeStrong(location, 0);
}

@end
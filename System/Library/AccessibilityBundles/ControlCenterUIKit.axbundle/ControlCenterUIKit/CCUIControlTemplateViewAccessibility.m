@interface CCUIControlTemplateViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)accessibilityActivate;
@end

@implementation CCUIControlTemplateViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CCUIControlTemplateView" hasInstanceVariable:@"title" withType:"?"];
  [v3 validateClass:@"CCUIControlTemplateView" hasInstanceVariable:@"subtitle" withType:"?"];
  if (AXProcessIsSpringBoard())
  {
    [v3 validateClass:@"CCUIAirDropModuleViewController" hasInstanceMethod:@"_glyphViewForExpandedConnectivityModuleTapped" withFullSignature:{"v", 0}];
    [v3 validateClass:@"CCUIBluetoothModuleViewController" hasInstanceMethod:@"_glyphViewForExpandedConnectivityModuleTapped" withFullSignature:{"v", 0}];
    [v3 validateClass:@"CCUISatelliteModuleViewController" hasInstanceMethod:@"_glyphViewForExpandedConnectivityModuleTapped" withFullSignature:{"v", 0}];
    [v3 validateClass:@"CCUIVPNModuleViewController" hasInstanceMethod:@"_glyphViewForExpandedConnectivityModuleTapped" withFullSignature:{"v", 0}];
    [v3 validateClass:@"CCUIWiFiModuleViewController" hasInstanceMethod:@"_glyphViewForExpandedConnectivityModuleTapped" withFullSignature:{"v", 0}];
  }

  [v3 validateClass:@"CCUIControlTemplateView" hasInstanceMethod:@"customGlyphView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"UIGestureRecognizer" hasInstanceVariable:@"_targets" withType:"NSMutableArray"];
  [v3 validateClass:@"UIGestureRecognizerTarget" hasInstanceMethod:@"target" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CCUIControlTemplateView" hasInstanceMethod:@"isExpanded" withFullSignature:{"B", 0}];
}

- (BOOL)accessibilityActivate
{
  v19 = 0;
  objc_opt_class();
  v3 = [(CCUIControlTemplateViewAccessibility *)self safeValueForKey:@"customGlyphView"];
  v4 = __UIAccessibilityCastAsClass();

  if (v4)
  {
    v5 = [v4 gestureRecognizers];
    v6 = [v5 firstObject];

    if (v6)
    {
      v7 = [v6 safeValueForKey:@"_targets"];
      v8 = [v7 firstObject];
      v9 = [v8 safeValueForKey:@"target"];

      v14 = MEMORY[0x29EDCA5F8];
      v15 = 3221225472;
      v16 = __61__CCUIControlTemplateViewAccessibility_accessibilityActivate__block_invoke;
      v17 = &unk_29F2B7248;
      v18 = v9;
      v10 = v9;
      AXPerformSafeBlock();
    }

    v11 = 1;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = CCUIControlTemplateViewAccessibility;
    v11 = [(CCUIControlTemplateViewAccessibility *)&v13 accessibilityActivate];
  }

  return v11;
}

@end
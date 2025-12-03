@interface CCUIControlTemplateViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)accessibilityActivate;
@end

@implementation CCUIControlTemplateViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CCUIControlTemplateView" hasInstanceVariable:@"title" withType:"?"];
  [validationsCopy validateClass:@"CCUIControlTemplateView" hasInstanceVariable:@"subtitle" withType:"?"];
  if (AXProcessIsSpringBoard())
  {
    [validationsCopy validateClass:@"CCUIAirDropModuleViewController" hasInstanceMethod:@"_glyphViewForExpandedConnectivityModuleTapped" withFullSignature:{"v", 0}];
    [validationsCopy validateClass:@"CCUIBluetoothModuleViewController" hasInstanceMethod:@"_glyphViewForExpandedConnectivityModuleTapped" withFullSignature:{"v", 0}];
    [validationsCopy validateClass:@"CCUISatelliteModuleViewController" hasInstanceMethod:@"_glyphViewForExpandedConnectivityModuleTapped" withFullSignature:{"v", 0}];
    [validationsCopy validateClass:@"CCUIVPNModuleViewController" hasInstanceMethod:@"_glyphViewForExpandedConnectivityModuleTapped" withFullSignature:{"v", 0}];
    [validationsCopy validateClass:@"CCUIWiFiModuleViewController" hasInstanceMethod:@"_glyphViewForExpandedConnectivityModuleTapped" withFullSignature:{"v", 0}];
  }

  [validationsCopy validateClass:@"CCUIControlTemplateView" hasInstanceMethod:@"customGlyphView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"UIGestureRecognizer" hasInstanceVariable:@"_targets" withType:"NSMutableArray"];
  [validationsCopy validateClass:@"UIGestureRecognizerTarget" hasInstanceMethod:@"target" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CCUIControlTemplateView" hasInstanceMethod:@"isExpanded" withFullSignature:{"B", 0}];
}

- (BOOL)accessibilityActivate
{
  v19 = 0;
  objc_opt_class();
  v3 = [(CCUIControlTemplateViewAccessibility *)self safeValueForKey:@"customGlyphView"];
  v4 = __UIAccessibilityCastAsClass();

  if (v4)
  {
    gestureRecognizers = [v4 gestureRecognizers];
    firstObject = [gestureRecognizers firstObject];

    if (firstObject)
    {
      v7 = [firstObject safeValueForKey:@"_targets"];
      firstObject2 = [v7 firstObject];
      v9 = [firstObject2 safeValueForKey:@"target"];

      v14 = MEMORY[0x29EDCA5F8];
      v15 = 3221225472;
      v16 = __61__CCUIControlTemplateViewAccessibility_accessibilityActivate__block_invoke;
      v17 = &unk_29F2B7248;
      v18 = v9;
      v10 = v9;
      AXPerformSafeBlock();
    }

    accessibilityActivate = 1;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = CCUIControlTemplateViewAccessibility;
    accessibilityActivate = [(CCUIControlTemplateViewAccessibility *)&v13 accessibilityActivate];
  }

  return accessibilityActivate;
}

@end
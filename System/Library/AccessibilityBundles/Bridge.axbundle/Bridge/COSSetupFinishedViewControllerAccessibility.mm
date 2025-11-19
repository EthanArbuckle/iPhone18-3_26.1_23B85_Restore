@interface COSSetupFinishedViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation COSSetupFinishedViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PBBridgeProgressView"];
  [v3 validateClass:@"PBBridgeProgressView" hasInstanceMethod:@"currentProgress" withFullSignature:{"d", 0}];
  [v3 validateClass:@"COSSetupFinishedViewController" hasInstanceMethod:@"illustratedSyncView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"COSSetupFinishedViewController" hasInstanceMethod:@"progressView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"COSSetupFinishedViewController" hasInstanceMethod:@"progress" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v12.receiver = self;
  v12.super_class = COSSetupFinishedViewControllerAccessibility;
  [(COSSetupFinishedViewControllerAccessibility *)&v12 _accessibilityLoadAccessibilityInformation];
  LOBYTE(location) = 0;
  v3 = [(COSSetupFinishedViewControllerAccessibility *)self safeValueForKey:@"illustratedSyncView"];
  v4 = __UIAccessibilitySafeClass();

  if (v4)
  {
    objc_initWeak(&location, self);
    [v4 setIsAccessibilityElement:1];
    v5 = accessibilityLocalizedString(@"sync.progress");
    [v4 setAccessibilityLabel:v5];

    v6 = MEMORY[0x29EDCA5F8];
    v7 = 3221225472;
    v8 = __89__COSSetupFinishedViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
    v9 = &unk_29F2A8D78;
    objc_copyWeak(&v10, &location);
    [v4 _setAccessibilityValueBlock:&v6];
    [v4 setAccessibilityTraits:{*MEMORY[0x29EDC7FF0], v6, v7, v8, v9}];
    [v4 _accessibilitySetUserDefinedMediaAnalysisOptions:&unk_2A212B308];
    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

id __89__COSSetupFinishedViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained _accessibilityBoolValueForKey:@"isSyncComplete"])
  {
    v2 = 0;
  }

  else
  {
    v3 = [WeakRetained safeValueForKey:@"progressView"];
    v4 = __UIAccessibilitySafeClass();
    v5 = [v4 safeValueForKey:@"currentProgress"];
    [v5 doubleValue];

    v2 = AXFormatFloatWithPercentage();
    if (AXIsInternalInstall())
    {
      v6 = [WeakRetained safeValueForKey:@"progress"];
      v7 = [v6 accessibilityLabel];

      if ([v7 length])
      {
        v10 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"Apple Internal Info: %@", v7];
        v8 = __UIAXStringForVariables();

        v2 = v8;
      }
    }
  }

  return v2;
}

@end
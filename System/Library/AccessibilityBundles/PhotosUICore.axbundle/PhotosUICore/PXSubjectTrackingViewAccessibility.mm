@interface PXSubjectTrackingViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)layoutSubviews;
@end

@implementation PXSubjectTrackingViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PXSubjectTrackingView" hasInstanceMethod:@"_axDescriptionForCacheKey:" withFullSignature:{"@", "@", 0}];
  [validationsCopy validateClass:@"PXSubjectTrackingView" hasInstanceMethod:@"setCinematographyFrame:animate:" withFullSignature:{"v", "@", "B", 0}];
  [validationsCopy validateClass:@"PXSubjectTrackingView" hasInstanceMethod:@"detectionViewCache" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PXSubjectTrackingView" hasInstanceMethod:@"focusStateBadge" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PXSubjectTrackingView" hasInstanceMethod:@"layoutSubviews" withFullSignature:{"v", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v7.receiver = self;
  v7.super_class = PXSubjectTrackingViewAccessibility;
  [(PXSubjectTrackingViewAccessibility *)&v7 _accessibilityLoadAccessibilityInformation];
  v3 = [(PXSubjectTrackingViewAccessibility *)self safeDictionaryForKey:@"detectionViewCache"];
  objc_initWeak(&location, self);
  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 3221225472;
  v4[2] = __80__PXSubjectTrackingViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v4[3] = &unk_29F2E6258;
  objc_copyWeak(&v5, &location);
  [v3 enumerateKeysAndObjectsUsingBlock:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __80__PXSubjectTrackingViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__0;
  v18 = __Block_byref_object_dispose__0;
  v19 = 0;
  objc_copyWeak(&v13, (a1 + 32));
  v7 = v5;
  AXPerformSafeBlock();
  v8 = v15[5];

  objc_destroyWeak(&v13);
  _Block_object_dispose(&v14, 8);

  v9 = [v6 safeIntegerForKey:@"shape"];
  v10 = [MEMORY[0x29EDBA0F8] string];
  if ((v9 - 1) < 3)
  {
    v11 = accessibilityPhotosUICoreLocalizedString(off_29F2E6278[v9 - 1]);

    v10 = v11;
  }

  v12 = __UIAXStringForVariables();
  [v6 setAccessibilityLabel:{v12, v10, @"__AXStringForVariablesSentinel"}];
}

void __80__PXSubjectTrackingViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_494(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained _axDescriptionForCacheKey:*(a1 + 32)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PXSubjectTrackingViewAccessibility;
  [(PXSubjectTrackingViewAccessibility *)&v3 layoutSubviews];
  [(PXSubjectTrackingViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end
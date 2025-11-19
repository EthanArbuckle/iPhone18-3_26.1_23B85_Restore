@interface PUPhotoEditPortraitToolControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_setupDepthControlsIfNeeded;
- (BOOL)_setupLightingControlsIfNeeded;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)viewDidLoad;
@end

@implementation PUPhotoEditPortraitToolControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PXUIButton" isKindOfClass:@"UIButton"];
  [v3 validateClass:@"PUPhotoEditPortraitToolController" hasInstanceVariable:@"_portraitToolbarButton" withType:"PUPhotoEditToolActivationButton"];
  [v3 validateClass:@"PUPhotoEditPortraitToolController" hasInstanceMethod:@"_setupDepthControlsIfNeeded" withFullSignature:{"B", 0}];
  [v3 validateClass:@"PUPhotoEditPortraitToolController" hasInstanceMethod:@"viewDidLoad" withFullSignature:{"v", 0}];
  [v3 validateClass:@"PUPhotoEditPortraitToolController" hasInstanceVariable:@"_lightingIntensityButton" withType:"PUPhotoEditToolbarButton"];
  [v3 validateClass:@"PUPhotoEditPortraitToolController" hasInstanceMethod:@"_setupLightingControlsIfNeeded" withFullSignature:{"B", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v14.receiver = self;
  v14.super_class = PUPhotoEditPortraitToolControllerAccessibility;
  [(PUPhotoEditPortraitToolControllerAccessibility *)&v14 _accessibilityLoadAccessibilityInformation];
  LOBYTE(location) = 0;
  objc_opt_class();
  v3 = [(PUPhotoEditPortraitToolControllerAccessibility *)self safeValueForKey:@"_portraitToolbarButton"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = *MEMORY[0x29EDC7F70];
  [v4 setAccessibilityTraits:*MEMORY[0x29EDC7F70]];
  [v4 _setAccessibilityLabelBlock:&__block_literal_global_10];
  objc_initWeak(&location, v4);
  v11[0] = MEMORY[0x29EDCA5F8];
  v11[1] = 3221225472;
  v11[2] = __92__PUPhotoEditPortraitToolControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2;
  v11[3] = &unk_29F2E8158;
  objc_copyWeak(&v12, &location);
  [v4 _setAccessibilityValueBlock:v11];
  LOBYTE(from) = 0;
  objc_opt_class();
  v6 = [(PUPhotoEditPortraitToolControllerAccessibility *)self safeValueForKey:@"_lightingIntensityButton"];
  v7 = __UIAccessibilityCastAsClass();

  [v7 setAccessibilityTraits:v5];
  [v7 _setAccessibilityLabelBlock:&__block_literal_global_513];
  objc_initWeak(&from, v7);
  v8[0] = MEMORY[0x29EDCA5F8];
  v8[1] = 3221225472;
  v8[2] = __92__PUPhotoEditPortraitToolControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_4;
  v8[3] = &unk_29F2E8158;
  objc_copyWeak(&v9, &from);
  [v7 _setAccessibilityValueBlock:v8];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&from);

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

id __92__PUPhotoEditPortraitToolControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained isSelected])
  {
    v2 = @"iris.tool.on";
  }

  else
  {
    v2 = @"iris.tool.off";
  }

  v3 = accessibilityPULocalizedString(v2);

  return v3;
}

id __92__PUPhotoEditPortraitToolControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained isSelected])
  {
    v2 = @"light.intensity.on";
  }

  else
  {
    v2 = @"light.intensity.off";
  }

  v3 = accessibilityPULocalizedString(v2);

  return v3;
}

- (BOOL)_setupDepthControlsIfNeeded
{
  v5.receiver = self;
  v5.super_class = PUPhotoEditPortraitToolControllerAccessibility;
  v3 = [(PUPhotoEditPortraitToolControllerAccessibility *)&v5 _setupDepthControlsIfNeeded];
  [(PUPhotoEditPortraitToolControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
  return v3;
}

- (BOOL)_setupLightingControlsIfNeeded
{
  v5.receiver = self;
  v5.super_class = PUPhotoEditPortraitToolControllerAccessibility;
  v3 = [(PUPhotoEditPortraitToolControllerAccessibility *)&v5 _setupLightingControlsIfNeeded];
  [(PUPhotoEditPortraitToolControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
  return v3;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = PUPhotoEditPortraitToolControllerAccessibility;
  [(PUPhotoEditPortraitToolControllerAccessibility *)&v3 viewDidLoad];
  [(PUPhotoEditPortraitToolControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end
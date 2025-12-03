@interface PUPhotoEditViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_reloadToolbarButtonsIfNeeded;
- (void)viewDidLoad;
@end

@implementation PUPhotoEditViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PUPhotoEditViewController" hasInstanceVariable:@"_moreButton" withType:"PUPhotoEditToolbarButton"];
  [validationsCopy validateClass:@"PUPhotoEditViewController" hasInstanceVariable:@"_redEyeButton" withType:"PUPhotoEditToolbarButton"];
  [validationsCopy validateClass:@"PUPhotoEditViewController" hasInstanceMethod:@"viewDidLoad" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"PUPhotoEditViewController" hasInstanceMethod:@"_updateToolbarsAnimated:" withFullSignature:{"v", "B", 0}];
  [validationsCopy validateClass:@"PUPhotoEditViewController" hasInstanceMethod:@"_updateMainActionButtonAnimated:" withFullSignature:{"v", "B", 0}];
  [validationsCopy validateClass:@"PUPhotoEditViewController" hasInstanceMethod:@"_reloadToolbarButtonsIfNeeded" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"PUPhotoEditViewController" hasInstanceVariable:@"_mediaView" withType:"NUMediaView"];
  [validationsCopy validateClass:@"NUMediaView" hasInstanceVariable:@"_renderView" withType:"NURenderView"];
  [validationsCopy validateClass:@"NUMediaView" hasInstanceVariable:@"_renderer" withType:"NUMediaViewRenderer"];
  [validationsCopy validateClass:@"NUMediaViewRenderer" hasInstanceMethod:@"computedDisplayType" withFullSignature:{"Q", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v19.receiver = self;
  v19.super_class = PUPhotoEditViewControllerAccessibility;
  [(PUPhotoEditViewControllerAccessibility *)&v19 _accessibilityLoadAccessibilityInformation];
  v3 = [(PUPhotoEditViewControllerAccessibility *)self safeValueForKey:@"_moreButton"];
  v4 = accessibilityPULocalizedString(@"plugin.tool");
  [v3 setAccessibilityLabel:v4];

  v5 = [(PUPhotoEditViewControllerAccessibility *)self safeValueForKey:@"_redEyeButton"];
  v6 = accessibilityPULocalizedString(@"redeye.tool");
  [v5 setAccessibilityLabel:v6];

  v7 = [(PUPhotoEditViewControllerAccessibility *)self safeValueForKey:@"_mediaView"];
  v8 = [v7 safeValueForKey:@"_renderView"];
  v9 = [v7 safeValueForKey:@"_renderer"];
  v10 = [v9 safeIntegerForKey:@"computedDisplayType"];
  v18[0] = MEMORY[0x29EDCA5F8];
  v18[1] = 3221225472;
  v18[2] = __84__PUPhotoEditViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v18[3] = &__block_descriptor_40_e5_B8__0l;
  v18[4] = v10;
  [v8 _setIsAccessibilityElementBlock:v18];
  objc_initWeak(&location, self);
  v15[0] = MEMORY[0x29EDCA5F8];
  v15[1] = 3221225472;
  v15[2] = __84__PUPhotoEditViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2;
  v15[3] = &unk_29F2E8450;
  objc_copyWeak(&v16, &location);
  [v8 _setAccessibilityTraitsBlock:v15];
  if ((v10 - 1) >= 3)
  {
    v11 = 0;
  }

  else
  {
    v11 = accessibilityPULocalizedString(off_29F2E8470[v10 - 1]);
  }

  v13[0] = MEMORY[0x29EDCA5F8];
  v13[1] = 3221225472;
  v13[2] = __84__PUPhotoEditViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_3;
  v13[3] = &unk_29F2E8308;
  v12 = v11;
  v14 = v12;
  [v8 _setAccessibilityLabelBlock:v13];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

uint64_t __84__PUPhotoEditViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2(uint64_t a1)
{
  v1 = *MEMORY[0x29EDC7F88];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained safeValueForKey:@"_redEyeButton"];
  v4 = [v3 safeBoolForKey:@"isSelected"];

  if (v4)
  {
    return *MEMORY[0x29EDC7F68] | v1;
  }

  else
  {
    return v1 & ~*MEMORY[0x29EDC7F68];
  }
}

- (void)_reloadToolbarButtonsIfNeeded
{
  v3.receiver = self;
  v3.super_class = PUPhotoEditViewControllerAccessibility;
  [(PUPhotoEditViewControllerAccessibility *)&v3 _reloadToolbarButtonsIfNeeded];
  [(PUPhotoEditViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = PUPhotoEditViewControllerAccessibility;
  [(PUPhotoEditViewControllerAccessibility *)&v3 viewDidLoad];
  [(PUPhotoEditViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end
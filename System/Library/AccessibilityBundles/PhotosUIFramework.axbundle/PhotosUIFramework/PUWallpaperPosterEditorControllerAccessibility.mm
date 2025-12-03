@interface PUWallpaperPosterEditorControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_photoPickerAction;
- (id)_toggleSpatialPhotoEffectAction;
@end

@implementation PUWallpaperPosterEditorControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PUWallpaperPosterEditorController" hasInstanceMethod:@"posterConfiguration" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PUWallpaperPosterEditorController" hasInstanceMethod:@"_photoPickerAction" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PUWallpaperPosterEditorController" hasInstanceMethod:@"_toggleSpatialPhotoEffectAction" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PUWallpaperPosterEditorController" hasInstanceMethod:@"_canEnableSpatialPhotoEffect" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"PUWallpaperPosterEditorController" hasInstanceMethod:@"_isSpatialPhotoEnabled" withFullSignature:{"B", 0}];
}

- (id)_photoPickerAction
{
  v8.receiver = self;
  v8.super_class = PUWallpaperPosterEditorControllerAccessibility;
  _photoPickerAction = [(PUWallpaperPosterEditorControllerAccessibility *)&v8 _photoPickerAction];
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 3221225472;
  v5[2] = __68__PUWallpaperPosterEditorControllerAccessibility__photoPickerAction__block_invoke;
  v5[3] = &unk_29F2E8158;
  objc_copyWeak(&v6, &location);
  [_photoPickerAction setAccessibilityLabelBlock:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);

  return _photoPickerAction;
}

id __68__PUWallpaperPosterEditorControllerAccessibility__photoPickerAction__block_invoke(uint64_t a1)
{
  objc_opt_class();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained safeValueForKey:@"posterConfiguration"];
  v4 = __UIAccessibilityCastAsClass();

  if ([v4 configurationType] == 1)
  {
    v5 = @"wallpaper.poster.album.picker.label";
  }

  else
  {
    v5 = @"wallpaper.poster.photo.picker.label";
  }

  v6 = accessibilityPULocalizedString(v5);

  return v6;
}

- (id)_toggleSpatialPhotoEffectAction
{
  v8.receiver = self;
  v8.super_class = PUWallpaperPosterEditorControllerAccessibility;
  _toggleSpatialPhotoEffectAction = [(PUWallpaperPosterEditorControllerAccessibility *)&v8 _toggleSpatialPhotoEffectAction];
  if (_toggleSpatialPhotoEffectAction)
  {
    objc_initWeak(&location, self);
    v5[0] = MEMORY[0x29EDCA5F8];
    v5[1] = 3221225472;
    v5[2] = __81__PUWallpaperPosterEditorControllerAccessibility__toggleSpatialPhotoEffectAction__block_invoke;
    v5[3] = &unk_29F2E8158;
    objc_copyWeak(&v6, &location);
    [_toggleSpatialPhotoEffectAction setAccessibilityLabelBlock:v5];
    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }

  return _toggleSpatialPhotoEffectAction;
}

id __81__PUWallpaperPosterEditorControllerAccessibility__toggleSpatialPhotoEffectAction__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained safeBoolForKey:@"_canEnableSpatialPhotoEffect"];

  if (v3)
  {
    v4 = objc_loadWeakRetained((a1 + 32));
    if ([v4 safeBoolForKey:@"_isSpatialPhotoEnabled"])
    {
      v5 = @"wallpaper.poster.spatial.capture.disable";
    }

    else
    {
      v5 = @"wallpaper.poster.spatial.capture.enable";
    }

    v6 = accessibilityPULocalizedString(v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end
@interface PLPhotoTileViewControllerAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_configureViews;
- (void)_setPhoto:(id)photo;
@end

@implementation PLPhotoTileViewControllerAccessibility

- (void)_setPhoto:(id)photo
{
  v7.receiver = self;
  v7.super_class = PLPhotoTileViewControllerAccessibility;
  photoCopy = photo;
  [(PLPhotoTileViewControllerAccessibility *)&v7 _setPhoto:photoCopy];
  v5 = [(PLPhotoTileViewControllerAccessibility *)self safeValueForKey:@"_imageView", v7.receiver, v7.super_class];
  v6 = [photoCopy safeValueForKey:@"mainFileURL"];

  [v5 _accessibilitySetRetainedValue:v6 forKey:@"AXAssetURL"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = PLPhotoTileViewControllerAccessibility;
  [(PLPhotoTileViewControllerAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v3 = [(PLPhotoTileViewControllerAccessibility *)self safeValueForKey:@"_imageView"];
  NSClassFromString(&cfstr_Plexpandableim.isa);
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    AXPerformSafeBlock();
  }
}

void __84__PLPhotoTileViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) safeValueForKey:@"_modelPhoto"];
  [v1 setPhoto:v2];
}

- (void)_configureViews
{
  v3.receiver = self;
  v3.super_class = PLPhotoTileViewControllerAccessibility;
  [(PLPhotoTileViewControllerAccessibility *)&v3 _configureViews];
  [(PLPhotoTileViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end
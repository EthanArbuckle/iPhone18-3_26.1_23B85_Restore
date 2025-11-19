@interface PBFPosterGalleryPreviewViewController_InvertColorsAccessibility
- (void)viewWillMoveToWindow:(id)a3;
@end

@implementation PBFPosterGalleryPreviewViewController_InvertColorsAccessibility

- (void)viewWillMoveToWindow:(id)a3
{
  v4.receiver = self;
  v4.super_class = PBFPosterGalleryPreviewViewController_InvertColorsAccessibility;
  v3 = a3;
  [(PBFPosterGalleryPreviewViewController_InvertColorsAccessibility *)&v4 viewWillMoveToWindow:v3];
  [v3 _accessibilitySetBoolValue:1 forKey:{@"galleryVisible", v4.receiver, v4.super_class}];
  [AXInvertColorsManager toggleDarkModeWindowInvert:v3];
}

@end
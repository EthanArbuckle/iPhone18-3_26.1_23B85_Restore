@interface PBFPosterGalleryPreviewViewController_InvertColorsAccessibility
- (void)viewWillMoveToWindow:(id)window;
@end

@implementation PBFPosterGalleryPreviewViewController_InvertColorsAccessibility

- (void)viewWillMoveToWindow:(id)window
{
  v4.receiver = self;
  v4.super_class = PBFPosterGalleryPreviewViewController_InvertColorsAccessibility;
  windowCopy = window;
  [(PBFPosterGalleryPreviewViewController_InvertColorsAccessibility *)&v4 viewWillMoveToWindow:windowCopy];
  [windowCopy _accessibilitySetBoolValue:1 forKey:{@"galleryVisible", v4.receiver, v4.super_class}];
  [AXInvertColorsManager toggleDarkModeWindowInvert:windowCopy];
}

@end
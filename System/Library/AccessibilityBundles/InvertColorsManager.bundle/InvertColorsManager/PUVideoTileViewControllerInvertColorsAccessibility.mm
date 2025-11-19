@interface PUVideoTileViewControllerInvertColorsAccessibility
- (id)loadView;
@end

@implementation PUVideoTileViewControllerInvertColorsAccessibility

- (id)loadView
{
  v6.receiver = self;
  v6.super_class = PUVideoTileViewControllerInvertColorsAccessibility;
  v3 = [(PUVideoTileViewControllerInvertColorsAccessibility *)&v6 loadView];
  v4 = [(PUVideoTileViewControllerInvertColorsAccessibility *)self safeUIViewForKey:@"_placeholderImageView"];
  [v4 setAccessibilityIgnoresInvertColors:1];

  return v3;
}

@end
@interface PUPhotoEditViewControllerInvertColorsAccessibility
- (void)_accessibilityLoadInvertColors;
- (void)viewDidLoad;
@end

@implementation PUPhotoEditViewControllerInvertColorsAccessibility

- (void)_accessibilityLoadInvertColors
{
  v2 = [(PUPhotoEditViewControllerInvertColorsAccessibility *)self safeValueForKey:@"view"];
  [v2 setAccessibilityIgnoresInvertColors:1];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = PUPhotoEditViewControllerInvertColorsAccessibility;
  [(PUPhotoEditViewControllerInvertColorsAccessibility *)&v3 viewDidLoad];
  [(PUPhotoEditViewControllerInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
}

@end
@interface MKPlacePhotosViewControllerInvertColorsAccessibility
- (void)_accessibilityLoadInvertColors;
- (void)_createImageViews;
@end

@implementation MKPlacePhotosViewControllerInvertColorsAccessibility

- (void)_accessibilityLoadInvertColors
{
  v2 = [(MKPlacePhotosViewControllerInvertColorsAccessibility *)self safeArrayForKey:@"_photoViews"];
  [v2 enumerateObjectsUsingBlock:&stru_44768];
}

- (void)_createImageViews
{
  v3.receiver = self;
  v3.super_class = MKPlacePhotosViewControllerInvertColorsAccessibility;
  [(MKPlacePhotosViewControllerInvertColorsAccessibility *)&v3 _createImageViews];
  [(MKPlacePhotosViewControllerInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
}

@end
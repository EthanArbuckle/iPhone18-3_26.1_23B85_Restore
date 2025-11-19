@interface PUPhotoViewInvertColorsAccessibility
- (void)_accessibilityLoadInvertColors;
- (void)layoutSubviews;
@end

@implementation PUPhotoViewInvertColorsAccessibility

- (void)_accessibilityLoadInvertColors
{
  v2 = [(PUPhotoViewInvertColorsAccessibility *)self safeValueForKey:@"_contentHelper"];
  if (UIAccessibilityIsInvertColorsEnabled())
  {
    +[UIColor blackColor];
  }

  else
  {
    [UIColor safeValueForKey:@"_systemBackgroundColor"];
  }

  v6 = v5 = v2;
  v3 = v6;
  v4 = v2;
  AXPerformSafeBlock();
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PUPhotoViewInvertColorsAccessibility;
  [(PUPhotoViewInvertColorsAccessibility *)&v3 layoutSubviews];
  [(PUPhotoViewInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
}

@end
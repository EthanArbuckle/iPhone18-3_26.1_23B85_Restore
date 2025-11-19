@interface PUPhotoEditToolControllerAccessibility
- (id)centerToolbarView;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation PUPhotoEditToolControllerAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = PUPhotoEditToolControllerAccessibility;
  [(PUPhotoEditToolControllerAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(PUPhotoEditToolControllerAccessibility *)self safeUIViewForKey:@"centerToolbarView"];
  [v3 _setAccessibilityTraitsBlock:&__block_literal_global_0];
}

- (id)centerToolbarView
{
  v4.receiver = self;
  v4.super_class = PUPhotoEditToolControllerAccessibility;
  v2 = [(PUPhotoEditToolControllerAccessibility *)&v4 centerToolbarView];
  [v2 _setAccessibilityTraitsBlock:&__block_literal_global_484];

  return v2;
}

@end
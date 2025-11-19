@interface PUOneUpAssetTransitionContextInvertColorsAccessibility
- (void)_accessibilityLoadInvertColors;
- (void)_setSnapshotView:(id)a3;
@end

@implementation PUOneUpAssetTransitionContextInvertColorsAccessibility

- (void)_setSnapshotView:(id)a3
{
  v4.receiver = self;
  v4.super_class = PUOneUpAssetTransitionContextInvertColorsAccessibility;
  [(PUOneUpAssetTransitionContextInvertColorsAccessibility *)&v4 _setSnapshotView:a3];
  [(PUOneUpAssetTransitionContextInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
}

- (void)_accessibilityLoadInvertColors
{
  v2 = [(PUOneUpAssetTransitionContextInvertColorsAccessibility *)self safeUIViewForKey:@"snapshotView"];
  [v2 setAccessibilityIgnoresInvertColors:1];
}

@end
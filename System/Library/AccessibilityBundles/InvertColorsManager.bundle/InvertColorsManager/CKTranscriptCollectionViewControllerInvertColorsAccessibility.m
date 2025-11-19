@interface CKTranscriptCollectionViewControllerInvertColorsAccessibility
- (void)_axRefreshInvertColorsForCell:(id)a3;
- (void)scrollViewDidEndDecelerating:(id)a3;
- (void)scrollViewDidEndScrollingAnimation:(id)a3;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
@end

@implementation CKTranscriptCollectionViewControllerInvertColorsAccessibility

- (void)_axRefreshInvertColorsForCell:(id)a3
{
  v5 = a3;
  AXSafeClassFromString();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v5 safeValueForKey:@"balloonView"];
    v4 = [v3 safeValueForKey:@"_accessibilityLoadInvertColors"];
  }
}

- (void)scrollViewDidScroll:(id)a3
{
  v4.receiver = self;
  v4.super_class = CKTranscriptCollectionViewControllerInvertColorsAccessibility;
  [(CKTranscriptCollectionViewControllerInvertColorsAccessibility *)&v4 scrollViewDidScroll:a3];
  [(CKTranscriptCollectionViewControllerInvertColorsAccessibility *)self _axRefreshInvertColors];
}

- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  v6.receiver = self;
  v6.super_class = CKTranscriptCollectionViewControllerInvertColorsAccessibility;
  [(CKTranscriptCollectionViewControllerInvertColorsAccessibility *)&v6 scrollViewWillEndDragging:a3 withVelocity:a5 targetContentOffset:a4.x, a4.y];
  [(CKTranscriptCollectionViewControllerInvertColorsAccessibility *)self _axRefreshInvertColors];
}

- (void)scrollViewDidEndScrollingAnimation:(id)a3
{
  v4.receiver = self;
  v4.super_class = CKTranscriptCollectionViewControllerInvertColorsAccessibility;
  [(CKTranscriptCollectionViewControllerInvertColorsAccessibility *)&v4 scrollViewDidEndScrollingAnimation:a3];
  [(CKTranscriptCollectionViewControllerInvertColorsAccessibility *)self _axRefreshInvertColors];
}

- (void)scrollViewDidEndDecelerating:(id)a3
{
  v4.receiver = self;
  v4.super_class = CKTranscriptCollectionViewControllerInvertColorsAccessibility;
  [(CKTranscriptCollectionViewControllerInvertColorsAccessibility *)&v4 scrollViewDidEndDecelerating:a3];
  [(CKTranscriptCollectionViewControllerInvertColorsAccessibility *)self _axRefreshInvertColors];
}

@end
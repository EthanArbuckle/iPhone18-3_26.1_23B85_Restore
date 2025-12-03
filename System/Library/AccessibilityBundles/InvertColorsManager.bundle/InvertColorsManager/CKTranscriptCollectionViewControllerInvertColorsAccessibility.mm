@interface CKTranscriptCollectionViewControllerInvertColorsAccessibility
- (void)_axRefreshInvertColorsForCell:(id)cell;
- (void)scrollViewDidEndDecelerating:(id)decelerating;
- (void)scrollViewDidEndScrollingAnimation:(id)animation;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
@end

@implementation CKTranscriptCollectionViewControllerInvertColorsAccessibility

- (void)_axRefreshInvertColorsForCell:(id)cell
{
  cellCopy = cell;
  AXSafeClassFromString();
  if (objc_opt_isKindOfClass())
  {
    v3 = [cellCopy safeValueForKey:@"balloonView"];
    v4 = [v3 safeValueForKey:@"_accessibilityLoadInvertColors"];
  }
}

- (void)scrollViewDidScroll:(id)scroll
{
  v4.receiver = self;
  v4.super_class = CKTranscriptCollectionViewControllerInvertColorsAccessibility;
  [(CKTranscriptCollectionViewControllerInvertColorsAccessibility *)&v4 scrollViewDidScroll:scroll];
  [(CKTranscriptCollectionViewControllerInvertColorsAccessibility *)self _axRefreshInvertColors];
}

- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  v6.receiver = self;
  v6.super_class = CKTranscriptCollectionViewControllerInvertColorsAccessibility;
  [(CKTranscriptCollectionViewControllerInvertColorsAccessibility *)&v6 scrollViewWillEndDragging:dragging withVelocity:offset targetContentOffset:velocity.x, velocity.y];
  [(CKTranscriptCollectionViewControllerInvertColorsAccessibility *)self _axRefreshInvertColors];
}

- (void)scrollViewDidEndScrollingAnimation:(id)animation
{
  v4.receiver = self;
  v4.super_class = CKTranscriptCollectionViewControllerInvertColorsAccessibility;
  [(CKTranscriptCollectionViewControllerInvertColorsAccessibility *)&v4 scrollViewDidEndScrollingAnimation:animation];
  [(CKTranscriptCollectionViewControllerInvertColorsAccessibility *)self _axRefreshInvertColors];
}

- (void)scrollViewDidEndDecelerating:(id)decelerating
{
  v4.receiver = self;
  v4.super_class = CKTranscriptCollectionViewControllerInvertColorsAccessibility;
  [(CKTranscriptCollectionViewControllerInvertColorsAccessibility *)&v4 scrollViewDidEndDecelerating:decelerating];
  [(CKTranscriptCollectionViewControllerInvertColorsAccessibility *)self _axRefreshInvertColors];
}

@end
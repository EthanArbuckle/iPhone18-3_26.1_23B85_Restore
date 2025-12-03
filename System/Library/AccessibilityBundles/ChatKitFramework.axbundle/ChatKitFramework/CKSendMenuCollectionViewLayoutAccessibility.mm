@interface CKSendMenuCollectionViewLayoutAccessibility
- (void)stretchSpringsAttachedToCellsForBoundsChange:(CGRect)change;
@end

@implementation CKSendMenuCollectionViewLayoutAccessibility

- (void)stretchSpringsAttachedToCellsForBoundsChange:(CGRect)change
{
  height = change.size.height;
  width = change.size.width;
  y = change.origin.y;
  x = change.origin.x;
  if (!UIAccessibilityIsVoiceOverRunning())
  {
    v8.receiver = self;
    v8.super_class = CKSendMenuCollectionViewLayoutAccessibility;
    [(CKSendMenuCollectionViewLayoutAccessibility *)&v8 stretchSpringsAttachedToCellsForBoundsChange:x, y, width, height];
  }
}

@end
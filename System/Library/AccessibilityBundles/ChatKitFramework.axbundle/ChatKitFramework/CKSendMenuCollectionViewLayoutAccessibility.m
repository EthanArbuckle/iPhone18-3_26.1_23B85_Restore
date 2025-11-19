@interface CKSendMenuCollectionViewLayoutAccessibility
- (void)stretchSpringsAttachedToCellsForBoundsChange:(CGRect)a3;
@end

@implementation CKSendMenuCollectionViewLayoutAccessibility

- (void)stretchSpringsAttachedToCellsForBoundsChange:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (!UIAccessibilityIsVoiceOverRunning())
  {
    v8.receiver = self;
    v8.super_class = CKSendMenuCollectionViewLayoutAccessibility;
    [(CKSendMenuCollectionViewLayoutAccessibility *)&v8 stretchSpringsAttachedToCellsForBoundsChange:x, y, width, height];
  }
}

@end
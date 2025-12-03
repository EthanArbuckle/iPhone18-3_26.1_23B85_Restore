@interface CustomCompositionalLayout
- (id)targetIndexPathForInteractivelyMovingItem:(id)item withPosition:(CGPoint)position;
@end

@implementation CustomCompositionalLayout

- (id)targetIndexPathForInteractivelyMovingItem:(id)item withPosition:(CGPoint)position
{
  y = position.y;
  x = position.x;
  itemCopy = item;
  v8 = [(CustomCompositionalLayout *)self layoutAttributesForElementsInRect:x, y, 1.0, 1.0];
  if ([v8 count])
  {
    firstObject = [v8 firstObject];
    indexPath = [firstObject indexPath];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = CustomCompositionalLayout;
    indexPath = [(CustomCompositionalLayout *)&v12 targetIndexPathForInteractivelyMovingItem:itemCopy withPosition:x, y];
  }

  return indexPath;
}

@end
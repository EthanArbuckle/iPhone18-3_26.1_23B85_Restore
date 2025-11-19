@interface CustomCompositionalLayout
- (id)targetIndexPathForInteractivelyMovingItem:(id)a3 withPosition:(CGPoint)a4;
@end

@implementation CustomCompositionalLayout

- (id)targetIndexPathForInteractivelyMovingItem:(id)a3 withPosition:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  v8 = [(CustomCompositionalLayout *)self layoutAttributesForElementsInRect:x, y, 1.0, 1.0];
  if ([v8 count])
  {
    v9 = [v8 firstObject];
    v10 = [v9 indexPath];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = CustomCompositionalLayout;
    v10 = [(CustomCompositionalLayout *)&v12 targetIndexPathForInteractivelyMovingItem:v7 withPosition:x, y];
  }

  return v10;
}

@end
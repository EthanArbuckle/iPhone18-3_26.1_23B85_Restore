@interface THWReviewDragTargetLayout
- (THWReviewDragTargetLayout)initWithIndex:(unint64_t)index;
- (double)distanceSquaredToPoint:(CGPoint)point;
@end

@implementation THWReviewDragTargetLayout

- (THWReviewDragTargetLayout)initWithIndex:(unint64_t)index
{
  v5.receiver = self;
  v5.super_class = THWReviewDragTargetLayout;
  result = [(THWReviewDragTargetLayout *)&v5 initWithInfo:0];
  if (result)
  {
    result->_index = index;
  }

  return result;
}

- (double)distanceSquaredToPoint:(CGPoint)point
{
  [-[THWReviewDragTargetLayout geometry](self "geometry")];
  TSDCenterOfRect();

  TSDDistanceSquared();
  return result;
}

@end
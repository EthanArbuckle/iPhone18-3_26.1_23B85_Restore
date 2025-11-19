@interface THWReviewDragTargetLayout
- (THWReviewDragTargetLayout)initWithIndex:(unint64_t)a3;
- (double)distanceSquaredToPoint:(CGPoint)a3;
@end

@implementation THWReviewDragTargetLayout

- (THWReviewDragTargetLayout)initWithIndex:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = THWReviewDragTargetLayout;
  result = [(THWReviewDragTargetLayout *)&v5 initWithInfo:0];
  if (result)
  {
    result->_index = a3;
  }

  return result;
}

- (double)distanceSquaredToPoint:(CGPoint)a3
{
  [-[THWReviewDragTargetLayout geometry](self "geometry")];
  TSDCenterOfRect();

  TSDDistanceSquared();
  return result;
}

@end
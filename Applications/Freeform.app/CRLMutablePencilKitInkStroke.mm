@interface CRLMutablePencilKitInkStroke
- (id)copyWithZone:(_NSZone *)zone;
- (void)setWidth:(double)width;
@end

@implementation CRLMutablePencilKitInkStroke

- (void)setWidth:(double)width
{
  [(CRLStroke *)self i_setWidth:?];

  [(CRLStroke *)self i_setActualWidth:width];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CRLPencilKitInkStroke alloc];
  inkType = [(CRLPencilKitInkStroke *)self inkType];
  color = [(CRLMutablePencilKitInkStroke *)self color];
  [(CRLMutablePencilKitInkStroke *)self width];
  v7 = [(CRLPencilKitInkStroke *)v4 initWithInkType:inkType color:color adjustedWidth:?];

  return v7;
}

@end
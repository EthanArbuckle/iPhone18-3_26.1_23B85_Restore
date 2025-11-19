@interface CRLMutablePencilKitInkStroke
- (id)copyWithZone:(_NSZone *)a3;
- (void)setWidth:(double)a3;
@end

@implementation CRLMutablePencilKitInkStroke

- (void)setWidth:(double)a3
{
  [(CRLStroke *)self i_setWidth:?];

  [(CRLStroke *)self i_setActualWidth:a3];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CRLPencilKitInkStroke alloc];
  v5 = [(CRLPencilKitInkStroke *)self inkType];
  v6 = [(CRLMutablePencilKitInkStroke *)self color];
  [(CRLMutablePencilKitInkStroke *)self width];
  v7 = [(CRLPencilKitInkStroke *)v4 initWithInkType:v5 color:v6 adjustedWidth:?];

  return v7;
}

@end
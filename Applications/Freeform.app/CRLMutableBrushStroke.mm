@interface CRLMutableBrushStroke
- (id)copyWithZone:(_NSZone *)zone;
- (void)setWidth:(double)width;
@end

@implementation CRLMutableBrushStroke

- (void)setWidth:(double)width
{
  [(CRLStroke *)self i_setWidth:?];

  [(CRLStroke *)self i_setActualWidth:width];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CRLBrushStroke alloc];
  strokeName = [(CRLSmartStroke *)self strokeName];
  color = [(CRLMutableBrushStroke *)self color];
  [(CRLMutableBrushStroke *)self width];
  v8 = v7;
  v9 = [(CRLMutableBrushStroke *)self cap];
  join = [(CRLMutableBrushStroke *)self join];
  pattern = [(CRLMutableBrushStroke *)self pattern];
  [(CRLMutableBrushStroke *)self miterLimit];
  v13 = [(CRLBrushStroke *)v4 initWithName:strokeName color:color width:v9 cap:join join:pattern pattern:v8 miterLimit:v12];

  return v13;
}

@end
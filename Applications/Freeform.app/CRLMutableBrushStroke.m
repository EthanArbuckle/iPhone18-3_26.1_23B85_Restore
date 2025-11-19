@interface CRLMutableBrushStroke
- (id)copyWithZone:(_NSZone *)a3;
- (void)setWidth:(double)a3;
@end

@implementation CRLMutableBrushStroke

- (void)setWidth:(double)a3
{
  [(CRLStroke *)self i_setWidth:?];

  [(CRLStroke *)self i_setActualWidth:a3];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CRLBrushStroke alloc];
  v5 = [(CRLSmartStroke *)self strokeName];
  v6 = [(CRLMutableBrushStroke *)self color];
  [(CRLMutableBrushStroke *)self width];
  v8 = v7;
  v9 = [(CRLMutableBrushStroke *)self cap];
  v10 = [(CRLMutableBrushStroke *)self join];
  v11 = [(CRLMutableBrushStroke *)self pattern];
  [(CRLMutableBrushStroke *)self miterLimit];
  v13 = [(CRLBrushStroke *)v4 initWithName:v5 color:v6 width:v9 cap:v10 join:v11 pattern:v8 miterLimit:v12];

  return v13;
}

@end
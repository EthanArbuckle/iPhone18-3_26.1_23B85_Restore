@interface CRLMutableCalligraphyStroke
- (id)copyWithZone:(_NSZone *)a3;
- (void)setWidth:(double)a3;
@end

@implementation CRLMutableCalligraphyStroke

- (void)setWidth:(double)a3
{
  [(CRLStroke *)self i_setWidth:?];

  [(CRLStroke *)self i_setActualWidth:a3];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CRLCalligraphyStroke allocWithZone:a3];
  v5 = [(CRLMutableCalligraphyStroke *)self color];
  [(CRLMutableCalligraphyStroke *)self width];
  v7 = v6;
  v8 = [(CRLMutableCalligraphyStroke *)self cap];
  v9 = [(CRLMutableCalligraphyStroke *)self join];
  v10 = [(CRLMutableCalligraphyStroke *)self pattern];
  [(CRLMutableCalligraphyStroke *)self miterLimit];
  v12 = [(CRLCalligraphyStroke *)v4 initWithColor:v5 width:v8 cap:v9 join:v10 pattern:v7 miterLimit:v11];

  return v12;
}

@end
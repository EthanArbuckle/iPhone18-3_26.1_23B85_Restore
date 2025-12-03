@interface CRLMutableCalligraphyStroke
- (id)copyWithZone:(_NSZone *)zone;
- (void)setWidth:(double)width;
@end

@implementation CRLMutableCalligraphyStroke

- (void)setWidth:(double)width
{
  [(CRLStroke *)self i_setWidth:?];

  [(CRLStroke *)self i_setActualWidth:width];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CRLCalligraphyStroke allocWithZone:zone];
  color = [(CRLMutableCalligraphyStroke *)self color];
  [(CRLMutableCalligraphyStroke *)self width];
  v7 = v6;
  v8 = [(CRLMutableCalligraphyStroke *)self cap];
  join = [(CRLMutableCalligraphyStroke *)self join];
  pattern = [(CRLMutableCalligraphyStroke *)self pattern];
  [(CRLMutableCalligraphyStroke *)self miterLimit];
  v12 = [(CRLCalligraphyStroke *)v4 initWithColor:color width:v8 cap:join join:pattern pattern:v7 miterLimit:v11];

  return v12;
}

@end
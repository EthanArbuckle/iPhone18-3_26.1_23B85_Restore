@interface LPPointUnit
+ (id)zero;
- (LPPointUnit)initWithValue:(double)a3;
- (id)_lp_CSSText;
- (id)_lp_HTMLAttributeText;
@end

@implementation LPPointUnit

- (LPPointUnit)initWithValue:(double)a3
{
  v8.receiver = self;
  v8.super_class = LPPointUnit;
  v4 = [(LPPointUnit *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_value = a3;
    v6 = v4;
  }

  return v5;
}

+ (id)zero
{
  v2 = zero_zeroPoint;
  if (!zero_zeroPoint)
  {
    v3 = [[LPPointUnit alloc] initWithValue:0.0];
    v4 = zero_zeroPoint;
    zero_zeroPoint = v3;

    v2 = zero_zeroPoint;
  }

  return v2;
}

- (id)_lp_CSSText
{
  v2 = MEMORY[0x1E696AEC0];
  [(LPPointUnit *)self value];
  return [v2 stringWithFormat:@"%gpx", v3];
}

- (id)_lp_HTMLAttributeText
{
  v2 = MEMORY[0x1E696AEC0];
  [(LPPointUnit *)self value];
  return [v2 stringWithFormat:@"%g", v3];
}

@end
@interface SKRange
+ (SKRange)rangeWithConstantValue:(CGFloat)value;
+ (SKRange)rangeWithLowerLimit:(CGFloat)lower;
+ (SKRange)rangeWithLowerLimit:(CGFloat)lower upperLimit:(CGFloat)upper;
+ (SKRange)rangeWithNoLimits;
+ (SKRange)rangeWithUpperLimit:(CGFloat)upper;
+ (SKRange)rangeWithValue:(CGFloat)value variance:(CGFloat)variance;
- (SKRange)initWithCoder:(id)a3;
- (SKRange)initWithLowerLimit:(CGFloat)lower upperLimit:(CGFloat)upper;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SKRange

- (SKRange)initWithLowerLimit:(CGFloat)lower upperLimit:(CGFloat)upper
{
  v9.receiver = self;
  v9.super_class = SKRange;
  v6 = [(SKRange *)&v9 init];
  v7 = v6;
  if (v6)
  {
    [(SKRange *)v6 setLowerLimit:lower];
    [(SKRange *)v7 setUpperLimit:upper];
  }

  return v7;
}

- (SKRange)initWithCoder:(id)a3
{
  v4 = a3;
  [v4 decodeDoubleForKey:@"_lowerLimit"];
  v6 = v5;
  [v4 decodeDoubleForKey:@"_upperLimit"];
  v8 = [(SKRange *)self initWithLowerLimit:v6 upperLimit:v7];

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [(SKRange *)self lowerLimit];
  [v4 encodeDouble:@"_lowerLimit" forKey:?];
  [(SKRange *)self upperLimit];
  [v4 encodeDouble:@"_upperLimit" forKey:?];
}

+ (SKRange)rangeWithLowerLimit:(CGFloat)lower upperLimit:(CGFloat)upper
{
  v4 = [objc_alloc(objc_opt_class()) initWithLowerLimit:lower upperLimit:upper];

  return v4;
}

+ (SKRange)rangeWithNoLimits
{
  v2 = [objc_alloc(objc_opt_class()) initWithLowerLimit:-1.79769313e308 upperLimit:1.79769313e308];

  return v2;
}

+ (SKRange)rangeWithLowerLimit:(CGFloat)lower
{
  v3 = [objc_alloc(objc_opt_class()) initWithLowerLimit:lower upperLimit:1.79769313e308];

  return v3;
}

+ (SKRange)rangeWithUpperLimit:(CGFloat)upper
{
  v3 = [objc_alloc(objc_opt_class()) initWithLowerLimit:-1.79769313e308 upperLimit:upper];

  return v3;
}

+ (SKRange)rangeWithConstantValue:(CGFloat)value
{
  v3 = [objc_alloc(objc_opt_class()) initWithLowerLimit:value upperLimit:value];

  return v3;
}

+ (SKRange)rangeWithValue:(CGFloat)value variance:(CGFloat)variance
{
  v4 = fabs(variance);
  v5 = [objc_alloc(objc_opt_class()) initWithLowerLimit:value - v4 upperLimit:v4 + value];

  return v5;
}

- (id)description
{
  [(SKRange *)self lowerLimit];
  if (v3 == 1.79769313e308)
  {
    v4 = @"inf";
  }

  else
  {
    [(SKRange *)self lowerLimit];
    if (v5 == -1.79769313e308)
    {
      v4 = @"-inf";
    }

    else
    {
      v6 = MEMORY[0x277CCACA8];
      [(SKRange *)self lowerLimit];
      v4 = [v6 stringWithFormat:@"%.2f", v7];
    }
  }

  [(SKRange *)self upperLimit];
  if (v8 == 1.79769313e308)
  {
    v9 = @"inf";
  }

  else
  {
    [(SKRange *)self upperLimit];
    if (v10 == -1.79769313e308)
    {
      v9 = @"-inf";
    }

    else
    {
      v11 = MEMORY[0x277CCACA8];
      [(SKRange *)self upperLimit];
      v9 = [v11 stringWithFormat:@"%.2f", v12];
    }
  }

  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"<SKRange> lowerLimit:%@ upperLimit:%@", v4, v9];

  return v13;
}

- (id)copyWithZone:(_NSZone *)a3
{
  [(SKRange *)self lowerLimit];
  v5 = v4;
  [(SKRange *)self upperLimit];
  [SKRange rangeWithLowerLimit:v5 upperLimit:v6];
  return objc_claimAutoreleasedReturnValue();
}

@end
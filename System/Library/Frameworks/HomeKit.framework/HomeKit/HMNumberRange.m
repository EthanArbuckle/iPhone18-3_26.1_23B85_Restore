@interface HMNumberRange
+ (HMNumberRange)numberRangeWithMaxValue:(NSNumber *)maxValue;
+ (HMNumberRange)numberRangeWithMinValue:(NSNumber *)minValue;
+ (HMNumberRange)numberRangeWithMinValue:(NSNumber *)minValue maxValue:(NSNumber *)maxValue;
- (BOOL)isEqual:(id)a3;
- (HMNumberRange)initWithMinValue:(id)a3 maxValue:(id)a4;
- (id)description;
- (unint64_t)hash;
@end

@implementation HMNumberRange

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(HMNumberRange *)self minValue];
  v5 = [(HMNumberRange *)self maxValue];
  v6 = [v3 stringWithFormat:@"<HMNumberRange: min: %@, max: %@>", v4, v5];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(HMNumberRange *)self minValue];
      v7 = [(HMNumberRange *)v5 minValue];
      v8 = HMFEqualObjects();

      if (v8)
      {
        v9 = [(HMNumberRange *)self maxValue];
        v10 = [(HMNumberRange *)v5 maxValue];
        v11 = HMFEqualObjects();
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (unint64_t)hash
{
  v3 = [(HMNumberRange *)self minValue];
  v4 = [v3 hash];
  v5 = [(HMNumberRange *)self maxValue];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (HMNumberRange)initWithMinValue:(id)a3 maxValue:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HMNumberRange;
  v9 = [(HMNumberRange *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_minValue, a3);
    objc_storeStrong(&v10->_maxValue, a4);
  }

  return v10;
}

+ (HMNumberRange)numberRangeWithMinValue:(NSNumber *)minValue maxValue:(NSNumber *)maxValue
{
  v5 = maxValue;
  v6 = minValue;
  v7 = [[HMNumberRange alloc] initWithMinValue:v6 maxValue:v5];

  return v7;
}

+ (HMNumberRange)numberRangeWithMinValue:(NSNumber *)minValue
{
  v3 = minValue;
  v4 = [[HMNumberRange alloc] initWithMinValue:v3 maxValue:0];

  return v4;
}

+ (HMNumberRange)numberRangeWithMaxValue:(NSNumber *)maxValue
{
  v3 = maxValue;
  v4 = [[HMNumberRange alloc] initWithMinValue:0 maxValue:v3];

  return v4;
}

@end
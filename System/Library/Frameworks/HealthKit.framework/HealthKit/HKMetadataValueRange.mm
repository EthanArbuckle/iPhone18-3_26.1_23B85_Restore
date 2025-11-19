@interface HKMetadataValueRange
- (BOOL)isEqual:(id)a3;
- (HKMetadataValueRange)initWithMinValue:(id)a3 maxValue:(id)a4;
@end

@implementation HKMetadataValueRange

- (HKMetadataValueRange)initWithMinValue:(id)a3 maxValue:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HKMetadataValueRange;
  v9 = [(HKMetadataValueRange *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_minValue, a3);
    objc_storeStrong(&v10->_maxValue, a4);
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else if ([(HKMetadataValueRange *)v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = v4;
    minValue = self->_minValue;
    v7 = [(HKMetadataValueRange *)v5 minValue];
    if ([minValue isEqual:v7])
    {
      maxValue = self->_maxValue;
      v9 = [(HKMetadataValueRange *)v5 maxValue];
      v10 = [maxValue isEqual:v9];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end
@interface HKValueHistogramSegment
- (BOOL)isEqual:(id)a3;
- (HKValueHistogramSegment)initWithCoder:(id)a3;
- (HKValueHistogramSegment)initWithQuantityRange:(id)a3 count:(int64_t)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKValueHistogramSegment

- (HKValueHistogramSegment)initWithQuantityRange:(id)a3 count:(int64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = HKValueHistogramSegment;
  v8 = [(HKValueHistogramSegment *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_quantityRange, a3);
    v9->_count = a4;
  }

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v9 = 1;
  }

  else if ([(HKValueHistogramSegment *)v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = v4;
    quantityRange = self->_quantityRange;
    v7 = [(HKValueHistogramSegment *)v5 quantityRange];
    if ([(HKQuantityRange *)quantityRange isEqual:v7])
    {
      count = self->_count;
      v9 = count == [(HKValueHistogramSegment *)v5 count];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (HKValueHistogramSegment)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"quantityRange"];
  v6 = [v4 decodeIntegerForKey:@"count"];

  v7 = [(HKValueHistogramSegment *)self initWithQuantityRange:v5 count:v6];
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  quantityRange = self->_quantityRange;
  v5 = a3;
  [v5 encodeObject:quantityRange forKey:@"quantityRange"];
  [v5 encodeInteger:self->_count forKey:@"count"];
}

@end
@interface HKValueHistogramSegment
- (BOOL)isEqual:(id)equal;
- (HKValueHistogramSegment)initWithCoder:(id)coder;
- (HKValueHistogramSegment)initWithQuantityRange:(id)range count:(int64_t)count;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKValueHistogramSegment

- (HKValueHistogramSegment)initWithQuantityRange:(id)range count:(int64_t)count
{
  rangeCopy = range;
  v11.receiver = self;
  v11.super_class = HKValueHistogramSegment;
  v8 = [(HKValueHistogramSegment *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_quantityRange, range);
    v9->_count = count;
  }

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v9 = 1;
  }

  else if ([(HKValueHistogramSegment *)equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
    quantityRange = self->_quantityRange;
    quantityRange = [(HKValueHistogramSegment *)v5 quantityRange];
    if ([(HKQuantityRange *)quantityRange isEqual:quantityRange])
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

- (HKValueHistogramSegment)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"quantityRange"];
  v6 = [coderCopy decodeIntegerForKey:@"count"];

  v7 = [(HKValueHistogramSegment *)self initWithQuantityRange:v5 count:v6];
  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  quantityRange = self->_quantityRange;
  coderCopy = coder;
  [coderCopy encodeObject:quantityRange forKey:@"quantityRange"];
  [coderCopy encodeInteger:self->_count forKey:@"count"];
}

@end
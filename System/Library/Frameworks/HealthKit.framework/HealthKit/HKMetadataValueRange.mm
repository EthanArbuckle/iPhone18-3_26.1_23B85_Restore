@interface HKMetadataValueRange
- (BOOL)isEqual:(id)equal;
- (HKMetadataValueRange)initWithMinValue:(id)value maxValue:(id)maxValue;
@end

@implementation HKMetadataValueRange

- (HKMetadataValueRange)initWithMinValue:(id)value maxValue:(id)maxValue
{
  valueCopy = value;
  maxValueCopy = maxValue;
  v12.receiver = self;
  v12.super_class = HKMetadataValueRange;
  v9 = [(HKMetadataValueRange *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_minValue, value);
    objc_storeStrong(&v10->_maxValue, maxValue);
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else if ([(HKMetadataValueRange *)equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
    minValue = self->_minValue;
    minValue = [(HKMetadataValueRange *)v5 minValue];
    if ([minValue isEqual:minValue])
    {
      maxValue = self->_maxValue;
      maxValue = [(HKMetadataValueRange *)v5 maxValue];
      v10 = [maxValue isEqual:maxValue];
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
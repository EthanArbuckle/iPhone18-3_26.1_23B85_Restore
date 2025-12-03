@interface APSTimestamp
- (APSTimestamp)initWithValue:(id)value;
@end

@implementation APSTimestamp

- (APSTimestamp)initWithValue:(id)value
{
  valueCopy = value;
  v11.receiver = self;
  v11.super_class = APSTimestamp;
  v5 = [(APSTimestamp *)&v11 init];
  if (v5)
  {
    v6 = [valueCopy copy];
    value = v5->_value;
    v5->_value = v6;

    v8 = objc_alloc_init(NSDate);
    date = v5->_date;
    v5->_date = v8;
  }

  return v5;
}

@end
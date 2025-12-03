@interface HKWorkoutBuilderQuantity
- (HKWorkoutBuilderQuantity)initWithCoder:(id)coder;
- (HKWorkoutBuilderQuantity)initWithQuantity:(id)quantity dateInterval:(id)interval;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKWorkoutBuilderQuantity

- (HKWorkoutBuilderQuantity)initWithQuantity:(id)quantity dateInterval:(id)interval
{
  quantityCopy = quantity;
  intervalCopy = interval;
  v14.receiver = self;
  v14.super_class = HKWorkoutBuilderQuantity;
  v8 = [(HKWorkoutBuilderQuantity *)&v14 init];
  if (v8)
  {
    v9 = [quantityCopy copy];
    quantity = v8->_quantity;
    v8->_quantity = v9;

    v11 = [intervalCopy copy];
    dateInterval = v8->_dateInterval;
    v8->_dateInterval = v11;
  }

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  quantity = self->_quantity;
  coderCopy = coder;
  [coderCopy encodeObject:quantity forKey:@"quantity"];
  [coderCopy encodeObject:self->_dateInterval forKey:@"date_interval"];
}

- (HKWorkoutBuilderQuantity)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"quantity"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"date_interval"];

  v7 = [(HKWorkoutBuilderQuantity *)self initWithQuantity:v5 dateInterval:v6];
  return v7;
}

@end
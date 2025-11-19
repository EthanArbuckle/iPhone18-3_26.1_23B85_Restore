@interface HKWorkoutBuilderQuantity
- (HKWorkoutBuilderQuantity)initWithCoder:(id)a3;
- (HKWorkoutBuilderQuantity)initWithQuantity:(id)a3 dateInterval:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKWorkoutBuilderQuantity

- (HKWorkoutBuilderQuantity)initWithQuantity:(id)a3 dateInterval:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = HKWorkoutBuilderQuantity;
  v8 = [(HKWorkoutBuilderQuantity *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    quantity = v8->_quantity;
    v8->_quantity = v9;

    v11 = [v7 copy];
    dateInterval = v8->_dateInterval;
    v8->_dateInterval = v11;
  }

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  quantity = self->_quantity;
  v5 = a3;
  [v5 encodeObject:quantity forKey:@"quantity"];
  [v5 encodeObject:self->_dateInterval forKey:@"date_interval"];
}

- (HKWorkoutBuilderQuantity)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"quantity"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"date_interval"];

  v7 = [(HKWorkoutBuilderQuantity *)self initWithQuantity:v5 dateInterval:v6];
  return v7;
}

@end
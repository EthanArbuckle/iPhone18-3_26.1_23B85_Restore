@interface HKWorkoutTrainingLoad
- (HKWorkoutTrainingLoad)initWithCoder:(id)a3;
- (HKWorkoutTrainingLoad)initWithQuantity:(id)a3 dateInterval:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKWorkoutTrainingLoad

- (HKWorkoutTrainingLoad)initWithQuantity:(id)a3 dateInterval:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = HKWorkoutTrainingLoad;
  v8 = [(HKWorkoutTrainingLoad *)&v14 init];
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
  [v5 encodeObject:self->_dateInterval forKey:@"dateInterval"];
  [v5 encodeInteger:self->_workoutsCount forKey:@"workoutsCount"];
}

- (HKWorkoutTrainingLoad)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"quantity"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dateInterval"];
  v7 = [v4 decodeIntegerForKey:@"workoutsCount"];

  v8 = [(HKWorkoutTrainingLoad *)self initWithQuantity:v5 dateInterval:v6 count:v7];
  return v8;
}

@end
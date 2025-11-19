@interface HKSeriesBuilderConfiguration
- (HKSeriesBuilderConfiguration)initWithCoder:(id)a3;
- (HKSeriesBuilderConfiguration)initWithDevice:(id)a3 workoutBuilderID:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKSeriesBuilderConfiguration

- (HKSeriesBuilderConfiguration)initWithDevice:(id)a3 workoutBuilderID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = HKSeriesBuilderConfiguration;
  v8 = [(HKSeriesBuilderConfiguration *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    device = v8->_device;
    v8->_device = v9;

    v11 = [v7 copy];
    workoutBuilderID = v8->_workoutBuilderID;
    v8->_workoutBuilderID = v11;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [HKSeriesBuilderConfiguration allocWithZone:a3];
  device = self->_device;
  workoutBuilderID = self->_workoutBuilderID;

  return [(HKSeriesBuilderConfiguration *)v4 initWithDevice:device workoutBuilderID:workoutBuilderID];
}

- (HKSeriesBuilderConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = HKSeriesBuilderConfiguration;
  v5 = [(HKTaskConfiguration *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"device"];
    device = v5->_device;
    v5->_device = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"workoutBuilderID"];
    workoutBuilderID = v5->_workoutBuilderID;
    v5->_workoutBuilderID = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = HKSeriesBuilderConfiguration;
  v4 = a3;
  [(HKTaskConfiguration *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_device forKey:{@"device", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_workoutBuilderID forKey:@"workoutBuilderID"];
}

@end
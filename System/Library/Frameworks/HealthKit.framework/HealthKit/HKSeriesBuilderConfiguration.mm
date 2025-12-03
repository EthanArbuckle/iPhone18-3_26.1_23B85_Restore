@interface HKSeriesBuilderConfiguration
- (HKSeriesBuilderConfiguration)initWithCoder:(id)coder;
- (HKSeriesBuilderConfiguration)initWithDevice:(id)device workoutBuilderID:(id)d;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKSeriesBuilderConfiguration

- (HKSeriesBuilderConfiguration)initWithDevice:(id)device workoutBuilderID:(id)d
{
  deviceCopy = device;
  dCopy = d;
  v14.receiver = self;
  v14.super_class = HKSeriesBuilderConfiguration;
  v8 = [(HKSeriesBuilderConfiguration *)&v14 init];
  if (v8)
  {
    v9 = [deviceCopy copy];
    device = v8->_device;
    v8->_device = v9;

    v11 = [dCopy copy];
    workoutBuilderID = v8->_workoutBuilderID;
    v8->_workoutBuilderID = v11;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HKSeriesBuilderConfiguration allocWithZone:zone];
  device = self->_device;
  workoutBuilderID = self->_workoutBuilderID;

  return [(HKSeriesBuilderConfiguration *)v4 initWithDevice:device workoutBuilderID:workoutBuilderID];
}

- (HKSeriesBuilderConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = HKSeriesBuilderConfiguration;
  v5 = [(HKTaskConfiguration *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"device"];
    device = v5->_device;
    v5->_device = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"workoutBuilderID"];
    workoutBuilderID = v5->_workoutBuilderID;
    v5->_workoutBuilderID = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = HKSeriesBuilderConfiguration;
  coderCopy = coder;
  [(HKTaskConfiguration *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_device forKey:{@"device", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_workoutBuilderID forKey:@"workoutBuilderID"];
}

@end
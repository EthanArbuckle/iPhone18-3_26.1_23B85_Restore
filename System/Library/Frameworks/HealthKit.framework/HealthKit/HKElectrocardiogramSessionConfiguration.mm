@interface HKElectrocardiogramSessionConfiguration
- (HKElectrocardiogramSessionConfiguration)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKElectrocardiogramSessionConfiguration

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setSessionUUID:self->_sessionUUID];
  [v4 setMode:self->_mode];
  [v4 setMaximumDuration:self->_maximumDuration];
  [v4 setWornOnRightArm:self->_wornOnRightArm];
  return v4;
}

- (HKElectrocardiogramSessionConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = HKElectrocardiogramSessionConfiguration;
  v5 = [(HKElectrocardiogramSessionConfiguration *)&v10 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sessionUUID"];
    sessionUUID = v5->_sessionUUID;
    v5->_sessionUUID = v6;

    v5->_mode = [v4 decodeIntegerForKey:@"mode"];
    [v4 decodeDoubleForKey:@"maximumDuration"];
    v5->_maximumDuration = v8;
    v5->_wornOnRightArm = [v4 decodeBoolForKey:@"wornOnRightArm"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  sessionUUID = self->_sessionUUID;
  v5 = a3;
  [v5 encodeObject:sessionUUID forKey:@"sessionUUID"];
  [v5 encodeInteger:self->_mode forKey:@"mode"];
  [v5 encodeDouble:@"maximumDuration" forKey:self->_maximumDuration];
  [v5 encodeBool:self->_wornOnRightArm forKey:@"wornOnRightArm"];
}

@end
@interface HKElectrocardiogramSessionConfiguration
- (HKElectrocardiogramSessionConfiguration)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKElectrocardiogramSessionConfiguration

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setSessionUUID:self->_sessionUUID];
  [v4 setMode:self->_mode];
  [v4 setMaximumDuration:self->_maximumDuration];
  [v4 setWornOnRightArm:self->_wornOnRightArm];
  return v4;
}

- (HKElectrocardiogramSessionConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = HKElectrocardiogramSessionConfiguration;
  v5 = [(HKElectrocardiogramSessionConfiguration *)&v10 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sessionUUID"];
    sessionUUID = v5->_sessionUUID;
    v5->_sessionUUID = v6;

    v5->_mode = [coderCopy decodeIntegerForKey:@"mode"];
    [coderCopy decodeDoubleForKey:@"maximumDuration"];
    v5->_maximumDuration = v8;
    v5->_wornOnRightArm = [coderCopy decodeBoolForKey:@"wornOnRightArm"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  sessionUUID = self->_sessionUUID;
  coderCopy = coder;
  [coderCopy encodeObject:sessionUUID forKey:@"sessionUUID"];
  [coderCopy encodeInteger:self->_mode forKey:@"mode"];
  [coderCopy encodeDouble:@"maximumDuration" forKey:self->_maximumDuration];
  [coderCopy encodeBool:self->_wornOnRightArm forKey:@"wornOnRightArm"];
}

@end
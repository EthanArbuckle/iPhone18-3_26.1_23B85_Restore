@interface AKMDMInformation
- (AKMDMInformation)initWithDeviceManagedState:(unint64_t)state organizationToken:(id)token;
@end

@implementation AKMDMInformation

- (AKMDMInformation)initWithDeviceManagedState:(unint64_t)state organizationToken:(id)token
{
  selfCopy = self;
  v14 = a2;
  stateCopy = state;
  location = 0;
  objc_storeStrong(&location, token);
  v4 = selfCopy;
  selfCopy = 0;
  v11.receiver = v4;
  v11.super_class = AKMDMInformation;
  v10 = [(AKMDMInformation *)&v11 init];
  selfCopy = v10;
  objc_storeStrong(&selfCopy, v10);
  if (v10)
  {
    v9 = [NSNumber numberWithUnsignedInteger:stateCopy];
    stringValue = [(NSNumber *)v9 stringValue];
    deviceManagedState = selfCopy->_deviceManagedState;
    selfCopy->_deviceManagedState = stringValue;
    _objc_release(deviceManagedState);
    _objc_release(v9);
    objc_storeStrong(&selfCopy->_organizationToken, location);
  }

  v8 = _objc_retain(selfCopy);
  objc_storeStrong(&location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v8;
}

@end
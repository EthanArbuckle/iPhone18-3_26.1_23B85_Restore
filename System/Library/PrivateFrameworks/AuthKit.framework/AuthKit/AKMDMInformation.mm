@interface AKMDMInformation
- (AKMDMInformation)initWithDeviceManagedState:(unint64_t)a3 organizationToken:(id)a4;
@end

@implementation AKMDMInformation

- (AKMDMInformation)initWithDeviceManagedState:(unint64_t)a3 organizationToken:(id)a4
{
  v15 = self;
  v14 = a2;
  v13 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v4 = v15;
  v15 = 0;
  v11.receiver = v4;
  v11.super_class = AKMDMInformation;
  v10 = [(AKMDMInformation *)&v11 init];
  v15 = v10;
  objc_storeStrong(&v15, v10);
  if (v10)
  {
    v9 = [NSNumber numberWithUnsignedInteger:v13];
    v5 = [(NSNumber *)v9 stringValue];
    deviceManagedState = v15->_deviceManagedState;
    v15->_deviceManagedState = v5;
    _objc_release(deviceManagedState);
    _objc_release(v9);
    objc_storeStrong(&v15->_organizationToken, location);
  }

  v8 = _objc_retain(v15);
  objc_storeStrong(&location, 0);
  objc_storeStrong(&v15, 0);
  return v8;
}

@end
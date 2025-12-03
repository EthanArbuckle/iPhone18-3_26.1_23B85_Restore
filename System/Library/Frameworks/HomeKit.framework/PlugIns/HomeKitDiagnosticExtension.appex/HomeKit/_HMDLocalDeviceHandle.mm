@interface _HMDLocalDeviceHandle
+ (BOOL)isValidDestination:(id)destination;
- (BOOL)isEqual:(id)equal;
- (_HMDLocalDeviceHandle)initWithCoder:(id)coder;
- (_HMDLocalDeviceHandle)initWithDestination:(id)destination;
- (_HMDLocalDeviceHandle)initWithDeviceIdentifier:(id)identifier;
- (id)description;
- (id)destination;
- (id)privateDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _HMDLocalDeviceHandle

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = _HMDLocalDeviceHandle;
  coderCopy = coder;
  [(_HMDDeviceHandle *)&v6 encodeWithCoder:coderCopy];
  v5 = [(_HMDLocalDeviceHandle *)self deviceIdentifier:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"HM.deviceID"];
}

- (_HMDLocalDeviceHandle)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = _HMDLocalDeviceHandle;
  v5 = [(_HMDDeviceHandle *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.deviceID"];
    deviceIdentifier = v5->_deviceIdentifier;
    v5->_deviceIdentifier = v6;
  }

  return v5;
}

- (id)destination
{
  deviceIdentifier = [(_HMDLocalDeviceHandle *)self deviceIdentifier];
  uUIDString = [deviceIdentifier UUIDString];
  v4 = [@"device:" stringByAppendingString:uUIDString];

  return v4;
}

- (id)privateDescription
{
  v3 = +[HMFPrivateObjectFormatter defaultFormatter];
  v4 = [(_HMDLocalDeviceHandle *)self description];
  v5 = [v3 privateStringForObjectValue:v4];

  return v5;
}

- (id)description
{
  deviceIdentifier = [(_HMDLocalDeviceHandle *)self deviceIdentifier];
  uUIDString = [deviceIdentifier UUIDString];

  return uUIDString;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (v6)
    {
      deviceIdentifier = [(_HMDLocalDeviceHandle *)self deviceIdentifier];
      deviceIdentifier2 = [(_HMDLocalDeviceHandle *)v6 deviceIdentifier];
      v9 = [deviceIdentifier hmf_isEqualToUUID:deviceIdentifier2];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (unint64_t)hash
{
  deviceIdentifier = [(_HMDLocalDeviceHandle *)self deviceIdentifier];
  v3 = [deviceIdentifier hash];

  return v3;
}

- (_HMDLocalDeviceHandle)initWithDestination:(id)destination
{
  destinationCopy = destination;
  v5 = destinationCopy;
  if (destinationCopy)
  {
    v25 = 0;
    v6 = sub_100006D90(destinationCopy, &v25);
    v7 = v25;
    if (v6)
    {
      v8 = [NSUUID alloc];
      v9 = +[_HMDDeviceHandle identifierNamespace];
      v10 = [v5 dataUsingEncoding:4];
      v11 = [v8 initWithNamespace:v9 data:v10];

      v24.receiver = self;
      v24.super_class = _HMDLocalDeviceHandle;
      v12 = [(_HMDDeviceHandle *)&v24 initWithIdentifier:v11];
      if (v12)
      {
        v13 = [v6 copy];
        deviceIdentifier = v12->_deviceIdentifier;
        v12->_deviceIdentifier = v13;
      }

      selfCopy2 = v12;

      v16 = selfCopy2;
    }

    else
    {
      v20 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = HMFGetLogIdentifier();
        *buf = 138543874;
        v27 = v22;
        v28 = 2112;
        v29 = v5;
        v30 = 2112;
        v31 = v7;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to parse destination, %@, with error: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v20);
      v16 = 0;
    }
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543362;
      v27 = v19;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%{public}@Missing destination parameter", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v17);
    v16 = 0;
  }

  return v16;
}

- (_HMDLocalDeviceHandle)initWithDeviceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = identifierCopy;
  if (identifierCopy)
  {
    uUIDString = [identifierCopy UUIDString];
    v7 = [@"device:" stringByAppendingString:uUIDString];

    selfCopy = [(_HMDLocalDeviceHandle *)self initWithDestination:v7];
    v9 = selfCopy;
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%{public}@Missing device identifier parameter", &v14, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    v9 = 0;
  }

  return v9;
}

+ (BOOL)isValidDestination:(id)destination
{
  v3 = sub_100006D90(destination, 0);
  v4 = v3 != 0;

  return v4;
}

@end
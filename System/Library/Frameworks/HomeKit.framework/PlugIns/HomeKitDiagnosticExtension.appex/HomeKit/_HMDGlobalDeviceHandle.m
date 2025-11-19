@interface _HMDGlobalDeviceHandle
- (BOOL)isEqual:(id)a3;
- (_HMDGlobalDeviceHandle)initWithCoder:(id)a3;
- (_HMDGlobalDeviceHandle)initWithDestination:(id)a3;
- (_HMDGlobalDeviceHandle)initWithPushToken:(id)a3 accountHandle:(id)a4;
- (id)description;
- (id)destination;
- (id)privateDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _HMDGlobalDeviceHandle

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = _HMDGlobalDeviceHandle;
  v4 = a3;
  [(_HMDDeviceHandle *)&v7 encodeWithCoder:v4];
  v5 = [(_HMDGlobalDeviceHandle *)self pushToken:v7.receiver];
  [v4 encodeObject:v5 forKey:@"HM.token"];

  v6 = [(_HMDGlobalDeviceHandle *)self accountHandle];
  [v4 encodeObject:v6 forKey:@"HM.account"];
}

- (_HMDGlobalDeviceHandle)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.token"];
  if (v5)
  {
    v16.receiver = self;
    v16.super_class = _HMDGlobalDeviceHandle;
    v6 = [(_HMDDeviceHandle *)&v16 initWithCoder:v4];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_pushToken, v5);
      v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.account"];
      accountHandle = v7->_accountHandle;
      v7->_accountHandle = v8;
    }

    v10 = v7;
    v11 = v10;
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v10 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543618;
      v18 = v14;
      v19 = 2112;
      v20 = @"HM.token";
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%{public}@Missing required object for key '%@'", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    v11 = 0;
  }

  return v11;
}

- (id)destination
{
  v3 = [(_HMDGlobalDeviceHandle *)self pushToken];
  v4 = [(_HMDGlobalDeviceHandle *)self accountHandle];
  v5 = [v4 URI];
  v6 = [v5 prefixedURI];
  v7 = IDSCopyIDForTokenWithID();

  return v7;
}

- (id)privateDescription
{
  v3 = +[HMFPrivateObjectFormatter defaultFormatter];
  v4 = [(_HMDGlobalDeviceHandle *)self description];
  v5 = [v3 privateStringForObjectValue:v4];

  return v5;
}

- (id)description
{
  v2 = [(_HMDGlobalDeviceHandle *)self pushToken];
  v3 = [v2 hmf_hexadecimalStringWithOptions:0];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (v6)
    {
      v7 = [(_HMDGlobalDeviceHandle *)self pushToken];
      v8 = [(_HMDGlobalDeviceHandle *)v6 pushToken];
      v9 = [v7 isEqualToData:v8];
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
  v2 = [(_HMDGlobalDeviceHandle *)self pushToken];
  v3 = [v2 hash];

  return v3;
}

- (_HMDGlobalDeviceHandle)initWithDestination:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v28 = 0;
    v29 = 0;
    v26 = 0;
    v27 = 0;
    v6 = sub_10000633C(v4, &v29, &v28, &v27, &v26);
    v7 = v29;
    v8 = v28;
    v9 = v27;
    v10 = v26;
    if (v6)
    {
      v25.receiver = self;
      v25.super_class = _HMDGlobalDeviceHandle;
      v11 = [(_HMDDeviceHandle *)&v25 initWithIdentifier:v7];
      if (v11)
      {
        v12 = [v8 copy];
        pushToken = v11->_pushToken;
        v11->_pushToken = v12;

        v14 = [v9 copy];
        accountHandle = v11->_accountHandle;
        v11->_accountHandle = v14;
      }

      v16 = v11;
      v17 = v16;
    }

    else
    {
      v21 = objc_autoreleasePoolPush();
      v16 = self;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = HMFGetLogIdentifier();
        *buf = 138543874;
        v31 = v23;
        v32 = 2112;
        v33 = v5;
        v34 = 2112;
        v35 = v10;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to parse destination, %@, with error: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v21);
      v17 = 0;
    }
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    v16 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543362;
      v31 = v20;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%{public}@Missing destination parameter", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v18);
    v17 = 0;
  }

  return v17;
}

- (_HMDGlobalDeviceHandle)initWithPushToken:(id)a3 accountHandle:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    v9 = [v7 URI];
    v10 = [v9 prefixedURI];
    v11 = IDSCopyIDForTokenWithID();

    v12 = [(_HMDGlobalDeviceHandle *)self initWithDestination:v11];
    v13 = v12;
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    v12 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      v18 = 138543362;
      v19 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%{public}@Missing push token parameter", &v18, 0xCu);
    }

    objc_autoreleasePoolPop(v14);
    v13 = 0;
  }

  return v13;
}

@end
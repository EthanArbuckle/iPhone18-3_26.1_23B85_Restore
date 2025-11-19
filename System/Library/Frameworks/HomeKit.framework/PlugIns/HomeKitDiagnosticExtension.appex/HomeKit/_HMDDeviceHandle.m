@interface _HMDDeviceHandle
+ (BOOL)isValidDestination:(id)a3;
+ (NSUUID)identifierNamespace;
- (NSString)destination;
- (_HMDDeviceHandle)init;
- (_HMDDeviceHandle)initWithCoder:(id)a3;
- (_HMDDeviceHandle)initWithDestination:(id)a3;
- (_HMDDeviceHandle)initWithIdentifier:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _HMDDeviceHandle

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(_HMDDeviceHandle *)self identifier];
  [v4 encodeObject:v5 forKey:@"HM.identifier"];
}

- (_HMDDeviceHandle)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.identifier"];

  v6 = [(_HMDDeviceHandle *)self initWithIdentifier:v5];
  return v6;
}

- (_HMDDeviceHandle)initWithIdentifier:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v14.receiver = self;
    v14.super_class = _HMDDeviceHandle;
    v5 = [(_HMDDeviceHandle *)&v14 init];
    if (v5)
    {
      v6 = [v4 copy];
      identifier = v5->_identifier;
      v5->_identifier = v6;
    }

    v8 = v5;
    v9 = v8;
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v8 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543362;
      v16 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%{public}@Missing required parameter 'identifier'", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    v9 = 0;
  }

  return v9;
}

- (_HMDDeviceHandle)initWithDestination:(id)a3
{
  v4 = a3;
  NSStringFromSelector(a2);
  objc_claimAutoreleasedReturnValue();
  v5 = _HMFPreconditionFailureWithFormat();
  [(_HMDDeviceHandle *)v5 destination];
}

- (NSString)destination
{
  v2 = NSStringFromSelector(a2);
  v3 = [NSString stringWithFormat:@"You must override %@ in a subclass", v2];
  v4 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v3 userInfo:0];
  v5 = v4;

  objc_exception_throw(v4);
}

- (_HMDDeviceHandle)init
{
  v2 = NSStringFromSelector(a2);
  v3 = [NSString stringWithFormat:@"%@ is unavailable", v2];
  v4 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v3 userInfo:0];
  v5 = v4;

  objc_exception_throw(v4);
}

+ (NSUUID)identifierNamespace
{
  if (qword_10003B180 != -1)
  {
    dispatch_once(&qword_10003B180, &stru_1000308F0);
  }

  v3 = qword_10003B178;

  return v3;
}

+ (BOOL)isValidDestination:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(a2);
  v6 = [NSString stringWithFormat:@"You must override %@ in a subclass", v5];
  v7 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

@end
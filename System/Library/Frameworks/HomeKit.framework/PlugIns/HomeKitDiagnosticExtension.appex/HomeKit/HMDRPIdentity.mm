@interface HMDRPIdentity
+ (id)identityWithRPIdentity:(id)a3;
+ (id)logCategory;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToRPIdentity:(id)a3;
- (HMDRPIdentity)init;
- (HMDRPIdentity)initWithCoder:(id)a3;
- (HMDRPIdentity)initWithDeviceIRK:(id)a3;
- (id)logIdentifier;
- (id)shortDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMDRPIdentity

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMDRPIdentity *)self deviceIRK];
  [v4 encodeObject:v5 forKey:HMDeviceRPDeviceIRKCodingKey];
}

- (HMDRPIdentity)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:HMDeviceRPDeviceIRKCodingKey];

  v6 = [(HMDRPIdentity *)self initWithDeviceIRK:v5];
  return v6;
}

- (id)logIdentifier
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (BOOL)isEqualToRPIdentity:(id)a3
{
  v4 = a3;
  v5 = [(HMDRPIdentity *)self deviceIRK];
  v6 = [v4 deviceIRKData];

  LOBYTE(v4) = [v5 isEqualToData:v6];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v10 = 1;
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
    v7 = v6;
    if (v6)
    {
      v8 = [(HMDRPIdentity *)v6 deviceIRK];
      v9 = [(HMDRPIdentity *)self deviceIRK];
      v10 = HMFEqualObjects();
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (unint64_t)hash
{
  v2 = [(HMDRPIdentity *)self deviceIRK];
  v3 = [v2 hash];

  return v3;
}

- (id)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (HMDRPIdentity)initWithDeviceIRK:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v10.receiver = self;
    v10.super_class = HMDRPIdentity;
    v5 = [(HMDRPIdentity *)&v10 init];
    if (v5)
    {
      v6 = [v4 copy];
      deviceIRK = v5->_deviceIRK;
      v5->_deviceIRK = v6;
    }

    self = v5;
    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (HMDRPIdentity)init
{
  v2 = NSStringFromSelector(a2);
  v3 = [NSString stringWithFormat:@"%@ is unavailable", v2];
  v4 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v3 userInfo:0];
  v5 = v4;

  objc_exception_throw(v4);
}

+ (id)logCategory
{
  if (qword_10003B1B8 != -1)
  {
    dispatch_once(&qword_10003B1B8, &stru_100030A98);
  }

  v3 = qword_10003B1C0;

  return v3;
}

+ (id)identityWithRPIdentity:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = [HMFKey alloc];
    v5 = HMFKeyTypeIRK;
    v6 = HMFKeySizeIRK128;
    v7 = [v3 deviceIRKData];

    v8 = [v4 initWithType:v5 size:v6 data:v7];
    v9 = [objc_alloc(objc_opt_class()) initWithDeviceIRK:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end
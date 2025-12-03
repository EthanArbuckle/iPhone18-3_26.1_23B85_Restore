@interface HMDRPIdentity
+ (id)identityWithRPIdentity:(id)identity;
+ (id)logCategory;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToRPIdentity:(id)identity;
- (HMDRPIdentity)init;
- (HMDRPIdentity)initWithCoder:(id)coder;
- (HMDRPIdentity)initWithDeviceIRK:(id)k;
- (id)logIdentifier;
- (id)shortDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMDRPIdentity

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  deviceIRK = [(HMDRPIdentity *)self deviceIRK];
  [coderCopy encodeObject:deviceIRK forKey:HMDeviceRPDeviceIRKCodingKey];
}

- (HMDRPIdentity)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:HMDeviceRPDeviceIRKCodingKey];

  v6 = [(HMDRPIdentity *)self initWithDeviceIRK:v5];
  return v6;
}

- (id)logIdentifier
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (BOOL)isEqualToRPIdentity:(id)identity
{
  identityCopy = identity;
  deviceIRK = [(HMDRPIdentity *)self deviceIRK];
  deviceIRKData = [identityCopy deviceIRKData];

  LOBYTE(identityCopy) = [deviceIRK isEqualToData:deviceIRKData];
  return identityCopy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v10 = 1;
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
    v7 = v6;
    if (v6)
    {
      deviceIRK = [(HMDRPIdentity *)v6 deviceIRK];
      deviceIRK2 = [(HMDRPIdentity *)self deviceIRK];
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
  deviceIRK = [(HMDRPIdentity *)self deviceIRK];
  v3 = [deviceIRK hash];

  return v3;
}

- (id)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (HMDRPIdentity)initWithDeviceIRK:(id)k
{
  kCopy = k;
  if (kCopy)
  {
    v10.receiver = self;
    v10.super_class = HMDRPIdentity;
    v5 = [(HMDRPIdentity *)&v10 init];
    if (v5)
    {
      v6 = [kCopy copy];
      deviceIRK = v5->_deviceIRK;
      v5->_deviceIRK = v6;
    }

    self = v5;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
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

+ (id)identityWithRPIdentity:(id)identity
{
  if (identity)
  {
    identityCopy = identity;
    v4 = [HMFKey alloc];
    v5 = HMFKeyTypeIRK;
    v6 = HMFKeySizeIRK128;
    deviceIRKData = [identityCopy deviceIRKData];

    v8 = [v4 initWithType:v5 size:v6 data:deviceIRKData];
    v9 = [objc_alloc(objc_opt_class()) initWithDeviceIRK:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end
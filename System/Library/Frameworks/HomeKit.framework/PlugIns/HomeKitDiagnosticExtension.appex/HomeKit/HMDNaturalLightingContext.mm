@interface HMDNaturalLightingContext
+ (id)logCategory;
- (BOOL)isEqual:(id)equal;
- (HMDNaturalLightingContext)initWithCoder:(id)coder;
- (HMDNaturalLightingContext)initWithCurve:(id)curve timeZone:(id)zone;
- (id)attributeDescriptions;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMDNaturalLightingContext

- (id)attributeDescriptions
{
  v3 = [HMFAttributeDescription alloc];
  curve = [(HMDNaturalLightingContext *)self curve];
  v5 = [v3 initWithName:@"Curve" value:curve];
  v11[0] = v5;
  v6 = [HMFAttributeDescription alloc];
  timeZone = [(HMDNaturalLightingContext *)self timeZone];
  v8 = [v6 initWithName:@"Time Zone" value:timeZone];
  v11[1] = v8;
  v9 = [NSArray arrayWithObjects:v11 count:2];

  return v9;
}

- (unint64_t)hash
{
  curve = [(HMDNaturalLightingContext *)self curve];
  v4 = [curve hash];

  timeZone = [(HMDNaturalLightingContext *)self timeZone];
  v6 = [timeZone hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
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
    curve = [v6 curve];
    curve2 = [(HMDNaturalLightingContext *)self curve];
    if ([curve isEqual:curve2])
    {
      timeZone = [v7 timeZone];
      timeZone2 = [v7 timeZone];
      v12 = [timeZone isEqual:timeZone2];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  curve = [(HMDNaturalLightingContext *)self curve];
  [coderCopy encodeObject:curve forKey:@"HHNLC.cck"];

  timeZone = [(HMDNaturalLightingContext *)self timeZone];
  [coderCopy encodeObject:timeZone forKey:@"HHNLC.tzk"];
}

- (HMDNaturalLightingContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HHNLC.cck"];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HHNLC.tzk"];
    if (v6)
    {
      selfCopy2 = [(HMDNaturalLightingContext *)self initWithCurve:v5 timeZone:v6];
      v8 = selfCopy2;
    }

    else
    {
      v12 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = HMFGetLogIdentifier();
        v16 = 138543362;
        v17 = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode time zone", &v16, 0xCu);
      }

      objc_autoreleasePoolPop(v12);
      v8 = 0;
    }
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode curve", &v16, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    v8 = 0;
  }

  return v8;
}

- (HMDNaturalLightingContext)initWithCurve:(id)curve timeZone:(id)zone
{
  curveCopy = curve;
  zoneCopy = zone;
  v14.receiver = self;
  v14.super_class = HMDNaturalLightingContext;
  v8 = [(HMDNaturalLightingContext *)&v14 init];
  if (v8)
  {
    v9 = [curveCopy copy];
    curve = v8->_curve;
    v8->_curve = v9;

    v11 = [zoneCopy copy];
    timeZone = v8->_timeZone;
    v8->_timeZone = v11;
  }

  return v8;
}

+ (id)logCategory
{
  if (qword_10003B268 != -1)
  {
    dispatch_once(&qword_10003B268, &stru_100030C18);
  }

  v3 = qword_10003B270;

  return v3;
}

@end
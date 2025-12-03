@interface HMCameraActivityZone
- (BOOL)isEqual:(id)equal;
- (HMCameraActivityZone)initWithCoder:(id)coder;
- (HMCameraActivityZone)initWithPoints:(id)points;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMCameraActivityZone

- (HMCameraActivityZone)initWithCoder:(id)coder
{
  v20 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = [v5 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"HMC.az.ck.p"];

  if (v8 && [v8 count] > 2)
  {
    selfCopy = [(HMCameraActivityZone *)self initWithPoints:v8];
    v13 = selfCopy;
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543618;
      v17 = v12;
      v18 = 2112;
      v19 = v8;
      _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_ERROR, "%{public}@Could not initialize from decoded points:%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    v13 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  points = [(HMCameraActivityZone *)self points];
  [coderCopy encodeObject:points forKey:@"HMC.az.ck.p"];
}

- (unint64_t)hash
{
  points = [(HMCameraActivityZone *)self points];
  v3 = [points hash];

  return v3;
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
  if (v6)
  {
    points = [(HMCameraActivityZone *)self points];
    points2 = [v6 points];
    v9 = [points isEqualToArray:points2];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)description
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@", objc_opt_class()];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  points = [(HMCameraActivityZone *)self points];
  v5 = [points countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(points);
        }

        [v3 appendFormat:@" %@", *(*(&v12 + 1) + 8 * i)];
      }

      v6 = [points countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  [v3 appendString:@">"];
  v9 = [v3 copy];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (HMCameraActivityZone)initWithPoints:(id)points
{
  pointsCopy = points;
  if (pointsCopy && (v5 = pointsCopy, [pointsCopy count] > 2))
  {
    v12.receiver = self;
    v12.super_class = HMCameraActivityZone;
    v6 = [(HMCameraActivityZone *)&v12 init];
    if (v6)
    {
      v7 = [v5 copy];
      points = v6->_points;
      v6->_points = v7;
    }

    return v6;
  }

  else
  {
    v10 = _HMFPreconditionFailure();
    return +[(HMCameraActivityZone *)v10];
  }
}

@end
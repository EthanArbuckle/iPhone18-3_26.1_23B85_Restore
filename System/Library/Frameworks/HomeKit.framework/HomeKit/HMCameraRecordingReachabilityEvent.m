@interface HMCameraRecordingReachabilityEvent
- (BOOL)isEqual:(id)a3;
- (HMCameraRecordingReachabilityEvent)initWithCoder:(id)a3;
- (HMCameraRecordingReachabilityEvent)initWithUniqueIdentifier:(id)a3 dateOfOccurrence:(id)a4 reachable:(BOOL)a5;
- (NSString)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMCameraRecordingReachabilityEvent

- (HMCameraRecordingReachabilityEvent)initWithCoder:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMCRRE.ck.ui"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMCRRE.ck.doo"];
  v7 = [v4 decodeBoolForKey:@"HMCRRE.ck.r"];
  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v9 = objc_autoreleasePoolPush();
    v12 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v16 = 138543874;
      v17 = v11;
      v18 = 2112;
      v19 = v5;
      v20 = 2112;
      v21 = v6;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Could not initialize from decoded identifier: %@ dateOfOccurrence: %@", &v16, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    v13 = 0;
  }

  else
  {
    v12 = [(HMCameraRecordingReachabilityEvent *)self initWithUniqueIdentifier:v5 dateOfOccurrence:v6 reachable:v7];
    v13 = v12;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  v4 = [(HMCameraRecordingReachabilityEvent *)self uniqueIdentifier];
  [v6 encodeObject:v4 forKey:@"HMCRRE.ck.ui"];

  v5 = [(HMCameraRecordingReachabilityEvent *)self dateOfOccurrence];
  [v6 encodeObject:v5 forKey:@"HMCRRE.ck.doo"];

  [v6 encodeBool:-[HMCameraRecordingReachabilityEvent isReachable](self forKey:{"isReachable"), @"HMCRRE.ck.r"}];
}

- (unint64_t)hash
{
  v2 = [(HMCameraRecordingReachabilityEvent *)self uniqueIdentifier];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
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
    v7 = [(HMCameraRecordingReachabilityEvent *)self uniqueIdentifier];
    v8 = [v6 uniqueIdentifier];
    if ([v7 isEqual:v8])
    {
      v9 = [(HMCameraRecordingReachabilityEvent *)self dateOfOccurrence];
      v10 = [v6 dateOfOccurrence];
      if ([v9 isEqualToDate:v10])
      {
        v11 = [(HMCameraRecordingReachabilityEvent *)self isReachable];
        v12 = v11 ^ [v6 isReachable] ^ 1;
      }

      else
      {
        LOBYTE(v12) = 0;
      }
    }

    else
    {
      LOBYTE(v12) = 0;
    }
  }

  else
  {
    LOBYTE(v12) = 0;
  }

  return v12;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@", objc_opt_class()];
  v4 = [(HMCameraRecordingReachabilityEvent *)self uniqueIdentifier];
  [v3 appendFormat:@" uniqueIdentifier: %@", v4];

  v5 = MEMORY[0x1E696AB78];
  v6 = [(HMCameraRecordingReachabilityEvent *)self dateOfOccurrence];
  v7 = [v5 localizedStringFromDate:v6 dateStyle:1 timeStyle:2];
  [v3 appendFormat:@" dateOfOccurrence: %@", v7];

  [(HMCameraRecordingReachabilityEvent *)self isReachable];
  v8 = HMFBooleanToString();
  [v3 appendFormat:@" reachable: %@", v8];

  [v3 appendString:@">"];
  v9 = [v3 copy];

  return v9;
}

- (HMCameraRecordingReachabilityEvent)initWithUniqueIdentifier:(id)a3 dateOfOccurrence:(id)a4 reachable:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  if (!v8)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  v10 = v9;
  if (!v9)
  {
LABEL_7:
    v17 = _HMFPreconditionFailure();
    return +[(HMCameraRecordingReachabilityEvent *)v17];
  }

  v19.receiver = self;
  v19.super_class = HMCameraRecordingReachabilityEvent;
  v11 = [(HMCameraRecordingReachabilityEvent *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    uniqueIdentifier = v11->_uniqueIdentifier;
    v11->_uniqueIdentifier = v12;

    v14 = [v10 copy];
    dateOfOccurrence = v11->_dateOfOccurrence;
    v11->_dateOfOccurrence = v14;

    v11->_reachable = a5;
  }

  return v11;
}

@end
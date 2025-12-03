@interface HMCameraRecordingReachabilityEvent
- (BOOL)isEqual:(id)equal;
- (HMCameraRecordingReachabilityEvent)initWithCoder:(id)coder;
- (HMCameraRecordingReachabilityEvent)initWithUniqueIdentifier:(id)identifier dateOfOccurrence:(id)occurrence reachable:(BOOL)reachable;
- (NSString)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMCameraRecordingReachabilityEvent

- (HMCameraRecordingReachabilityEvent)initWithCoder:(id)coder
{
  v22 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMCRRE.ck.ui"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMCRRE.ck.doo"];
  v7 = [coderCopy decodeBoolForKey:@"HMCRRE.ck.r"];
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
    selfCopy = self;
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
    selfCopy = [(HMCameraRecordingReachabilityEvent *)self initWithUniqueIdentifier:v5 dateOfOccurrence:v6 reachable:v7];
    v13 = selfCopy;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  uniqueIdentifier = [(HMCameraRecordingReachabilityEvent *)self uniqueIdentifier];
  [coderCopy encodeObject:uniqueIdentifier forKey:@"HMCRRE.ck.ui"];

  dateOfOccurrence = [(HMCameraRecordingReachabilityEvent *)self dateOfOccurrence];
  [coderCopy encodeObject:dateOfOccurrence forKey:@"HMCRRE.ck.doo"];

  [coderCopy encodeBool:-[HMCameraRecordingReachabilityEvent isReachable](self forKey:{"isReachable"), @"HMCRRE.ck.r"}];
}

- (unint64_t)hash
{
  uniqueIdentifier = [(HMCameraRecordingReachabilityEvent *)self uniqueIdentifier];
  v3 = [uniqueIdentifier hash];

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
    uniqueIdentifier = [(HMCameraRecordingReachabilityEvent *)self uniqueIdentifier];
    uniqueIdentifier2 = [v6 uniqueIdentifier];
    if ([uniqueIdentifier isEqual:uniqueIdentifier2])
    {
      dateOfOccurrence = [(HMCameraRecordingReachabilityEvent *)self dateOfOccurrence];
      dateOfOccurrence2 = [v6 dateOfOccurrence];
      if ([dateOfOccurrence isEqualToDate:dateOfOccurrence2])
      {
        isReachable = [(HMCameraRecordingReachabilityEvent *)self isReachable];
        v12 = isReachable ^ [v6 isReachable] ^ 1;
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
  uniqueIdentifier = [(HMCameraRecordingReachabilityEvent *)self uniqueIdentifier];
  [v3 appendFormat:@" uniqueIdentifier: %@", uniqueIdentifier];

  v5 = MEMORY[0x1E696AB78];
  dateOfOccurrence = [(HMCameraRecordingReachabilityEvent *)self dateOfOccurrence];
  v7 = [v5 localizedStringFromDate:dateOfOccurrence dateStyle:1 timeStyle:2];
  [v3 appendFormat:@" dateOfOccurrence: %@", v7];

  [(HMCameraRecordingReachabilityEvent *)self isReachable];
  v8 = HMFBooleanToString();
  [v3 appendFormat:@" reachable: %@", v8];

  [v3 appendString:@">"];
  v9 = [v3 copy];

  return v9;
}

- (HMCameraRecordingReachabilityEvent)initWithUniqueIdentifier:(id)identifier dateOfOccurrence:(id)occurrence reachable:(BOOL)reachable
{
  identifierCopy = identifier;
  occurrenceCopy = occurrence;
  if (!identifierCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  v10 = occurrenceCopy;
  if (!occurrenceCopy)
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
    v12 = [identifierCopy copy];
    uniqueIdentifier = v11->_uniqueIdentifier;
    v11->_uniqueIdentifier = v12;

    v14 = [v10 copy];
    dateOfOccurrence = v11->_dateOfOccurrence;
    v11->_dateOfOccurrence = v14;

    v11->_reachable = reachable;
  }

  return v11;
}

@end
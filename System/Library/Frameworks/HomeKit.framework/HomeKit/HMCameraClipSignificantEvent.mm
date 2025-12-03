@interface HMCameraClipSignificantEvent
- (BOOL)isEqual:(id)equal;
- (HMCameraClipSignificantEvent)initWithCoder:(id)coder;
- (HMCameraClipSignificantEvent)initWithUniqueIdentifier:(id)identifier reason:(unint64_t)reason dateOfOccurrence:(id)occurrence confidenceLevel:(unint64_t)level cameraProfileUUID:(id)d faceClassification:(id)classification timeOffsetWithinClip:(double)clip clipUUID:(id)self0;
- (HMCameraClipSignificantEvent)initWithUniqueIdentifier:(id)identifier reason:(unint64_t)reason dateOfOccurrence:(id)occurrence confidenceLevel:(unint64_t)level faceClassification:(id)classification timeOffsetWithinClip:(double)clip clipUUID:(id)d;
- (id)attributeDescriptions;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMCameraClipSignificantEvent

- (HMCameraClipSignificantEvent)initWithCoder:(id)coder
{
  v25 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [[HMCameraSignificantEvent alloc] initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cu"];
    if (v6)
    {
      [coderCopy decodeDoubleForKey:@"to"];
      v8 = v7;
      uniqueIdentifier = [(HMCameraSignificantEvent *)v5 uniqueIdentifier];
      reason = [(HMCameraSignificantEvent *)v5 reason];
      dateOfOccurrence = [(HMCameraSignificantEvent *)v5 dateOfOccurrence];
      confidenceLevel = [(HMCameraSignificantEvent *)v5 confidenceLevel];
      cameraProfileUUID = [(HMCameraSignificantEvent *)v5 cameraProfileUUID];
      faceClassification = [(HMCameraSignificantEvent *)v5 faceClassification];
      self = [(HMCameraClipSignificantEvent *)self initWithUniqueIdentifier:uniqueIdentifier reason:reason dateOfOccurrence:dateOfOccurrence confidenceLevel:confidenceLevel cameraProfileUUID:cameraProfileUUID faceClassification:faceClassification timeOffsetWithinClip:v8 clipUUID:v6];

      selfCopy = self;
    }

    else
    {
      v16 = objc_autoreleasePoolPush();
      self = self;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = HMFGetLogIdentifier();
        *buf = 138543618;
        v22 = v18;
        v23 = 2112;
        v24 = 0;
        _os_log_impl(&dword_19BB39000, v17, OS_LOG_TYPE_ERROR, "%{public}@Could not initialize from decoded clipUUID: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v16);
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  v19 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = HMCameraClipSignificantEvent;
  coderCopy = coder;
  [(HMCameraSignificantEvent *)&v6 encodeWithCoder:coderCopy];
  [(HMCameraClipSignificantEvent *)self timeOffsetWithinClip:v6.receiver];
  [coderCopy encodeDouble:@"to" forKey:?];
  clipUUID = [(HMCameraClipSignificantEvent *)self clipUUID];
  [coderCopy encodeObject:clipUUID forKey:@"cu"];
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
  if (v6 && (v14.receiver = self, v14.super_class = HMCameraClipSignificantEvent, -[HMCameraSignificantEvent isEqual:](&v14, sel_isEqual_, v6)) && (-[HMCameraClipSignificantEvent timeOffsetWithinClip](self, "timeOffsetWithinClip"), v8 = v7, [v6 timeOffsetWithinClip], v8 == v9))
  {
    clipUUID = [(HMCameraClipSignificantEvent *)self clipUUID];
    clipUUID2 = [v6 clipUUID];
    v12 = [clipUUID isEqual:clipUUID2];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)attributeDescriptions
{
  v16[2] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69A29C8]);
  v4 = MEMORY[0x1E696AD98];
  [(HMCameraClipSignificantEvent *)self timeOffsetWithinClip];
  v5 = [v4 numberWithDouble:?];
  v6 = [v3 initWithName:@"Time offset within clip" value:v5];
  v16[0] = v6;
  v7 = objc_alloc(MEMORY[0x1E69A29C8]);
  clipUUID = [(HMCameraClipSignificantEvent *)self clipUUID];
  v9 = [v7 initWithName:@"Clip UUID" value:clipUUID];
  v16[1] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];

  v15.receiver = self;
  v15.super_class = HMCameraClipSignificantEvent;
  attributeDescriptions = [(HMCameraSignificantEvent *)&v15 attributeDescriptions];
  v12 = [attributeDescriptions arrayByAddingObjectsFromArray:v10];

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (HMCameraClipSignificantEvent)initWithUniqueIdentifier:(id)identifier reason:(unint64_t)reason dateOfOccurrence:(id)occurrence confidenceLevel:(unint64_t)level faceClassification:(id)classification timeOffsetWithinClip:(double)clip clipUUID:(id)d
{
  v16 = MEMORY[0x1E696AFB0];
  dCopy = d;
  classificationCopy = classification;
  occurrenceCopy = occurrence;
  identifierCopy = identifier;
  uUID = [v16 UUID];
  v22 = [(HMCameraClipSignificantEvent *)self initWithUniqueIdentifier:identifierCopy reason:reason dateOfOccurrence:occurrenceCopy confidenceLevel:level cameraProfileUUID:uUID faceClassification:classificationCopy timeOffsetWithinClip:clip clipUUID:dCopy];

  return v22;
}

- (HMCameraClipSignificantEvent)initWithUniqueIdentifier:(id)identifier reason:(unint64_t)reason dateOfOccurrence:(id)occurrence confidenceLevel:(unint64_t)level cameraProfileUUID:(id)d faceClassification:(id)classification timeOffsetWithinClip:(double)clip clipUUID:(id)self0
{
  identifierCopy = identifier;
  occurrenceCopy = occurrence;
  dCopy = d;
  classificationCopy = classification;
  iDCopy = iD;
  if (iDCopy)
  {
    v22 = iDCopy;
    v28.receiver = self;
    v28.super_class = HMCameraClipSignificantEvent;
    v23 = [(HMCameraSignificantEvent *)&v28 initWithUniqueIdentifier:identifierCopy reason:reason dateOfOccurrence:occurrenceCopy confidenceLevel:level cameraProfileUUID:dCopy faceClassification:classificationCopy];
    v24 = v23;
    if (v23)
    {
      v23->_timeOffsetWithinClip = clip;
      objc_storeStrong(&v23->_clipUUID, iD);
    }

    return v24;
  }

  else
  {
    v26 = _HMFPreconditionFailure();
    return +[(HMCameraClipSignificantEvent *)v26];
  }
}

@end
@interface HMCameraClipSignificantEvent
- (BOOL)isEqual:(id)a3;
- (HMCameraClipSignificantEvent)initWithCoder:(id)a3;
- (HMCameraClipSignificantEvent)initWithUniqueIdentifier:(id)a3 reason:(unint64_t)a4 dateOfOccurrence:(id)a5 confidenceLevel:(unint64_t)a6 cameraProfileUUID:(id)a7 faceClassification:(id)a8 timeOffsetWithinClip:(double)a9 clipUUID:(id)a10;
- (HMCameraClipSignificantEvent)initWithUniqueIdentifier:(id)a3 reason:(unint64_t)a4 dateOfOccurrence:(id)a5 confidenceLevel:(unint64_t)a6 faceClassification:(id)a7 timeOffsetWithinClip:(double)a8 clipUUID:(id)a9;
- (id)attributeDescriptions;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMCameraClipSignificantEvent

- (HMCameraClipSignificantEvent)initWithCoder:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [[HMCameraSignificantEvent alloc] initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cu"];
    if (v6)
    {
      [v4 decodeDoubleForKey:@"to"];
      v8 = v7;
      v9 = [(HMCameraSignificantEvent *)v5 uniqueIdentifier];
      v10 = [(HMCameraSignificantEvent *)v5 reason];
      v11 = [(HMCameraSignificantEvent *)v5 dateOfOccurrence];
      v12 = [(HMCameraSignificantEvent *)v5 confidenceLevel];
      v13 = [(HMCameraSignificantEvent *)v5 cameraProfileUUID];
      v14 = [(HMCameraSignificantEvent *)v5 faceClassification];
      self = [(HMCameraClipSignificantEvent *)self initWithUniqueIdentifier:v9 reason:v10 dateOfOccurrence:v11 confidenceLevel:v12 cameraProfileUUID:v13 faceClassification:v14 timeOffsetWithinClip:v8 clipUUID:v6];

      v15 = self;
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
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v15;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = HMCameraClipSignificantEvent;
  v4 = a3;
  [(HMCameraSignificantEvent *)&v6 encodeWithCoder:v4];
  [(HMCameraClipSignificantEvent *)self timeOffsetWithinClip:v6.receiver];
  [v4 encodeDouble:@"to" forKey:?];
  v5 = [(HMCameraClipSignificantEvent *)self clipUUID];
  [v4 encodeObject:v5 forKey:@"cu"];
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
  if (v6 && (v14.receiver = self, v14.super_class = HMCameraClipSignificantEvent, -[HMCameraSignificantEvent isEqual:](&v14, sel_isEqual_, v6)) && (-[HMCameraClipSignificantEvent timeOffsetWithinClip](self, "timeOffsetWithinClip"), v8 = v7, [v6 timeOffsetWithinClip], v8 == v9))
  {
    v10 = [(HMCameraClipSignificantEvent *)self clipUUID];
    v11 = [v6 clipUUID];
    v12 = [v10 isEqual:v11];
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
  v8 = [(HMCameraClipSignificantEvent *)self clipUUID];
  v9 = [v7 initWithName:@"Clip UUID" value:v8];
  v16[1] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];

  v15.receiver = self;
  v15.super_class = HMCameraClipSignificantEvent;
  v11 = [(HMCameraSignificantEvent *)&v15 attributeDescriptions];
  v12 = [v11 arrayByAddingObjectsFromArray:v10];

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (HMCameraClipSignificantEvent)initWithUniqueIdentifier:(id)a3 reason:(unint64_t)a4 dateOfOccurrence:(id)a5 confidenceLevel:(unint64_t)a6 faceClassification:(id)a7 timeOffsetWithinClip:(double)a8 clipUUID:(id)a9
{
  v16 = MEMORY[0x1E696AFB0];
  v17 = a9;
  v18 = a7;
  v19 = a5;
  v20 = a3;
  v21 = [v16 UUID];
  v22 = [(HMCameraClipSignificantEvent *)self initWithUniqueIdentifier:v20 reason:a4 dateOfOccurrence:v19 confidenceLevel:a6 cameraProfileUUID:v21 faceClassification:v18 timeOffsetWithinClip:a8 clipUUID:v17];

  return v22;
}

- (HMCameraClipSignificantEvent)initWithUniqueIdentifier:(id)a3 reason:(unint64_t)a4 dateOfOccurrence:(id)a5 confidenceLevel:(unint64_t)a6 cameraProfileUUID:(id)a7 faceClassification:(id)a8 timeOffsetWithinClip:(double)a9 clipUUID:(id)a10
{
  v17 = a3;
  v18 = a5;
  v19 = a7;
  v20 = a8;
  v21 = a10;
  if (v21)
  {
    v22 = v21;
    v28.receiver = self;
    v28.super_class = HMCameraClipSignificantEvent;
    v23 = [(HMCameraSignificantEvent *)&v28 initWithUniqueIdentifier:v17 reason:a4 dateOfOccurrence:v18 confidenceLevel:a6 cameraProfileUUID:v19 faceClassification:v20];
    v24 = v23;
    if (v23)
    {
      v23->_timeOffsetWithinClip = a9;
      objc_storeStrong(&v23->_clipUUID, a10);
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
@interface HMCameraSignificantEvent
+ (id)shortDescription;
- (BOOL)isEqual:(id)a3;
- (HMCameraSignificantEvent)initWithCoder:(id)a3;
- (HMCameraSignificantEvent)initWithUniqueIdentifier:(id)a3 reason:(unint64_t)a4 dateOfOccurrence:(id)a5 confidenceLevel:(unint64_t)a6 cameraProfileUUID:(id)a7 faceClassification:(id)a8;
- (HMCameraSignificantEvent)initWithUniqueIdentifier:(id)a3 reason:(unint64_t)a4 dateOfOccurrence:(id)a5 confidenceLevel:(unint64_t)a6 faceClassification:(id)a7;
- (NSArray)attributeDescriptions;
- (NSString)shortDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMCameraSignificantEvent

- (HMCameraSignificantEvent)initWithCoder:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ui"];
  v6 = [v4 decodeIntegerForKey:@"r"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"doc"];
  v8 = [v4 decodeIntegerForKey:@"cl"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cpu"];
  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fc"];
  if (v5 && v7 && v8)
  {
    v11 = [(HMCameraSignificantEvent *)self initWithUniqueIdentifier:v5 reason:v6 dateOfOccurrence:v7 confidenceLevel:v8 cameraProfileUUID:v9 faceClassification:v10];
    v12 = v11;
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v11 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v16 = HMStringFromCameraSignificantEventConfidenceLevel(v8);
      v19 = 138544130;
      v20 = v15;
      v21 = 2112;
      v22 = v5;
      v23 = 2112;
      v24 = v7;
      v25 = 2112;
      v26 = v16;
      _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_ERROR, "%{public}@Could not initialize from decoded uniqueIdentifier: %@ dateOfOccurrence: %@ confidence level: %@", &v19, 0x2Au);
    }

    objc_autoreleasePoolPop(v13);
    v12 = 0;
  }

  v17 = *MEMORY[0x1E69E9840];
  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMCameraSignificantEvent *)self uniqueIdentifier];
  [v4 encodeObject:v5 forKey:@"ui"];

  [v4 encodeInteger:-[HMCameraSignificantEvent reason](self forKey:{"reason"), @"r"}];
  v6 = [(HMCameraSignificantEvent *)self dateOfOccurrence];
  [v4 encodeObject:v6 forKey:@"doc"];

  [v4 encodeInteger:-[HMCameraSignificantEvent confidenceLevel](self forKey:{"confidenceLevel"), @"cl"}];
  v7 = [(HMCameraSignificantEvent *)self cameraProfileUUID];
  [v4 encodeObject:v7 forKey:@"cpu"];

  v8 = [(HMCameraSignificantEvent *)self faceClassification];
  [v4 encodeObject:v8 forKey:@"fc"];
}

- (unint64_t)hash
{
  v2 = [(HMCameraSignificantEvent *)self uniqueIdentifier];
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
    v7 = [(HMCameraSignificantEvent *)self uniqueIdentifier];
    v8 = [v6 uniqueIdentifier];
    if ([v7 isEqual:v8] && (v9 = -[HMCameraSignificantEvent reason](self, "reason"), v9 == objc_msgSend(v6, "reason")))
    {
      v10 = [(HMCameraSignificantEvent *)self dateOfOccurrence];
      v11 = [v6 dateOfOccurrence];
      if ([v10 isEqualToDate:v11] && (v12 = -[HMCameraSignificantEvent confidenceLevel](self, "confidenceLevel"), v12 == objc_msgSend(v6, "confidenceLevel")))
      {
        v13 = [(HMCameraSignificantEvent *)self cameraProfileUUID];
        v14 = [v6 cameraProfileUUID];
        if ([v13 isEqual:v14])
        {
          v18 = [(HMCameraSignificantEvent *)self faceClassification];
          v15 = [v6 faceClassification];
          v16 = HMFEqualObjects();
        }

        else
        {
          v16 = 0;
        }
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (NSArray)attributeDescriptions
{
  v24[6] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69A29C8]);
  v23 = [(HMCameraSignificantEvent *)self uniqueIdentifier];
  v22 = [v3 initWithName:@"ID" value:v23];
  v24[0] = v22;
  v4 = objc_alloc(MEMORY[0x1E69A29C8]);
  v21 = HMStringFromCameraSignificantEventReason([(HMCameraSignificantEvent *)self reason]);
  v5 = [v4 initWithName:@"Reason" value:v21];
  v24[1] = v5;
  v6 = objc_alloc(MEMORY[0x1E69A29C8]);
  v7 = [(HMCameraSignificantEvent *)self dateOfOccurrence];
  v8 = [v6 initWithName:@"Date" value:v7];
  v24[2] = v8;
  v9 = objc_alloc(MEMORY[0x1E69A29C8]);
  v10 = HMStringFromCameraSignificantEventConfidenceLevel([(HMCameraSignificantEvent *)self confidenceLevel]);
  v11 = [v9 initWithName:@"Confidence level" value:v10];
  v24[3] = v11;
  v12 = objc_alloc(MEMORY[0x1E69A29C8]);
  v13 = [(HMCameraSignificantEvent *)self cameraProfileUUID];
  v14 = [v12 initWithName:@"Camera Profile UUID" value:v13];
  v24[4] = v14;
  v15 = objc_alloc(MEMORY[0x1E69A29C8]);
  v16 = [(HMCameraSignificantEvent *)self faceClassification];
  v17 = [v15 initWithName:@"Face Classification" value:v16];
  v24[5] = v17;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:6];

  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

- (NSString)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (HMCameraSignificantEvent)initWithUniqueIdentifier:(id)a3 reason:(unint64_t)a4 dateOfOccurrence:(id)a5 confidenceLevel:(unint64_t)a6 faceClassification:(id)a7
{
  v12 = MEMORY[0x1E696AFB0];
  v13 = a7;
  v14 = a5;
  v15 = a3;
  v16 = [v12 UUID];
  v17 = [(HMCameraSignificantEvent *)self initWithUniqueIdentifier:v15 reason:a4 dateOfOccurrence:v14 confidenceLevel:a6 cameraProfileUUID:v16 faceClassification:v13];

  return v17;
}

- (HMCameraSignificantEvent)initWithUniqueIdentifier:(id)a3 reason:(unint64_t)a4 dateOfOccurrence:(id)a5 confidenceLevel:(unint64_t)a6 cameraProfileUUID:(id)a7 faceClassification:(id)a8
{
  v14 = a3;
  v15 = a5;
  v16 = a7;
  v17 = a8;
  if (!v14)
  {
    _HMFPreconditionFailure();
    goto LABEL_8;
  }

  if (!v15)
  {
LABEL_8:
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  if (!v16)
  {
LABEL_9:
    v22 = _HMFPreconditionFailure();
    return +[(HMCameraSignificantEvent *)v22];
  }

  v18 = v17;
  v25.receiver = self;
  v25.super_class = HMCameraSignificantEvent;
  v19 = [(HMCameraSignificantEvent *)&v25 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_uniqueIdentifier, a3);
    v20->_reason = a4;
    objc_storeStrong(&v20->_dateOfOccurrence, a5);
    v20->_confidenceLevel = a6;
    objc_storeStrong(&v20->_cameraProfileUUID, a7);
    objc_storeStrong(&v20->_faceClassification, a8);
  }

  return v20;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end
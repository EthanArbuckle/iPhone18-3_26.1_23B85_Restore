@interface HMPersonFaceCrop
- (BOOL)isEqual:(id)a3;
- (HMPersonFaceCrop)initWithCoder:(id)a3;
- (HMPersonFaceCrop)initWithUUID:(id)a3 dataRepresentation:(id)a4 dateCreated:(id)a5 faceBoundingBox:(CGRect)a6 personUUID:(id)a7;
- (HMPersonFaceCrop)initWithUUID:(id)a3 dataRepresentation:(id)a4 dateCreated:(id)a5 faceBoundingBox:(CGRect)a6 personUUID:(id)a7 unassociatedFaceCropUUID:(id)a8 source:(int64_t)a9;
- (id)attributeDescriptions;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMPersonFaceCrop

- (id)attributeDescriptions
{
  v17.receiver = self;
  v17.super_class = HMPersonFaceCrop;
  v3 = [(HMFaceCrop *)&v17 attributeDescriptions];
  v4 = [v3 mutableCopy];

  v5 = objc_alloc(MEMORY[0x1E69A29C8]);
  v6 = [(HMPersonFaceCrop *)self personUUID];
  v7 = [v5 initWithName:@"Person UUID" value:v6];
  [v4 addObject:v7];

  v8 = objc_alloc(MEMORY[0x1E69A29C8]);
  v9 = HMStringFromPersonFaceCropSource([(HMPersonFaceCrop *)self source]);
  v10 = [v8 initWithName:@"Source" value:v9];
  [v4 addObject:v10];

  v11 = [(HMPersonFaceCrop *)self unassociatedFaceCropUUID];

  if (v11)
  {
    v12 = objc_alloc(MEMORY[0x1E69A29C8]);
    v13 = [(HMPersonFaceCrop *)self unassociatedFaceCropUUID];
    v14 = [v12 initWithName:@"Unassociated Face Crop UUID" value:v13];
    [v4 addObject:v14];
  }

  v15 = [v4 copy];

  return v15;
}

- (HMPersonFaceCrop)initWithCoder:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [[HMFaceCrop alloc] initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMPFC.ck.pu"];
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMPFC.ck.ufcu"];
    v8 = [v4 decodeIntegerForKey:@"HMPFC.ck.s"];
    if (v6)
    {
      v9 = v8;
      v10 = [(HMFaceCrop *)v5 UUID];
      v11 = [(HMFaceCrop *)v5 dataRepresentation];
      v12 = [(HMFaceCrop *)v5 dateCreated];
      [(HMFaceCrop *)v5 faceBoundingBox];
      self = [(HMPersonFaceCrop *)self initWithUUID:v10 dataRepresentation:v11 dateCreated:v12 faceBoundingBox:v6 personUUID:?];

      [(HMPersonFaceCrop *)self setUnassociatedFaceCropUUID:v7];
      [(HMPersonFaceCrop *)self setSource:v9];
      v13 = self;
    }

    else
    {
      v14 = objc_autoreleasePoolPush();
      self = self;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = HMFGetLogIdentifier();
        v19 = 138543618;
        v20 = v16;
        v21 = 2112;
        v22 = 0;
        _os_log_impl(&dword_19BB39000, v15, OS_LOG_TYPE_ERROR, "%{public}@Could not initialize from decoded personUUID: %@", &v19, 0x16u);
      }

      objc_autoreleasePoolPop(v14);
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  v17 = *MEMORY[0x1E69E9840];
  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = HMPersonFaceCrop;
  v4 = a3;
  [(HMFaceCrop *)&v7 encodeWithCoder:v4];
  v5 = [(HMPersonFaceCrop *)self personUUID:v7.receiver];
  [v4 encodeObject:v5 forKey:@"HMPFC.ck.pu"];

  v6 = [(HMPersonFaceCrop *)self unassociatedFaceCropUUID];
  [v4 encodeObject:v6 forKey:@"HMPFC.ck.ufcu"];

  [v4 encodeInteger:-[HMPersonFaceCrop source](self forKey:{"source"), @"HMPFC.ck.s"}];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [HMMutablePersonFaceCrop allocWithZone:a3];
  v5 = [(HMFaceCrop *)self UUID];
  v6 = [(HMFaceCrop *)self dataRepresentation];
  v7 = [(HMFaceCrop *)self dateCreated];
  [(HMFaceCrop *)self faceBoundingBox];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = [(HMPersonFaceCrop *)self personUUID];
  v17 = [(HMPersonFaceCrop *)v4 initWithUUID:v5 dataRepresentation:v6 dateCreated:v7 faceBoundingBox:v16 personUUID:v9, v11, v13, v15];

  v18 = [(HMPersonFaceCrop *)self unassociatedFaceCropUUID];
  [(HMPersonFaceCrop *)v17 setUnassociatedFaceCropUUID:v18];

  [(HMPersonFaceCrop *)v17 setSource:[(HMPersonFaceCrop *)self source]];
  return v17;
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
  if (v6 && (v15.receiver = self, v15.super_class = HMPersonFaceCrop, [(HMFaceCrop *)&v15 isEqual:v6]))
  {
    v7 = [(HMPersonFaceCrop *)self personUUID];
    v8 = [v6 personUUID];
    if ([v7 isEqual:v8] && (-[HMPersonFaceCrop unassociatedFaceCropUUID](self, "unassociatedFaceCropUUID"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "unassociatedFaceCropUUID"), v10 = objc_claimAutoreleasedReturnValue(), v11 = HMFEqualObjects(), v10, v9, v11))
    {
      v12 = [(HMPersonFaceCrop *)self source];
      v13 = v12 == [v6 source];
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (HMPersonFaceCrop)initWithUUID:(id)a3 dataRepresentation:(id)a4 dateCreated:(id)a5 faceBoundingBox:(CGRect)a6 personUUID:(id)a7 unassociatedFaceCropUUID:(id)a8 source:(int64_t)a9
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v20 = a8;
  v21 = [(HMPersonFaceCrop *)self initWithUUID:a3 dataRepresentation:a4 dateCreated:a5 faceBoundingBox:a7 personUUID:x, y, width, height];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_unassociatedFaceCropUUID, a8);
    v22->_source = a9;
  }

  return v22;
}

- (HMPersonFaceCrop)initWithUUID:(id)a3 dataRepresentation:(id)a4 dateCreated:(id)a5 faceBoundingBox:(CGRect)a6 personUUID:(id)a7
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a7;
  if (!v15)
  {
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  if (!v16)
  {
LABEL_9:
    _HMFPreconditionFailure();
    goto LABEL_10;
  }

  if (!v17)
  {
LABEL_10:
    _HMFPreconditionFailure();
    goto LABEL_11;
  }

  v19 = v18;
  if (!v18)
  {
LABEL_11:
    v24 = _HMFPreconditionFailure();
    [(HMCameraSettingsControl *)v24 .cxx_destruct];
    return result;
  }

  v26.receiver = self;
  v26.super_class = HMPersonFaceCrop;
  v20 = [(HMFaceCrop *)&v26 initWithUUID:v15 dataRepresentation:v16 dateCreated:v17 faceBoundingBox:x, y, width, height];
  if (v20)
  {
    v21 = [v19 copy];
    personUUID = v20->_personUUID;
    v20->_personUUID = v21;
  }

  return v20;
}

@end
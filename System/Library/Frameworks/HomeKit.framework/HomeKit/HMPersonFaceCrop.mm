@interface HMPersonFaceCrop
- (BOOL)isEqual:(id)equal;
- (HMPersonFaceCrop)initWithCoder:(id)coder;
- (HMPersonFaceCrop)initWithUUID:(id)d dataRepresentation:(id)representation dateCreated:(id)created faceBoundingBox:(CGRect)box personUUID:(id)iD;
- (HMPersonFaceCrop)initWithUUID:(id)d dataRepresentation:(id)representation dateCreated:(id)created faceBoundingBox:(CGRect)box personUUID:(id)iD unassociatedFaceCropUUID:(id)uID source:(int64_t)source;
- (id)attributeDescriptions;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMPersonFaceCrop

- (id)attributeDescriptions
{
  v17.receiver = self;
  v17.super_class = HMPersonFaceCrop;
  attributeDescriptions = [(HMFaceCrop *)&v17 attributeDescriptions];
  v4 = [attributeDescriptions mutableCopy];

  v5 = objc_alloc(MEMORY[0x1E69A29C8]);
  personUUID = [(HMPersonFaceCrop *)self personUUID];
  v7 = [v5 initWithName:@"Person UUID" value:personUUID];
  [v4 addObject:v7];

  v8 = objc_alloc(MEMORY[0x1E69A29C8]);
  v9 = HMStringFromPersonFaceCropSource([(HMPersonFaceCrop *)self source]);
  v10 = [v8 initWithName:@"Source" value:v9];
  [v4 addObject:v10];

  unassociatedFaceCropUUID = [(HMPersonFaceCrop *)self unassociatedFaceCropUUID];

  if (unassociatedFaceCropUUID)
  {
    v12 = objc_alloc(MEMORY[0x1E69A29C8]);
    unassociatedFaceCropUUID2 = [(HMPersonFaceCrop *)self unassociatedFaceCropUUID];
    v14 = [v12 initWithName:@"Unassociated Face Crop UUID" value:unassociatedFaceCropUUID2];
    [v4 addObject:v14];
  }

  v15 = [v4 copy];

  return v15;
}

- (HMPersonFaceCrop)initWithCoder:(id)coder
{
  v23 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [[HMFaceCrop alloc] initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMPFC.ck.pu"];
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMPFC.ck.ufcu"];
    v8 = [coderCopy decodeIntegerForKey:@"HMPFC.ck.s"];
    if (v6)
    {
      v9 = v8;
      uUID = [(HMFaceCrop *)v5 UUID];
      dataRepresentation = [(HMFaceCrop *)v5 dataRepresentation];
      dateCreated = [(HMFaceCrop *)v5 dateCreated];
      [(HMFaceCrop *)v5 faceBoundingBox];
      self = [(HMPersonFaceCrop *)self initWithUUID:uUID dataRepresentation:dataRepresentation dateCreated:dateCreated faceBoundingBox:v6 personUUID:?];

      [(HMPersonFaceCrop *)self setUnassociatedFaceCropUUID:v7];
      [(HMPersonFaceCrop *)self setSource:v9];
      selfCopy = self;
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
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  v17 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = HMPersonFaceCrop;
  coderCopy = coder;
  [(HMFaceCrop *)&v7 encodeWithCoder:coderCopy];
  v5 = [(HMPersonFaceCrop *)self personUUID:v7.receiver];
  [coderCopy encodeObject:v5 forKey:@"HMPFC.ck.pu"];

  unassociatedFaceCropUUID = [(HMPersonFaceCrop *)self unassociatedFaceCropUUID];
  [coderCopy encodeObject:unassociatedFaceCropUUID forKey:@"HMPFC.ck.ufcu"];

  [coderCopy encodeInteger:-[HMPersonFaceCrop source](self forKey:{"source"), @"HMPFC.ck.s"}];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [HMMutablePersonFaceCrop allocWithZone:zone];
  uUID = [(HMFaceCrop *)self UUID];
  dataRepresentation = [(HMFaceCrop *)self dataRepresentation];
  dateCreated = [(HMFaceCrop *)self dateCreated];
  [(HMFaceCrop *)self faceBoundingBox];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  personUUID = [(HMPersonFaceCrop *)self personUUID];
  v17 = [(HMPersonFaceCrop *)v4 initWithUUID:uUID dataRepresentation:dataRepresentation dateCreated:dateCreated faceBoundingBox:personUUID personUUID:v9, v11, v13, v15];

  unassociatedFaceCropUUID = [(HMPersonFaceCrop *)self unassociatedFaceCropUUID];
  [(HMPersonFaceCrop *)v17 setUnassociatedFaceCropUUID:unassociatedFaceCropUUID];

  [(HMPersonFaceCrop *)v17 setSource:[(HMPersonFaceCrop *)self source]];
  return v17;
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
  if (v6 && (v15.receiver = self, v15.super_class = HMPersonFaceCrop, [(HMFaceCrop *)&v15 isEqual:v6]))
  {
    personUUID = [(HMPersonFaceCrop *)self personUUID];
    personUUID2 = [v6 personUUID];
    if ([personUUID isEqual:personUUID2] && (-[HMPersonFaceCrop unassociatedFaceCropUUID](self, "unassociatedFaceCropUUID"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "unassociatedFaceCropUUID"), v10 = objc_claimAutoreleasedReturnValue(), v11 = HMFEqualObjects(), v10, v9, v11))
    {
      source = [(HMPersonFaceCrop *)self source];
      v13 = source == [v6 source];
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

- (HMPersonFaceCrop)initWithUUID:(id)d dataRepresentation:(id)representation dateCreated:(id)created faceBoundingBox:(CGRect)box personUUID:(id)iD unassociatedFaceCropUUID:(id)uID source:(int64_t)source
{
  height = box.size.height;
  width = box.size.width;
  y = box.origin.y;
  x = box.origin.x;
  uIDCopy = uID;
  height = [(HMPersonFaceCrop *)self initWithUUID:d dataRepresentation:representation dateCreated:created faceBoundingBox:iD personUUID:x, y, width, height];
  v22 = height;
  if (height)
  {
    objc_storeStrong(&height->_unassociatedFaceCropUUID, uID);
    v22->_source = source;
  }

  return v22;
}

- (HMPersonFaceCrop)initWithUUID:(id)d dataRepresentation:(id)representation dateCreated:(id)created faceBoundingBox:(CGRect)box personUUID:(id)iD
{
  height = box.size.height;
  width = box.size.width;
  y = box.origin.y;
  x = box.origin.x;
  dCopy = d;
  representationCopy = representation;
  createdCopy = created;
  iDCopy = iD;
  if (!dCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  if (!representationCopy)
  {
LABEL_9:
    _HMFPreconditionFailure();
    goto LABEL_10;
  }

  if (!createdCopy)
  {
LABEL_10:
    _HMFPreconditionFailure();
    goto LABEL_11;
  }

  v19 = iDCopy;
  if (!iDCopy)
  {
LABEL_11:
    v24 = _HMFPreconditionFailure();
    [(HMCameraSettingsControl *)v24 .cxx_destruct];
    return result;
  }

  v26.receiver = self;
  v26.super_class = HMPersonFaceCrop;
  height = [(HMFaceCrop *)&v26 initWithUUID:dCopy dataRepresentation:representationCopy dateCreated:createdCopy faceBoundingBox:x, y, width, height];
  if (height)
  {
    v21 = [v19 copy];
    personUUID = height->_personUUID;
    height->_personUUID = v21;
  }

  return height;
}

@end
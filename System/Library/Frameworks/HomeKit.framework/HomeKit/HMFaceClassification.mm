@interface HMFaceClassification
+ (id)shortDescription;
- (BOOL)isEqual:(id)equal;
- (HMFaceClassification)initWithCoder:(id)coder;
- (HMFaceClassification)initWithPersonManagerUUID:(id)d person:(id)person faceCrop:(id)crop;
- (NSArray)attributeDescriptions;
- (NSString)shortDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMFaceClassification

- (NSArray)attributeDescriptions
{
  array = [MEMORY[0x1E695DF70] array];
  v4 = objc_alloc(MEMORY[0x1E69A29C8]);
  personManagerUUID = [(HMFaceClassification *)self personManagerUUID];
  v6 = [v4 initWithName:@"Person Manager UUID" value:personManagerUUID];
  [array addObject:v6];

  person = [(HMFaceClassification *)self person];

  if (person)
  {
    v8 = objc_alloc(MEMORY[0x1E69A29C8]);
    person2 = [(HMFaceClassification *)self person];
    v10 = [v8 initWithName:@"Person" value:person2];
    [array addObject:v10];
  }

  faceCrop = [(HMFaceClassification *)self faceCrop];

  if (faceCrop)
  {
    v12 = objc_alloc(MEMORY[0x1E69A29C8]);
    faceCrop2 = [(HMFaceClassification *)self faceCrop];
    v14 = [v12 initWithName:@"Face Crop" value:faceCrop2];
    [array addObject:v14];
  }

  v15 = [array copy];

  return v15;
}

- (NSString)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (HMFaceClassification)initWithCoder:(id)coder
{
  v19 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMFC.ck.pmu"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMFC.ck.p"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMFC.ck.fc"];
  if (v5)
  {
    selfCopy = [(HMFaceClassification *)self initWithPersonManagerUUID:v5 person:v6 faceCrop:v7];
    v9 = selfCopy;
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v15 = 138543618;
      v16 = v12;
      v17 = 2112;
      v18 = 0;
      _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_ERROR, "%{public}@Could not initialize from decoded personManagerUUID: %@", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v9 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  personManagerUUID = [(HMFaceClassification *)self personManagerUUID];
  [coderCopy encodeObject:personManagerUUID forKey:@"HMFC.ck.pmu"];

  person = [(HMFaceClassification *)self person];
  [coderCopy encodeObject:person forKey:@"HMFC.ck.p"];

  faceCrop = [(HMFaceClassification *)self faceCrop];
  [coderCopy encodeObject:faceCrop forKey:@"HMFC.ck.fc"];
}

- (unint64_t)hash
{
  personManagerUUID = [(HMFaceClassification *)self personManagerUUID];
  v4 = [personManagerUUID hash];

  person = [(HMFaceClassification *)self person];
  v6 = [person hash] ^ v4;

  faceCrop = [(HMFaceClassification *)self faceCrop];
  v8 = [faceCrop hash];

  return v6 ^ v8;
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
    personManagerUUID = [(HMFaceClassification *)self personManagerUUID];
    personManagerUUID2 = [v6 personManagerUUID];
    if ([personManagerUUID isEqual:personManagerUUID2] && (-[HMFaceClassification person](self, "person"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "person"), v10 = objc_claimAutoreleasedReturnValue(), v11 = HMFEqualObjects(), v10, v9, v11))
    {
      faceCrop = [(HMFaceClassification *)self faceCrop];
      faceCrop2 = [v6 faceCrop];
      v14 = HMFEqualObjects();
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (HMFaceClassification)initWithPersonManagerUUID:(id)d person:(id)person faceCrop:(id)crop
{
  dCopy = d;
  personCopy = person;
  cropCopy = crop;
  if (!dCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  v12 = cropCopy;
  if (!(personCopy | cropCopy))
  {
LABEL_7:
    v20 = _HMFPreconditionFailure();
    return +[(HMFaceClassification *)v20];
  }

  v22.receiver = self;
  v22.super_class = HMFaceClassification;
  v13 = [(HMFaceClassification *)&v22 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_personManagerUUID, d);
    v15 = [personCopy copy];
    person = v14->_person;
    v14->_person = v15;

    v17 = [v12 copy];
    faceCrop = v14->_faceCrop;
    v14->_faceCrop = v17;
  }

  return v14;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end
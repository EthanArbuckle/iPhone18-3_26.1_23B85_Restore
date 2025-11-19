@interface HMFaceClassification
+ (id)shortDescription;
- (BOOL)isEqual:(id)a3;
- (HMFaceClassification)initWithCoder:(id)a3;
- (HMFaceClassification)initWithPersonManagerUUID:(id)a3 person:(id)a4 faceCrop:(id)a5;
- (NSArray)attributeDescriptions;
- (NSString)shortDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMFaceClassification

- (NSArray)attributeDescriptions
{
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = objc_alloc(MEMORY[0x1E69A29C8]);
  v5 = [(HMFaceClassification *)self personManagerUUID];
  v6 = [v4 initWithName:@"Person Manager UUID" value:v5];
  [v3 addObject:v6];

  v7 = [(HMFaceClassification *)self person];

  if (v7)
  {
    v8 = objc_alloc(MEMORY[0x1E69A29C8]);
    v9 = [(HMFaceClassification *)self person];
    v10 = [v8 initWithName:@"Person" value:v9];
    [v3 addObject:v10];
  }

  v11 = [(HMFaceClassification *)self faceCrop];

  if (v11)
  {
    v12 = objc_alloc(MEMORY[0x1E69A29C8]);
    v13 = [(HMFaceClassification *)self faceCrop];
    v14 = [v12 initWithName:@"Face Crop" value:v13];
    [v3 addObject:v14];
  }

  v15 = [v3 copy];

  return v15;
}

- (NSString)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (HMFaceClassification)initWithCoder:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMFC.ck.pmu"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMFC.ck.p"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMFC.ck.fc"];
  if (v5)
  {
    v8 = [(HMFaceClassification *)self initWithPersonManagerUUID:v5 person:v6 faceCrop:v7];
    v9 = v8;
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v8 = self;
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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMFaceClassification *)self personManagerUUID];
  [v4 encodeObject:v5 forKey:@"HMFC.ck.pmu"];

  v6 = [(HMFaceClassification *)self person];
  [v4 encodeObject:v6 forKey:@"HMFC.ck.p"];

  v7 = [(HMFaceClassification *)self faceCrop];
  [v4 encodeObject:v7 forKey:@"HMFC.ck.fc"];
}

- (unint64_t)hash
{
  v3 = [(HMFaceClassification *)self personManagerUUID];
  v4 = [v3 hash];

  v5 = [(HMFaceClassification *)self person];
  v6 = [v5 hash] ^ v4;

  v7 = [(HMFaceClassification *)self faceCrop];
  v8 = [v7 hash];

  return v6 ^ v8;
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
    v7 = [(HMFaceClassification *)self personManagerUUID];
    v8 = [v6 personManagerUUID];
    if ([v7 isEqual:v8] && (-[HMFaceClassification person](self, "person"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "person"), v10 = objc_claimAutoreleasedReturnValue(), v11 = HMFEqualObjects(), v10, v9, v11))
    {
      v12 = [(HMFaceClassification *)self faceCrop];
      v13 = [v6 faceCrop];
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

- (HMFaceClassification)initWithPersonManagerUUID:(id)a3 person:(id)a4 faceCrop:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v9)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  v12 = v11;
  if (!(v10 | v11))
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
    objc_storeStrong(&v13->_personManagerUUID, a3);
    v15 = [v10 copy];
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
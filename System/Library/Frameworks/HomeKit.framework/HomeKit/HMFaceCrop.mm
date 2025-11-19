@interface HMFaceCrop
+ (id)shortDescription;
- (BOOL)isEqual:(id)a3;
- (CGRect)faceBoundingBox;
- (HMFaceCrop)initWithCoder:(id)a3;
- (HMFaceCrop)initWithUUID:(id)a3 dataRepresentation:(id)a4 dateCreated:(id)a5 faceBoundingBox:(CGRect)a6;
- (NSArray)attributeDescriptions;
- (NSString)shortDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMFaceCrop

- (CGRect)faceBoundingBox
{
  objc_copyStruct(v6, &self->_faceBoundingBox, 32, 1, 0);
  v2 = *v6;
  v3 = *&v6[1];
  v4 = *&v6[2];
  v5 = *&v6[3];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (NSArray)attributeDescriptions
{
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = objc_alloc(MEMORY[0x1E69A29C8]);
  v5 = [(HMFaceCrop *)self UUID];
  v6 = [v4 initWithName:@"UUID" value:v5];
  [v3 addObject:v6];

  v7 = objc_alloc(MEMORY[0x1E69A29C8]);
  v8 = MEMORY[0x1E696AD98];
  v9 = [(HMFaceCrop *)self dataRepresentation];
  v10 = [v8 numberWithUnsignedInteger:{objc_msgSend(v9, "length")}];
  v11 = [v7 initWithName:@"Data Representation Length" value:v10];
  [v3 addObject:v11];

  v12 = objc_alloc(MEMORY[0x1E69A29C8]);
  v13 = [(HMFaceCrop *)self dateCreated];
  v14 = [v12 initWithName:@"Date Created" value:v13];
  [v3 addObject:v14];

  v15 = objc_alloc(MEMORY[0x1E69A29C8]);
  [(HMFaceCrop *)self faceBoundingBox];
  v16 = NSStringFromRect(v21);
  v17 = [v15 initWithName:@"Face Bounding Box" value:v16];
  [v3 addObject:v17];

  v18 = [v3 copy];

  return v18;
}

- (NSString)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (HMFaceCrop)initWithCoder:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMFC.ck.u"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMFC.ck.dr"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMFC.ck.dc"];
  [v4 decodeRectForKey:@"HMFC.ck.fbb"];
  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8 || v7 == 0)
  {
    v10 = objc_autoreleasePoolPush();
    v13 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v17 = 138544130;
      v18 = v12;
      v19 = 2112;
      v20 = v5;
      v21 = 2112;
      v22 = v6;
      v23 = 2112;
      v24 = v7;
      _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_ERROR, "%{public}@Could not initialize from decoded UUID: %@ dataRepresentation: %@ dateCreated: %@", &v17, 0x2Au);
    }

    objc_autoreleasePoolPop(v10);
    v14 = 0;
  }

  else
  {
    v13 = [(HMFaceCrop *)self initWithUUID:v5 dataRepresentation:v6 dateCreated:v7 faceBoundingBox:?];
    v14 = v13;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  v4 = [(HMFaceCrop *)self UUID];
  [v7 encodeObject:v4 forKey:@"HMFC.ck.u"];

  v5 = [(HMFaceCrop *)self dataRepresentation];
  [v7 encodeObject:v5 forKey:@"HMFC.ck.dr"];

  v6 = [(HMFaceCrop *)self dateCreated];
  [v7 encodeObject:v6 forKey:@"HMFC.ck.dc"];

  [(HMFaceCrop *)self faceBoundingBox];
  [v7 encodeRect:@"HMFC.ck.fbb" forKey:?];
}

- (unint64_t)hash
{
  v2 = [(HMFaceCrop *)self UUID];
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
    v7 = [(HMFaceCrop *)self UUID];
    v8 = [v6 UUID];
    if ([v7 isEqual:v8])
    {
      v9 = [(HMFaceCrop *)self dataRepresentation];
      v10 = [v6 dataRepresentation];
      if ([v9 isEqualToData:v10])
      {
        v11 = [(HMFaceCrop *)self dateCreated];
        v12 = [v6 dateCreated];
        if ([v11 isEqualToDate:v12])
        {
          [(HMFaceCrop *)self faceBoundingBox];
          v14 = v13;
          v16 = v15;
          v18 = v17;
          v20 = v19;
          [v6 faceBoundingBox];
          v28.origin.x = v21;
          v28.origin.y = v22;
          v28.size.width = v23;
          v28.size.height = v24;
          v27.origin.x = v14;
          v27.origin.y = v16;
          v27.size.width = v18;
          v27.size.height = v20;
          v25 = NSEqualRects(v27, v28);
        }

        else
        {
          v25 = 0;
        }
      }

      else
      {
        v25 = 0;
      }
    }

    else
    {
      v25 = 0;
    }
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

- (HMFaceCrop)initWithUUID:(id)a3 dataRepresentation:(id)a4 dateCreated:(id)a5 faceBoundingBox:(CGRect)a6
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  if (!v13)
  {
    _HMFPreconditionFailure();
    goto LABEL_8;
  }

  if (!v14)
  {
LABEL_8:
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  v16 = v15;
  if (!v15)
  {
LABEL_9:
    v23 = _HMFPreconditionFailure();
    return +[(HMFaceCrop *)v23];
  }

  v25.receiver = self;
  v25.super_class = HMFaceCrop;
  v17 = [(HMFaceCrop *)&v25 init];
  if (v17)
  {
    v18 = [MEMORY[0x1E69A2A28] hmf_cachedInstanceForNSUUID:v13];
    UUID = v17->_UUID;
    v17->_UUID = v18;

    v20 = [v14 copy];
    dataRepresentation = v17->_dataRepresentation;
    v17->_dataRepresentation = v20;

    objc_storeStrong(&v17->_dateCreated, a5);
    v17->_faceBoundingBox.origin.x = x;
    v17->_faceBoundingBox.origin.y = y;
    v17->_faceBoundingBox.size.width = width;
    v17->_faceBoundingBox.size.height = height;
  }

  return v17;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end
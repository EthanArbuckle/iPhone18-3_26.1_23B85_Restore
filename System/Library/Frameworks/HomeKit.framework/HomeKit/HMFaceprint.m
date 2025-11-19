@interface HMFaceprint
- (BOOL)isEqual:(id)a3;
- (HMFaceprint)initWithCoder:(id)a3;
- (HMFaceprint)initWithUUID:(id)a3 data:(id)a4 modelUUID:(id)a5 faceCropUUID:(id)a6;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMFaceprint

- (HMFaceprint)initWithCoder:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMFP.ck.u"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMFP.ck.d"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMFP.ck.mu"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMFP.ck.fcu"];
  v9 = v8;
  if (v5)
  {
    v10 = v6 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10 || v7 == 0 || v8 == 0)
  {
    v13 = objc_autoreleasePoolPush();
    v16 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v20 = 138544386;
      v21 = v15;
      v22 = 2112;
      v23 = v5;
      v24 = 2112;
      v25 = v6;
      v26 = 2112;
      v27 = v7;
      v28 = 2112;
      v29 = v9;
      _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_ERROR, "%{public}@Could not initialize from decoded UUID: %@ data: %@ modelUUID: %@ faceCropUUID: %@", &v20, 0x34u);
    }

    objc_autoreleasePoolPop(v13);
    v17 = 0;
  }

  else
  {
    v16 = [(HMFaceprint *)self initWithUUID:v5 data:v6 modelUUID:v7 faceCropUUID:v8];
    v17 = v16;
  }

  v18 = *MEMORY[0x1E69E9840];
  return v17;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMFaceprint *)self UUID];
  [v4 encodeObject:v5 forKey:@"HMFP.ck.u"];

  v6 = [(HMFaceprint *)self data];
  [v4 encodeObject:v6 forKey:@"HMFP.ck.d"];

  v7 = [(HMFaceprint *)self modelUUID];
  [v4 encodeObject:v7 forKey:@"HMFP.ck.mu"];

  v8 = [(HMFaceprint *)self faceCropUUID];
  [v4 encodeObject:v8 forKey:@"HMFP.ck.fcu"];
}

- (unint64_t)hash
{
  v2 = [(HMFaceprint *)self UUID];
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
    v7 = [(HMFaceprint *)self UUID];
    v8 = [v6 UUID];
    if ([v7 isEqual:v8])
    {
      v9 = [(HMFaceprint *)self data];
      v10 = [v6 data];
      if ([v9 isEqualToData:v10])
      {
        v11 = [(HMFaceprint *)self modelUUID];
        v12 = [v6 modelUUID];
        if ([v11 isEqual:v12])
        {
          v16 = [(HMFaceprint *)self faceCropUUID];
          v13 = [v6 faceCropUUID];
          v14 = [v16 isEqual:v13];
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

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@", objc_opt_class()];
  v4 = [(HMFaceprint *)self UUID];
  [v3 appendFormat:@" UUID: %@", v4];

  v5 = [(HMFaceprint *)self data];
  [v3 appendFormat:@" data: <%lu bytes>", objc_msgSend(v5, "length")];

  v6 = [(HMFaceprint *)self modelUUID];
  [v3 appendFormat:@" modelUUID: %@", v6];

  v7 = [(HMFaceprint *)self faceCropUUID];
  [v3 appendFormat:@" faceCropUUID: %@", v7];

  [v3 appendString:@">"];
  v8 = [v3 copy];

  return v8;
}

- (HMFaceprint)initWithUUID:(id)a3 data:(id)a4 modelUUID:(id)a5 faceCropUUID:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!v10)
  {
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  if (!v11)
  {
LABEL_9:
    _HMFPreconditionFailure();
    goto LABEL_10;
  }

  if (!v12)
  {
LABEL_10:
    _HMFPreconditionFailure();
    goto LABEL_11;
  }

  v14 = v13;
  if (!v13)
  {
LABEL_11:
    v25 = _HMFPreconditionFailure();
    return +[(HMFaceprint *)v25];
  }

  v27.receiver = self;
  v27.super_class = HMFaceprint;
  v15 = [(HMFaceprint *)&v27 init];
  if (v15)
  {
    v16 = [MEMORY[0x1E69A2A28] hmf_cachedInstanceForNSUUID:v10];
    UUID = v15->_UUID;
    v15->_UUID = v16;

    v18 = [v11 copy];
    data = v15->_data;
    v15->_data = v18;

    v20 = [v12 copy];
    modelUUID = v15->_modelUUID;
    v15->_modelUUID = v20;

    v22 = [v14 copy];
    faceCropUUID = v15->_faceCropUUID;
    v15->_faceCropUUID = v22;
  }

  return v15;
}

@end
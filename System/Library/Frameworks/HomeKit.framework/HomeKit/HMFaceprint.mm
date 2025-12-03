@interface HMFaceprint
- (BOOL)isEqual:(id)equal;
- (HMFaceprint)initWithCoder:(id)coder;
- (HMFaceprint)initWithUUID:(id)d data:(id)data modelUUID:(id)iD faceCropUUID:(id)uID;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMFaceprint

- (HMFaceprint)initWithCoder:(id)coder
{
  v30 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMFP.ck.u"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMFP.ck.d"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMFP.ck.mu"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMFP.ck.fcu"];
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
    selfCopy = self;
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
    selfCopy = [(HMFaceprint *)self initWithUUID:v5 data:v6 modelUUID:v7 faceCropUUID:v8];
    v17 = selfCopy;
  }

  v18 = *MEMORY[0x1E69E9840];
  return v17;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  uUID = [(HMFaceprint *)self UUID];
  [coderCopy encodeObject:uUID forKey:@"HMFP.ck.u"];

  data = [(HMFaceprint *)self data];
  [coderCopy encodeObject:data forKey:@"HMFP.ck.d"];

  modelUUID = [(HMFaceprint *)self modelUUID];
  [coderCopy encodeObject:modelUUID forKey:@"HMFP.ck.mu"];

  faceCropUUID = [(HMFaceprint *)self faceCropUUID];
  [coderCopy encodeObject:faceCropUUID forKey:@"HMFP.ck.fcu"];
}

- (unint64_t)hash
{
  uUID = [(HMFaceprint *)self UUID];
  v3 = [uUID hash];

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
    uUID = [(HMFaceprint *)self UUID];
    uUID2 = [v6 UUID];
    if ([uUID isEqual:uUID2])
    {
      data = [(HMFaceprint *)self data];
      data2 = [v6 data];
      if ([data isEqualToData:data2])
      {
        modelUUID = [(HMFaceprint *)self modelUUID];
        modelUUID2 = [v6 modelUUID];
        if ([modelUUID isEqual:modelUUID2])
        {
          faceCropUUID = [(HMFaceprint *)self faceCropUUID];
          faceCropUUID2 = [v6 faceCropUUID];
          v14 = [faceCropUUID isEqual:faceCropUUID2];
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
  uUID = [(HMFaceprint *)self UUID];
  [v3 appendFormat:@" UUID: %@", uUID];

  data = [(HMFaceprint *)self data];
  [v3 appendFormat:@" data: <%lu bytes>", objc_msgSend(data, "length")];

  modelUUID = [(HMFaceprint *)self modelUUID];
  [v3 appendFormat:@" modelUUID: %@", modelUUID];

  faceCropUUID = [(HMFaceprint *)self faceCropUUID];
  [v3 appendFormat:@" faceCropUUID: %@", faceCropUUID];

  [v3 appendString:@">"];
  v8 = [v3 copy];

  return v8;
}

- (HMFaceprint)initWithUUID:(id)d data:(id)data modelUUID:(id)iD faceCropUUID:(id)uID
{
  dCopy = d;
  dataCopy = data;
  iDCopy = iD;
  uIDCopy = uID;
  if (!dCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  if (!dataCopy)
  {
LABEL_9:
    _HMFPreconditionFailure();
    goto LABEL_10;
  }

  if (!iDCopy)
  {
LABEL_10:
    _HMFPreconditionFailure();
    goto LABEL_11;
  }

  v14 = uIDCopy;
  if (!uIDCopy)
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
    v16 = [MEMORY[0x1E69A2A28] hmf_cachedInstanceForNSUUID:dCopy];
    UUID = v15->_UUID;
    v15->_UUID = v16;

    v18 = [dataCopy copy];
    data = v15->_data;
    v15->_data = v18;

    v20 = [iDCopy copy];
    modelUUID = v15->_modelUUID;
    v15->_modelUUID = v20;

    v22 = [v14 copy];
    faceCropUUID = v15->_faceCropUUID;
    v15->_faceCropUUID = v22;
  }

  return v15;
}

@end
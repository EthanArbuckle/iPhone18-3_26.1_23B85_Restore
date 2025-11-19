@interface HMMTRAttributeDescriptor
- (BOOL)isEqual:(id)a3;
- (HMMTRAttributeDescriptor)initWithCoder:(id)a3;
- (HMMTRAttributeDescriptor)initWithMTRDevice:(id)a3 attributePaths:(id)a4;
- (HMMTRAttributeDescriptor)initWithMTRDevice:(id)a3 controllerID:(id)a4 attributePaths:(id)a5;
- (HMMTRAttributeDescriptor)initWithMTRDeviceNodeID:(id)a3 controllerID:(id)a4 attributePaths:(id)a5;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMMTRAttributeDescriptor

- (HMMTRAttributeDescriptor)initWithCoder:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMMTRAD.nodeID"];
  v6 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"HMMTRAD.attributePaths"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMMTRAD.controllerID"];
  v8 = v7;
  if (!v5)
  {
    v11 = objc_autoreleasePoolPush();
    v9 = self;
    v12 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    v13 = HMFGetLogIdentifier();
    v17 = 138543362;
    v18 = v13;
    v14 = "%{public}@Could not initialize due to nil node id after decoding";
LABEL_11:
    _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_ERROR, v14, &v17, 0xCu);

    goto LABEL_12;
  }

  if (!v6)
  {
    v11 = objc_autoreleasePoolPush();
    v9 = self;
    v12 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    v13 = HMFGetLogIdentifier();
    v17 = 138543362;
    v18 = v13;
    v14 = "%{public}@Could not initialize due to nil attribute paths after decoding";
    goto LABEL_11;
  }

  if (!v7)
  {
    v11 = objc_autoreleasePoolPush();
    v9 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v17 = 138543362;
      v18 = v13;
      v14 = "%{public}@Could not initialize due to nil controller id after decoding";
      goto LABEL_11;
    }

LABEL_12:

    objc_autoreleasePoolPop(v11);
    v10 = 0;
    goto LABEL_13;
  }

  v9 = [(HMMTRAttributeDescriptor *)self initWithMTRDeviceNodeID:v5 controllerID:v7 attributePaths:v6];
  v10 = v9;
LABEL_13:

  v15 = *MEMORY[0x1E69E9840];
  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMMTRAttributeDescriptor *)self nodeID];
  [v4 encodeObject:v5 forKey:@"HMMTRAD.nodeID"];

  v6 = [(HMMTRAttributeDescriptor *)self attributePaths];
  v7 = [v6 allObjects];
  [v4 encodeObject:v7 forKey:@"HMMTRAD.attributePaths"];

  v8 = [(HMMTRAttributeDescriptor *)self controllerID];
  [v4 encodeObject:v8 forKey:@"HMMTRAD.controllerID"];
}

- (unint64_t)hash
{
  v3 = [(HMMTRAttributeDescriptor *)self nodeID];
  v4 = [v3 hash];
  v5 = [(HMMTRAttributeDescriptor *)self attributePaths];
  v6 = [v5 count];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v14 = 1;
  }

  else
  {
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
    v7 = v6;
    if (v6)
    {
      v8 = [(HMMTRAttributeDescriptor *)v6 nodeID];
      v9 = [(HMMTRAttributeDescriptor *)self nodeID];
      if ([v8 isEqualToNumber:v9])
      {
        v10 = [(HMMTRAttributeDescriptor *)v7 attributePaths];
        v11 = [(HMMTRAttributeDescriptor *)self attributePaths];
        if ([v10 isEqualToSet:v11])
        {
          v12 = [(HMMTRAttributeDescriptor *)v7 controllerID];
          v13 = [(HMMTRAttributeDescriptor *)self controllerID];
          v14 = [v12 isEqualToString:v13];
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

  return v14;
}

- (HMMTRAttributeDescriptor)initWithMTRDeviceNodeID:(id)a3 controllerID:(id)a4 attributePaths:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = HMMTRAttributeDescriptor;
  v11 = [(HMMTRAttributeDescriptor *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    nodeID = v11->_nodeID;
    v11->_nodeID = v12;

    v14 = [MEMORY[0x1E695DFD8] setWithArray:v10];
    attributePaths = v11->_attributePaths;
    v11->_attributePaths = v14;

    v16 = [v9 copy];
    controllerID = v11->_controllerID;
    v11->_controllerID = v16;
  }

  return v11;
}

- (HMMTRAttributeDescriptor)initWithMTRDevice:(id)a3 controllerID:(id)a4 attributePaths:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [a3 nodeID];
  v11 = [(HMMTRAttributeDescriptor *)self initWithMTRDeviceNodeID:v10 controllerID:v9 attributePaths:v8];

  return v11;
}

- (HMMTRAttributeDescriptor)initWithMTRDevice:(id)a3 attributePaths:(id)a4
{
  v6 = a4;
  v7 = [a3 nodeID];
  v8 = [MEMORY[0x1E696AFB0] hmf_zeroUUID];
  v9 = [v8 UUIDString];
  v10 = [(HMMTRAttributeDescriptor *)self initWithMTRDeviceNodeID:v7 controllerID:v9 attributePaths:v6];

  return v10;
}

@end
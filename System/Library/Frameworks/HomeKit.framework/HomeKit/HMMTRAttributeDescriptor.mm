@interface HMMTRAttributeDescriptor
- (BOOL)isEqual:(id)equal;
- (HMMTRAttributeDescriptor)initWithCoder:(id)coder;
- (HMMTRAttributeDescriptor)initWithMTRDevice:(id)device attributePaths:(id)paths;
- (HMMTRAttributeDescriptor)initWithMTRDevice:(id)device controllerID:(id)d attributePaths:(id)paths;
- (HMMTRAttributeDescriptor)initWithMTRDeviceNodeID:(id)d controllerID:(id)iD attributePaths:(id)paths;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMMTRAttributeDescriptor

- (HMMTRAttributeDescriptor)initWithCoder:(id)coder
{
  v19 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMMTRAD.nodeID"];
  v6 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"HMMTRAD.attributePaths"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMMTRAD.controllerID"];
  v8 = v7;
  if (!v5)
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy3 = self;
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
    selfCopy3 = self;
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
    selfCopy3 = self;
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

  selfCopy3 = [(HMMTRAttributeDescriptor *)self initWithMTRDeviceNodeID:v5 controllerID:v7 attributePaths:v6];
  v10 = selfCopy3;
LABEL_13:

  v15 = *MEMORY[0x1E69E9840];
  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  nodeID = [(HMMTRAttributeDescriptor *)self nodeID];
  [coderCopy encodeObject:nodeID forKey:@"HMMTRAD.nodeID"];

  attributePaths = [(HMMTRAttributeDescriptor *)self attributePaths];
  allObjects = [attributePaths allObjects];
  [coderCopy encodeObject:allObjects forKey:@"HMMTRAD.attributePaths"];

  controllerID = [(HMMTRAttributeDescriptor *)self controllerID];
  [coderCopy encodeObject:controllerID forKey:@"HMMTRAD.controllerID"];
}

- (unint64_t)hash
{
  nodeID = [(HMMTRAttributeDescriptor *)self nodeID];
  v4 = [nodeID hash];
  attributePaths = [(HMMTRAttributeDescriptor *)self attributePaths];
  v6 = [attributePaths count];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v14 = 1;
  }

  else
  {
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
    v7 = v6;
    if (v6)
    {
      nodeID = [(HMMTRAttributeDescriptor *)v6 nodeID];
      nodeID2 = [(HMMTRAttributeDescriptor *)self nodeID];
      if ([nodeID isEqualToNumber:nodeID2])
      {
        attributePaths = [(HMMTRAttributeDescriptor *)v7 attributePaths];
        attributePaths2 = [(HMMTRAttributeDescriptor *)self attributePaths];
        if ([attributePaths isEqualToSet:attributePaths2])
        {
          controllerID = [(HMMTRAttributeDescriptor *)v7 controllerID];
          controllerID2 = [(HMMTRAttributeDescriptor *)self controllerID];
          v14 = [controllerID isEqualToString:controllerID2];
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

- (HMMTRAttributeDescriptor)initWithMTRDeviceNodeID:(id)d controllerID:(id)iD attributePaths:(id)paths
{
  dCopy = d;
  iDCopy = iD;
  pathsCopy = paths;
  v19.receiver = self;
  v19.super_class = HMMTRAttributeDescriptor;
  v11 = [(HMMTRAttributeDescriptor *)&v19 init];
  if (v11)
  {
    v12 = [dCopy copy];
    nodeID = v11->_nodeID;
    v11->_nodeID = v12;

    v14 = [MEMORY[0x1E695DFD8] setWithArray:pathsCopy];
    attributePaths = v11->_attributePaths;
    v11->_attributePaths = v14;

    v16 = [iDCopy copy];
    controllerID = v11->_controllerID;
    v11->_controllerID = v16;
  }

  return v11;
}

- (HMMTRAttributeDescriptor)initWithMTRDevice:(id)device controllerID:(id)d attributePaths:(id)paths
{
  pathsCopy = paths;
  dCopy = d;
  nodeID = [device nodeID];
  v11 = [(HMMTRAttributeDescriptor *)self initWithMTRDeviceNodeID:nodeID controllerID:dCopy attributePaths:pathsCopy];

  return v11;
}

- (HMMTRAttributeDescriptor)initWithMTRDevice:(id)device attributePaths:(id)paths
{
  pathsCopy = paths;
  nodeID = [device nodeID];
  hmf_zeroUUID = [MEMORY[0x1E696AFB0] hmf_zeroUUID];
  uUIDString = [hmf_zeroUUID UUIDString];
  v10 = [(HMMTRAttributeDescriptor *)self initWithMTRDeviceNodeID:nodeID controllerID:uUIDString attributePaths:pathsCopy];

  return v10;
}

@end
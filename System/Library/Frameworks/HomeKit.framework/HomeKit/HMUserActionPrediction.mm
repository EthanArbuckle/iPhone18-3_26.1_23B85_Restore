@interface HMUserActionPrediction
+ (id)logCategory;
+ (id)shortDescription;
- (BOOL)isEqual:(id)equal ignoreScore:(BOOL)score ignoreGroupProperties:(BOOL)properties;
- (HMUserActionPrediction)initWithCoder:(id)coder;
- (HMUserActionPrediction)initWithPredictionTargetUUID:(id)d targetServiceUUID:(id)iD targetGroupUUID:(id)uID targetGroupType:(unint64_t)type predictionType:(unint64_t)predictionType predictionScore:(double)score;
- (NSArray)attributeDescriptions;
- (NSString)shortDescription;
- (id)copyRemovingGroup;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMUserActionPrediction

- (NSArray)attributeDescriptions
{
  v31[6] = *MEMORY[0x1E69E9840];
  v26 = MEMORY[0x1E695DF70];
  v3 = objc_alloc(MEMORY[0x1E69A29C8]);
  predictionTargetUUID = [(HMUserActionPrediction *)self predictionTargetUUID];
  defaultFormatter = [MEMORY[0x1E69A2A48] defaultFormatter];
  v28 = [v3 initWithName:@"predictionTargetUUID" value:predictionTargetUUID options:0 formatter:defaultFormatter];
  v31[0] = v28;
  v4 = objc_alloc(MEMORY[0x1E69A29C8]);
  targetServiceUUID = [(HMUserActionPrediction *)self targetServiceUUID];
  defaultFormatter2 = [MEMORY[0x1E69A2A48] defaultFormatter];
  v24 = [v4 initWithName:@"targetServiceUUID" value:targetServiceUUID options:0 formatter:defaultFormatter2];
  v31[1] = v24;
  v5 = objc_alloc(MEMORY[0x1E69A29C8]);
  targetGroupUUID = [(HMUserActionPrediction *)self targetGroupUUID];
  defaultFormatter3 = [MEMORY[0x1E69A2A48] defaultFormatter];
  v7 = [v5 initWithName:@"targetGroupUUID" value:targetGroupUUID options:0 formatter:defaultFormatter3];
  v31[2] = v7;
  v8 = objc_alloc(MEMORY[0x1E69A29C8]);
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[HMUserActionPrediction predictionType](self, "predictionType")}];
  v10 = [v8 initWithName:@"predictionType" value:v9];
  v31[3] = v10;
  v11 = objc_alloc(MEMORY[0x1E69A29C8]);
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[HMUserActionPrediction targetGroupType](self, "targetGroupType")}];
  v13 = [v11 initWithName:@"predictionGroupType" value:v12];
  v31[4] = v13;
  v14 = objc_alloc(MEMORY[0x1E69A29C8]);
  v15 = MEMORY[0x1E696AD98];
  [(HMUserActionPrediction *)self predictionScore];
  v16 = [v15 numberWithDouble:?];
  v17 = [v14 initWithName:@"predictionScore" value:v16];
  v31[5] = v17;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:6];
  v19 = [v26 arrayWithArray:v18];

  v20 = [v19 copy];
  v21 = *MEMORY[0x1E69E9840];

  return v20;
}

- (NSString)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (HMUserActionPrediction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.UAPT.ck.pt"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.UAPT.ck.ts"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.UAPT.ck.tsg"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.UAPT.ck.pty"];
  unsignedIntValue = [v8 unsignedIntValue];

  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.UAPT.ck.tgt"];
  unsignedIntValue2 = [v10 unsignedIntValue];

  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.UAPT.ck.ps"];

  [v12 doubleValue];
  v14 = v13;

  v15 = [(HMUserActionPrediction *)self initWithPredictionTargetUUID:v5 targetServiceUUID:v6 targetGroupUUID:v7 targetGroupType:unsignedIntValue2 predictionType:unsignedIntValue predictionScore:v14];
  return v15;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  predictionTargetUUID = [(HMUserActionPrediction *)self predictionTargetUUID];
  [coderCopy encodeObject:predictionTargetUUID forKey:@"HM.UAPT.ck.pt"];

  targetServiceUUID = [(HMUserActionPrediction *)self targetServiceUUID];
  [coderCopy encodeObject:targetServiceUUID forKey:@"HM.UAPT.ck.ts"];

  targetGroupUUID = [(HMUserActionPrediction *)self targetGroupUUID];
  [coderCopy encodeObject:targetGroupUUID forKey:@"HM.UAPT.ck.tsg"];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[HMUserActionPrediction predictionType](self, "predictionType")}];
  [coderCopy encodeObject:v8 forKey:@"HM.UAPT.ck.pty"];

  v9 = MEMORY[0x1E696AD98];
  [(HMUserActionPrediction *)self predictionScore];
  v10 = [v9 numberWithDouble:?];
  [coderCopy encodeObject:v10 forKey:@"HM.UAPT.ck.ps"];

  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[HMUserActionPrediction targetGroupType](self, "targetGroupType")}];
  [coderCopy encodeObject:v11 forKey:@"HM.UAPT.ck.tgt"];
}

- (unint64_t)hash
{
  predictionTargetUUID = [(HMUserActionPrediction *)self predictionTargetUUID];
  v4 = [predictionTargetUUID hash];
  v5 = [(HMUserActionPrediction *)self predictionType]^ v4;
  targetServiceUUID = [(HMUserActionPrediction *)self targetServiceUUID];
  v7 = [targetServiceUUID hash];
  targetGroupUUID = [(HMUserActionPrediction *)self targetGroupUUID];
  v9 = v5 ^ v7 ^ [targetGroupUUID hash];
  v10 = v9 ^ [(HMUserActionPrediction *)self targetGroupType];
  v11 = MEMORY[0x1E696AD98];
  [(HMUserActionPrediction *)self predictionScore];
  v12 = [v11 numberWithDouble:?];
  v13 = [v12 hash];

  return v10 ^ v13;
}

- (BOOL)isEqual:(id)equal ignoreScore:(BOOL)score ignoreGroupProperties:(BOOL)properties
{
  propertiesCopy = properties;
  equalCopy = equal;
  if (equalCopy == self)
  {
    v16 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = equalCopy;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;
    if (!v10)
    {
      goto LABEL_16;
    }

    targetGroupUUID = [(HMUserActionPrediction *)self targetGroupUUID];
    targetGroupUUID2 = [(HMUserActionPrediction *)v10 targetGroupUUID];
    v13 = HMFEqualObjects();

    if (v13)
    {
      targetGroupType = [(HMUserActionPrediction *)self targetGroupType];
      v15 = targetGroupType == [(HMUserActionPrediction *)v10 targetGroupType];
    }

    else
    {
      v15 = 0;
    }

    predictionTargetUUID = [(HMUserActionPrediction *)self predictionTargetUUID];
    predictionTargetUUID2 = [(HMUserActionPrediction *)v10 predictionTargetUUID];
    v19 = HMFEqualObjects();

    if (v19)
    {
      targetServiceUUID = [(HMUserActionPrediction *)self targetServiceUUID];
      targetServiceUUID2 = [(HMUserActionPrediction *)v10 targetServiceUUID];
      v22 = HMFEqualObjects();

      v16 = 0;
      if (v22)
      {
        if (propertiesCopy || v15)
        {
          predictionType = [(HMUserActionPrediction *)self predictionType];
          predictionType2 = [(HMUserActionPrediction *)v10 predictionType];
          v16 = predictionType == predictionType2;
          if (predictionType == predictionType2 && !score)
          {
            [(HMUserActionPrediction *)self predictionScore];
            v26 = v25;
            [(HMUserActionPrediction *)v10 predictionScore];
            v16 = vabdd_f64(v26, v27) < 2.22044605e-16;
          }
        }
      }
    }

    else
    {
LABEL_16:
      v16 = 0;
    }
  }

  return v16;
}

- (id)copyRemovingGroup
{
  v3 = [HMUserActionPrediction alloc];
  predictionTargetUUID = [(HMUserActionPrediction *)self predictionTargetUUID];
  targetServiceUUID = [(HMUserActionPrediction *)self targetServiceUUID];
  predictionType = [(HMUserActionPrediction *)self predictionType];
  [(HMUserActionPrediction *)self predictionScore];
  v7 = [(HMUserActionPrediction *)v3 initWithPredictionTargetUUID:predictionTargetUUID targetServiceUUID:targetServiceUUID predictionType:predictionType predictionScore:?];

  return v7;
}

- (HMUserActionPrediction)initWithPredictionTargetUUID:(id)d targetServiceUUID:(id)iD targetGroupUUID:(id)uID targetGroupType:(unint64_t)type predictionType:(unint64_t)predictionType predictionScore:(double)score
{
  dCopy = d;
  iDCopy = iD;
  uIDCopy = uID;
  v25.receiver = self;
  v25.super_class = HMUserActionPrediction;
  v17 = [(HMUserActionPrediction *)&v25 init];
  if (v17)
  {
    v18 = [MEMORY[0x1E69A2A28] hmf_cachedInstanceForNSUUID:dCopy];
    predictionTargetUUID = v17->_predictionTargetUUID;
    v17->_predictionTargetUUID = v18;

    v17->_predictionType = predictionType;
    v20 = [MEMORY[0x1E69A2A28] hmf_cachedInstanceForNSUUID:iDCopy];
    targetServiceUUID = v17->_targetServiceUUID;
    v17->_targetServiceUUID = v20;

    v22 = [MEMORY[0x1E69A2A28] hmf_cachedInstanceForNSUUID:uIDCopy];
    targetGroupUUID = v17->_targetGroupUUID;
    v17->_targetGroupUUID = v22;

    v17->_targetGroupType = type;
    v17->_predictionScore = score;
  }

  return v17;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t1 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t1, &__block_literal_global_12397);
  }

  v3 = logCategory__hmf_once_v2;

  return v3;
}

uint64_t __37__HMUserActionPrediction_logCategory__block_invoke()
{
  v0 = *MEMORY[0x1E69A2980];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v2;
  logCategory__hmf_once_v2 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end
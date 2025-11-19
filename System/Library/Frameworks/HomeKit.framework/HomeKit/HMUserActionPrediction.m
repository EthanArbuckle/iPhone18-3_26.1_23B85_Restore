@interface HMUserActionPrediction
+ (id)logCategory;
+ (id)shortDescription;
- (BOOL)isEqual:(id)a3 ignoreScore:(BOOL)a4 ignoreGroupProperties:(BOOL)a5;
- (HMUserActionPrediction)initWithCoder:(id)a3;
- (HMUserActionPrediction)initWithPredictionTargetUUID:(id)a3 targetServiceUUID:(id)a4 targetGroupUUID:(id)a5 targetGroupType:(unint64_t)a6 predictionType:(unint64_t)a7 predictionScore:(double)a8;
- (NSArray)attributeDescriptions;
- (NSString)shortDescription;
- (id)copyRemovingGroup;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMUserActionPrediction

- (NSArray)attributeDescriptions
{
  v31[6] = *MEMORY[0x1E69E9840];
  v26 = MEMORY[0x1E695DF70];
  v3 = objc_alloc(MEMORY[0x1E69A29C8]);
  v30 = [(HMUserActionPrediction *)self predictionTargetUUID];
  v29 = [MEMORY[0x1E69A2A48] defaultFormatter];
  v28 = [v3 initWithName:@"predictionTargetUUID" value:v30 options:0 formatter:v29];
  v31[0] = v28;
  v4 = objc_alloc(MEMORY[0x1E69A29C8]);
  v27 = [(HMUserActionPrediction *)self targetServiceUUID];
  v25 = [MEMORY[0x1E69A2A48] defaultFormatter];
  v24 = [v4 initWithName:@"targetServiceUUID" value:v27 options:0 formatter:v25];
  v31[1] = v24;
  v5 = objc_alloc(MEMORY[0x1E69A29C8]);
  v23 = [(HMUserActionPrediction *)self targetGroupUUID];
  v6 = [MEMORY[0x1E69A2A48] defaultFormatter];
  v7 = [v5 initWithName:@"targetGroupUUID" value:v23 options:0 formatter:v6];
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

- (HMUserActionPrediction)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.UAPT.ck.pt"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.UAPT.ck.ts"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.UAPT.ck.tsg"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.UAPT.ck.pty"];
  v9 = [v8 unsignedIntValue];

  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.UAPT.ck.tgt"];
  v11 = [v10 unsignedIntValue];

  v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.UAPT.ck.ps"];

  [v12 doubleValue];
  v14 = v13;

  v15 = [(HMUserActionPrediction *)self initWithPredictionTargetUUID:v5 targetServiceUUID:v6 targetGroupUUID:v7 targetGroupType:v11 predictionType:v9 predictionScore:v14];
  return v15;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMUserActionPrediction *)self predictionTargetUUID];
  [v4 encodeObject:v5 forKey:@"HM.UAPT.ck.pt"];

  v6 = [(HMUserActionPrediction *)self targetServiceUUID];
  [v4 encodeObject:v6 forKey:@"HM.UAPT.ck.ts"];

  v7 = [(HMUserActionPrediction *)self targetGroupUUID];
  [v4 encodeObject:v7 forKey:@"HM.UAPT.ck.tsg"];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[HMUserActionPrediction predictionType](self, "predictionType")}];
  [v4 encodeObject:v8 forKey:@"HM.UAPT.ck.pty"];

  v9 = MEMORY[0x1E696AD98];
  [(HMUserActionPrediction *)self predictionScore];
  v10 = [v9 numberWithDouble:?];
  [v4 encodeObject:v10 forKey:@"HM.UAPT.ck.ps"];

  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[HMUserActionPrediction targetGroupType](self, "targetGroupType")}];
  [v4 encodeObject:v11 forKey:@"HM.UAPT.ck.tgt"];
}

- (unint64_t)hash
{
  v3 = [(HMUserActionPrediction *)self predictionTargetUUID];
  v4 = [v3 hash];
  v5 = [(HMUserActionPrediction *)self predictionType]^ v4;
  v6 = [(HMUserActionPrediction *)self targetServiceUUID];
  v7 = [v6 hash];
  v8 = [(HMUserActionPrediction *)self targetGroupUUID];
  v9 = v5 ^ v7 ^ [v8 hash];
  v10 = v9 ^ [(HMUserActionPrediction *)self targetGroupType];
  v11 = MEMORY[0x1E696AD98];
  [(HMUserActionPrediction *)self predictionScore];
  v12 = [v11 numberWithDouble:?];
  v13 = [v12 hash];

  return v10 ^ v13;
}

- (BOOL)isEqual:(id)a3 ignoreScore:(BOOL)a4 ignoreGroupProperties:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  if (v8 == self)
  {
    v16 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
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

    v11 = [(HMUserActionPrediction *)self targetGroupUUID];
    v12 = [(HMUserActionPrediction *)v10 targetGroupUUID];
    v13 = HMFEqualObjects();

    if (v13)
    {
      v14 = [(HMUserActionPrediction *)self targetGroupType];
      v15 = v14 == [(HMUserActionPrediction *)v10 targetGroupType];
    }

    else
    {
      v15 = 0;
    }

    v17 = [(HMUserActionPrediction *)self predictionTargetUUID];
    v18 = [(HMUserActionPrediction *)v10 predictionTargetUUID];
    v19 = HMFEqualObjects();

    if (v19)
    {
      v20 = [(HMUserActionPrediction *)self targetServiceUUID];
      v21 = [(HMUserActionPrediction *)v10 targetServiceUUID];
      v22 = HMFEqualObjects();

      v16 = 0;
      if (v22)
      {
        if (v5 || v15)
        {
          v23 = [(HMUserActionPrediction *)self predictionType];
          v24 = [(HMUserActionPrediction *)v10 predictionType];
          v16 = v23 == v24;
          if (v23 == v24 && !a4)
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
  v4 = [(HMUserActionPrediction *)self predictionTargetUUID];
  v5 = [(HMUserActionPrediction *)self targetServiceUUID];
  v6 = [(HMUserActionPrediction *)self predictionType];
  [(HMUserActionPrediction *)self predictionScore];
  v7 = [(HMUserActionPrediction *)v3 initWithPredictionTargetUUID:v4 targetServiceUUID:v5 predictionType:v6 predictionScore:?];

  return v7;
}

- (HMUserActionPrediction)initWithPredictionTargetUUID:(id)a3 targetServiceUUID:(id)a4 targetGroupUUID:(id)a5 targetGroupType:(unint64_t)a6 predictionType:(unint64_t)a7 predictionScore:(double)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v25.receiver = self;
  v25.super_class = HMUserActionPrediction;
  v17 = [(HMUserActionPrediction *)&v25 init];
  if (v17)
  {
    v18 = [MEMORY[0x1E69A2A28] hmf_cachedInstanceForNSUUID:v14];
    predictionTargetUUID = v17->_predictionTargetUUID;
    v17->_predictionTargetUUID = v18;

    v17->_predictionType = a7;
    v20 = [MEMORY[0x1E69A2A28] hmf_cachedInstanceForNSUUID:v15];
    targetServiceUUID = v17->_targetServiceUUID;
    v17->_targetServiceUUID = v20;

    v22 = [MEMORY[0x1E69A2A28] hmf_cachedInstanceForNSUUID:v16];
    targetGroupUUID = v17->_targetGroupUUID;
    v17->_targetGroupUUID = v22;

    v17->_targetGroupType = a6;
    v17->_predictionScore = a8;
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
@interface HMSoftwareUpdateProgress
+ (id)progressFromEvent:(id)a3;
- (HMSoftwareUpdateProgress)initWithPercentageComplete:(float)a3 estimatedTimeRemaining:(double)a4;
- (HMSoftwareUpdateProgress)initWithProtoPayload:(id)a3;
- (id)protoPayload;
@end

@implementation HMSoftwareUpdateProgress

- (HMSoftwareUpdateProgress)initWithProtoPayload:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 hasPercentageComplete] && (objc_msgSend(v4, "hasEstimatedTimeRemaining") & 1) != 0)
  {
    [v4 percentageComplete];
    v6 = v5;
    [v4 estimatedTimeRemaining];
    v8 = v7;
    LODWORD(v7) = v6;
    v9 = [(HMSoftwareUpdateProgress *)self initWithPercentageComplete:v7 estimatedTimeRemaining:v8];
    v10 = v9;
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v9 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      [v4 percentageComplete];
      v15 = v14;
      [v4 estimatedTimeRemaining];
      v19 = 138543874;
      v20 = v13;
      v21 = 2048;
      v22 = v15;
      v23 = 2048;
      v24 = v16;
      _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_ERROR, "%{public}@HMSoftwareUpdateEventProtoSoftwareUpdateProgress proto payload is missing data. percentageComplete: %f, estimatedTimeRemaining: %f", &v19, 0x20u);
    }

    objc_autoreleasePoolPop(v11);
    v10 = 0;
  }

  v17 = *MEMORY[0x1E69E9840];
  return v10;
}

- (id)protoPayload
{
  v3 = objc_alloc_init(HMSoftwareUpdateEventProtoSoftwareUpdateProgress);
  [(HMSoftwareUpdateProgress *)self percentageComplete];
  [(HMSoftwareUpdateEventProtoSoftwareUpdateProgress *)v3 setPercentageComplete:?];
  [(HMSoftwareUpdateProgress *)self estimatedTimeRemaining];
  [(HMSoftwareUpdateEventProtoSoftwareUpdateProgress *)v3 setEstimatedTimeRemaining:?];

  return v3;
}

- (HMSoftwareUpdateProgress)initWithPercentageComplete:(float)a3 estimatedTimeRemaining:(double)a4
{
  v7.receiver = self;
  v7.super_class = HMSoftwareUpdateProgress;
  result = [(HMSoftwareUpdateProgress *)&v7 init];
  if (result)
  {
    result->_percentageComplete = a3;
    result->_estimatedTimeRemaining = a4;
  }

  return result;
}

+ (id)progressFromEvent:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [HMSoftwareUpdateEventProtoSoftwareUpdateProgress alloc];
  v6 = [v4 encodedData];
  v7 = [(HMSoftwareUpdateEventProtoSoftwareUpdateProgress *)v5 initWithData:v6];

  if (v7)
  {
    v8 = [[HMSoftwareUpdateProgress alloc] initWithProtoPayload:v7];
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = a1;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v15 = 138543618;
      v16 = v12;
      v17 = 2112;
      v18 = v4;
      _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed to create HMSoftwareUpdateEventProtoSoftwareUpdateProgress from event: %@", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    v8 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];

  return v8;
}

@end
@interface HMSoftwareUpdateProgress
+ (id)progressFromEvent:(id)event;
- (HMSoftwareUpdateProgress)initWithPercentageComplete:(float)complete estimatedTimeRemaining:(double)remaining;
- (HMSoftwareUpdateProgress)initWithProtoPayload:(id)payload;
- (id)protoPayload;
@end

@implementation HMSoftwareUpdateProgress

- (HMSoftwareUpdateProgress)initWithProtoPayload:(id)payload
{
  v25 = *MEMORY[0x1E69E9840];
  payloadCopy = payload;
  if ([payloadCopy hasPercentageComplete] && (objc_msgSend(payloadCopy, "hasEstimatedTimeRemaining") & 1) != 0)
  {
    [payloadCopy percentageComplete];
    v6 = v5;
    [payloadCopy estimatedTimeRemaining];
    v8 = v7;
    LODWORD(v7) = v6;
    selfCopy = [(HMSoftwareUpdateProgress *)self initWithPercentageComplete:v7 estimatedTimeRemaining:v8];
    v10 = selfCopy;
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      [payloadCopy percentageComplete];
      v15 = v14;
      [payloadCopy estimatedTimeRemaining];
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

- (HMSoftwareUpdateProgress)initWithPercentageComplete:(float)complete estimatedTimeRemaining:(double)remaining
{
  v7.receiver = self;
  v7.super_class = HMSoftwareUpdateProgress;
  result = [(HMSoftwareUpdateProgress *)&v7 init];
  if (result)
  {
    result->_percentageComplete = complete;
    result->_estimatedTimeRemaining = remaining;
  }

  return result;
}

+ (id)progressFromEvent:(id)event
{
  v19 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  v5 = [HMSoftwareUpdateEventProtoSoftwareUpdateProgress alloc];
  encodedData = [eventCopy encodedData];
  v7 = [(HMSoftwareUpdateEventProtoSoftwareUpdateProgress *)v5 initWithData:encodedData];

  if (v7)
  {
    v8 = [[HMSoftwareUpdateProgress alloc] initWithProtoPayload:v7];
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v15 = 138543618;
      v16 = v12;
      v17 = 2112;
      v18 = eventCopy;
      _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed to create HMSoftwareUpdateEventProtoSoftwareUpdateProgress from event: %@", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    v8 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];

  return v8;
}

@end
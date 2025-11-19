@interface HMImmutableSettingChangeEvent
+ (id)decodeSettingFromEvent:(id)a3 error:(id *)a4;
- (HMImmutableSettingChangeEvent)initWithSetting:(id)a3 eventSource:(id)a4 eventTimestamp:(double)a5;
- (id)encodedData;
@end

@implementation HMImmutableSettingChangeEvent

- (id)encodedData
{
  v2 = [(HMImmutableSettingChangeEvent *)self setting];
  v3 = [v2 protoPayload];
  v4 = [v3 data];

  return v4;
}

- (HMImmutableSettingChangeEvent)initWithSetting:(id)a3 eventSource:(id)a4 eventTimestamp:(double)a5
{
  v9 = a3;
  v10 = MEMORY[0x1E69A45F0];
  v11 = a4;
  v12 = [[v10 alloc] initWithSource:v11 cachePolicy:2 combineType:2 timestamp:a5];

  v16.receiver = self;
  v16.super_class = HMImmutableSettingChangeEvent;
  v13 = [(HMEEvent *)&v16 initWithSubclassedEventMetadata:v12];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_setting, a3);
  }

  return v14;
}

+ (id)decodeSettingFromEvent:(id)a3 error:(id *)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [HMImmutableSettingsProtoSettingChangeEvent alloc];
  v7 = [v5 encodedData];
  v8 = [(HMImmutableSettingsProtoSettingChangeEvent *)v6 initWithData:v7];

  if (v8)
  {
    v9 = [[HMImmutableSetting alloc] initWithProtoPayload:v8];
    v10 = v9;
    if (a4 && !v9)
    {
      v11 = 3;
LABEL_9:
      [MEMORY[0x1E696ABC0] hmErrorWithCode:v11];
      *a4 = v10 = 0;
    }
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v17 = 138543618;
      v18 = v14;
      v19 = 2112;
      v20 = v5;
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@Unable to decode proto setting change event from event: %@", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    if (a4)
    {
      v11 = 19;
      goto LABEL_9;
    }

    v10 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];

  return v10;
}

@end
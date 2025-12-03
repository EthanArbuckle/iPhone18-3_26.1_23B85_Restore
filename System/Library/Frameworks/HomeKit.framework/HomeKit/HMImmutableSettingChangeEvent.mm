@interface HMImmutableSettingChangeEvent
+ (id)decodeSettingFromEvent:(id)event error:(id *)error;
- (HMImmutableSettingChangeEvent)initWithSetting:(id)setting eventSource:(id)source eventTimestamp:(double)timestamp;
- (id)encodedData;
@end

@implementation HMImmutableSettingChangeEvent

- (id)encodedData
{
  setting = [(HMImmutableSettingChangeEvent *)self setting];
  protoPayload = [setting protoPayload];
  data = [protoPayload data];

  return data;
}

- (HMImmutableSettingChangeEvent)initWithSetting:(id)setting eventSource:(id)source eventTimestamp:(double)timestamp
{
  settingCopy = setting;
  v10 = MEMORY[0x1E69A45F0];
  sourceCopy = source;
  v12 = [[v10 alloc] initWithSource:sourceCopy cachePolicy:2 combineType:2 timestamp:timestamp];

  v16.receiver = self;
  v16.super_class = HMImmutableSettingChangeEvent;
  v13 = [(HMEEvent *)&v16 initWithSubclassedEventMetadata:v12];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_setting, setting);
  }

  return v14;
}

+ (id)decodeSettingFromEvent:(id)event error:(id *)error
{
  v21 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  v6 = [HMImmutableSettingsProtoSettingChangeEvent alloc];
  encodedData = [eventCopy encodedData];
  v8 = [(HMImmutableSettingsProtoSettingChangeEvent *)v6 initWithData:encodedData];

  if (v8)
  {
    v9 = [[HMImmutableSetting alloc] initWithProtoPayload:v8];
    v10 = v9;
    if (error && !v9)
    {
      v11 = 3;
LABEL_9:
      [MEMORY[0x1E696ABC0] hmErrorWithCode:v11];
      *error = v10 = 0;
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
      v20 = eventCopy;
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@Unable to decode proto setting change event from event: %@", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    if (error)
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
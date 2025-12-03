@interface HMAudioAnalysisAggregateEventBulletin
+ (id)decodeBulletinsFromEvent:(id)event error:(id *)error;
+ (id)logCategory;
+ (id)shortDescription;
- (BOOL)checkIfBulletinExists:(id)exists;
- (HMAudioAnalysisAggregateEventBulletin)initWithBulletins:(id)bulletins eventSource:(id)source eventTimestamp:(double)timestamp;
- (NSArray)attributeDescriptions;
- (NSString)shortDescription;
- (id)bulletinsByAddingOrReplacingBulletin:(id)bulletin;
- (id)encodedData;
@end

@implementation HMAudioAnalysisAggregateEventBulletin

- (NSString)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (NSArray)attributeDescriptions
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69A29C8]);
  bulletins = [(HMAudioAnalysisAggregateEventBulletin *)self bulletins];
  v5 = bulletins;
  if (bulletins)
  {
    v6 = bulletins;
  }

  else
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  v7 = [v3 initWithName:@"Bulletins:" value:v6];
  v11[0] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)encodedData
{
  v3 = objc_alloc_init(HMAudioAnalysisEventBulletinEventProtoValueEvent);
  bulletins = [(HMAudioAnalysisAggregateEventBulletin *)self bulletins];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __52__HMAudioAnalysisAggregateEventBulletin_encodedData__block_invoke;
  v8[3] = &unk_1E754C898;
  v9 = v3;
  v5 = v3;
  [bulletins na_each:v8];

  data = [(HMAudioAnalysisEventBulletinEventProtoValueEvent *)v5 data];

  return data;
}

void __52__HMAudioAnalysisAggregateEventBulletin_encodedData__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 proto];
  [v2 addEvents:v3];
}

- (id)bulletinsByAddingOrReplacingBulletin:(id)bulletin
{
  bulletinCopy = bulletin;
  bulletins = [(HMAudioAnalysisAggregateEventBulletin *)self bulletins];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __78__HMAudioAnalysisAggregateEventBulletin_bulletinsByAddingOrReplacingBulletin___block_invoke;
  v10[3] = &unk_1E754C870;
  v11 = bulletinCopy;
  v6 = bulletinCopy;
  v7 = [bulletins na_filter:v10];

  v8 = [v7 arrayByAddingObject:v6];

  return v8;
}

- (BOOL)checkIfBulletinExists:(id)exists
{
  existsCopy = exists;
  bulletins = [(HMAudioAnalysisAggregateEventBulletin *)self bulletins];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __63__HMAudioAnalysisAggregateEventBulletin_checkIfBulletinExists___block_invoke;
  v9[3] = &unk_1E754C870;
  v10 = existsCopy;
  v6 = existsCopy;
  v7 = [bulletins na_any:v9];

  return v7;
}

- (HMAudioAnalysisAggregateEventBulletin)initWithBulletins:(id)bulletins eventSource:(id)source eventTimestamp:(double)timestamp
{
  bulletinsCopy = bulletins;
  v10 = MEMORY[0x1E69A45F0];
  sourceCopy = source;
  v12 = [[v10 alloc] initWithSource:sourceCopy cachePolicy:2 combineType:2 timestamp:timestamp];

  v17.receiver = self;
  v17.super_class = HMAudioAnalysisAggregateEventBulletin;
  v16.receiver = [(HMEEvent *)&v17 initWithSubclassedEventMetadata:v12];
  v16.super_class = HMAudioAnalysisAggregateEventBulletin;
  v13 = [(HMEEvent *)&v16 initWithSubclassedEventMetadata:v12];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_bulletins, bulletins);
  }

  return v14;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t1_51716 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t1_51716, &__block_literal_global_12_51717);
  }

  v3 = logCategory__hmf_once_v2_51718;

  return v3;
}

uint64_t __52__HMAudioAnalysisAggregateEventBulletin_logCategory__block_invoke()
{
  v0 = *MEMORY[0x1E69A29A0];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v2_51718;
  logCategory__hmf_once_v2_51718 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

+ (id)decodeBulletinsFromEvent:(id)event error:(id *)error
{
  v25 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  v6 = [HMAudioAnalysisEventBulletinEventProtoValueEvent alloc];
  encodedData = [eventCopy encodedData];
  v8 = [(HMAudioAnalysisEventBulletinEventProtoValueEvent *)v6 initWithData:encodedData];

  if (v8)
  {
    events = [(HMAudioAnalysisEventBulletinEventProtoValueEvent *)v8 events];
    array = [events na_map:&__block_literal_global_51729];

    if (!array)
    {
      array = [MEMORY[0x1E695DEC8] array];
    }

    v11 = [HMAudioAnalysisAggregateEventBulletin alloc];
    eventMetadata = [eventCopy eventMetadata];
    source = [eventMetadata source];
    eventMetadata2 = [eventCopy eventMetadata];
    [eventMetadata2 intervalSinceReferenceDate];
    v15 = [(HMAudioAnalysisAggregateEventBulletin *)v11 initWithBulletins:array eventSource:source eventTimestamp:?];

    if (error && !v15)
    {
      *error = [MEMORY[0x1E696ABC0] hmErrorWithCode:3];
    }
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      v21 = 138543618;
      v22 = v18;
      v23 = 2112;
      v24 = eventCopy;
      _os_log_impl(&dword_19BB39000, v17, OS_LOG_TYPE_ERROR, "%{public}@Unable to decode proto audio analysis aggregate event from: %@", &v21, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
    if (error)
    {
      [MEMORY[0x1E696ABC0] hmErrorWithCode:19];
      *error = v15 = 0;
    }

    else
    {
      v15 = 0;
    }
  }

  v19 = *MEMORY[0x1E69E9840];

  return v15;
}

@end
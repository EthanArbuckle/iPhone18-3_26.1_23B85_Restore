@interface HMAudioAnalysisAggregateEventBulletin
+ (id)decodeBulletinsFromEvent:(id)a3 error:(id *)a4;
+ (id)logCategory;
+ (id)shortDescription;
- (BOOL)checkIfBulletinExists:(id)a3;
- (HMAudioAnalysisAggregateEventBulletin)initWithBulletins:(id)a3 eventSource:(id)a4 eventTimestamp:(double)a5;
- (NSArray)attributeDescriptions;
- (NSString)shortDescription;
- (id)bulletinsByAddingOrReplacingBulletin:(id)a3;
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
  v4 = [(HMAudioAnalysisAggregateEventBulletin *)self bulletins];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
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
  v4 = [(HMAudioAnalysisAggregateEventBulletin *)self bulletins];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __52__HMAudioAnalysisAggregateEventBulletin_encodedData__block_invoke;
  v8[3] = &unk_1E754C898;
  v9 = v3;
  v5 = v3;
  [v4 na_each:v8];

  v6 = [(HMAudioAnalysisEventBulletinEventProtoValueEvent *)v5 data];

  return v6;
}

void __52__HMAudioAnalysisAggregateEventBulletin_encodedData__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 proto];
  [v2 addEvents:v3];
}

- (id)bulletinsByAddingOrReplacingBulletin:(id)a3
{
  v4 = a3;
  v5 = [(HMAudioAnalysisAggregateEventBulletin *)self bulletins];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __78__HMAudioAnalysisAggregateEventBulletin_bulletinsByAddingOrReplacingBulletin___block_invoke;
  v10[3] = &unk_1E754C870;
  v11 = v4;
  v6 = v4;
  v7 = [v5 na_filter:v10];

  v8 = [v7 arrayByAddingObject:v6];

  return v8;
}

- (BOOL)checkIfBulletinExists:(id)a3
{
  v4 = a3;
  v5 = [(HMAudioAnalysisAggregateEventBulletin *)self bulletins];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __63__HMAudioAnalysisAggregateEventBulletin_checkIfBulletinExists___block_invoke;
  v9[3] = &unk_1E754C870;
  v10 = v4;
  v6 = v4;
  v7 = [v5 na_any:v9];

  return v7;
}

- (HMAudioAnalysisAggregateEventBulletin)initWithBulletins:(id)a3 eventSource:(id)a4 eventTimestamp:(double)a5
{
  v9 = a3;
  v10 = MEMORY[0x1E69A45F0];
  v11 = a4;
  v12 = [[v10 alloc] initWithSource:v11 cachePolicy:2 combineType:2 timestamp:a5];

  v17.receiver = self;
  v17.super_class = HMAudioAnalysisAggregateEventBulletin;
  v16.receiver = [(HMEEvent *)&v17 initWithSubclassedEventMetadata:v12];
  v16.super_class = HMAudioAnalysisAggregateEventBulletin;
  v13 = [(HMEEvent *)&v16 initWithSubclassedEventMetadata:v12];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_bulletins, a3);
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

+ (id)decodeBulletinsFromEvent:(id)a3 error:(id *)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [HMAudioAnalysisEventBulletinEventProtoValueEvent alloc];
  v7 = [v5 encodedData];
  v8 = [(HMAudioAnalysisEventBulletinEventProtoValueEvent *)v6 initWithData:v7];

  if (v8)
  {
    v9 = [(HMAudioAnalysisEventBulletinEventProtoValueEvent *)v8 events];
    v10 = [v9 na_map:&__block_literal_global_51729];

    if (!v10)
    {
      v10 = [MEMORY[0x1E695DEC8] array];
    }

    v11 = [HMAudioAnalysisAggregateEventBulletin alloc];
    v12 = [v5 eventMetadata];
    v13 = [v12 source];
    v14 = [v5 eventMetadata];
    [v14 intervalSinceReferenceDate];
    v15 = [(HMAudioAnalysisAggregateEventBulletin *)v11 initWithBulletins:v10 eventSource:v13 eventTimestamp:?];

    if (a4 && !v15)
    {
      *a4 = [MEMORY[0x1E696ABC0] hmErrorWithCode:3];
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
      v24 = v5;
      _os_log_impl(&dword_19BB39000, v17, OS_LOG_TYPE_ERROR, "%{public}@Unable to decode proto audio analysis aggregate event from: %@", &v21, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
    if (a4)
    {
      [MEMORY[0x1E696ABC0] hmErrorWithCode:19];
      *a4 = v15 = 0;
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
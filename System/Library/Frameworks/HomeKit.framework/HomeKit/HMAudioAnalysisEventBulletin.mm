@interface HMAudioAnalysisEventBulletin
+ (id)initWithProto:(id)a3;
+ (id)logCategory;
+ (id)shortDescription;
- (BOOL)isEqual:(id)a3;
- (HMAudioAnalysisEventBulletin)initWithAccessoryIdentifier:(id)a3 homeIdentifier:(id)a4 startDate:(id)a5 endDate:(id)a6 reason:(unint64_t)a7 state:(unint64_t)a8;
- (NSArray)attributeDescriptions;
- (NSString)shortDescription;
- (id)proto;
@end

@implementation HMAudioAnalysisEventBulletin

- (NSString)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (NSArray)attributeDescriptions
{
  v32[6] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69A29C8]);
  v4 = [(HMAudioAnalysisEventBulletin *)self accessoryIdentifier];
  v31 = v4;
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = @"nil";
  }

  v30 = [v3 initWithName:@"accessory" value:v5];
  v32[0] = v30;
  v6 = objc_alloc(MEMORY[0x1E69A29C8]);
  v7 = [(HMAudioAnalysisEventBulletin *)self homeIdentifier];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = @"nil";
  }

  v29 = [v6 initWithName:@"homeIdentifier" value:v9];
  v32[1] = v29;
  v10 = objc_alloc(MEMORY[0x1E69A29C8]);
  v28 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[HMAudioAnalysisEventBulletin reason](self, "reason")}];
  v11 = [v10 initWithName:@"reason" value:v28];
  v32[2] = v11;
  v12 = objc_alloc(MEMORY[0x1E69A29C8]);
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[HMAudioAnalysisEventBulletin state](self, "state")}];
  v14 = [v12 initWithName:@"state" value:v13];
  v32[3] = v14;
  v15 = objc_alloc(MEMORY[0x1E69A29C8]);
  v16 = [(HMAudioAnalysisEventBulletin *)self startDate];
  v17 = v16;
  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = @"nil";
  }

  v19 = [v15 initWithName:@"startDate" value:v18];
  v32[4] = v19;
  v20 = objc_alloc(MEMORY[0x1E69A29C8]);
  v21 = [(HMAudioAnalysisEventBulletin *)self dateOfOccurrence];
  v22 = v21;
  if (v21)
  {
    v23 = v21;
  }

  else
  {
    v23 = @"nil";
  }

  v24 = [v20 initWithName:@"endDate" value:v23];
  v32[5] = v24;
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:6];

  v26 = *MEMORY[0x1E69E9840];

  return v25;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
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
  if (self == v4)
  {
    v16 = 1;
  }

  else if (v6)
  {
    v8 = [(HMAudioAnalysisEventBulletin *)self dateOfOccurrence];
    v9 = [(HMAudioAnalysisEventBulletin *)v7 dateOfOccurrence];
    if (v8 == v9 && (v10 = [(HMAudioAnalysisEventBulletin *)self state], v10 == [(HMAudioAnalysisEventBulletin *)v7 state]) && (v11 = [(HMAudioAnalysisEventBulletin *)self reason], v11 == [(HMAudioAnalysisEventBulletin *)v7 reason]))
    {
      v12 = [(HMAudioAnalysisEventBulletin *)self homeIdentifier];
      v13 = [(HMAudioAnalysisEventBulletin *)v7 homeIdentifier];
      if ([v12 isEqual:v13])
      {
        v14 = [(HMAudioAnalysisEventBulletin *)self accessoryIdentifier];
        v15 = [(HMAudioAnalysisEventBulletin *)v7 accessoryIdentifier];
        v16 = [v14 isEqual:v15];
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)proto
{
  v3 = objc_alloc_init(HMAudioAnalysisEventBulletinEventProtoAudioAnalysisEventBulletinEvent);
  [(HMAudioAnalysisEventBulletinEventProtoAudioAnalysisEventBulletinEvent *)v3 setState:[(HMAudioAnalysisEventBulletin *)self state]];
  [(HMAudioAnalysisEventBulletinEventProtoAudioAnalysisEventBulletinEvent *)v3 setReason:[(HMAudioAnalysisEventBulletin *)self reason]];
  v4 = [(HMAudioAnalysisEventBulletin *)self dateOfOccurrence];
  [v4 timeIntervalSince1970];
  [(HMAudioAnalysisEventBulletinEventProtoAudioAnalysisEventBulletinEvent *)v3 setDateOfOccurrence:(v5 * 1000.0)];

  v6 = [(HMAudioAnalysisEventBulletin *)self accessoryIdentifier];
  v7 = [v6 UUIDString];
  [(HMAudioAnalysisEventBulletinEventProtoAudioAnalysisEventBulletinEvent *)v3 setAccessoryIdentifier:v7];

  v8 = [(HMAudioAnalysisEventBulletin *)self homeIdentifier];
  v9 = [v8 UUIDString];
  [(HMAudioAnalysisEventBulletinEventProtoAudioAnalysisEventBulletinEvent *)v3 setHomeIdentifier:v9];

  v10 = [(HMAudioAnalysisEventBulletin *)self startDate];
  [v10 timeIntervalSince1970];
  [(HMAudioAnalysisEventBulletinEventProtoAudioAnalysisEventBulletinEvent *)v3 setEventStartDate:(v11 * 1000.0)];

  return v3;
}

- (HMAudioAnalysisEventBulletin)initWithAccessoryIdentifier:(id)a3 homeIdentifier:(id)a4 startDate:(id)a5 endDate:(id)a6 reason:(unint64_t)a7 state:(unint64_t)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v22.receiver = self;
  v22.super_class = HMAudioAnalysisEventBulletin;
  v18 = [(HMAudioAnalysisEventBulletin *)&v22 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_accessoryIdentifier, a3);
    objc_storeStrong(&v19->_homeIdentifier, a4);
    objc_storeStrong(&v19->_dateOfOccurrence, a6);
    v19->_state = a8;
    v19->_reason = a7;
    objc_storeStrong(&v19->_startDate, a5);
  }

  return v19;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t1_47541 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t1_47541, &__block_literal_global_47542);
  }

  v3 = logCategory__hmf_once_v2_47543;

  return v3;
}

uint64_t __43__HMAudioAnalysisEventBulletin_logCategory__block_invoke()
{
  v0 = *MEMORY[0x1E69A29A0];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v2_47543;
  logCategory__hmf_once_v2_47543 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

+ (id)initWithProto:(id)a3
{
  v3 = a3;
  if ([v3 hasState] && objc_msgSend(v3, "hasReason") && objc_msgSend(v3, "hasAccessoryIdentifier") && objc_msgSend(v3, "hasHomeIdentifier") && objc_msgSend(v3, "hasDateOfOccurrence"))
  {
    v4 = [v3 dateOfOccurrence] / 1000.0;
    v5 = [v3 eventStartDate] / 1000.0;
    v6 = [v3 reason];
    v7 = [v3 state];
    v8 = [HMAudioAnalysisEventBulletin alloc];
    v9 = objc_alloc(MEMORY[0x1E696AFB0]);
    v10 = [v3 accessoryIdentifier];
    v11 = [v9 initWithUUIDString:v10];
    v12 = objc_alloc(MEMORY[0x1E696AFB0]);
    v13 = [v3 homeIdentifier];
    v14 = [v12 initWithUUIDString:v13];
    v15 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:v5];
    v16 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:v4];
    v17 = [(HMAudioAnalysisEventBulletin *)v8 initWithAccessoryIdentifier:v11 homeIdentifier:v14 startDate:v15 endDate:v16 reason:v6 state:v7];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

@end
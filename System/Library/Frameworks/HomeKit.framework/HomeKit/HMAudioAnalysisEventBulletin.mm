@interface HMAudioAnalysisEventBulletin
+ (id)initWithProto:(id)proto;
+ (id)logCategory;
+ (id)shortDescription;
- (BOOL)isEqual:(id)equal;
- (HMAudioAnalysisEventBulletin)initWithAccessoryIdentifier:(id)identifier homeIdentifier:(id)homeIdentifier startDate:(id)date endDate:(id)endDate reason:(unint64_t)reason state:(unint64_t)state;
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
  accessoryIdentifier = [(HMAudioAnalysisEventBulletin *)self accessoryIdentifier];
  v31 = accessoryIdentifier;
  if (accessoryIdentifier)
  {
    v5 = accessoryIdentifier;
  }

  else
  {
    v5 = @"nil";
  }

  v30 = [v3 initWithName:@"accessory" value:v5];
  v32[0] = v30;
  v6 = objc_alloc(MEMORY[0x1E69A29C8]);
  homeIdentifier = [(HMAudioAnalysisEventBulletin *)self homeIdentifier];
  v8 = homeIdentifier;
  if (homeIdentifier)
  {
    v9 = homeIdentifier;
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
  startDate = [(HMAudioAnalysisEventBulletin *)self startDate];
  v17 = startDate;
  if (startDate)
  {
    v18 = startDate;
  }

  else
  {
    v18 = @"nil";
  }

  v19 = [v15 initWithName:@"startDate" value:v18];
  v32[4] = v19;
  v20 = objc_alloc(MEMORY[0x1E69A29C8]);
  dateOfOccurrence = [(HMAudioAnalysisEventBulletin *)self dateOfOccurrence];
  v22 = dateOfOccurrence;
  if (dateOfOccurrence)
  {
    v23 = dateOfOccurrence;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
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
  if (self == equalCopy)
  {
    v16 = 1;
  }

  else if (v6)
  {
    dateOfOccurrence = [(HMAudioAnalysisEventBulletin *)self dateOfOccurrence];
    dateOfOccurrence2 = [(HMAudioAnalysisEventBulletin *)v7 dateOfOccurrence];
    if (dateOfOccurrence == dateOfOccurrence2 && (v10 = [(HMAudioAnalysisEventBulletin *)self state], v10 == [(HMAudioAnalysisEventBulletin *)v7 state]) && (v11 = [(HMAudioAnalysisEventBulletin *)self reason], v11 == [(HMAudioAnalysisEventBulletin *)v7 reason]))
    {
      homeIdentifier = [(HMAudioAnalysisEventBulletin *)self homeIdentifier];
      homeIdentifier2 = [(HMAudioAnalysisEventBulletin *)v7 homeIdentifier];
      if ([homeIdentifier isEqual:homeIdentifier2])
      {
        accessoryIdentifier = [(HMAudioAnalysisEventBulletin *)self accessoryIdentifier];
        accessoryIdentifier2 = [(HMAudioAnalysisEventBulletin *)v7 accessoryIdentifier];
        v16 = [accessoryIdentifier isEqual:accessoryIdentifier2];
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
  dateOfOccurrence = [(HMAudioAnalysisEventBulletin *)self dateOfOccurrence];
  [dateOfOccurrence timeIntervalSince1970];
  [(HMAudioAnalysisEventBulletinEventProtoAudioAnalysisEventBulletinEvent *)v3 setDateOfOccurrence:(v5 * 1000.0)];

  accessoryIdentifier = [(HMAudioAnalysisEventBulletin *)self accessoryIdentifier];
  uUIDString = [accessoryIdentifier UUIDString];
  [(HMAudioAnalysisEventBulletinEventProtoAudioAnalysisEventBulletinEvent *)v3 setAccessoryIdentifier:uUIDString];

  homeIdentifier = [(HMAudioAnalysisEventBulletin *)self homeIdentifier];
  uUIDString2 = [homeIdentifier UUIDString];
  [(HMAudioAnalysisEventBulletinEventProtoAudioAnalysisEventBulletinEvent *)v3 setHomeIdentifier:uUIDString2];

  startDate = [(HMAudioAnalysisEventBulletin *)self startDate];
  [startDate timeIntervalSince1970];
  [(HMAudioAnalysisEventBulletinEventProtoAudioAnalysisEventBulletinEvent *)v3 setEventStartDate:(v11 * 1000.0)];

  return v3;
}

- (HMAudioAnalysisEventBulletin)initWithAccessoryIdentifier:(id)identifier homeIdentifier:(id)homeIdentifier startDate:(id)date endDate:(id)endDate reason:(unint64_t)reason state:(unint64_t)state
{
  identifierCopy = identifier;
  homeIdentifierCopy = homeIdentifier;
  dateCopy = date;
  endDateCopy = endDate;
  v22.receiver = self;
  v22.super_class = HMAudioAnalysisEventBulletin;
  v18 = [(HMAudioAnalysisEventBulletin *)&v22 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_accessoryIdentifier, identifier);
    objc_storeStrong(&v19->_homeIdentifier, homeIdentifier);
    objc_storeStrong(&v19->_dateOfOccurrence, endDate);
    v19->_state = state;
    v19->_reason = reason;
    objc_storeStrong(&v19->_startDate, date);
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

+ (id)initWithProto:(id)proto
{
  protoCopy = proto;
  if ([protoCopy hasState] && objc_msgSend(protoCopy, "hasReason") && objc_msgSend(protoCopy, "hasAccessoryIdentifier") && objc_msgSend(protoCopy, "hasHomeIdentifier") && objc_msgSend(protoCopy, "hasDateOfOccurrence"))
  {
    v4 = [protoCopy dateOfOccurrence] / 1000.0;
    v5 = [protoCopy eventStartDate] / 1000.0;
    reason = [protoCopy reason];
    state = [protoCopy state];
    v8 = [HMAudioAnalysisEventBulletin alloc];
    v9 = objc_alloc(MEMORY[0x1E696AFB0]);
    accessoryIdentifier = [protoCopy accessoryIdentifier];
    v11 = [v9 initWithUUIDString:accessoryIdentifier];
    v12 = objc_alloc(MEMORY[0x1E696AFB0]);
    homeIdentifier = [protoCopy homeIdentifier];
    v14 = [v12 initWithUUIDString:homeIdentifier];
    v15 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:v5];
    v16 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:v4];
    v17 = [(HMAudioAnalysisEventBulletin *)v8 initWithAccessoryIdentifier:v11 homeIdentifier:v14 startDate:v15 endDate:v16 reason:reason state:state];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

@end
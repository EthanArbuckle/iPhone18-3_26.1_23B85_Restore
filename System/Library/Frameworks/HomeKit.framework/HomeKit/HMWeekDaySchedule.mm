@interface HMWeekDaySchedule
+ (id)logCategory;
+ (id)shortDescription;
- (HMWeekDaySchedule)initWithCoder:(id)coder;
- (HMWeekDaySchedule)initWithScheduleRules:(id)rules;
- (NSArray)attributeDescriptions;
- (NSString)shortDescription;
@end

@implementation HMWeekDaySchedule

- (NSString)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (NSArray)attributeDescriptions
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69A29C8]);
  scheduleRules = [(HMWeekDaySchedule *)self scheduleRules];
  v5 = [v3 initWithName:@"rules" value:scheduleRules];
  v9[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (HMWeekDaySchedule)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = HMWeekDaySchedule;
  return [(HMWeekDaySchedule *)&v4 init];
}

- (HMWeekDaySchedule)initWithScheduleRules:(id)rules
{
  rulesCopy = rules;
  v9.receiver = self;
  v9.super_class = HMWeekDaySchedule;
  v6 = [(HMWeekDaySchedule *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_scheduleRules, rules);
  }

  return v7;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_44007 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_44007, &__block_literal_global_44008);
  }

  v3 = logCategory__hmf_once_v1_44009;

  return v3;
}

uint64_t __32__HMWeekDaySchedule_logCategory__block_invoke()
{
  v0 = *MEMORY[0x1E69A2980];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_44009;
  logCategory__hmf_once_v1_44009 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end
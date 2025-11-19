@interface HMYearDayScheduleRule
+ (id)shortDescription;
- (BOOL)isEqual:(id)a3;
- (HMYearDayScheduleRule)initWithCoder:(id)a3;
- (HMYearDayScheduleRule)initWithDateInterval:(id)a3;
- (HMYearDayScheduleRule)initWithDictionary:(id)a3;
- (HMYearDayScheduleRule)initWithValidFrom:(id)a3 validUntil:(id)a4;
- (NSArray)attributeDescriptions;
- (NSDate)validFrom;
- (NSDate)validUntil;
- (NSString)shortDescription;
- (id)dictionaryRepresentation;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMYearDayScheduleRule

- (NSArray)attributeDescriptions
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69A29C8]);
  v4 = [(HMYearDayScheduleRule *)self dateInterval];
  v5 = [v3 initWithName:@"Date Interval" value:v4];
  v9[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (NSString)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (HMYearDayScheduleRule)initWithCoder:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMYearDayScheduleCodingKeyDateInterval"];
  if (v5)
  {
    v6 = [(HMYearDayScheduleRule *)self initWithDateInterval:v5];
    v7 = v6;
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v6 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v13 = 138543618;
      v14 = v10;
      v15 = 2112;
      v16 = 0;
      _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_ERROR, "%{public}@Could not initialize from dateInterval: %@", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v7 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMYearDayScheduleRule *)self dateInterval];
  [v4 encodeObject:v5 forKey:@"HMYearDayScheduleCodingKeyDateInterval"];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [HMMutableYearDayScheduleRule allocWithZone:a3];
  v5 = [(HMYearDayScheduleRule *)self dateInterval];
  v6 = [(HMYearDayScheduleRule *)v4 initWithDateInterval:v5];

  return v6;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (HMYearDayScheduleRule)initWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 hmf_dateForKey:@"HMDStartDateKey"];
  v6 = [v4 hmf_dateForKey:@"HMDEndDateKey"];

  v7 = 0;
  if (v5 && v6)
  {
    v8 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:v5 endDate:v6];
    self = [(HMYearDayScheduleRule *)self initWithDateInterval:v8];

    v7 = self;
  }

  return v7;
}

- (id)dictionaryRepresentation
{
  v12[2] = *MEMORY[0x1E69E9840];
  v3 = [(HMYearDayScheduleRule *)self dateInterval];

  if (v3)
  {
    v11[0] = @"HMDStartDateKey";
    v4 = [(HMYearDayScheduleRule *)self dateInterval];
    v5 = [v4 startDate];
    v11[1] = @"HMDEndDateKey";
    v12[0] = v5;
    v6 = [(HMYearDayScheduleRule *)self dateInterval];
    v7 = [v6 endDate];
    v12[1] = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
  }

  else
  {
    v8 = MEMORY[0x1E695E0F8];
  }

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (unint64_t)hash
{
  v2 = [(HMYearDayScheduleRule *)self dateInterval];
  v3 = [v2 hash];

  return v3;
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
  if (v6)
  {
    v7 = [(HMYearDayScheduleRule *)self dateInterval];
    v8 = [v6 dateInterval];
    v9 = [v7 isEqualToDateInterval:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (NSDate)validUntil
{
  v2 = [(HMYearDayScheduleRule *)self dateInterval];
  v3 = [v2 endDate];

  return v3;
}

- (NSDate)validFrom
{
  v2 = [(HMYearDayScheduleRule *)self dateInterval];
  v3 = [v2 startDate];

  return v3;
}

- (HMYearDayScheduleRule)initWithValidFrom:(id)a3 validUntil:(id)a4
{
  v6 = MEMORY[0x1E696AB80];
  v7 = a4;
  v8 = a3;
  v9 = [[v6 alloc] initWithStartDate:v8 endDate:v7];

  v10 = [(HMYearDayScheduleRule *)self initWithDateInterval:v9];
  return v10;
}

- (HMYearDayScheduleRule)initWithDateInterval:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = HMYearDayScheduleRule;
  v5 = [(HMYearDayScheduleRule *)&v10 init];
  if (v5)
  {
    if (!v4)
    {
      v8 = 0;
      goto LABEL_6;
    }

    v6 = [v4 copy];
    dateInterval = v5->_dateInterval;
    v5->_dateInterval = v6;
  }

  v8 = v5;
LABEL_6:

  return v8;
}

@end
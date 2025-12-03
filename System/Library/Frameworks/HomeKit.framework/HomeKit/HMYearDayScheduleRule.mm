@interface HMYearDayScheduleRule
+ (id)shortDescription;
- (BOOL)isEqual:(id)equal;
- (HMYearDayScheduleRule)initWithCoder:(id)coder;
- (HMYearDayScheduleRule)initWithDateInterval:(id)interval;
- (HMYearDayScheduleRule)initWithDictionary:(id)dictionary;
- (HMYearDayScheduleRule)initWithValidFrom:(id)from validUntil:(id)until;
- (NSArray)attributeDescriptions;
- (NSDate)validFrom;
- (NSDate)validUntil;
- (NSString)shortDescription;
- (id)dictionaryRepresentation;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMYearDayScheduleRule

- (NSArray)attributeDescriptions
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69A29C8]);
  dateInterval = [(HMYearDayScheduleRule *)self dateInterval];
  v5 = [v3 initWithName:@"Date Interval" value:dateInterval];
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

- (HMYearDayScheduleRule)initWithCoder:(id)coder
{
  v17 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMYearDayScheduleCodingKeyDateInterval"];
  if (v5)
  {
    selfCopy = [(HMYearDayScheduleRule *)self initWithDateInterval:v5];
    v7 = selfCopy;
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  dateInterval = [(HMYearDayScheduleRule *)self dateInterval];
  [coderCopy encodeObject:dateInterval forKey:@"HMYearDayScheduleCodingKeyDateInterval"];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [HMMutableYearDayScheduleRule allocWithZone:zone];
  dateInterval = [(HMYearDayScheduleRule *)self dateInterval];
  v6 = [(HMYearDayScheduleRule *)v4 initWithDateInterval:dateInterval];

  return v6;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (HMYearDayScheduleRule)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy hmf_dateForKey:@"HMDStartDateKey"];
  v6 = [dictionaryCopy hmf_dateForKey:@"HMDEndDateKey"];

  selfCopy = 0;
  if (v5 && v6)
  {
    v8 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:v5 endDate:v6];
    self = [(HMYearDayScheduleRule *)self initWithDateInterval:v8];

    selfCopy = self;
  }

  return selfCopy;
}

- (id)dictionaryRepresentation
{
  v12[2] = *MEMORY[0x1E69E9840];
  dateInterval = [(HMYearDayScheduleRule *)self dateInterval];

  if (dateInterval)
  {
    v11[0] = @"HMDStartDateKey";
    dateInterval2 = [(HMYearDayScheduleRule *)self dateInterval];
    startDate = [dateInterval2 startDate];
    v11[1] = @"HMDEndDateKey";
    v12[0] = startDate;
    dateInterval3 = [(HMYearDayScheduleRule *)self dateInterval];
    endDate = [dateInterval3 endDate];
    v12[1] = endDate;
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
  dateInterval = [(HMYearDayScheduleRule *)self dateInterval];
  v3 = [dateInterval hash];

  return v3;
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
  if (v6)
  {
    dateInterval = [(HMYearDayScheduleRule *)self dateInterval];
    dateInterval2 = [v6 dateInterval];
    v9 = [dateInterval isEqualToDateInterval:dateInterval2];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (NSDate)validUntil
{
  dateInterval = [(HMYearDayScheduleRule *)self dateInterval];
  endDate = [dateInterval endDate];

  return endDate;
}

- (NSDate)validFrom
{
  dateInterval = [(HMYearDayScheduleRule *)self dateInterval];
  startDate = [dateInterval startDate];

  return startDate;
}

- (HMYearDayScheduleRule)initWithValidFrom:(id)from validUntil:(id)until
{
  v6 = MEMORY[0x1E696AB80];
  untilCopy = until;
  fromCopy = from;
  v9 = [[v6 alloc] initWithStartDate:fromCopy endDate:untilCopy];

  v10 = [(HMYearDayScheduleRule *)self initWithDateInterval:v9];
  return v10;
}

- (HMYearDayScheduleRule)initWithDateInterval:(id)interval
{
  intervalCopy = interval;
  v10.receiver = self;
  v10.super_class = HMYearDayScheduleRule;
  v5 = [(HMYearDayScheduleRule *)&v10 init];
  if (v5)
  {
    if (!intervalCopy)
    {
      v8 = 0;
      goto LABEL_6;
    }

    v6 = [intervalCopy copy];
    dateInterval = v5->_dateInterval;
    v5->_dateInterval = v6;
  }

  v8 = v5;
LABEL_6:

  return v8;
}

@end
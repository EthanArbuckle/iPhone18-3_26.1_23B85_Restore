@interface HMWeekDayScheduleRule
+ (id)shortDescription;
- (BOOL)isEqual:(id)a3;
- (BOOL)isValidSchedule;
- (BOOL)validTimes:(id)a3 endTime:(id)a4;
- (HMWeekDayScheduleRule)initWithCoder:(id)a3;
- (HMWeekDayScheduleRule)initWithDictionary:(id)a3;
- (HMWeekDayScheduleRule)initWithStartTime:(id)a3 endTime:(id)a4 daysOfTheWeek:(unint64_t)a5;
- (NSArray)attributeDescriptions;
- (NSString)shortDescription;
- (id)dictionaryRepresentation;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMWeekDayScheduleRule

- (NSArray)attributeDescriptions
{
  v15[3] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69A29C8]);
  v4 = [(HMWeekDayScheduleRule *)self startTime];
  v5 = [v3 initWithName:@"startTime" value:v4];
  v6 = objc_alloc(MEMORY[0x1E69A29C8]);
  v7 = [(HMWeekDayScheduleRule *)self endTime];
  v8 = [v6 initWithName:@"endTime" value:v7];
  v15[1] = v8;
  v9 = objc_alloc(MEMORY[0x1E69A29C8]);
  v10 = HMDaysOfTheWeekToConciseString([(HMWeekDayScheduleRule *)self daysOfTheWeek]);
  v11 = [v9 initWithName:@"daysOfTheWeek" value:v10];
  v15[2] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:3];

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (NSString)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (HMWeekDayScheduleRule)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMWeekDayScheduleRuleCodingKeyStartTime"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMWeekDayScheduleRuleCodingKeyEndTime"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMWeekDayScheduleRuleCodingKeyDaysOfTheWeek"];

  v8 = -[HMWeekDayScheduleRule initWithStartTime:endTime:daysOfTheWeek:](self, "initWithStartTime:endTime:daysOfTheWeek:", v5, v6, [v7 unsignedIntegerValue]);
  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMWeekDayScheduleRule *)self startTime];
  [v4 encodeObject:v5 forKey:@"HMWeekDayScheduleRuleCodingKeyStartTime"];

  v6 = [(HMWeekDayScheduleRule *)self endTime];
  [v4 encodeObject:v6 forKey:@"HMWeekDayScheduleRuleCodingKeyEndTime"];

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[HMWeekDayScheduleRule daysOfTheWeek](self, "daysOfTheWeek")}];
  [v4 encodeObject:v7 forKey:@"HMWeekDayScheduleRuleCodingKeyDaysOfTheWeek"];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [HMMutableWeekDayScheduleRule allocWithZone:a3];
  v5 = [(HMWeekDayScheduleRule *)self startTime];
  v6 = [(HMWeekDayScheduleRule *)self endTime];
  v7 = [(HMWeekDayScheduleRule *)v4 initWithStartTime:v5 endTime:v6 daysOfTheWeek:[(HMWeekDayScheduleRule *)self daysOfTheWeek]];

  return v7;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (HMWeekDayScheduleRule)initWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 hmf_numberForKey:@"HMWeekDayScheduleRuleCodingKeyStartTime"];
  v6 = [v4 hmf_numberForKey:@"HMWeekDayScheduleRuleCodingKeyEndTime"];
  v7 = [v4 hmf_numberForKey:@"HMWeekDayScheduleRuleCodingKeyDaysOfTheWeek"];

  v8 = HMDateComponentFromSecondsOfDay(v5);
  v9 = HMDateComponentFromSecondsOfDay(v6);
  v10 = -[HMWeekDayScheduleRule initWithStartTime:endTime:daysOfTheWeek:](self, "initWithStartTime:endTime:daysOfTheWeek:", v8, v9, [v7 unsignedIntegerValue]);

  return v10;
}

- (id)dictionaryRepresentation
{
  v15[3] = *MEMORY[0x1E69E9840];
  v3 = [(HMWeekDayScheduleRule *)self startTime];
  if (v3 && (v4 = v3, [(HMWeekDayScheduleRule *)self endTime], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, v5))
  {
    v14[0] = @"HMWeekDayScheduleRuleCodingKeyStartTime";
    v6 = [(HMWeekDayScheduleRule *)self startTime];
    v7 = HMSecondsFromDateComponent(v6);
    v15[0] = v7;
    v14[1] = @"HMWeekDayScheduleRuleCodingKeyEndTime";
    v8 = [(HMWeekDayScheduleRule *)self endTime];
    v9 = HMSecondsFromDateComponent(v8);
    v15[1] = v9;
    v14[2] = @"HMWeekDayScheduleRuleCodingKeyDaysOfTheWeek";
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[HMWeekDayScheduleRule daysOfTheWeek](self, "daysOfTheWeek")}];
    v15[2] = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:3];
  }

  else
  {
    v11 = MEMORY[0x1E695E0F8];
  }

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (unint64_t)hash
{
  v3 = [(HMWeekDayScheduleRule *)self startTime];
  v4 = [v3 hash];
  v5 = [(HMWeekDayScheduleRule *)self endTime];
  v6 = [v5 hash] ^ v4;
  v7 = [(HMWeekDayScheduleRule *)self daysOfTheWeek];

  return v6 ^ v7;
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
    v7 = [(HMWeekDayScheduleRule *)self startTime];
    v8 = [v7 hour];
    v9 = [v6 startTime];
    if (v8 == [v9 hour])
    {
      v10 = [(HMWeekDayScheduleRule *)self startTime];
      v11 = [v10 minute];
      v12 = [v6 startTime];
      if (v11 == [v12 minute])
      {
        v13 = [(HMWeekDayScheduleRule *)self endTime];
        v14 = [v13 hour];
        v15 = [v6 endTime];
        if (v14 == [v15 hour])
        {
          v21 = [(HMWeekDayScheduleRule *)self endTime];
          v16 = [v21 minute];
          v20 = [v6 endTime];
          if (v16 == [v20 minute])
          {
            v17 = [(HMWeekDayScheduleRule *)self daysOfTheWeek];
            v18 = v17 == [v6 daysOfTheWeek];
          }

          else
          {
            v18 = 0;
          }
        }

        else
        {
          v18 = 0;
        }
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (HMWeekDayScheduleRule)initWithStartTime:(id)a3 endTime:(id)a4 daysOfTheWeek:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v18.receiver = self;
  v18.super_class = HMWeekDayScheduleRule;
  v10 = [(HMWeekDayScheduleRule *)&v18 init];
  v11 = v10;
  if (!v10)
  {
LABEL_7:
    v12 = v11;
    goto LABEL_9;
  }

  v12 = 0;
  if (v8 && v9 && a5)
  {
    if (![(HMWeekDayScheduleRule *)v10 validTimes:v8 endTime:v9])
    {
      v12 = 0;
      goto LABEL_9;
    }

    v13 = objc_alloc_init(MEMORY[0x1E695DF10]);
    startTime = v11->_startTime;
    v11->_startTime = v13;

    -[NSDateComponents setHour:](v11->_startTime, "setHour:", [v8 hour]);
    -[NSDateComponents setMinute:](v11->_startTime, "setMinute:", [v8 minute]);
    v15 = objc_alloc_init(MEMORY[0x1E695DF10]);
    endTime = v11->_endTime;
    v11->_endTime = v15;

    -[NSDateComponents setHour:](v11->_endTime, "setHour:", [v9 hour]);
    -[NSDateComponents setMinute:](v11->_endTime, "setMinute:", [v9 minute]);
    v11->_daysOfTheWeek = a5;
    goto LABEL_7;
  }

LABEL_9:

  return v12;
}

- (BOOL)validTimes:(id)a3 endTime:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = 0;
  if (([v5 hour] & 0x8000000000000000) == 0 && objc_msgSend(v5, "hour") <= 23 && (objc_msgSend(v5, "minute") & 0x8000000000000000) == 0 && objc_msgSend(v5, "minute") <= 59 && (objc_msgSend(v6, "hour") & 0x8000000000000000) == 0 && objc_msgSend(v6, "hour") <= 23 && (objc_msgSend(v6, "minute") & 0x8000000000000000) == 0 && objc_msgSend(v6, "minute") <= 59)
  {
    v9 = [v6 hour];
    if (v9 != [v5 hour] || (v10 = objc_msgSend(v6, "minute"), v10 != objc_msgSend(v5, "minute")))
    {
      v7 = 1;
    }
  }

  return v7;
}

- (BOOL)isValidSchedule
{
  v3 = [(HMWeekDayScheduleRule *)self endTime];
  v4 = [v3 hour];
  v5 = [(HMWeekDayScheduleRule *)self startTime];
  if (v4 >= [v5 hour])
  {
    v7 = [(HMWeekDayScheduleRule *)self endTime];
    v8 = [v7 hour];
    v9 = [(HMWeekDayScheduleRule *)self startTime];
    if (v8 == [v9 hour])
    {
      v10 = [(HMWeekDayScheduleRule *)self endTime];
      v11 = [v10 minute];
      v12 = [(HMWeekDayScheduleRule *)self startTime];
      v6 = v11 > [v12 minute];
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end
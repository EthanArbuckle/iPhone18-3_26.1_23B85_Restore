@interface HMWeekDayScheduleRule
+ (id)shortDescription;
- (BOOL)isEqual:(id)equal;
- (BOOL)isValidSchedule;
- (BOOL)validTimes:(id)times endTime:(id)time;
- (HMWeekDayScheduleRule)initWithCoder:(id)coder;
- (HMWeekDayScheduleRule)initWithDictionary:(id)dictionary;
- (HMWeekDayScheduleRule)initWithStartTime:(id)time endTime:(id)endTime daysOfTheWeek:(unint64_t)week;
- (NSArray)attributeDescriptions;
- (NSString)shortDescription;
- (id)dictionaryRepresentation;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMWeekDayScheduleRule

- (NSArray)attributeDescriptions
{
  v15[3] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69A29C8]);
  startTime = [(HMWeekDayScheduleRule *)self startTime];
  v5 = [v3 initWithName:@"startTime" value:startTime];
  v6 = objc_alloc(MEMORY[0x1E69A29C8]);
  endTime = [(HMWeekDayScheduleRule *)self endTime];
  v8 = [v6 initWithName:@"endTime" value:endTime];
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

- (HMWeekDayScheduleRule)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMWeekDayScheduleRuleCodingKeyStartTime"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMWeekDayScheduleRuleCodingKeyEndTime"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMWeekDayScheduleRuleCodingKeyDaysOfTheWeek"];

  v8 = -[HMWeekDayScheduleRule initWithStartTime:endTime:daysOfTheWeek:](self, "initWithStartTime:endTime:daysOfTheWeek:", v5, v6, [v7 unsignedIntegerValue]);
  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  startTime = [(HMWeekDayScheduleRule *)self startTime];
  [coderCopy encodeObject:startTime forKey:@"HMWeekDayScheduleRuleCodingKeyStartTime"];

  endTime = [(HMWeekDayScheduleRule *)self endTime];
  [coderCopy encodeObject:endTime forKey:@"HMWeekDayScheduleRuleCodingKeyEndTime"];

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[HMWeekDayScheduleRule daysOfTheWeek](self, "daysOfTheWeek")}];
  [coderCopy encodeObject:v7 forKey:@"HMWeekDayScheduleRuleCodingKeyDaysOfTheWeek"];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [HMMutableWeekDayScheduleRule allocWithZone:zone];
  startTime = [(HMWeekDayScheduleRule *)self startTime];
  endTime = [(HMWeekDayScheduleRule *)self endTime];
  v7 = [(HMWeekDayScheduleRule *)v4 initWithStartTime:startTime endTime:endTime daysOfTheWeek:[(HMWeekDayScheduleRule *)self daysOfTheWeek]];

  return v7;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (HMWeekDayScheduleRule)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy hmf_numberForKey:@"HMWeekDayScheduleRuleCodingKeyStartTime"];
  v6 = [dictionaryCopy hmf_numberForKey:@"HMWeekDayScheduleRuleCodingKeyEndTime"];
  v7 = [dictionaryCopy hmf_numberForKey:@"HMWeekDayScheduleRuleCodingKeyDaysOfTheWeek"];

  v8 = HMDateComponentFromSecondsOfDay(v5);
  v9 = HMDateComponentFromSecondsOfDay(v6);
  v10 = -[HMWeekDayScheduleRule initWithStartTime:endTime:daysOfTheWeek:](self, "initWithStartTime:endTime:daysOfTheWeek:", v8, v9, [v7 unsignedIntegerValue]);

  return v10;
}

- (id)dictionaryRepresentation
{
  v15[3] = *MEMORY[0x1E69E9840];
  startTime = [(HMWeekDayScheduleRule *)self startTime];
  if (startTime && (v4 = startTime, [(HMWeekDayScheduleRule *)self endTime], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, v5))
  {
    v14[0] = @"HMWeekDayScheduleRuleCodingKeyStartTime";
    startTime2 = [(HMWeekDayScheduleRule *)self startTime];
    v7 = HMSecondsFromDateComponent(startTime2);
    v15[0] = v7;
    v14[1] = @"HMWeekDayScheduleRuleCodingKeyEndTime";
    endTime = [(HMWeekDayScheduleRule *)self endTime];
    v9 = HMSecondsFromDateComponent(endTime);
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
  startTime = [(HMWeekDayScheduleRule *)self startTime];
  v4 = [startTime hash];
  endTime = [(HMWeekDayScheduleRule *)self endTime];
  v6 = [endTime hash] ^ v4;
  daysOfTheWeek = [(HMWeekDayScheduleRule *)self daysOfTheWeek];

  return v6 ^ daysOfTheWeek;
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
    startTime = [(HMWeekDayScheduleRule *)self startTime];
    hour = [startTime hour];
    startTime2 = [v6 startTime];
    if (hour == [startTime2 hour])
    {
      startTime3 = [(HMWeekDayScheduleRule *)self startTime];
      minute = [startTime3 minute];
      startTime4 = [v6 startTime];
      if (minute == [startTime4 minute])
      {
        endTime = [(HMWeekDayScheduleRule *)self endTime];
        hour2 = [endTime hour];
        endTime2 = [v6 endTime];
        if (hour2 == [endTime2 hour])
        {
          endTime3 = [(HMWeekDayScheduleRule *)self endTime];
          minute2 = [endTime3 minute];
          endTime4 = [v6 endTime];
          if (minute2 == [endTime4 minute])
          {
            daysOfTheWeek = [(HMWeekDayScheduleRule *)self daysOfTheWeek];
            v18 = daysOfTheWeek == [v6 daysOfTheWeek];
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

- (HMWeekDayScheduleRule)initWithStartTime:(id)time endTime:(id)endTime daysOfTheWeek:(unint64_t)week
{
  timeCopy = time;
  endTimeCopy = endTime;
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
  if (timeCopy && endTimeCopy && week)
  {
    if (![(HMWeekDayScheduleRule *)v10 validTimes:timeCopy endTime:endTimeCopy])
    {
      v12 = 0;
      goto LABEL_9;
    }

    v13 = objc_alloc_init(MEMORY[0x1E695DF10]);
    startTime = v11->_startTime;
    v11->_startTime = v13;

    -[NSDateComponents setHour:](v11->_startTime, "setHour:", [timeCopy hour]);
    -[NSDateComponents setMinute:](v11->_startTime, "setMinute:", [timeCopy minute]);
    v15 = objc_alloc_init(MEMORY[0x1E695DF10]);
    endTime = v11->_endTime;
    v11->_endTime = v15;

    -[NSDateComponents setHour:](v11->_endTime, "setHour:", [endTimeCopy hour]);
    -[NSDateComponents setMinute:](v11->_endTime, "setMinute:", [endTimeCopy minute]);
    v11->_daysOfTheWeek = week;
    goto LABEL_7;
  }

LABEL_9:

  return v12;
}

- (BOOL)validTimes:(id)times endTime:(id)time
{
  timesCopy = times;
  timeCopy = time;
  v7 = 0;
  if (([timesCopy hour] & 0x8000000000000000) == 0 && objc_msgSend(timesCopy, "hour") <= 23 && (objc_msgSend(timesCopy, "minute") & 0x8000000000000000) == 0 && objc_msgSend(timesCopy, "minute") <= 59 && (objc_msgSend(timeCopy, "hour") & 0x8000000000000000) == 0 && objc_msgSend(timeCopy, "hour") <= 23 && (objc_msgSend(timeCopy, "minute") & 0x8000000000000000) == 0 && objc_msgSend(timeCopy, "minute") <= 59)
  {
    hour = [timeCopy hour];
    if (hour != [timesCopy hour] || (v10 = objc_msgSend(timeCopy, "minute"), v10 != objc_msgSend(timesCopy, "minute")))
    {
      v7 = 1;
    }
  }

  return v7;
}

- (BOOL)isValidSchedule
{
  endTime = [(HMWeekDayScheduleRule *)self endTime];
  hour = [endTime hour];
  startTime = [(HMWeekDayScheduleRule *)self startTime];
  if (hour >= [startTime hour])
  {
    endTime2 = [(HMWeekDayScheduleRule *)self endTime];
    hour2 = [endTime2 hour];
    startTime2 = [(HMWeekDayScheduleRule *)self startTime];
    if (hour2 == [startTime2 hour])
    {
      endTime3 = [(HMWeekDayScheduleRule *)self endTime];
      minute = [endTime3 minute];
      startTime3 = [(HMWeekDayScheduleRule *)self startTime];
      v6 = minute > [startTime3 minute];
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
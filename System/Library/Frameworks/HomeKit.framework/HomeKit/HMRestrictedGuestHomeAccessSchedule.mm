@interface HMRestrictedGuestHomeAccessSchedule
+ (BOOL)doDaysOfTheWeek:(unint64_t)week containWeekday:(id)weekday;
+ (BOOL)isDate:(id)date inTimeZone:(id)zone withinAllowedWeekDayScheduleRules:(id)rules;
+ (BOOL)isDate:(id)date withinAllowedTimeForSchedule:(id)schedule forHomeInTimeZone:(id)zone;
+ (BOOL)isDate:(id)date withinAllowedYearDayScheduleRules:(id)rules;
+ (id)shortDescription;
- (BOOL)isEqual:(id)equal;
- (BOOL)isValidSchedule;
- (HMRestrictedGuestHomeAccessSchedule)initWithCoder:(id)coder;
- (HMRestrictedGuestHomeAccessSchedule)initWithDictionary:(id)dictionary;
- (HMRestrictedGuestHomeAccessSchedule)initWithWeekDayRules:(id)rules yearDayRules:(id)dayRules;
- (NSArray)attributeDescriptions;
- (NSString)shortDescription;
- (id)dictionaryRepresentation;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMRestrictedGuestHomeAccessSchedule

- (NSArray)attributeDescriptions
{
  v12[2] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69A29C8]);
  weekDayRules = [(HMRestrictedGuestHomeAccessSchedule *)self weekDayRules];
  v5 = [v3 initWithName:@"weekDayRules" value:weekDayRules];
  v12[0] = v5;
  v6 = objc_alloc(MEMORY[0x1E69A29C8]);
  yearDayRules = [(HMRestrictedGuestHomeAccessSchedule *)self yearDayRules];
  v8 = [v6 initWithName:@"yearDayRules" value:yearDayRules];
  v12[1] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (NSString)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (HMRestrictedGuestHomeAccessSchedule)initWithCoder:(id)coder
{
  v17[3] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = objc_alloc_init(objc_opt_class());
  v6 = MEMORY[0x1E695DFD8];
  v17[0] = objc_opt_class();
  v17[1] = objc_opt_class();
  v17[2] = objc_opt_class();
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:3];
  v8 = [v6 setWithArray:v7];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"HMWeekDayScheduleRules"];
  [(HMRestrictedGuestHomeAccessSchedule *)v5 setWeekDayRules:v9];

  v10 = MEMORY[0x1E695DFD8];
  v16[0] = objc_opt_class();
  v16[1] = objc_opt_class();
  v16[2] = objc_opt_class();
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:3];
  v12 = [v10 setWithArray:v11];
  v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"HMYearDayScheduleRules"];

  [(HMRestrictedGuestHomeAccessSchedule *)v5 setYearDayRules:v13];
  v14 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  weekDayRules = [(HMRestrictedGuestHomeAccessSchedule *)self weekDayRules];

  if (weekDayRules)
  {
    weekDayRules2 = [(HMRestrictedGuestHomeAccessSchedule *)self weekDayRules];
    [coderCopy encodeObject:weekDayRules2 forKey:@"HMWeekDayScheduleRules"];
  }

  yearDayRules = [(HMRestrictedGuestHomeAccessSchedule *)self yearDayRules];

  if (yearDayRules)
  {
    yearDayRules2 = [(HMRestrictedGuestHomeAccessSchedule *)self yearDayRules];
    [coderCopy encodeObject:yearDayRules2 forKey:@"HMYearDayScheduleRules"];
  }
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [[HMMutableRestrictedGuestSchedule allocWithZone:?]];
  weekDayRules = [(HMRestrictedGuestHomeAccessSchedule *)self weekDayRules];
  [(HMRestrictedGuestHomeAccessSchedule *)v4 setWeekDayRules:weekDayRules];

  yearDayRules = [(HMRestrictedGuestHomeAccessSchedule *)self yearDayRules];
  [(HMRestrictedGuestHomeAccessSchedule *)v4 setYearDayRules:yearDayRules];

  return v4;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

+ (BOOL)doDaysOfTheWeek:(unint64_t)week containWeekday:(id)weekday
{
  weekday = [weekday weekday];
  week = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:(1 << (weekday - 1)) & week];
  bOOLValue = [week BOOLValue];

  return bOOLValue;
}

+ (BOOL)isDate:(id)date withinAllowedYearDayScheduleRules:(id)rules
{
  dateCopy = date;
  rulesCopy = rules;
  if ([rulesCopy hmf_isEmpty])
  {
    v7 = 1;
  }

  else
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __80__HMRestrictedGuestHomeAccessSchedule_isDate_withinAllowedYearDayScheduleRules___block_invoke;
    v9[3] = &unk_1E754D160;
    v10 = dateCopy;
    v7 = [rulesCopy na_any:v9];
  }

  return v7;
}

uint64_t __80__HMRestrictedGuestHomeAccessSchedule_isDate_withinAllowedYearDayScheduleRules___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 dateInterval];
  v4 = [v3 containsDate:*(a1 + 32)];

  return v4;
}

+ (BOOL)isDate:(id)date inTimeZone:(id)zone withinAllowedWeekDayScheduleRules:(id)rules
{
  dateCopy = date;
  zoneCopy = zone;
  rulesCopy = rules;
  if ([rulesCopy hmf_isEmpty])
  {
    v11 = 1;
  }

  else
  {
    v12 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:*MEMORY[0x1E695D850]];
    v13 = [v12 componentsInTimeZone:zoneCopy fromDate:dateCopy];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __91__HMRestrictedGuestHomeAccessSchedule_isDate_inTimeZone_withinAllowedWeekDayScheduleRules___block_invoke;
    v16[3] = &unk_1E754D138;
    v18 = v13;
    selfCopy = self;
    v17 = dateCopy;
    v14 = v13;
    v11 = [rulesCopy na_any:v16];
  }

  return v11;
}

uint64_t __91__HMRestrictedGuestHomeAccessSchedule_isDate_inTimeZone_withinAllowedWeekDayScheduleRules___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 startTime];
  v6 = [v5 hour];
  v7 = [v3 startTime];
  v8 = HMDateFromDateWithHourAndMinuteComponents(v4, v6, [v7 minute]);

  v9 = *(a1 + 32);
  v10 = [v3 endTime];
  v11 = [v10 hour];
  v12 = [v3 endTime];
  v13 = HMDateFromDateWithHourAndMinuteComponents(v9, v11, [v12 minute]);

  if (v8 && v13)
  {
    v14 = HMMatterScheduleIntervalFromStartAndEndDates(v8, v13);
    if ([v14 containsDate:*(a1 + 32)])
    {
      v15 = [*(a1 + 48) doDaysOfTheWeek:objc_msgSend(v3 containWeekday:{"daysOfTheWeek"), *(a1 + 40)}];
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    v17 = *(a1 + 48);
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      v22 = 138543362;
      v23 = v19;
      _os_log_impl(&dword_19BB39000, v18, OS_LOG_TYPE_ERROR, "%{public}@Failed to create start and end dates for weekday rule", &v22, 0xCu);
    }

    objc_autoreleasePoolPop(v16);
    v15 = 0;
  }

  v20 = *MEMORY[0x1E69E9840];
  return v15;
}

+ (BOOL)isDate:(id)date withinAllowedTimeForSchedule:(id)schedule forHomeInTimeZone:(id)zone
{
  dateCopy = date;
  scheduleCopy = schedule;
  zoneCopy = zone;
  weekDayRules = [scheduleCopy weekDayRules];
  v12 = [self isDate:dateCopy inTimeZone:zoneCopy withinAllowedWeekDayScheduleRules:weekDayRules];

  if (v12)
  {
    yearDayRules = [scheduleCopy yearDayRules];
    v14 = [self isDate:dateCopy withinAllowedYearDayScheduleRules:yearDayRules];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (unint64_t)hash
{
  yearDayRules = [(HMRestrictedGuestHomeAccessSchedule *)self yearDayRules];
  v4 = [yearDayRules hash];
  weekDayRules = [(HMRestrictedGuestHomeAccessSchedule *)self weekDayRules];
  v6 = [weekDayRules hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_autoreleasePoolPush();
  v6 = equalCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  v9 = MEMORY[0x1E695DFD8];
  weekDayRules = [(HMRestrictedGuestHomeAccessSchedule *)self weekDayRules];
  v11 = [v9 setWithArray:weekDayRules];

  v12 = MEMORY[0x1E695DFD8];
  weekDayRules2 = [v8 weekDayRules];
  v14 = [v12 setWithArray:weekDayRules2];

  v15 = MEMORY[0x1E695DFD8];
  yearDayRules = [(HMRestrictedGuestHomeAccessSchedule *)self yearDayRules];
  v17 = [v15 setWithArray:yearDayRules];

  v18 = MEMORY[0x1E695DFD8];
  yearDayRules2 = [v8 yearDayRules];

  v20 = [v18 setWithArray:yearDayRules2];

  if (v8)
  {
    if (HMFEqualObjects())
    {
      LOBYTE(v8) = HMFEqualObjects();
    }

    else
    {
      LOBYTE(v8) = 0;
    }
  }

  objc_autoreleasePoolPop(v5);
  return v8;
}

- (HMRestrictedGuestHomeAccessSchedule)initWithDictionary:(id)dictionary
{
  v38 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v4 = [dictionaryCopy hmf_arrayForKey:@"HMWeekDayScheduleRules"];
  v5 = [dictionaryCopy hmf_arrayForKey:@"HMYearDayScheduleRules"];
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  v27 = v4;
  if (v4)
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v8 = v4;
    v9 = [v8 countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v33;
      do
      {
        v12 = 0;
        do
        {
          if (*v33 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [[HMWeekDayScheduleRule alloc] initWithDictionary:*(*(&v32 + 1) + 8 * v12)];
          if (v13)
          {
            [array addObject:v13];
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v32 objects:v37 count:16];
      }

      while (v10);
    }

    v4 = v27;
  }

  if (v5)
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v14 = v5;
    v15 = [v14 countByEnumeratingWithState:&v28 objects:v36 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v29;
      do
      {
        v18 = 0;
        do
        {
          if (*v29 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = [[HMYearDayScheduleRule alloc] initWithDictionary:*(*(&v28 + 1) + 8 * v18)];
          if (v19)
          {
            [array2 addObject:v19];
          }

          ++v18;
        }

        while (v16 != v18);
        v16 = [v14 countByEnumeratingWithState:&v28 objects:v36 count:16];
      }

      while (v16);
    }

    v4 = v27;
  }

  v20 = [array copy];
  v21 = [array2 copy];
  v22 = [v26 initWithWeekDayRules:v20 yearDayRules:v21];

  v23 = *MEMORY[0x1E69E9840];
  return v22;
}

- (id)dictionaryRepresentation
{
  v37 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  weekDayRules = [(HMRestrictedGuestHomeAccessSchedule *)self weekDayRules];
  v5 = [weekDayRules count];

  if (v5)
  {
    array = [MEMORY[0x1E695DF70] array];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    weekDayRules2 = [(HMRestrictedGuestHomeAccessSchedule *)self weekDayRules];
    v8 = [weekDayRules2 countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v32;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v32 != v10)
          {
            objc_enumerationMutation(weekDayRules2);
          }

          dictionaryRepresentation = [*(*(&v31 + 1) + 8 * i) dictionaryRepresentation];
          [array addObject:dictionaryRepresentation];
        }

        v9 = [weekDayRules2 countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v9);
    }

    v13 = [array copy];
    [dictionary setObject:v13 forKeyedSubscript:@"HMWeekDayScheduleRules"];
  }

  yearDayRules = [(HMRestrictedGuestHomeAccessSchedule *)self yearDayRules];
  v15 = [yearDayRules count];

  if (v15)
  {
    array2 = [MEMORY[0x1E695DF70] array];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    yearDayRules2 = [(HMRestrictedGuestHomeAccessSchedule *)self yearDayRules];
    v18 = [yearDayRules2 countByEnumeratingWithState:&v27 objects:v35 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v28;
      do
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v28 != v20)
          {
            objc_enumerationMutation(yearDayRules2);
          }

          dictionaryRepresentation2 = [*(*(&v27 + 1) + 8 * j) dictionaryRepresentation];
          [array2 addObject:dictionaryRepresentation2];
        }

        v19 = [yearDayRules2 countByEnumeratingWithState:&v27 objects:v35 count:16];
      }

      while (v19);
    }

    v23 = [array2 copy];
    [dictionary setObject:v23 forKeyedSubscript:@"HMYearDayScheduleRules"];
  }

  v24 = [dictionary copy];

  v25 = *MEMORY[0x1E69E9840];

  return v24;
}

- (BOOL)isValidSchedule
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  weekDayRules = [(HMRestrictedGuestHomeAccessSchedule *)self weekDayRules];
  v3 = [weekDayRules countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(weekDayRules);
        }

        if (![*(*(&v10 + 1) + 8 * i) isValidSchedule])
        {
          v7 = 0;
          goto LABEL_11;
        }
      }

      v4 = [weekDayRules countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v7 = 1;
LABEL_11:

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

- (HMRestrictedGuestHomeAccessSchedule)initWithWeekDayRules:(id)rules yearDayRules:(id)dayRules
{
  rulesCopy = rules;
  dayRulesCopy = dayRules;
  v11.receiver = self;
  v11.super_class = HMRestrictedGuestHomeAccessSchedule;
  v8 = [(HMRestrictedGuestHomeAccessSchedule *)&v11 init];
  if (v8)
  {
    if (![rulesCopy count] && !objc_msgSend(dayRulesCopy, "count"))
    {
      v9 = 0;
      goto LABEL_6;
    }

    [(HMRestrictedGuestHomeAccessSchedule *)v8 setWeekDayRules:rulesCopy];
    [(HMRestrictedGuestHomeAccessSchedule *)v8 setYearDayRules:dayRulesCopy];
  }

  v9 = v8;
LABEL_6:

  return v9;
}

@end
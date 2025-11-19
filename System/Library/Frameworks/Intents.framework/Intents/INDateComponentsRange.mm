@interface INDateComponentsRange
- (BOOL)isEqual:(id)a3;
- (EKRecurrenceRule)EKRecurrenceRule;
- (INDateComponentsRange)initWithCoder:(id)a3;
- (INDateComponentsRange)initWithDateInterval:(id)a3 onCalendar:(id)a4 inTimeZone:(id)a5;
- (INDateComponentsRange)initWithEKRecurrenceRule:(EKRecurrenceRule *)recurrenceRule;
- (INDateComponentsRange)initWithStartDate:(id)a3 endDate:(id)a4 onCalendar:(id)a5 inTimeZone:(id)a6;
- (INDateComponentsRange)initWithStartDateComponents:(NSDateComponents *)startDateComponents endDateComponents:(NSDateComponents *)endDateComponents recurrenceRule:(INRecurrenceRule *)recurrenceRule;
- (INDateComponentsRange)initWithStartDateComponents:(id)a3 endDateComponents:(id)a4 recurrenceRule:(id)a5 userInput:(id)a6 allDay:(id)a7;
- (INRecurrenceRule)recurrenceRule;
- (NSDate)endDate;
- (NSDate)startDate;
- (NSDateComponents)endDateComponents;
- (NSDateComponents)startDateComponents;
- (NSDateInterval)dateInterval;
- (id)_dictionaryRepresentation;
- (id)_intents_readableTitleWithLocalizer:(id)a3 metadata:(id)a4;
- (id)_userInput;
- (id)descriptionAtIndent:(unint64_t)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation INDateComponentsRange

- (NSDateComponents)startDateComponents
{
  v2 = [(NSDateComponents *)self->_startDateComponents copy];

  return v2;
}

- (NSDateComponents)endDateComponents
{
  v2 = [(NSDateComponents *)self->_endDateComponents copy];

  return v2;
}

- (INRecurrenceRule)recurrenceRule
{
  v2 = [(INRecurrenceRule *)self->_recurrenceRule copy];

  return v2;
}

- (id)_dictionaryRepresentation
{
  v13[3] = *MEMORY[0x1E69E9840];
  v12[0] = @"startDateComponents";
  startDateComponents = self->_startDateComponents;
  v4 = startDateComponents;
  if (!startDateComponents)
  {
    v4 = [MEMORY[0x1E695DFB0] null];
  }

  v13[0] = v4;
  v12[1] = @"endDateComponents";
  endDateComponents = self->_endDateComponents;
  v6 = endDateComponents;
  if (!endDateComponents)
  {
    v6 = [MEMORY[0x1E695DFB0] null];
  }

  v13[1] = v6;
  v12[2] = @"recurrenceRule";
  recurrenceRule = self->_recurrenceRule;
  v8 = recurrenceRule;
  if (!recurrenceRule)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v13[2] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];
  if (recurrenceRule)
  {
    if (endDateComponents)
    {
      goto LABEL_9;
    }

LABEL_14:

    if (startDateComponents)
    {
      goto LABEL_10;
    }

    goto LABEL_15;
  }

  if (!endDateComponents)
  {
    goto LABEL_14;
  }

LABEL_9:
  if (startDateComponents)
  {
    goto LABEL_10;
  }

LABEL_15:

LABEL_10:
  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)_intents_readableTitleWithLocalizer:(id)a3 metadata:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 locale];
  v9 = [MEMORY[0x1E695DEE8] currentCalendar];
  v10 = [(INDateComponentsRange *)self startDateComponents];
  if (v10)
  {
    v11 = [(INDateComponentsRange *)self startDateComponents];
    v12 = [v9 dateFromComponents:v11];
  }

  else
  {
    v12 = 0;
  }

  v13 = [(INDateComponentsRange *)self endDateComponents];
  if (!v13)
  {
    v18 = 0;
    v16 = 0;
    v17 = v12 != 0;
    goto LABEL_9;
  }

  v14 = v13;
  v15 = [(INDateComponentsRange *)self endDateComponents];
  v16 = [v9 dateFromComponents:v15];

  v17 = v12 != 0;
  v18 = v16 != 0;
  if (!v12 || !v16)
  {
LABEL_9:
    if (v17 || v18)
    {
      if (v17)
      {
        v21 = v12;
      }

      else
      {
        v21 = v16;
      }

      v20 = [v21 _intents_readableTitleWithLocalizer:v6 metadata:v7];
    }

    else
    {
      v20 = 0;
    }

    goto LABEL_16;
  }

  v19 = objc_alloc_init(MEMORY[0x1E696AB88]);
  [v19 setLocale:v8];
  v20 = [v19 stringFromDate:v12 toDate:v16];

LABEL_16:

  return v20;
}

- (id)descriptionAtIndent:(unint64_t)a3
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INDateComponentsRange;
  v6 = [(INDateComponentsRange *)&v11 description];
  v7 = [(INDateComponentsRange *)self _dictionaryRepresentation];
  v8 = [v7 descriptionAtIndent:a3];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (INDateComponentsRange)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"startDateComponents"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"endDateComponents"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"recurrenceRule"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"userInput"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"allDay"];

  v10 = [(INDateComponentsRange *)self initWithStartDateComponents:v5 endDateComponents:v6 recurrenceRule:v7 userInput:v8 allDay:v9];
  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  startDateComponents = self->_startDateComponents;
  v5 = a3;
  [v5 encodeObject:startDateComponents forKey:@"startDateComponents"];
  [v5 encodeObject:self->_endDateComponents forKey:@"endDateComponents"];
  [v5 encodeObject:self->_recurrenceRule forKey:@"recurrenceRule"];
  [v5 encodeObject:self->_userInput forKey:@"userInput"];
  [v5 encodeObject:self->_allDay forKey:@"allDay"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    startDateComponents = self->_startDateComponents;
    v9 = 0;
    if (startDateComponents == v5[1] || [(NSDateComponents *)startDateComponents isEqual:?])
    {
      endDateComponents = self->_endDateComponents;
      if (endDateComponents == v5[2] || [(NSDateComponents *)endDateComponents isEqual:?])
      {
        recurrenceRule = self->_recurrenceRule;
        if (recurrenceRule == v5[3] || [(INRecurrenceRule *)recurrenceRule isEqual:?])
        {
          v9 = 1;
        }
      }
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  v3 = [(NSDateComponents *)self->_startDateComponents hash];
  v4 = [(NSDateComponents *)self->_endDateComponents hash]^ v3;
  return v4 ^ [(INRecurrenceRule *)self->_recurrenceRule hash];
}

- (EKRecurrenceRule)EKRecurrenceRule
{
  v29[1] = *MEMORY[0x1E69E9840];
  recurrenceRule = self->_recurrenceRule;
  if (!recurrenceRule || [(INRecurrenceRule *)recurrenceRule frequency]== INRecurrenceFrequencyMinute || [(INRecurrenceRule *)self->_recurrenceRule frequency]== INRecurrenceFrequencyHourly || [(INRecurrenceRule *)self->_recurrenceRule frequency]== INRecurrenceFrequencyUnknown)
  {
    v12 = 0;
  }

  else
  {
    v4 = [(INRecurrenceRule *)self->_recurrenceRule frequency];
    if ((v4 - 4) >= 3)
    {
      v5 = 0;
    }

    else
    {
      v5 = v4 - 3;
    }

    v6 = 0;
    if ([(NSDateComponents *)self->_startDateComponents weekday]!= 0x7FFFFFFFFFFFFFFFLL)
    {
      v25 = 0;
      v26 = &v25;
      v27 = 0x2050000000;
      v7 = getEKRecurrenceDayOfWeekClass_softClass;
      v28 = getEKRecurrenceDayOfWeekClass_softClass;
      if (!getEKRecurrenceDayOfWeekClass_softClass)
      {
        v20 = MEMORY[0x1E69E9820];
        v21 = 3221225472;
        v22 = __getEKRecurrenceDayOfWeekClass_block_invoke;
        v23 = &unk_1E72888B8;
        v24 = &v25;
        __getEKRecurrenceDayOfWeekClass_block_invoke(&v20);
        v7 = v26[3];
      }

      v8 = v7;
      _Block_object_dispose(&v25, 8);
      v9 = [v7 alloc];
      v10 = [(NSDateComponents *)self->_startDateComponents weekday];
      if ([(NSDateComponents *)self->_startDateComponents weekdayOrdinal]== 0x7FFFFFFFFFFFFFFFLL)
      {
        v11 = 0;
      }

      else
      {
        v11 = [(NSDateComponents *)self->_startDateComponents weekdayOrdinal];
      }

      v6 = [v9 initWithDayOfTheWeek:v10 weekNumber:v11];
    }

    v25 = 0;
    v26 = &v25;
    v27 = 0x2050000000;
    v15 = getEKRecurrenceRuleClass_softClass;
    v28 = getEKRecurrenceRuleClass_softClass;
    if (!getEKRecurrenceRuleClass_softClass)
    {
      v20 = MEMORY[0x1E69E9820];
      v21 = 3221225472;
      v22 = __getEKRecurrenceRuleClass_block_invoke;
      v23 = &unk_1E72888B8;
      v24 = &v25;
      __getEKRecurrenceRuleClass_block_invoke(&v20);
      v15 = v26[3];
    }

    v16 = v15;
    _Block_object_dispose(&v25, 8);
    v17 = [v15 alloc];
    v18 = [(INRecurrenceRule *)self->_recurrenceRule interval];
    if (v6)
    {
      v29[0] = v6;
      v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];
      v12 = [v17 initRecurrenceWithFrequency:v5 interval:v18 daysOfTheWeek:v19 daysOfTheMonth:0 monthsOfTheYear:0 weeksOfTheYear:0 daysOfTheYear:0 setPositions:0 end:0];
    }

    else
    {
      v12 = [v17 initRecurrenceWithFrequency:v5 interval:v18 daysOfTheWeek:0 daysOfTheMonth:0 monthsOfTheYear:0 weeksOfTheYear:0 daysOfTheYear:0 setPositions:0 end:0];
    }
  }

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (INDateComponentsRange)initWithEKRecurrenceRule:(EKRecurrenceRule *)recurrenceRule
{
  v4 = recurrenceRule;
  v5 = [INRecurrenceRule alloc];
  v6 = [(EKRecurrenceRule *)v4 interval];
  v7 = [(EKRecurrenceRule *)v4 frequency];
  if ((v7 - 1) >= 3)
  {
    v8 = 3;
  }

  else
  {
    v8 = v7 + 3;
  }

  v9 = [(INRecurrenceRule *)v5 initWithInterval:v6 frequency:v8];
  v10 = [(EKRecurrenceRule *)v4 daysOfTheWeek];
  v11 = [v10 count];

  if (v11)
  {
    v12 = [(EKRecurrenceRule *)v4 daysOfTheWeek];
    v13 = [v12 firstObject];

    v14 = objc_alloc_init(MEMORY[0x1E695DF10]);
    [v14 setWeekday:{objc_msgSend(v13, "dayOfTheWeek")}];
    [v14 setWeekdayOrdinal:{objc_msgSend(v13, "weekNumber")}];
  }

  else
  {
    v14 = 0;
  }

  v15 = [(INDateComponentsRange *)self initWithStartDateComponents:v14 endDateComponents:0 recurrenceRule:v9];

  return v15;
}

- (NSDate)endDate
{
  endDateComponents = self->_endDateComponents;
  if (endDateComponents)
  {
    v4 = [(NSDateComponents *)endDateComponents date];
    if (!v4)
    {
      v5 = [MEMORY[0x1E695DEE8] currentCalendar];
      v4 = [v5 dateFromComponents:self->_endDateComponents];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSDate)startDate
{
  startDateComponents = self->_startDateComponents;
  if (startDateComponents)
  {
    v4 = [(NSDateComponents *)startDateComponents date];
    if (!v4)
    {
      v5 = [MEMORY[0x1E695DEE8] currentCalendar];
      v4 = [v5 dateFromComponents:self->_startDateComponents];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSDateInterval)dateInterval
{
  v3 = [(INDateComponentsRange *)self startDate];
  v4 = [(INDateComponentsRange *)self endDate];
  v5 = v4;
  v6 = 0;
  if (v3 && v4)
  {
    v6 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:v3 endDate:v4];
  }

  return v6;
}

- (id)_userInput
{
  v2 = [(NSString *)self->_userInput copy];

  return v2;
}

- (INDateComponentsRange)initWithStartDateComponents:(id)a3 endDateComponents:(id)a4 recurrenceRule:(id)a5 userInput:(id)a6 allDay:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v29.receiver = self;
  v29.super_class = INDateComponentsRange;
  v17 = [(INDateComponentsRange *)&v29 init];
  if (v17)
  {
    v18 = [v12 copy];
    startDateComponents = v17->_startDateComponents;
    v17->_startDateComponents = v18;

    v20 = [v13 copy];
    endDateComponents = v17->_endDateComponents;
    v17->_endDateComponents = v20;

    v22 = [v14 copy];
    recurrenceRule = v17->_recurrenceRule;
    v17->_recurrenceRule = v22;

    v24 = [v15 copy];
    userInput = v17->_userInput;
    v17->_userInput = v24;

    v26 = [v16 copy];
    allDay = v17->_allDay;
    v17->_allDay = v26;
  }

  return v17;
}

- (INDateComponentsRange)initWithDateInterval:(id)a3 onCalendar:(id)a4 inTimeZone:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v10 startDate];
  v12 = [v10 endDate];

  v13 = [(INDateComponentsRange *)self initWithStartDate:v11 endDate:v12 onCalendar:v9 inTimeZone:v8];
  return v13;
}

- (INDateComponentsRange)initWithStartDate:(id)a3 endDate:(id)a4 onCalendar:(id)a5 inTimeZone:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (v10 | v11)
  {
    v15 = v12;
    if (!v15)
    {
      v15 = [MEMORY[0x1E695DEE8] currentCalendar];
    }

    v16 = v13;
    if (!v16)
    {
      v16 = [v15 timeZone];
      if (!v16)
      {
        v16 = [MEMORY[0x1E695DFE8] defaultTimeZone];
      }
    }

    v17 = v16;
    if (v10)
    {
      v18 = [v15 componentsInTimeZone:v16 fromDate:v10];
      if (v11)
      {
LABEL_10:
        v19 = [v15 componentsInTimeZone:v17 fromDate:v11];
LABEL_13:
        v14 = [(INDateComponentsRange *)self initWithStartDateComponents:v18 endDateComponents:v19];

        goto LABEL_14;
      }
    }

    else
    {
      v18 = 0;
      if (v11)
      {
        goto LABEL_10;
      }
    }

    v19 = 0;
    goto LABEL_13;
  }

  v14 = [(INDateComponentsRange *)self initWithStartDateComponents:0 endDateComponents:0 recurrenceRule:0];
LABEL_14:

  return v14;
}

- (INDateComponentsRange)initWithStartDateComponents:(NSDateComponents *)startDateComponents endDateComponents:(NSDateComponents *)endDateComponents recurrenceRule:(INRecurrenceRule *)recurrenceRule
{
  v8 = startDateComponents;
  v9 = endDateComponents;
  v10 = recurrenceRule;
  v19.receiver = self;
  v19.super_class = INDateComponentsRange;
  v11 = [(INDateComponentsRange *)&v19 init];
  if (v11)
  {
    v12 = [(NSDateComponents *)v8 copy];
    v13 = v11->_startDateComponents;
    v11->_startDateComponents = v12;

    v14 = [(NSDateComponents *)v9 copy];
    v15 = v11->_endDateComponents;
    v11->_endDateComponents = v14;

    v16 = [(INRecurrenceRule *)v10 copy];
    v17 = v11->_recurrenceRule;
    v11->_recurrenceRule = v16;
  }

  return v11;
}

@end
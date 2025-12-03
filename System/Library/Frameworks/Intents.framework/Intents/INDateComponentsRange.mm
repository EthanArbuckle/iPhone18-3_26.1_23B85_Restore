@interface INDateComponentsRange
- (BOOL)isEqual:(id)equal;
- (EKRecurrenceRule)EKRecurrenceRule;
- (INDateComponentsRange)initWithCoder:(id)coder;
- (INDateComponentsRange)initWithDateInterval:(id)interval onCalendar:(id)calendar inTimeZone:(id)zone;
- (INDateComponentsRange)initWithEKRecurrenceRule:(EKRecurrenceRule *)recurrenceRule;
- (INDateComponentsRange)initWithStartDate:(id)date endDate:(id)endDate onCalendar:(id)calendar inTimeZone:(id)zone;
- (INDateComponentsRange)initWithStartDateComponents:(NSDateComponents *)startDateComponents endDateComponents:(NSDateComponents *)endDateComponents recurrenceRule:(INRecurrenceRule *)recurrenceRule;
- (INDateComponentsRange)initWithStartDateComponents:(id)components endDateComponents:(id)dateComponents recurrenceRule:(id)rule userInput:(id)input allDay:(id)day;
- (INRecurrenceRule)recurrenceRule;
- (NSDate)endDate;
- (NSDate)startDate;
- (NSDateComponents)endDateComponents;
- (NSDateComponents)startDateComponents;
- (NSDateInterval)dateInterval;
- (id)_dictionaryRepresentation;
- (id)_intents_readableTitleWithLocalizer:(id)localizer metadata:(id)metadata;
- (id)_userInput;
- (id)descriptionAtIndent:(unint64_t)indent;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
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
  null = startDateComponents;
  if (!startDateComponents)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v13[0] = null;
  v12[1] = @"endDateComponents";
  endDateComponents = self->_endDateComponents;
  null2 = endDateComponents;
  if (!endDateComponents)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v13[1] = null2;
  v12[2] = @"recurrenceRule";
  recurrenceRule = self->_recurrenceRule;
  null3 = recurrenceRule;
  if (!recurrenceRule)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v13[2] = null3;
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

- (id)_intents_readableTitleWithLocalizer:(id)localizer metadata:(id)metadata
{
  localizerCopy = localizer;
  metadataCopy = metadata;
  locale = [localizerCopy locale];
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  startDateComponents = [(INDateComponentsRange *)self startDateComponents];
  if (startDateComponents)
  {
    startDateComponents2 = [(INDateComponentsRange *)self startDateComponents];
    v12 = [currentCalendar dateFromComponents:startDateComponents2];
  }

  else
  {
    v12 = 0;
  }

  endDateComponents = [(INDateComponentsRange *)self endDateComponents];
  if (!endDateComponents)
  {
    v18 = 0;
    v16 = 0;
    v17 = v12 != 0;
    goto LABEL_9;
  }

  v14 = endDateComponents;
  endDateComponents2 = [(INDateComponentsRange *)self endDateComponents];
  v16 = [currentCalendar dateFromComponents:endDateComponents2];

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

      v20 = [v21 _intents_readableTitleWithLocalizer:localizerCopy metadata:metadataCopy];
    }

    else
    {
      v20 = 0;
    }

    goto LABEL_16;
  }

  v19 = objc_alloc_init(MEMORY[0x1E696AB88]);
  [v19 setLocale:locale];
  v20 = [v19 stringFromDate:v12 toDate:v16];

LABEL_16:

  return v20;
}

- (id)descriptionAtIndent:(unint64_t)indent
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INDateComponentsRange;
  v6 = [(INDateComponentsRange *)&v11 description];
  _dictionaryRepresentation = [(INDateComponentsRange *)self _dictionaryRepresentation];
  v8 = [_dictionaryRepresentation descriptionAtIndent:indent];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (INDateComponentsRange)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"startDateComponents"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"endDateComponents"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"recurrenceRule"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"userInput"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"allDay"];

  v10 = [(INDateComponentsRange *)self initWithStartDateComponents:v5 endDateComponents:v6 recurrenceRule:v7 userInput:v8 allDay:v9];
  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  startDateComponents = self->_startDateComponents;
  coderCopy = coder;
  [coderCopy encodeObject:startDateComponents forKey:@"startDateComponents"];
  [coderCopy encodeObject:self->_endDateComponents forKey:@"endDateComponents"];
  [coderCopy encodeObject:self->_recurrenceRule forKey:@"recurrenceRule"];
  [coderCopy encodeObject:self->_userInput forKey:@"userInput"];
  [coderCopy encodeObject:self->_allDay forKey:@"allDay"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
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
    frequency = [(INRecurrenceRule *)self->_recurrenceRule frequency];
    if ((frequency - 4) >= 3)
    {
      v5 = 0;
    }

    else
    {
      v5 = frequency - 3;
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
      weekday = [(NSDateComponents *)self->_startDateComponents weekday];
      if ([(NSDateComponents *)self->_startDateComponents weekdayOrdinal]== 0x7FFFFFFFFFFFFFFFLL)
      {
        weekdayOrdinal = 0;
      }

      else
      {
        weekdayOrdinal = [(NSDateComponents *)self->_startDateComponents weekdayOrdinal];
      }

      v6 = [v9 initWithDayOfTheWeek:weekday weekNumber:weekdayOrdinal];
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
    interval = [(INRecurrenceRule *)self->_recurrenceRule interval];
    if (v6)
    {
      v29[0] = v6;
      v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];
      v12 = [v17 initRecurrenceWithFrequency:v5 interval:interval daysOfTheWeek:v19 daysOfTheMonth:0 monthsOfTheYear:0 weeksOfTheYear:0 daysOfTheYear:0 setPositions:0 end:0];
    }

    else
    {
      v12 = [v17 initRecurrenceWithFrequency:v5 interval:interval daysOfTheWeek:0 daysOfTheMonth:0 monthsOfTheYear:0 weeksOfTheYear:0 daysOfTheYear:0 setPositions:0 end:0];
    }
  }

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (INDateComponentsRange)initWithEKRecurrenceRule:(EKRecurrenceRule *)recurrenceRule
{
  v4 = recurrenceRule;
  v5 = [INRecurrenceRule alloc];
  interval = [(EKRecurrenceRule *)v4 interval];
  frequency = [(EKRecurrenceRule *)v4 frequency];
  if ((frequency - 1) >= 3)
  {
    v8 = 3;
  }

  else
  {
    v8 = frequency + 3;
  }

  v9 = [(INRecurrenceRule *)v5 initWithInterval:interval frequency:v8];
  daysOfTheWeek = [(EKRecurrenceRule *)v4 daysOfTheWeek];
  v11 = [daysOfTheWeek count];

  if (v11)
  {
    daysOfTheWeek2 = [(EKRecurrenceRule *)v4 daysOfTheWeek];
    firstObject = [daysOfTheWeek2 firstObject];

    v14 = objc_alloc_init(MEMORY[0x1E695DF10]);
    [v14 setWeekday:{objc_msgSend(firstObject, "dayOfTheWeek")}];
    [v14 setWeekdayOrdinal:{objc_msgSend(firstObject, "weekNumber")}];
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
    date = [(NSDateComponents *)endDateComponents date];
    if (!date)
    {
      currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
      date = [currentCalendar dateFromComponents:self->_endDateComponents];
    }
  }

  else
  {
    date = 0;
  }

  return date;
}

- (NSDate)startDate
{
  startDateComponents = self->_startDateComponents;
  if (startDateComponents)
  {
    date = [(NSDateComponents *)startDateComponents date];
    if (!date)
    {
      currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
      date = [currentCalendar dateFromComponents:self->_startDateComponents];
    }
  }

  else
  {
    date = 0;
  }

  return date;
}

- (NSDateInterval)dateInterval
{
  startDate = [(INDateComponentsRange *)self startDate];
  endDate = [(INDateComponentsRange *)self endDate];
  v5 = endDate;
  v6 = 0;
  if (startDate && endDate)
  {
    v6 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:startDate endDate:endDate];
  }

  return v6;
}

- (id)_userInput
{
  v2 = [(NSString *)self->_userInput copy];

  return v2;
}

- (INDateComponentsRange)initWithStartDateComponents:(id)components endDateComponents:(id)dateComponents recurrenceRule:(id)rule userInput:(id)input allDay:(id)day
{
  componentsCopy = components;
  dateComponentsCopy = dateComponents;
  ruleCopy = rule;
  inputCopy = input;
  dayCopy = day;
  v29.receiver = self;
  v29.super_class = INDateComponentsRange;
  v17 = [(INDateComponentsRange *)&v29 init];
  if (v17)
  {
    v18 = [componentsCopy copy];
    startDateComponents = v17->_startDateComponents;
    v17->_startDateComponents = v18;

    v20 = [dateComponentsCopy copy];
    endDateComponents = v17->_endDateComponents;
    v17->_endDateComponents = v20;

    v22 = [ruleCopy copy];
    recurrenceRule = v17->_recurrenceRule;
    v17->_recurrenceRule = v22;

    v24 = [inputCopy copy];
    userInput = v17->_userInput;
    v17->_userInput = v24;

    v26 = [dayCopy copy];
    allDay = v17->_allDay;
    v17->_allDay = v26;
  }

  return v17;
}

- (INDateComponentsRange)initWithDateInterval:(id)interval onCalendar:(id)calendar inTimeZone:(id)zone
{
  zoneCopy = zone;
  calendarCopy = calendar;
  intervalCopy = interval;
  startDate = [intervalCopy startDate];
  endDate = [intervalCopy endDate];

  v13 = [(INDateComponentsRange *)self initWithStartDate:startDate endDate:endDate onCalendar:calendarCopy inTimeZone:zoneCopy];
  return v13;
}

- (INDateComponentsRange)initWithStartDate:(id)date endDate:(id)endDate onCalendar:(id)calendar inTimeZone:(id)zone
{
  dateCopy = date;
  endDateCopy = endDate;
  calendarCopy = calendar;
  zoneCopy = zone;
  if (dateCopy | endDateCopy)
  {
    currentCalendar = calendarCopy;
    if (!currentCalendar)
    {
      currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
    }

    timeZone = zoneCopy;
    if (!timeZone)
    {
      timeZone = [currentCalendar timeZone];
      if (!timeZone)
      {
        timeZone = [MEMORY[0x1E695DFE8] defaultTimeZone];
      }
    }

    v17 = timeZone;
    if (dateCopy)
    {
      v18 = [currentCalendar componentsInTimeZone:timeZone fromDate:dateCopy];
      if (endDateCopy)
      {
LABEL_10:
        v19 = [currentCalendar componentsInTimeZone:v17 fromDate:endDateCopy];
LABEL_13:
        v14 = [(INDateComponentsRange *)self initWithStartDateComponents:v18 endDateComponents:v19];

        goto LABEL_14;
      }
    }

    else
    {
      v18 = 0;
      if (endDateCopy)
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
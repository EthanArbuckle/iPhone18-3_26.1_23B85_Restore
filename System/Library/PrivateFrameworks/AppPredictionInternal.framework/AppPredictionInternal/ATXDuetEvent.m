@interface ATXDuetEvent
+ (int64_t)_secondsInDayFromDate:(id)a3 calendar:(id)a4;
- (ATXDuetEvent)initWithATXEvent:(id)a3;
- (ATXDuetEvent)initWithCoder:(id)a3;
- (ATXDuetEvent)initWithCurrentContextStoreValues;
- (ATXDuetEvent)initWithStartDate:(id)a3 endDate:(id)a4;
- (BOOL)isEndDateOnWeekday;
- (BOOL)isEqual:(id)a3;
- (BOOL)isStartDateOnWeekday;
- (id)identifier;
- (id)locationIdentifierUUIDString;
- (int64_t)compare:(id)a3;
- (int64_t)endDateSecondsAfterMidnight;
- (int64_t)startDateSecondsAfterMidnight;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXDuetEvent

+ (int64_t)_secondsInDayFromDate:(id)a3 calendar:(id)a4
{
  v5 = a3;
  v6 = [a4 startOfDayForDate:v5];
  [v5 timeIntervalSinceDate:v6];
  v8 = v7;

  return v8;
}

- (int64_t)startDateSecondsAfterMidnight
{
  v2 = [(ATXDuetEvent *)self startDate];
  v3 = [MEMORY[0x277CBEA80] currentCalendar];
  v4 = [ATXDuetEvent _secondsInDayFromDate:v2 calendar:v3];

  return v4;
}

- (int64_t)endDateSecondsAfterMidnight
{
  v2 = [(ATXDuetEvent *)self endDate];
  v3 = [MEMORY[0x277CBEA80] currentCalendar];
  v4 = [ATXDuetEvent _secondsInDayFromDate:v2 calendar:v3];

  return v4;
}

- (BOOL)isStartDateOnWeekday
{
  v3 = [MEMORY[0x277CBEA80] currentCalendar];
  v4 = [(ATXDuetEvent *)self startDate];
  v5 = [v3 isDateInWeekend:v4];

  return v5 ^ 1;
}

- (BOOL)isEndDateOnWeekday
{
  v3 = [MEMORY[0x277CBEA80] currentCalendar];
  v4 = [(ATXDuetEvent *)self endDate];
  v5 = [v3 isDateInWeekend:v4];

  return v5 ^ 1;
}

- (id)locationIdentifierUUIDString
{
  v3 = [(ATXDuetEvent *)self locationIdentifier];
  if (v3)
  {
    v4 = [(ATXDuetEvent *)self locationIdentifier];
    v5 = [v4 UUIDString];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (ATXDuetEvent)initWithATXEvent:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"ATXDuetEvent.m" lineNumber:30 description:@"Subclasses should override this!"];

  v6 = [MEMORY[0x277CBEAA8] now];
  v7 = [(ATXDuetEvent *)self initWithStartDate:v6 endDate:0];

  return v7;
}

- (ATXDuetEvent)initWithCurrentContextStoreValues
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"ATXDuetEvent.m" lineNumber:38 description:@"Should be implemented by subclasses"];

  return 0;
}

- (ATXDuetEvent)initWithStartDate:(id)a3 endDate:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v15.receiver = self;
    v15.super_class = ATXDuetEvent;
    v8 = [(ATXDuetEvent *)&v15 init];
    if (v8)
    {
      v9 = [v6 copy];
      startDate = v8->_startDate;
      v8->_startDate = v9;

      v11 = [v7 copy];
      endDate = v8->_endDate;
      v8->_endDate = v11;
    }

    self = v8;
    v13 = self;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)identifier
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"ATXDuetEvent.m" lineNumber:59 description:@"Must be implemented by the subclass."];

  return 0;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = self->_startDate;
      v7 = v6;
      if (v6 == v5->_startDate)
      {
      }

      else
      {
        v8 = [(NSDate *)v6 isEqual:?];

        if ((v8 & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v10 = self->_endDate;
      v11 = v10;
      if (v10 == v5->_endDate)
      {
      }

      else
      {
        v12 = [(NSDate *)v10 isEqual:?];

        if ((v12 & 1) == 0)
        {
LABEL_11:
          v9 = 0;
LABEL_14:

          goto LABEL_15;
        }
      }

      v13 = [(ATXDuetEvent *)self identifier];
      v14 = [(ATXDuetEvent *)v5 identifier];
      v9 = [v13 isEqualToString:v14];

      goto LABEL_14;
    }

    v9 = 0;
  }

LABEL_15:

  return v9;
}

- (unint64_t)hash
{
  v3 = [(NSDate *)self->_startDate hash];
  v4 = [(NSDate *)self->_endDate hash]- v3 + 32 * v3;
  v5 = [(ATXDuetEvent *)self identifier];
  v6 = [v5 hash] - v4 + 32 * v4;

  return v6;
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  v5 = [(ATXDuetEvent *)self startDate];
  v6 = [v4 startDate];

  v7 = [v5 compare:v6];
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  startDate = self->_startDate;
  v5 = a3;
  [v5 encodeObject:startDate forKey:@"codingKeyForDuetEventStartDate"];
  [v5 encodeObject:self->_endDate forKey:@"codingKeyForDuetEventEndDate"];
}

- (ATXDuetEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277D42620];
  v6 = objc_opt_class();
  v7 = __atxlog_handle_anchor();
  v8 = [v5 robustDecodeObjectOfClass:v6 forKey:@"codingKeyForDuetEventStartDate" withCoder:v4 expectNonNull:1 errorDomain:@"com.apple.proactive.ATXDuetEvent" errorCode:-1 logHandle:v7];

  if (v8 && ([v4 error], v9 = objc_claimAutoreleasedReturnValue(), v9, !v9))
  {
    v11 = MEMORY[0x277D42620];
    v12 = objc_opt_class();
    v13 = __atxlog_handle_anchor();
    v14 = [v11 robustDecodeObjectOfClass:v12 forKey:@"codingKeyForDuetEventEndDate" withCoder:v4 expectNonNull:1 errorDomain:@"com.apple.proactive.ATXDuetEvent" errorCode:-1 logHandle:v13];

    if (v14 && ([v4 error], v15 = objc_claimAutoreleasedReturnValue(), v15, !v15))
    {
      self = [(ATXDuetEvent *)self initWithStartDate:v8 endDate:v14];
      v10 = self;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end
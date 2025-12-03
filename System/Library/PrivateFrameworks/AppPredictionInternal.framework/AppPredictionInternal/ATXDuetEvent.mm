@interface ATXDuetEvent
+ (int64_t)_secondsInDayFromDate:(id)date calendar:(id)calendar;
- (ATXDuetEvent)initWithATXEvent:(id)event;
- (ATXDuetEvent)initWithCoder:(id)coder;
- (ATXDuetEvent)initWithCurrentContextStoreValues;
- (ATXDuetEvent)initWithStartDate:(id)date endDate:(id)endDate;
- (BOOL)isEndDateOnWeekday;
- (BOOL)isEqual:(id)equal;
- (BOOL)isStartDateOnWeekday;
- (id)identifier;
- (id)locationIdentifierUUIDString;
- (int64_t)compare:(id)compare;
- (int64_t)endDateSecondsAfterMidnight;
- (int64_t)startDateSecondsAfterMidnight;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXDuetEvent

+ (int64_t)_secondsInDayFromDate:(id)date calendar:(id)calendar
{
  dateCopy = date;
  v6 = [calendar startOfDayForDate:dateCopy];
  [dateCopy timeIntervalSinceDate:v6];
  v8 = v7;

  return v8;
}

- (int64_t)startDateSecondsAfterMidnight
{
  startDate = [(ATXDuetEvent *)self startDate];
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v4 = [ATXDuetEvent _secondsInDayFromDate:startDate calendar:currentCalendar];

  return v4;
}

- (int64_t)endDateSecondsAfterMidnight
{
  endDate = [(ATXDuetEvent *)self endDate];
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v4 = [ATXDuetEvent _secondsInDayFromDate:endDate calendar:currentCalendar];

  return v4;
}

- (BOOL)isStartDateOnWeekday
{
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  startDate = [(ATXDuetEvent *)self startDate];
  v5 = [currentCalendar isDateInWeekend:startDate];

  return v5 ^ 1;
}

- (BOOL)isEndDateOnWeekday
{
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  endDate = [(ATXDuetEvent *)self endDate];
  v5 = [currentCalendar isDateInWeekend:endDate];

  return v5 ^ 1;
}

- (id)locationIdentifierUUIDString
{
  locationIdentifier = [(ATXDuetEvent *)self locationIdentifier];
  if (locationIdentifier)
  {
    locationIdentifier2 = [(ATXDuetEvent *)self locationIdentifier];
    uUIDString = [locationIdentifier2 UUIDString];
  }

  else
  {
    uUIDString = 0;
  }

  return uUIDString;
}

- (ATXDuetEvent)initWithATXEvent:(id)event
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ATXDuetEvent.m" lineNumber:30 description:@"Subclasses should override this!"];

  v6 = [MEMORY[0x277CBEAA8] now];
  v7 = [(ATXDuetEvent *)self initWithStartDate:v6 endDate:0];

  return v7;
}

- (ATXDuetEvent)initWithCurrentContextStoreValues
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ATXDuetEvent.m" lineNumber:38 description:@"Should be implemented by subclasses"];

  return 0;
}

- (ATXDuetEvent)initWithStartDate:(id)date endDate:(id)endDate
{
  dateCopy = date;
  endDateCopy = endDate;
  if (dateCopy)
  {
    v15.receiver = self;
    v15.super_class = ATXDuetEvent;
    v8 = [(ATXDuetEvent *)&v15 init];
    if (v8)
    {
      v9 = [dateCopy copy];
      startDate = v8->_startDate;
      v8->_startDate = v9;

      v11 = [endDateCopy copy];
      endDate = v8->_endDate;
      v8->_endDate = v11;
    }

    self = v8;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)identifier
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ATXDuetEvent.m" lineNumber:59 description:@"Must be implemented by the subclass."];

  return 0;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
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

      identifier = [(ATXDuetEvent *)self identifier];
      identifier2 = [(ATXDuetEvent *)v5 identifier];
      v9 = [identifier isEqualToString:identifier2];

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
  identifier = [(ATXDuetEvent *)self identifier];
  v6 = [identifier hash] - v4 + 32 * v4;

  return v6;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  startDate = [(ATXDuetEvent *)self startDate];
  startDate2 = [compareCopy startDate];

  v7 = [startDate compare:startDate2];
  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  startDate = self->_startDate;
  coderCopy = coder;
  [coderCopy encodeObject:startDate forKey:@"codingKeyForDuetEventStartDate"];
  [coderCopy encodeObject:self->_endDate forKey:@"codingKeyForDuetEventEndDate"];
}

- (ATXDuetEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = MEMORY[0x277D42620];
  v6 = objc_opt_class();
  v7 = __atxlog_handle_anchor();
  v8 = [v5 robustDecodeObjectOfClass:v6 forKey:@"codingKeyForDuetEventStartDate" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.proactive.ATXDuetEvent" errorCode:-1 logHandle:v7];

  if (v8 && ([coderCopy error], v9 = objc_claimAutoreleasedReturnValue(), v9, !v9))
  {
    v11 = MEMORY[0x277D42620];
    v12 = objc_opt_class();
    v13 = __atxlog_handle_anchor();
    v14 = [v11 robustDecodeObjectOfClass:v12 forKey:@"codingKeyForDuetEventEndDate" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.proactive.ATXDuetEvent" errorCode:-1 logHandle:v13];

    if (v14 && ([coderCopy error], v15 = objc_claimAutoreleasedReturnValue(), v15, !v15))
    {
      self = [(ATXDuetEvent *)self initWithStartDate:v8 endDate:v14];
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end
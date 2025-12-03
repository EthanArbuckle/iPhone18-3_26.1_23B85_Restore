@interface EKConflictDetails
+ (double)_maxRangeLengthForRule:(id)rule;
+ (id)_dateRangeToScanForConflictsForEvent:(id)event dateForNow:(id)now;
+ (id)dateRangeToScanForConflictsForEvent:(id)event;
+ (id)infoWithConflicts:(int64_t)conflicts needsAction:(int64_t)action event:(id)event;
+ (id)infoWithConflictsInSeries:(int64_t)series outOf:(int64_t)of withPeriod:(id)period conflictingDates:(id)dates;
- (EKConflictDetails)initWithConflictingDates:(id)dates conflictingEvents:(id)events needsActionEvents:(id)actionEvents totalOccurrencesInSeries:(unint64_t)series conflictPeriodForSeries:(id)forSeries;
@end

@implementation EKConflictDetails

+ (id)infoWithConflictsInSeries:(int64_t)series outOf:(int64_t)of withPeriod:(id)period conflictingDates:(id)dates
{
  datesCopy = dates;
  periodCopy = period;
  v11 = objc_opt_new();
  [v11 setTotalOccurrencesInSeries:of];
  [v11 setTotalConflictsInSeries:series];
  [v11 setConflictPeriodForSeries:periodCopy];

  [v11 setConflictingDates:datesCopy];

  return v11;
}

+ (id)infoWithConflicts:(int64_t)conflicts needsAction:(int64_t)action event:(id)event
{
  v17[1] = *MEMORY[0x1E69E9840];
  eventCopy = event;
  v8 = objc_opt_new();
  if (eventCopy)
  {
    v17[0] = eventCopy;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
    [v8 setConflictingEvents:v9];

    v16 = eventCopy;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v16 count:1];
    [v8 setNeedsActionEvents:v10];

    startDate = [eventCopy startDate];
    v15 = startDate;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v15 count:1];
    [v8 setConflictingDates:v12];
  }

  [v8 setTotalConflictingEvents:conflicts];
  [v8 setTotalNeedsActionEvents:action];
  [v8 setTotalOccurrencesInSeries:1];
  [v8 setTotalConflictsInSeries:1];

  v13 = *MEMORY[0x1E69E9840];

  return v8;
}

- (EKConflictDetails)initWithConflictingDates:(id)dates conflictingEvents:(id)events needsActionEvents:(id)actionEvents totalOccurrencesInSeries:(unint64_t)series conflictPeriodForSeries:(id)forSeries
{
  datesCopy = dates;
  eventsCopy = events;
  actionEventsCopy = actionEvents;
  forSeriesCopy = forSeries;
  v20.receiver = self;
  v20.super_class = EKConflictDetails;
  v17 = [(EKConflictDetails *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_conflictingDates, dates);
    objc_storeStrong(&v18->_conflictingEvents, events);
    objc_storeStrong(&v18->_needsActionEvents, actionEvents);
    v18->_totalOccurrencesInSeries = series;
    objc_storeStrong(&v18->_conflictPeriodForSeries, forSeries);
    v18->_totalConflictsInSeries = [datesCopy count];
    v18->_totalConflictingEvents = [eventsCopy count];
    v18->_totalNeedsActionEvents = [actionEventsCopy count];
  }

  return v18;
}

+ (id)dateRangeToScanForConflictsForEvent:(id)event
{
  v4 = MEMORY[0x1E695DF00];
  eventCopy = event;
  date = [v4 date];
  v7 = [self _dateRangeToScanForConflictsForEvent:eventCopy dateForNow:date];

  return v7;
}

+ (id)_dateRangeToScanForConflictsForEvent:(id)event dateForNow:(id)now
{
  eventCopy = event;
  nowCopy = now;
  recurrenceRules = [eventCopy recurrenceRules];
  firstObject = [recurrenceRules firstObject];

  v10 = nowCopy;
  endDateUnadjustedForLegacyClients = [eventCopy endDateUnadjustedForLegacyClients];
  if ([endDateUnadjustedForLegacyClients CalIsBeforeDate:v10])
  {
    startDate = v10;
  }

  else
  {
    startDate = [eventCopy startDate];
  }

  v13 = startDate;

  [self _maxRangeLengthForRule:firstObject];
  v14 = [MEMORY[0x1E6992F70] rangeWithStartDate:v13 duration:?];

  return v14;
}

+ (double)_maxRangeLengthForRule:(id)rule
{
  ruleCopy = rule;
  v4 = ruleCopy;
  v5 = 31536000.0;
  if (ruleCopy)
  {
    frequency = [ruleCopy frequency];
    if (frequency <= 2)
    {
      v5 = dbl_1A81C3F20[frequency];
    }
  }

  return v5;
}

@end
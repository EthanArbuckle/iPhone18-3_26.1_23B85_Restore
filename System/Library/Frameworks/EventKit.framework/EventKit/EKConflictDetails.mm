@interface EKConflictDetails
+ (double)_maxRangeLengthForRule:(id)a3;
+ (id)_dateRangeToScanForConflictsForEvent:(id)a3 dateForNow:(id)a4;
+ (id)dateRangeToScanForConflictsForEvent:(id)a3;
+ (id)infoWithConflicts:(int64_t)a3 needsAction:(int64_t)a4 event:(id)a5;
+ (id)infoWithConflictsInSeries:(int64_t)a3 outOf:(int64_t)a4 withPeriod:(id)a5 conflictingDates:(id)a6;
- (EKConflictDetails)initWithConflictingDates:(id)a3 conflictingEvents:(id)a4 needsActionEvents:(id)a5 totalOccurrencesInSeries:(unint64_t)a6 conflictPeriodForSeries:(id)a7;
@end

@implementation EKConflictDetails

+ (id)infoWithConflictsInSeries:(int64_t)a3 outOf:(int64_t)a4 withPeriod:(id)a5 conflictingDates:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = objc_opt_new();
  [v11 setTotalOccurrencesInSeries:a4];
  [v11 setTotalConflictsInSeries:a3];
  [v11 setConflictPeriodForSeries:v10];

  [v11 setConflictingDates:v9];

  return v11;
}

+ (id)infoWithConflicts:(int64_t)a3 needsAction:(int64_t)a4 event:(id)a5
{
  v17[1] = *MEMORY[0x1E69E9840];
  v7 = a5;
  v8 = objc_opt_new();
  if (v7)
  {
    v17[0] = v7;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
    [v8 setConflictingEvents:v9];

    v16 = v7;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v16 count:1];
    [v8 setNeedsActionEvents:v10];

    v11 = [v7 startDate];
    v15 = v11;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v15 count:1];
    [v8 setConflictingDates:v12];
  }

  [v8 setTotalConflictingEvents:a3];
  [v8 setTotalNeedsActionEvents:a4];
  [v8 setTotalOccurrencesInSeries:1];
  [v8 setTotalConflictsInSeries:1];

  v13 = *MEMORY[0x1E69E9840];

  return v8;
}

- (EKConflictDetails)initWithConflictingDates:(id)a3 conflictingEvents:(id)a4 needsActionEvents:(id)a5 totalOccurrencesInSeries:(unint64_t)a6 conflictPeriodForSeries:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a7;
  v20.receiver = self;
  v20.super_class = EKConflictDetails;
  v17 = [(EKConflictDetails *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_conflictingDates, a3);
    objc_storeStrong(&v18->_conflictingEvents, a4);
    objc_storeStrong(&v18->_needsActionEvents, a5);
    v18->_totalOccurrencesInSeries = a6;
    objc_storeStrong(&v18->_conflictPeriodForSeries, a7);
    v18->_totalConflictsInSeries = [v13 count];
    v18->_totalConflictingEvents = [v14 count];
    v18->_totalNeedsActionEvents = [v15 count];
  }

  return v18;
}

+ (id)dateRangeToScanForConflictsForEvent:(id)a3
{
  v4 = MEMORY[0x1E695DF00];
  v5 = a3;
  v6 = [v4 date];
  v7 = [a1 _dateRangeToScanForConflictsForEvent:v5 dateForNow:v6];

  return v7;
}

+ (id)_dateRangeToScanForConflictsForEvent:(id)a3 dateForNow:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 recurrenceRules];
  v9 = [v8 firstObject];

  v10 = v7;
  v11 = [v6 endDateUnadjustedForLegacyClients];
  if ([v11 CalIsBeforeDate:v10])
  {
    v12 = v10;
  }

  else
  {
    v12 = [v6 startDate];
  }

  v13 = v12;

  [a1 _maxRangeLengthForRule:v9];
  v14 = [MEMORY[0x1E6992F70] rangeWithStartDate:v13 duration:?];

  return v14;
}

+ (double)_maxRangeLengthForRule:(id)a3
{
  v3 = a3;
  v4 = v3;
  v5 = 31536000.0;
  if (v3)
  {
    v6 = [v3 frequency];
    if (v6 <= 2)
    {
      v5 = dbl_1A81C3F20[v6];
    }
  }

  return v5;
}

@end
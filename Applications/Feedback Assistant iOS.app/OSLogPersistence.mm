@interface OSLogPersistence
- (BOOL)fba_hasValidStartAndEndDates;
@end

@implementation OSLogPersistence

- (BOOL)fba_hasValidStartAndEndDates
{
  startDate = [(OSLogPersistence *)self startDate];
  if (startDate)
  {
    v4 = startDate;
    endDate = [(OSLogPersistence *)self endDate];

    if (endDate)
    {
      startDate2 = [(OSLogPersistence *)self startDate];
      endDate2 = [(OSLogPersistence *)self endDate];
      v8 = [startDate2 compare:endDate2];

      LOBYTE(startDate) = v8 == -1;
    }

    else
    {
      LOBYTE(startDate) = 0;
    }
  }

  return startDate;
}

@end
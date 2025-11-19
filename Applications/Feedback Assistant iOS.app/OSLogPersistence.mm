@interface OSLogPersistence
- (BOOL)fba_hasValidStartAndEndDates;
@end

@implementation OSLogPersistence

- (BOOL)fba_hasValidStartAndEndDates
{
  v3 = [(OSLogPersistence *)self startDate];
  if (v3)
  {
    v4 = v3;
    v5 = [(OSLogPersistence *)self endDate];

    if (v5)
    {
      v6 = [(OSLogPersistence *)self startDate];
      v7 = [(OSLogPersistence *)self endDate];
      v8 = [v6 compare:v7];

      LOBYTE(v3) = v8 == -1;
    }

    else
    {
      LOBYTE(v3) = 0;
    }
  }

  return v3;
}

@end
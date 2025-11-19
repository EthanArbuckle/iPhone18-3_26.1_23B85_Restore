@interface NSDate
- (BOOL)_isToday;
- (BOOL)_isWithinTheLastTimePeriodInDays:(unint64_t)a3;
- (BOOL)_isYesterday;
@end

@implementation NSDate

- (BOOL)_isToday
{
  v3 = +[NSCalendar currentCalendar];
  LOBYTE(self) = [v3 isDateInToday:self];

  return self;
}

- (BOOL)_isYesterday
{
  v3 = +[NSCalendar currentCalendar];
  LOBYTE(self) = [v3 isDateInYesterday:self];

  return self;
}

- (BOOL)_isWithinTheLastTimePeriodInDays:(unint64_t)a3
{
  v5 = +[NSDate date];
  v6 = +[NSCalendar currentCalendar];
  v7 = [v6 dateByAddingUnit:16 value:-a3 toDate:v5 options:0];

  v8 = [(NSDate *)self compare:v7]!= NSOrderedAscending && [(NSDate *)self compare:v5]!= 1;
  return v8;
}

@end
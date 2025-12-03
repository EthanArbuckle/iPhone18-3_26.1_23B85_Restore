@interface NSDate(VSAdditions)
- (id)vs_dateIncrementedByDays:()VSAdditions;
- (id)vs_dateIncrementedByMinutes:()VSAdditions;
- (id)vs_dateRoundedToDay;
@end

@implementation NSDate(VSAdditions)

- (id)vs_dateRoundedToDay
{
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v3 = [currentCalendar components:30 fromDate:self];
  [v3 setCalendar:currentCalendar];
  date = [v3 date];

  if (!date)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The [components date] parameter must not be nil."];
  }

  date2 = [v3 date];

  return date2;
}

- (id)vs_dateIncrementedByDays:()VSAdditions
{
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v6 = [currentCalendar dateByAddingUnit:16 value:a3 toDate:self options:0];

  if (!v6)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The [calendar dateByAddingUnit:NSCalendarUnitDay value:days toDate:self options:0] parameter must not be nil."];
  }

  v7 = [currentCalendar dateByAddingUnit:16 value:a3 toDate:self options:0];

  return v7;
}

- (id)vs_dateIncrementedByMinutes:()VSAdditions
{
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v6 = [currentCalendar dateByAddingUnit:64 value:a3 toDate:self options:0];

  if (!v6)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The [calendar dateByAddingUnit:NSCalendarUnitMinute value:minutes toDate:self options:0] parameter must not be nil."];
  }

  v7 = [currentCalendar dateByAddingUnit:64 value:a3 toDate:self options:0];

  return v7;
}

@end
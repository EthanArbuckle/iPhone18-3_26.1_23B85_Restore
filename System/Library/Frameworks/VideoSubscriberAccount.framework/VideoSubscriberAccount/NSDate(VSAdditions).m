@interface NSDate(VSAdditions)
- (id)vs_dateIncrementedByDays:()VSAdditions;
- (id)vs_dateIncrementedByMinutes:()VSAdditions;
- (id)vs_dateRoundedToDay;
@end

@implementation NSDate(VSAdditions)

- (id)vs_dateRoundedToDay
{
  v2 = [MEMORY[0x277CBEA80] currentCalendar];
  v3 = [v2 components:30 fromDate:a1];
  [v3 setCalendar:v2];
  v4 = [v3 date];

  if (!v4)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The [components date] parameter must not be nil."];
  }

  v5 = [v3 date];

  return v5;
}

- (id)vs_dateIncrementedByDays:()VSAdditions
{
  v5 = [MEMORY[0x277CBEA80] currentCalendar];
  v6 = [v5 dateByAddingUnit:16 value:a3 toDate:a1 options:0];

  if (!v6)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The [calendar dateByAddingUnit:NSCalendarUnitDay value:days toDate:self options:0] parameter must not be nil."];
  }

  v7 = [v5 dateByAddingUnit:16 value:a3 toDate:a1 options:0];

  return v7;
}

- (id)vs_dateIncrementedByMinutes:()VSAdditions
{
  v5 = [MEMORY[0x277CBEA80] currentCalendar];
  v6 = [v5 dateByAddingUnit:64 value:a3 toDate:a1 options:0];

  if (!v6)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The [calendar dateByAddingUnit:NSCalendarUnitMinute value:minutes toDate:self options:0] parameter must not be nil."];
  }

  v7 = [v5 dateByAddingUnit:64 value:a3 toDate:a1 options:0];

  return v7;
}

@end
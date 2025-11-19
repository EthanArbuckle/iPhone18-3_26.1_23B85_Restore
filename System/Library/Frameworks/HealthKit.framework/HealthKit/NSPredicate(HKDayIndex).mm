@interface NSPredicate(HKDayIndex)
+ (id)hk_predicateForSamplesInDayIndexRange:()HKDayIndex;
@end

@implementation NSPredicate(HKDayIndex)

+ (id)hk_predicateForSamplesInDayIndexRange:()HKDayIndex
{
  v6 = [MEMORY[0x1E695DF00] hk_earliestPossibleDateWithDayIndex:?];
  if (a4 <= 0)
  {
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = a4 + a3 - 1;
  }

  v8 = [MEMORY[0x1E695DF00] hk_latestPossibleDateWithDayIndex:v7];
  v9 = [HKQuery predicateForSamplesWithStartDate:v6 endDate:v8 options:0];

  return v9;
}

@end
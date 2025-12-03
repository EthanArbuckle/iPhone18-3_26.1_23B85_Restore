@interface NSDateComponents(BSTimeUtilities)
- (BOOL)isSameYearAsComponents:()BSTimeUtilities;
- (uint64_t)isSameDayAsComponents:()BSTimeUtilities;
- (uint64_t)isSameMonthAsComponents:()BSTimeUtilities;
@end

@implementation NSDateComponents(BSTimeUtilities)

- (uint64_t)isSameDayAsComponents:()BSTimeUtilities
{
  v4 = a3;
  v5 = [self day];
  if (v5 == [v4 day])
  {
    v6 = [self isSameMonthAsComponents:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (uint64_t)isSameMonthAsComponents:()BSTimeUtilities
{
  v4 = a3;
  month = [self month];
  if (month == [v4 month])
  {
    v6 = [self isSameYearAsComponents:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isSameYearAsComponents:()BSTimeUtilities
{
  v4 = a3;
  year = [self year];
  if (year == [v4 year])
  {
    v6 = [self era];
    v7 = v6 == [v4 era];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end
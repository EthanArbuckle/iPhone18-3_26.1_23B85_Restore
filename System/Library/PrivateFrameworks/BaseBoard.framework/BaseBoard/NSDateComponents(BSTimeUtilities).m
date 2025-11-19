@interface NSDateComponents(BSTimeUtilities)
- (BOOL)isSameYearAsComponents:()BSTimeUtilities;
- (uint64_t)isSameDayAsComponents:()BSTimeUtilities;
- (uint64_t)isSameMonthAsComponents:()BSTimeUtilities;
@end

@implementation NSDateComponents(BSTimeUtilities)

- (uint64_t)isSameDayAsComponents:()BSTimeUtilities
{
  v4 = a3;
  v5 = [a1 day];
  if (v5 == [v4 day])
  {
    v6 = [a1 isSameMonthAsComponents:v4];
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
  v5 = [a1 month];
  if (v5 == [v4 month])
  {
    v6 = [a1 isSameYearAsComponents:v4];
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
  v5 = [a1 year];
  if (v5 == [v4 year])
  {
    v6 = [a1 era];
    v7 = v6 == [v4 era];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end
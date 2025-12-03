@interface NSDate(BSTimeUtilities)
- (BOOL)isAfterDate:()BSTimeUtilities;
- (BOOL)isBeforeDate:()BSTimeUtilities;
@end

@implementation NSDate(BSTimeUtilities)

- (BOOL)isAfterDate:()BSTimeUtilities
{
  v4 = a3;
  if (v4)
  {
    v5 = [self compare:v4] == 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isBeforeDate:()BSTimeUtilities
{
  v4 = a3;
  if (v4)
  {
    v5 = [self compare:v4] == -1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end
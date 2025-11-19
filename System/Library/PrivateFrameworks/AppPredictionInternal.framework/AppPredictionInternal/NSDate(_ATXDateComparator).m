@interface NSDate(_ATXDateComparator)
- (BOOL)atx_isOnOrAfterDate:()_ATXDateComparator;
- (uint64_t)atx_isInclusiveBetweenDate:()_ATXDateComparator andDate:;
@end

@implementation NSDate(_ATXDateComparator)

- (BOOL)atx_isOnOrAfterDate:()_ATXDateComparator
{
  v4 = a3;
  if (v4)
  {
    v5 = [a1 compare:v4] == 1 || objc_msgSend(a1, "compare:", v4) == 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (uint64_t)atx_isInclusiveBetweenDate:()_ATXDateComparator andDate:
{
  v6 = a4;
  v7 = v6;
  v8 = 0;
  if (a3 && v6)
  {
    if ([a1 atx_isBeforeDate:a3])
    {
      v8 = 0;
    }

    else
    {
      v8 = [a1 atx_isAfterDate:v7] ^ 1;
    }
  }

  return v8;
}

@end
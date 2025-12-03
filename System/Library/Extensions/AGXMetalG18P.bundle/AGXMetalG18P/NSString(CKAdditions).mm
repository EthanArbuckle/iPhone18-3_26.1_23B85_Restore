@interface NSString(CKAdditions)
- (uint64_t)compareToVersion:()CKAdditions;
@end

@implementation NSString(CKAdditions)

- (uint64_t)compareToVersion:()CKAdditions
{
  v4 = [self componentsSeparatedByString:@"."];
  v5 = [a3 componentsSeparatedByString:@"."];
  v6 = [v4 count];
  if (v6 <= [v5 count])
  {
    v7 = v5;
  }

  else
  {
    v7 = v4;
  }

  v8 = [v7 count];
  if (v8 < 1)
  {
    return 0;
  }

  v9 = v8;
  v10 = 0;
  while (1)
  {
    v11 = @"0";
    if (v10 < [v4 count])
    {
      v11 = [v4 objectAtIndexedSubscript:v10];
    }

    v12 = [v5 count];
    v13 = @"0";
    if (v10 < v12)
    {
      v13 = [v5 objectAtIndexedSubscript:v10];
    }

    result = [(__CFString *)v11 compare:v13 options:64];
    if (result)
    {
      break;
    }

    if (v9 == ++v10)
    {
      return 0;
    }
  }

  return result;
}

@end
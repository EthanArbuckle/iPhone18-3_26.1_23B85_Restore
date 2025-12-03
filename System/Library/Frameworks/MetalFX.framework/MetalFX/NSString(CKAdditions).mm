@interface NSString(CKAdditions)
- (uint64_t)compareToVersion:()CKAdditions;
@end

@implementation NSString(CKAdditions)

- (uint64_t)compareToVersion:()CKAdditions
{
  v4 = a3;
  v5 = [self componentsSeparatedByString:@"."];
  v6 = [v4 componentsSeparatedByString:@"."];
  v7 = [v5 count];
  v8 = [v6 count];
  if (v7 <= v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = v7;
  }

  if (v9 < 1)
  {
LABEL_12:
    v13 = 0;
  }

  else
  {
    v10 = 0;
    while (1)
    {
      v11 = @"0";
      if (v10 < [v5 count])
      {
        v11 = [v5 objectAtIndexedSubscript:v10];
      }

      v12 = @"0";
      if (v10 < [v6 count])
      {
        v12 = [v6 objectAtIndexedSubscript:v10];
      }

      v13 = [(__CFString *)v11 compare:v12 options:64];

      if (v13)
      {
        break;
      }

      if (v9 == ++v10)
      {
        goto LABEL_12;
      }
    }
  }

  return v13;
}

@end
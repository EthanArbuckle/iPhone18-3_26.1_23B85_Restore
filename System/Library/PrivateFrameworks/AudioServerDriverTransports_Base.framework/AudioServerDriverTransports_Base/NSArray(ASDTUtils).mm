@interface NSArray(ASDTUtils)
- (id)asdtNearestNumberToNumber:()ASDTUtils;
- (id)asdtNumericSortAscending:()ASDTUtils;
@end

@implementation NSArray(ASDTUtils)

- (id)asdtNearestNumberToNumber:()ASDTUtils
{
  v4 = a3;
  if ([a1 count])
  {
    [v4 doubleValue];
    v6 = v5;
    v7 = [a1 objectAtIndexedSubscript:0];
    [v7 doubleValue];
    v9 = v8;
    if ([a1 count] >= 2)
    {
      v10 = vabdd_f64(v9, v6);
      v11 = 1;
      while (1)
      {
        v12 = v10;
        v13 = [a1 objectAtIndexedSubscript:v11];
        [v13 doubleValue];
        v10 = vabdd_f64(v14, v6);
        if (v10 >= v12)
        {
          break;
        }

        ++v11;
        v7 = v13;
        if (v11 >= [a1 count])
        {
          goto LABEL_10;
        }
      }
    }

    v13 = v7;
  }

  else
  {
    v13 = 0;
  }

LABEL_10:

  return v13;
}

- (id)asdtNumericSortAscending:()ASDTUtils
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __47__NSArray_ASDTUtils__asdtNumericSortAscending___block_invoke;
  v5[3] = &__block_descriptor_33_e11_q24__0_8_16l;
  v6 = a3;
  v3 = [a1 sortedArrayUsingComparator:v5];

  return v3;
}

@end
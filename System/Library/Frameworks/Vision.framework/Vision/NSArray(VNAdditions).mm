@interface NSArray(VNAdditions)
- (void)vn_enumerateObjectsAsSubarraysOfCount:()VNAdditions usingBlock:;
@end

@implementation NSArray(VNAdditions)

- (void)vn_enumerateObjectsAsSubarraysOfCount:()VNAdditions usingBlock:
{
  v6 = a4;
  v7 = [a1 count];
  if (v7 < a3)
  {
    a3 = v7;
  }

  if (a3)
  {
    v8 = v7;
    v9 = 0;
    v12 = 0;
    do
    {
      if (a3 + v9 > v8)
      {
        a3 = v8 - v9;
      }

      v10 = [a1 subarrayWithRange:{v9, a3}];
      v6[2](v6, v10, v9, a3, &v12);
      v11 = v12;

      if (v11)
      {
        break;
      }

      v9 += a3;
    }

    while (v9 < v8);
  }
}

@end
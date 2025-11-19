@interface NSRegularExpression
@end

@implementation NSRegularExpression

void __63__NSRegularExpression_ENAGRegex__enCapturedSubstringsOfString___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  if ([v9 numberOfRanges])
  {
    v3 = 0;
    do
    {
      v4 = [v9 rangeAtIndex:v3];
      if (v4 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v6 = *(*(*(a1 + 40) + 8) + 40);
        v7 = [MEMORY[0x277CCACA8] string];
        v8 = v6;
      }

      else
      {
        v7 = [*(a1 + 32) substringWithRange:{v4, v5}];
        v8 = *(*(*(a1 + 40) + 8) + 40);
      }

      [v8 addObject:v7];

      ++v3;
    }

    while (v3 < [v9 numberOfRanges]);
  }
}

@end
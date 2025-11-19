@interface AFAnalyticsContextCreateWithErrorRecursively
@end

@implementation AFAnalyticsContextCreateWithErrorRecursively

void ___AFAnalyticsContextCreateWithErrorRecursively_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (([v6 isEqualToString:*MEMORY[0x1E696AA08]] & 1) == 0)
  {
    [*(a1 + 32) setObject:v5 forKey:v6];
  }
}

@end
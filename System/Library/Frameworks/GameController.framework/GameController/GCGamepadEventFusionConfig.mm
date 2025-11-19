@interface GCGamepadEventFusionConfig
@end

@implementation GCGamepadEventFusionConfig

__CFString *__47___GCGamepadEventFusionConfig_debugDescription__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (v3[1])
  {
    v5 = 0;
    v6 = &stru_1F4E3B4E0;
    do
    {
      if ([v3 passRuleForElement:a2 forSourceAtIndex:v5])
      {
        v7 = [(__CFString *)v6 stringByAppendingFormat:@"[%i]", v5];

        v6 = v7;
      }

      ++v5;
      v3 = *(a1 + 32);
    }

    while (v5 < v3[1]);
  }

  else
  {
    v6 = &stru_1F4E3B4E0;
  }

  if (![(__CFString *)v6 length])
  {

    v6 = @"No Sources";
  }

  return v6;
}

@end
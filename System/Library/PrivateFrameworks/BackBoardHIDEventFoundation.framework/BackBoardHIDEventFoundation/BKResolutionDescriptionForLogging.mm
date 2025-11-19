@interface BKResolutionDescriptionForLogging
@end

@implementation BKResolutionDescriptionForLogging

void ___BKResolutionDescriptionForLogging_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = ___BKResolutionDescriptionForLogging_block_invoke_2;
  v6[3] = &unk_2784F6820;
  v7 = v3;
  v8 = v4;
  v9 = *(a1 + 40);
  v5 = v3;
  [v8 appendProem:0 block:v6];
}

void ___BKResolutionDescriptionForLogging_block_invoke_2(uint64_t a1)
{
  v11 = [*(a1 + 32) display];
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) environment];
  v4 = [v2 appendObject:v3 withName:0 skipIfNil:1];

  if (([v11 _isNullDisplay] & 1) == 0)
  {
    v5 = [*(a1 + 40) appendObject:v11 withName:@"display" skipIfNil:1];
  }

  if (*(a1 + 48) == 1)
  {
    v6 = [*(a1 + 32) processDescription];
    if (!v6)
    {
      [*(a1 + 32) pid];
      v6 = BSProcessDescriptionForPID();
    }

    [*(a1 + 40) appendString:v6 withName:0 skipIfEmpty:1];
  }

  else
  {
    v7 = [*(a1 + 40) appendInteger:objc_msgSend(*(a1 + 32) withName:{"pid"), @"pid"}];
  }

  v8 = *(a1 + 40);
  v9 = [*(a1 + 32) token];
  v10 = [v8 appendObject:v9 withName:@"token" skipIfNil:1];
}

@end
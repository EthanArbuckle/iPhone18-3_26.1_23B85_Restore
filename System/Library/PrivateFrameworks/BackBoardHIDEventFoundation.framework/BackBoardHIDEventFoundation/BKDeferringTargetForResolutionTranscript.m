@interface BKDeferringTargetForResolutionTranscript
@end

@implementation BKDeferringTargetForResolutionTranscript

void ___BKDeferringTargetForResolutionTranscript_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  [*(a1 + 40) pid];
  v3 = BSProcessDescriptionForPID();
  [v2 appendString:v3 withName:0];

  v4 = *(a1 + 32);
  v6 = [*(a1 + 40) token];
  v5 = [v4 appendObject:v6 withName:0];
}

@end
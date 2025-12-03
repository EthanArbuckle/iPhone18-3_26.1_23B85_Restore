@interface AXUIReachabilityHelper
+ (id)sharedHelper;
- (double)reachabilityOffsetForPayload:(id)payload;
- (void)animateForReachability:(id)reachability payload:(id)payload completion:(id)completion;
@end

@implementation AXUIReachabilityHelper

+ (id)sharedHelper
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__AXUIReachabilityHelper_sharedHelper__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedHelper_onceToken != -1)
  {
    dispatch_once(&sharedHelper_onceToken, block);
  }

  v2 = sharedHelper_SharedHelper;

  return v2;
}

uint64_t __38__AXUIReachabilityHelper_sharedHelper__block_invoke(uint64_t a1)
{
  sharedHelper_SharedHelper = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x1EEE66BB8]();
}

- (double)reachabilityOffsetForPayload:(id)payload
{
  v3 = [payload objectForKeyedSubscript:@"offset"];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (void)animateForReachability:(id)reachability payload:(id)payload completion:(id)completion
{
  reachabilityCopy = reachability;
  payloadCopy = payload;
  completionCopy = completion;
  v11 = MEMORY[0x1E69DD250];
  v12 = [[AXUIReachabilityAnimationBehaviorSettings alloc] initWithPayload:payloadCopy];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __68__AXUIReachabilityHelper_animateForReachability_payload_completion___block_invoke;
  v18[3] = &unk_1E812E6F0;
  v18[4] = self;
  v19 = payloadCopy;
  v20 = reachabilityCopy;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __68__AXUIReachabilityHelper_animateForReachability_payload_completion___block_invoke_2;
  v16[3] = &unk_1E812E718;
  v17 = completionCopy;
  v13 = completionCopy;
  v14 = reachabilityCopy;
  v15 = payloadCopy;
  [v11 _animateUsingSpringBehavior:v12 tracking:0 animations:v18 completion:v16];
}

uint64_t __68__AXUIReachabilityHelper_animateForReachability_payload_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) reachabilityOffsetForPayload:*(a1 + 40)];
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

uint64_t __68__AXUIReachabilityHelper_animateForReachability_payload_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

@end
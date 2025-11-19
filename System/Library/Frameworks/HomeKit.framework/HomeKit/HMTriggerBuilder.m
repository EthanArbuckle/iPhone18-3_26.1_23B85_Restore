@interface HMTriggerBuilder
@end

@implementation HMTriggerBuilder

uint64_t __40___HMTriggerBuilder___indexOfActionSet___block_invoke(uint64_t a1, void *a2)
{
  if (*(a1 + 32) == a2)
  {
    return 1;
  }

  v3 = [a2 uniqueIdentifier];
  v4 = [v3 isEqual:*(a1 + 40)];

  return v4;
}

@end
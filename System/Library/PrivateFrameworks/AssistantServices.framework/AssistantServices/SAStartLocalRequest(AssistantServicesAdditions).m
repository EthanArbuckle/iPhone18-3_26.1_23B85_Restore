@interface SAStartLocalRequest(AssistantServicesAdditions)
- (uint64_t)af_activationEvent;
@end

@implementation SAStartLocalRequest(AssistantServicesAdditions)

- (uint64_t)af_activationEvent
{
  v1 = [a1 inputOrigin];
  v2 = [v1 isEqualToString:*MEMORY[0x1E69C7F48]];

  if (v2)
  {
    return 12;
  }

  else
  {
    return 0;
  }
}

@end
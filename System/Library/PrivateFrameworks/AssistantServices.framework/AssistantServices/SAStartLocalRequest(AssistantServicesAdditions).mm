@interface SAStartLocalRequest(AssistantServicesAdditions)
- (uint64_t)af_activationEvent;
@end

@implementation SAStartLocalRequest(AssistantServicesAdditions)

- (uint64_t)af_activationEvent
{
  inputOrigin = [self inputOrigin];
  v2 = [inputOrigin isEqualToString:*MEMORY[0x1E69C7F48]];

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
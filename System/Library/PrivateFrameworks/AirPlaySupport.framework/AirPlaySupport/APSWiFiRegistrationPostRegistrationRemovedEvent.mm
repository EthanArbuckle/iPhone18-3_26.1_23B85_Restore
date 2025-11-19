@interface APSWiFiRegistrationPostRegistrationRemovedEvent
@end

@implementation APSWiFiRegistrationPostRegistrationRemovedEvent

uint64_t ___APSWiFiRegistrationPostRegistrationRemovedEvent_block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 16);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

@end
@interface SendRemoteControlSessionOutgoingMessage
@end

@implementation SendRemoteControlSessionOutgoingMessage

void ___SendRemoteControlSessionOutgoingMessage_block_invoke(uint64_t a1)
{
  *(*(*(a1 + 32) + 8) + 24) = AirPlayReceiverSessionSendCommandForObject(*(a1 + 40), *(a1 + 48), *(a1 + 56), 0, 0);
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    APSLogErrorAt();
  }

  CFRelease(*(a1 + 40));
  CFRelease(*(a1 + 48));
  v2 = *(a1 + 56);

  CFRelease(v2);
}

@end
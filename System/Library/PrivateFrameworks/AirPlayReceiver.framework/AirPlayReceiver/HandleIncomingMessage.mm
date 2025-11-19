@interface HandleIncomingMessage
@end

@implementation HandleIncomingMessage

void __rcsMediaRemote_HandleIncomingMessage_block_invoke(uint64_t a1)
{
  APReceiverMediaRemoteXPCService_PostEvent(@"didReceiveMediaRemoteData", *(a1 + 32), *(a1 + 40));
  CFRelease(*(a1 + 32));
  CFRelease(*(a1 + 48));
  v2 = *(a1 + 40);

  CFRelease(v2);
}

void __rcsSenderUIEventsChannel_HandleIncomingMessage_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 80);
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 152);
  if (v4)
  {
    v4(v3, v2);
  }

  v5 = *(a1 + 40);

  CFRelease(v5);
}

@end
@interface PlaybackV2EventCallback
@end

@implementation PlaybackV2EventCallback

void ___PlaybackV2EventCallback_block_invoke(uint64_t a1)
{
  if (AirPlayReceiverSessionSendCommandForObject(*(a1 + 32), *(a1 + 40), *(a1 + 48), 0, 0))
  {
    APSLogErrorAt();
  }

  v2 = *(a1 + 40);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 32);

  CFRelease(v4);
}

@end
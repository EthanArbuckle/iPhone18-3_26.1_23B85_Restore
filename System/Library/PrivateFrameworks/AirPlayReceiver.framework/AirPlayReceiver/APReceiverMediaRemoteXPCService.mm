@interface APReceiverMediaRemoteXPCService
@end

@implementation APReceiverMediaRemoteXPCService

void __APReceiverMediaRemoteXPCService_copyPropertyFromMRSession_block_invoke(uint64_t a1)
{
  cf = 0;
  APReceiverSessionManagerCopyAirPlaySessionWithAttribute(*(gAPReceiverMediaRemoteService_0 + 216), 0, 0, &cf);
  *(*(*(a1 + 32) + 8) + 24) = 0;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    APSLogErrorAt();
  }

  else
  {
    if (cf)
    {
      *(*(*(a1 + 40) + 8) + 24) = AirPlayReceiverSessionCopyProperty(cf, v2, *(a1 + 48), v3, 0);
      if (*(*(*(a1 + 40) + 8) + 24))
      {
        goto LABEL_4;
      }

      v4 = *(*(a1 + 32) + 8);
      v5 = -6727;
    }

    else
    {
      APSLogErrorAt();
      v4 = *(*(a1 + 32) + 8);
      v5 = -6709;
    }

    *(v4 + 24) = v5;
  }

LABEL_4:
  if (cf)
  {
    CFRelease(cf);
  }
}

@end
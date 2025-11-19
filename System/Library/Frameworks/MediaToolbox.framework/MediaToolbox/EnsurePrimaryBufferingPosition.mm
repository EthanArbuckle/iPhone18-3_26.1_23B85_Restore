@interface EnsurePrimaryBufferingPosition
@end

@implementation EnsurePrimaryBufferingPosition

void __fpic_EnsurePrimaryBufferingPosition_block_invoke(void *a1)
{
  if (!*(a1[5] + 1147))
  {
    CurrentlyPlayingEvent = fpic_GetCurrentlyPlayingEvent();
    if (CurrentlyPlayingEvent)
    {
      v3 = CurrentlyPlayingEvent;
      v4 = (*(a1[5] + 136))(a1[6], a1[7], 1, NAN);
      v5 = a1[5];
      *(v5 + 1147) = v4;
      if (v4)
      {
        if ((*(v5 + 1052) & 1) == 0)
        {
          v6 = (*(v5 + 88))(a1[6], a1[7], v3);
          FigPlayerInterstitialEventGetSnapOptions(v6);
          fpic_ApplyResumptionOffset();
          *(*(a1[4] + 8) + 24) = v7;
        }
      }
    }
  }
}

@end
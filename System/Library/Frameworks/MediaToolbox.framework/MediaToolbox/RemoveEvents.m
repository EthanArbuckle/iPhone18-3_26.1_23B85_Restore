@interface RemoveEvents
@end

@implementation RemoveEvents

void __fpic_RemoveEvents_block_invoke(void *a1)
{
  v2 = a1[8];
  if (!v2)
  {
    v2 = *(a1[9] + 200);
  }

  *(*(a1[4] + 8) + 24) = CFArrayGetCount(v2);
  v3 = *(*(a1[4] + 8) + 24);
  if (v3 >= 1)
  {
    v4 = v3 + 1;
    do
    {
      v10 = 0;
      ValueAtIndex = CFArrayGetValueAtIndex(v2, v4 - 2);
      fpic_RemoveEventIfNotPlaying(a1[10], ValueAtIndex, *(*(a1[5] + 8) + 24), &v10);
      if (v10)
      {
        v6 = (*(a1[9] + 88))(a1[10], a1[11], ValueAtIndex);
        *(*(a1[6] + 8) + 24) = 1;
        FigPlayerInterstitialEventGetResumptionOffset(v6, &v8);
        v7 = *(a1[7] + 8);
        *(v7 + 32) = v8;
        *(v7 + 48) = v9;
      }

      --v4;
    }

    while (v4 > 1);
  }
}

@end
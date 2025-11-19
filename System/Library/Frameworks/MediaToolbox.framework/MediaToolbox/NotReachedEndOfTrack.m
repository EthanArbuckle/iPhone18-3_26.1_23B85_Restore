@interface NotReachedEndOfTrack
@end

@implementation NotReachedEndOfTrack

void __fbapop_ruleIsAnotherRPConnected_and_NotReachedEndOfTrack_and_HasOverlapRangeOutro_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  cf = 0;
  v5 = *(a3 + 24);
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v6)
  {
    v6(v5, @"DownstreamConsumer", *MEMORY[0x1E695E480], &cf);
    v7 = cf;
    if (*(a1 + 40) != a3 && cf != 0)
    {
      if (!*(a3 + 46) && *(a3 + 68) && FigCFDictionaryGetBooleanValue() == *MEMORY[0x1E695E4D0])
      {
        *(*(*(a1 + 32) + 8) + 24) = 1;
      }

      v7 = cf;
    }

    if (v7)
    {
      CFRelease(v7);
    }
  }
}

@end
@interface CopyEvents
@end

@implementation CopyEvents

CFArrayRef __fpic_CopyEvents_block_invoke(uint64_t a1)
{
  ShouldIgnoreInterstitialsDueToExternalPlaybackStrategy = fpic_ShouldIgnoreInterstitialsDueToExternalPlaybackStrategy(*(a1 + 32));
  v3 = *MEMORY[0x1E695E480];
  if (ShouldIgnoreInterstitialsDueToExternalPlaybackStrategy)
  {
    result = CFArrayCreate(v3, 0, 0, MEMORY[0x1E695E9C0]);
  }

  else
  {
    result = CFArrayCreateCopy(v3, *(*(a1 + 48) + 200));
  }

  **(a1 + 40) = result;
  return result;
}

CFArrayRef __fpirc_CopyEvents_block_invoke(uint64_t a1)
{
  result = CFArrayCreateCopy(*MEMORY[0x1E695E480], *(*(a1 + 40) + 136));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

@end
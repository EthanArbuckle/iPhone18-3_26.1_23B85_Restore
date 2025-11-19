@interface CopyPlayableEventsForItem
@end

@implementation CopyPlayableEventsForItem

const __CFArray *__fpirc_CopyPlayableEventsForItem_block_invoke(uint64_t a1)
{
  v2 = 0;
  *(*(*(a1 + 32) + 8) + 24) = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  **(a1 + 40) = 0;
  while (1)
  {
    result = *(*(a1 + 48) + 136);
    if (result)
    {
      result = CFArrayGetCount(result);
    }

    if (v2 >= result)
    {
      break;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(*(*(a1 + 48) + 136), v2);
    v5 = (*(*(a1 + 48) + 72))(*(a1 + 56), *(a1 + 64), ValueAtIndex);
    if (*(a1 + 72) == (*(*(a1 + 48) + 80))(*(a1 + 56), *(a1 + 64), ValueAtIndex))
    {
      CFArrayAppendValue(*(*(*(a1 + 32) + 8) + 24), v5);
    }

    ++v2;
  }

  return result;
}

void __fpic_CopyPlayableEventsForItem_block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 208);
  if (v2)
  {
    Count = CFArrayGetCount(v2);
  }

  else
  {
    Count = 0;
  }

  CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  OUTLINED_FUNCTION_2_4();
  *(v5 + 24) = v4;
  **(a1 + 48) = 0;
  v6 = *(a1 + 40);
  if (*(v6 + 1143))
  {
    if (*(v6 + 160) == *(a1 + 56))
    {
      **(a1 + 48) = fpic_ShouldIgnoreInterstitialsDueToExternalPlaybackStrategy(*(a1 + 64));
      if (!**(a1 + 48))
      {
        if (Count < 1)
        {
          v16 = 0;
        }

        else
        {
          v7 = 0;
          v8 = 0;
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(*(*(a1 + 40) + 208), v7);
            v10 = (*(*(a1 + 40) + 88))(*(a1 + 64), *(a1 + 72), ValueAtIndex);
            if (*(a1 + 56) == (*(*(a1 + 40) + 96))(*(a1 + 64), *(a1 + 72), ValueAtIndex) && !FigPlayerInterstitialEventDidLastPlaybackFail(v10))
            {
              if (FigPlayerInterstitialEventCueOnce(v10))
              {
                v11 = FigPlayerInterstitialEventCopyIdentifier(v10);
                FigCFDictionaryGetInt32IfPresent();
                if (v11)
                {
                  CFRelease(v11);
                }
              }

              fpic_EnsureEventHasResolvedProperties();
              if (v12)
              {
                v8 = 1;
              }

              OUTLINED_FUNCTION_2_4();
              CFArrayAppendValue(*(v13 + 24), v10);
            }

            ++v7;
          }

          while (Count != v7);
          if (v8)
          {
            fpic_UpdatePlaybackItemEventList();
          }

          OUTLINED_FUNCTION_2_4();
          v15 = *(v14 + 24);
          if (v15)
          {
            v16 = CFArrayGetCount(v15) == 0;
          }

          else
          {
            v16 = 1;
          }
        }

        **(a1 + 48) = v16;
      }
    }
  }
}

@end
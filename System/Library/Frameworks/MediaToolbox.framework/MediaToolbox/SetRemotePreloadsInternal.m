@interface SetRemotePreloadsInternal
@end

@implementation SetRemotePreloadsInternal

void __fpic_SetRemotePreloadsInternal_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    Count = CFArrayGetCount(v2);
  }

  else
  {
    Count = 0;
  }

  v4 = *(*(a1 + 40) + 704);
  if (v4)
  {
    v5 = CFArrayGetCount(v4);
    if (v5 >= 1)
    {
      v6 = v5;
      for (i = 0; i < v6; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(*(a1 + 40) + 704), i);
        if (FigCFArrayGetFirstIndexOfValue() == -1)
        {
          v9 = *(a1 + 48);
          v10 = FigPlayerInterstitialPreloadCopyTargetID(ValueAtIndex);
          fpic_ForgetPreloadByTargetID(v9, v10);
          if (v10)
          {
            CFRelease(v10);
          }

          CFArrayRemoveValueAtIndex(*(*(a1 + 40) + 704), i--);
          --v6;
        }
      }
    }
  }

  if (Count >= 1)
  {
    for (j = 0; Count != j; ++j)
    {
      v12 = CFArrayGetValueAtIndex(*(a1 + 32), j);
      FirstIndexOfValue = FigCFArrayGetFirstIndexOfValue();
      v14 = *(*(a1 + 40) + 704);
      if (FirstIndexOfValue == -1)
      {
        CFArrayAppendValue(v14, v12);
      }

      else
      {
        v15 = CFArrayGetValueAtIndex(v14, FirstIndexOfValue);
        v16 = FigPlayerInterstitialPreloadCopyURL(v12);
        v17 = FigPlayerInterstitialPreloadCopyURL(v15);
        if (FigCFEqual())
        {
          if (v16)
          {
            CFRelease(v16);
          }

          if (v17)
          {
            CFRelease(v17);
          }

          continue;
        }

        v18 = *(a1 + 48);
        v19 = FigPlayerInterstitialPreloadCopyTargetID(v15);
        fpic_ForgetPreloadByTargetID(v18, v19);
        if (v19)
        {
          CFRelease(v19);
        }

        CFArrayRemoveValueAtIndex(*(*(a1 + 40) + 704), FirstIndexOfValue);
        CFArrayAppendValue(*(*(a1 + 40) + 704), v12);
        if (v16)
        {
          CFRelease(v16);
        }

        if (v17)
        {
          CFRelease(v17);
        }
      }

      fpic_LimitPreloadToPlayhead();
    }
  }

  v20 = *(*(a1 + 40) + 704);
  if (v20)
  {
    v21.length = CFArrayGetCount(v20);
    v20 = *(*(a1 + 40) + 704);
  }

  else
  {
    v21.length = 0;
  }

  v22 = *(a1 + 48);
  v21.location = 0;

  CFArraySortValues(v20, v21, fpic_preloadCompFunc, v22);
}

@end
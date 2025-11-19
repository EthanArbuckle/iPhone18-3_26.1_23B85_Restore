@interface CopyProperty
@end

@implementation CopyProperty

CFTypeRef __audioRendererAirPlay_CopyProperty_block_invoke(uint64_t a1)
{
  result = *(*(a1 + 40) + 32);
  if (result)
  {
    result = CFRetain(result);
  }

  **(a1 + 32) = result;
  return result;
}

CFTypeRef __audioRendererAirPlay_CopyProperty_block_invoke_2(uint64_t a1)
{
  if (*(*(a1 + 40) + 56))
  {
    v2 = MEMORY[0x1E695E4D0];
  }

  else
  {
    v2 = MEMORY[0x1E695E4C0];
  }

  result = CFRetain(*v2);
  **(a1 + 32) = result;
  return result;
}

CFTypeRef __audioRendererAirPlay_CopyProperty_block_invoke_3(uint64_t a1)
{
  if (*(*(a1 + 40) + 77))
  {
    v2 = MEMORY[0x1E695E4D0];
  }

  else
  {
    v2 = MEMORY[0x1E695E4C0];
  }

  result = CFRetain(*v2);
  **(a1 + 32) = result;
  return result;
}

void __videoReceiver_CopyProperty_block_invoke(uint64_t a1)
{
  v2 = FigCFDictionaryCopyArrayOfValues();
  if (v2)
  {
    v3 = v2;
    if (CFArrayGetCount(v2) >= 1)
    {
      v4 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v3, v4);
        Value = CFDictionaryGetValue(ValueAtIndex, @"ImageQueueReceiverKey");
        CFArrayAppendValue(*(*(*(a1 + 32) + 8) + 24), Value);
        ++v4;
      }

      while (v4 < CFArrayGetCount(v3));
    }

    CFRelease(v3);
  }
}

const __CFArray *__videoReceiver_CopyProperty_block_invoke_2(uint64_t a1)
{
  for (i = 0; ; ++i)
  {
    result = *(*(a1 + 40) + 64);
    if (result)
    {
      result = CFArrayGetCount(result);
    }

    if (i >= result)
    {
      break;
    }

    CFArrayGetValueAtIndex(*(*(a1 + 40) + 64), i);
    v4 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v4)
    {
      v5 = v4;
      CFArrayAppendValue(*(*(*(a1 + 32) + 8) + 24), v4);
      CFRelease(v5);
    }
  }

  return result;
}

CFTypeRef __remoteXPCItem_CopyProperty_block_invoke(uint64_t a1)
{
  result = *(*(a1 + 40) + 192);
  if (result)
  {
    result = CFRetain(result);
  }

  **(a1 + 32) = result;
  return result;
}

const void *__airplayRoute_CopyProperty_block_invoke(uint64_t a1)
{
  result = FigCFDictionaryGetBooleanIfPresent();
  v3 = *(a1 + 40);
  if (v3)
  {
    result = *MEMORY[0x1E695E4C0];
    if (*MEMORY[0x1E695E4C0])
    {
      result = CFRetain(result);
      v3 = *(a1 + 40);
    }

    *v3 = result;
  }

  return result;
}

CFTypeRef __airplayRoute_CopyProperty_block_invoke_3(uint64_t a1)
{
  result = *(*(a1 + 40) + 32);
  if (result)
  {
    result = CFRetain(result);
  }

  **(a1 + 32) = result;
  return result;
}

CFTypeRef __airplayRoute_CopyProperty_block_invoke_4(uint64_t a1)
{
  if (*(*(a1 + 40) + 104))
  {
    v2 = MEMORY[0x1E695E4D0];
  }

  else
  {
    v2 = MEMORY[0x1E695E4C0];
  }

  result = *v2;
  if (*v2)
  {
    result = CFRetain(result);
  }

  **(a1 + 32) = result;
  return result;
}

CFTypeRef __papc_CopyProperty_block_invoke(uint64_t a1)
{
  result = *(*(a1 + 40) + 96);
  if (result)
  {
    result = CFRetain(result);
  }

  **(a1 + 32) = result;
  return result;
}

__CFDictionary *__itemairplay_CopyProperty_block_invoke(uint64_t a1)
{
  result = itemairplay_copyPlayParams(*(a1 + 40), 1, 1);
  **(a1 + 32) = result;
  return result;
}

__CFDictionary *__itemairplay_CopyProperty_block_invoke_2(uint64_t a1)
{
  result = itemairplay_copyPlayParams(*(a1 + 40), 0, 1);
  **(a1 + 32) = result;
  return result;
}

CFTypeRef __itemairplay_CopyProperty_block_invoke_3(uint64_t a1)
{
  result = *(*(a1 + 32) + 568);
  if (result)
  {
    result = CFRetain(result);
  }

  **(a1 + 40) = result;
  return result;
}

CFTypeRef __itemairplay_CopyProperty_block_invoke_4(uint64_t a1)
{
  result = *(*(a1 + 40) + 616);
  if (result)
  {
    result = CFRetain(result);
  }

  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

CFTypeRef __itemairplay_CopyProperty_block_invoke_5(void *a1)
{
  v2 = *(CMBaseObjectGetDerivedStorage() + 216);
  if (v2)
  {
    v3 = v2 == 10;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    v4 = a1[6];
    if (!*(v4 + 241) && *(v4 + 56) > 1.0)
    {
      v5 = a1[7];
      if (*(v5 + 500))
      {
        result = *(v5 + 616);
        if (!result)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }
    }
  }

  result = *(a1[7] + 608);
  if (result)
  {
LABEL_9:
    result = CFRetain(result);
  }

LABEL_10:
  *(*(a1[4] + 8) + 24) = result;
  return result;
}

uint64_t __itemairplay_CopyProperty_block_invoke_6(uint64_t a1)
{
  result = *(*(a1 + 40) + 352);
  if (result)
  {
    return FigAirPlayMediaSelectionCopyProperty(result, @"SelectedMediaArray", *MEMORY[0x1E695E480], (*(*(a1 + 32) + 8) + 24));
  }

  return result;
}

CFTypeRef __itemairplay_CopyProperty_block_invoke_7(uint64_t a1)
{
  result = *(*(a1 + 40) + 800);
  if (result)
  {
    result = CFRetain(result);
  }

  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t __vq_CopyProperty_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (*v2 || (v8 = *(v2 + 392)) == 0)
  {
    v3 = *(a1 + 56);
    v4 = kFigVideoQueueExternalProtectionStatus_Protected;
    v5 = MEMORY[0x1E695E9D8];
    v6 = MEMORY[0x1E695E9E8];
LABEL_3:
    result = CFDictionaryCreate(v3, kFigVideoQueueExternalProtectionStatusKey_Video, v4, 1, v5, v6);
    **(a1 + 48) = result;
    if (!**(a1 + 48))
    {
      *(*(*(a1 + 32) + 8) + 24) = -12081;
    }

    return result;
  }

  v13 = 0;
  v9 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (v9)
  {
    result = v9(v8, 7, &v13);
  }

  else
  {
    result = 4294954514;
  }

  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v10 = v13 == 1 || v13 == 4;
    v11 = kFigVideoQueueExternalProtectionStatus_Protected;
    if (!v10)
    {
      v11 = kFigVideoQueueExternalProtectionStatus_NotProtected;
    }

    v12 = *v11;
    v3 = *(a1 + 56);
    v5 = MEMORY[0x1E695E9D8];
    v6 = MEMORY[0x1E695E9E8];
    v4 = &v12;
    goto LABEL_3;
  }

  return result;
}

CFTypeRef __videoQueueRemote_CopyProperty_block_invoke(uint64_t a1)
{
  result = *(*(a1 + 40) + 120);
  if (result)
  {
    result = CFRetain(result);
  }

  **(a1 + 32) = result;
  return result;
}

CFTypeRef __videoQueueRemote_CopyProperty_block_invoke_2(uint64_t a1)
{
  result = *(*(a1 + 40) + 136);
  if (result)
  {
    result = CFRetain(result);
  }

  **(a1 + 32) = result;
  return result;
}

uint64_t __fpic_CopyProperty_block_invoke(uint64_t a1)
{
  if (!FigCFEqual())
  {
    if (FigCFEqual())
    {
      result = fpic_copyInterstitialPlayer(*(a1 + 48), *(a1 + 64), *(a1 + 56));
      goto LABEL_13;
    }

    if (FigCFEqual())
    {
      v3 = *(a1 + 56);
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      if (!v3)
      {
        __fpic_CopyProperty_block_invoke_cold_1(&v8);
        result = v8;
        goto LABEL_13;
      }

      v5 = *(DerivedStorage + 1264);
      if (v5)
      {
LABEL_7:
        v6 = CFRetain(v5);
LABEL_12:
        result = 0;
        *v3 = v6;
        goto LABEL_13;
      }
    }

    else
    {
      if (!FigCFEqual())
      {
        result = 4294951626;
        goto LABEL_13;
      }

      v3 = *(a1 + 56);
      v7 = CMBaseObjectGetDerivedStorage();
      if (!v3)
      {
        __fpic_CopyProperty_block_invoke_cold_2(&v9);
        result = v9;
        goto LABEL_13;
      }

      v5 = *(v7 + 1272);
      if (v5)
      {
        goto LABEL_7;
      }
    }

    v6 = 0;
    goto LABEL_12;
  }

  result = fpic_copyPrimaryPlayer(*(a1 + 48), *(a1 + 56));
LABEL_13:
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t __papc_CopyProperty_block_invoke_2(uint64_t result)
{
  if (*(*(result + 48) + 72) == 1)
  {
    v1 = result;
    if (CFEqual(*(result + 56), @"AllowsAirPlayVideo"))
    {
      v2 = MEMORY[0x1E695E4D0];
      v3 = *(*(v1 + 48) + 76);
      goto LABEL_8;
    }

    if (FigCFEqual())
    {
      v2 = MEMORY[0x1E695E4D0];
      v3 = *(*(v1 + 48) + 77);
      goto LABEL_8;
    }

    if (CFEqual(*(v1 + 56), @"UsesAirPlayVideoWhileAirPlayScreenIsActive"))
    {
      v2 = MEMORY[0x1E695E4D0];
      v3 = *(*(v1 + 48) + 79);
LABEL_8:
      if (v3)
      {
        v4 = v2;
      }

      else
      {
        v4 = MEMORY[0x1E695E4C0];
      }

      result = *v4;
      if (!*v4)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    result = CFEqual(*(v1 + 56), @"IsAirPlayVideoActive");
    if (result)
    {
      *(*(*(v1 + 32) + 8) + 24) = *(*(v1 + 48) + 72) != 1;
      if (!*(*(*(v1 + 32) + 8) + 24))
      {
        IsAirPlayVideoActive = papc_getIsAirPlayVideoActive();
        v6 = MEMORY[0x1E695E4D0];
        if (!IsAirPlayVideoActive)
        {
          v6 = MEMORY[0x1E695E4C0];
        }

        result = CFRetain(*v6);
        **(v1 + 64) = result;
      }
    }

    else
    {
      if (CFEqual(*(v1 + 56), @"UseAirPlayVideoAudioOnlyMode"))
      {
        goto LABEL_22;
      }

      if (CFEqual(*(v1 + 56), @"EnableBufferedAirPlayLocalPlayback") || CFEqual(*(v1 + 56), @"BufferedAirPlayLocalPlaybackVolume"))
      {
        OUTLINED_FUNCTION_303();
        result = FigSignalErrorAtGM();
        *(*(*(v1 + 40) + 8) + 24) = result;
        goto LABEL_14;
      }

      result = CFEqual(*(v1 + 56), @"AirPlayVideoScrubbingCAContextID");
      if (result)
      {
        *(*(*(v1 + 40) + 8) + 24) = -12787;
        goto LABEL_14;
      }

      if (CFEqual(*(v1 + 56), @"IsSetupForAirPlayVideo") || (result = CFEqual(*(v1 + 56), @"IsBufferedAirPlayActive"), result))
      {
LABEL_22:
        result = *MEMORY[0x1E695E4C0];
LABEL_12:
        result = CFRetain(result);
LABEL_13:
        **(v1 + 64) = result;
LABEL_14:
        *(*(*(v1 + 32) + 8) + 24) = 0;
      }
    }
  }

  return result;
}

uint64_t __fpic_CopyProperty_block_invoke_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t __fpic_CopyProperty_block_invoke_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

@end
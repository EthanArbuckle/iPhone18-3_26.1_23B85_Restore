@interface ProcessRateChange
@end

@implementation ProcessRateChange

uint64_t __audioRendererCentral_ProcessRateChange_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 52);
  v2 = *(a1 + 48);
  CMBaseObjectGetDerivedStorage();
  if (v2 == 0.0)
  {
    if (!v1)
    {
      v8 = audioRendererCentral_maybeSetAudioSessionStateToNotPlaying();
      if (v8)
      {
        return OUTLINED_FUNCTION_12_7(v8);
      }

      DerivedStorage = CMBaseObjectGetDerivedStorage();
      if (*(DerivedStorage + 81) == 1)
      {
        v16 = DerivedStorage;
        if (*(DerivedStorage + 64))
        {
          v8 = 0;
          *(v16 + 81) = 0;
          return OUTLINED_FUNCTION_12_7(v8);
        }
      }
    }

    goto LABEL_16;
  }

  if (!v1)
  {
    goto LABEL_16;
  }

  v3 = CMBaseObjectGetDerivedStorage();
  if (!*(v3 + 81))
  {
    v4 = v3;
    v5 = *(v3 + 64);
    if (v5)
    {
      v6 = *(CMBaseObjectGetVTable() + 16);
      if (!v6)
      {
LABEL_17:
        v8 = 4294948075;
        return OUTLINED_FUNCTION_12_7(v8);
      }

      v7 = *(v6 + 80);
      if (!v7)
      {
LABEL_18:
        v8 = 4294948071;
        return OUTLINED_FUNCTION_12_7(v8);
      }

      v8 = v7(v5, 0);
      if (v8)
      {
        return OUTLINED_FUNCTION_12_7(v8);
      }

      *(v4 + 81) = 1;
    }
  }

  v9 = CMBaseObjectGetDerivedStorage();
  if (*(v9 + 80) || (v10 = v9, (v11 = *(v9 + 64)) == 0))
  {
LABEL_16:
    v8 = 0;
    return OUTLINED_FUNCTION_12_7(v8);
  }

  v12 = *(CMBaseObjectGetVTable() + 16);
  if (!v12)
  {
    goto LABEL_17;
  }

  v13 = *(v12 + 56);
  if (!v13)
  {
    goto LABEL_18;
  }

  v8 = v13(v11, *MEMORY[0x1E69B00C0], *MEMORY[0x1E695E4D0]);
  if (!v8)
  {
    *(v10 + 80) = 1;
  }

  return OUTLINED_FUNCTION_12_7(v8);
}

@end
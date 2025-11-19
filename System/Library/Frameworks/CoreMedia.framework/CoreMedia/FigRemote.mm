@interface FigRemote
@end

@implementation FigRemote

uint64_t __FigRemote_LookUpServerTimeoutPort_block_invoke()
{
  result = FigSimpleMutexCreate();
  qword_1ED4CCE00 = result;
  return result;
}

dispatch_queue_t __FigRemote_InterpretMachErrorForTimeout_block_invoke()
{
  fig_note_initialize_category_with_default_work_cf(&gFigRPCTimeoutServerTrace[1], @"rpctimeoutserver_trace", @"com.apple.coremedia", ", "com.apple.coremedia"", 0, 0, gFigRPCTimeoutServerTrace);
  fig_note_initialize_category_with_default_work_cf(&unk_1ED4CC340, @"rpctimeoutserver_trace", @"com.apple.coremedia", ", "com.apple.coremedia"", 0, 0, &qword_1ED4CC338);
  keyExistsAndHasValidFormat = 0;
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"rpc_timeout", @"com.apple.coremedia", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v1 = 1000 * AppIntegerValue;
    if (!AppIntegerValue)
    {
      v1 = 0x7FFFFFFF;
    }

    sTimeoutValueFromPreference = v1;
  }

  result = dispatch_queue_create("RPCTimeoutKillingQueue", 0);
  sServerKillingQueue = result;
  return result;
}

uint64_t __FigRemote_InterpretMachErrorForTimeout_block_invoke_2(uint64_t result)
{
  if (sMessageSentSuccessfully)
  {
    v1 = result;
    FigRemote_LookUpServerTimeoutPort();
    gFigRemoteCommonTimeout = 0x7FFFFFFF;
    if (*(v1 + 32))
    {
      v2 = 1;
    }

    else
    {
      v2 = sSuccessfulMessageServerToken == 0;
    }

    if (v2 || ((result = FigRemote_HandleServerTimeout_WithExtraInfo(sSuccessfulMessageServerToken, *(v1 + 40), *(v1 + 48)), result) ? (v3 = result == -16521) : (v3 = 1), v3))
    {
      result = FigRemote_HandleServerTimeout_WithExtraInfo(*(v1 + 32), *(v1 + 40), *(v1 + 48));
    }

    sSuccessfulMessageServerToken = 0;
    sMessageSentSuccessfully = 0;
  }

  return result;
}

void __FigRemote_GetKnownNeroKeysForLightningAdapters_block_invoke()
{
  FigRemote_GetKnownNeroKeysForLightningAdapters_neroKeys = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9F8]);
  if (sKnownSBufKeysArray)
  {
    Count = CFArrayGetCount(sKnownSBufKeysArray);
    v1 = Count - 1;
    if (Count >= 1)
    {
      v2 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(sKnownSBufKeysArray, v2);
        CFSetAddValue(FigRemote_GetKnownNeroKeysForLightningAdapters_neroKeys, ValueAtIndex);
        if (CFEqual(ValueAtIndex, @"hvcC"))
        {
          v4 = 1;
        }

        else
        {
          v4 = v1 == v2;
        }

        ++v2;
      }

      while (!v4);
    }
  }

  v5 = FigRemote_GetKnownNeroKeysForLightningAdapters_neroKeys;

  CFSetAddValue(v5, @"TransportStreamEncryptionInitData");
}

void __FigRemote_CreateSerializedAtomDataBlockBufferForFormatDescription_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *(a1 + 32);
  OUTLINED_FUNCTION_7_20();
  v10[0] = v6;
  v10[1] = v7;
  if (!OUTLINED_FUNCTION_40_1(v10) && !sbufAtom_appendFormatDescriptionAtomGuts(v5, v10))
  {
    v8 = FigNEAtomWriterEndAtom(v10);
    if (a4)
    {
      if (!v8)
      {
        OUTLINED_FUNCTION_15_12();
        *a4 = v9;
      }
    }
  }
}

void __FigRemote_CreateSerializedAtomDataBlockBufferForKeyValuePair_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  OUTLINED_FUNCTION_7_20();
  appended = sbufAtom_appendKeyValuePairAtom(v5, 0, v6);
  if (appended != -19649 && a4 != 0 && appended == 0)
  {
    OUTLINED_FUNCTION_15_12();
    *a4 = v10;
  }
}

void __FigRemote_CreateSerializedAtomDataBlockBufferForCFType_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  OUTLINED_FUNCTION_7_20();
  v12[0] = v5;
  v12[1] = v6;
  appended = sbufAtom_appendCFTypeAtom(v7, 0, v12);
  if (appended != -19649 && a4 != 0 && appended == 0)
  {
    OUTLINED_FUNCTION_15_12();
    *a4 = v11;
  }
}

@end
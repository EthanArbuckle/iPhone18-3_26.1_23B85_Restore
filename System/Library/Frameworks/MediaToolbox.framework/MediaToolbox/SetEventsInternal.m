@interface SetEventsInternal
@end

@implementation SetEventsInternal

void __fpic_SetEventsInternal_block_invoke(uint64_t a1)
{
  v1 = a1;
  v71 = *MEMORY[0x1E69E9840];
  cf = 0;
  fpic_CopyEventsWithOfflineURLsIfNecessary(*(a1 + 104), *(a1 + 96), &cf);
  v2 = cf;
  v3 = *(v1 + 104);
  v4 = *(v1 + 112);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (v2)
  {
    Count = CFArrayGetCount(v2);
  }

  else
  {
    Count = 0;
  }

  v7 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    OUTLINED_FUNCTION_376();
    v31 = FigSignalErrorAtGM();
    v9 = 0;
    goto LABEL_20;
  }

  v9 = CFDictionaryCreateMutable(v7, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v9)
  {
    OUTLINED_FUNCTION_376();
    v31 = FigSignalErrorAtGM();
    CFRelease(Mutable);
    Mutable = 0;
    goto LABEL_20;
  }

  v72.location = 0;
  v72.length = Count;
  CFArrayAppendArray(Mutable, v2, v72);
  if (Count < 1)
  {
    v31 = 0;
    goto LABEL_20;
  }

  allocator = v7;
  v55 = v1;
  theArray = Mutable;
  v10 = Count + 1;
  v58 = v9;
  v56 = v3;
  while (1)
  {
    v11 = OUTLINED_FUNCTION_284();
    ValueAtIndex = CFArrayGetValueAtIndex(v11, v12);
    v14 = (*(DerivedStorage + 88))(v3, v4, ValueAtIndex);
    v15 = FigPlayerInterstitialEventCopyPrimaryItem();
    if (!v15)
    {
      OUTLINED_FUNCTION_120();
      v31 = FigSignalErrorAtGM();
      goto LABEL_65;
    }

    v16 = v15;
    v17 = OUTLINED_FUNCTION_183_2();
    if (!fpic_doesPlayerItemWrapperBelongToCurrentlyEngagedPrimaryItem(v17, v18, v4))
    {
      break;
    }

LABEL_17:
    CFRelease(v16);
    if (--v10 <= 1)
    {
      v31 = 0;
      v1 = v55;
      Mutable = theArray;
      goto LABEL_20;
    }
  }

  v19 = OUTLINED_FUNCTION_620();
  if (CFDictionaryContainsKey(v19, v20))
  {
LABEL_13:
    v26 = OUTLINED_FUNCTION_620();
    Value = CFDictionaryGetValue(v26, v27);
    CFArrayInsertValueAtIndex(Value, 0, ValueAtIndex);
    CFArrayRemoveValueAtIndex(theArray, v10 - 2);
    if (dword_1EAF178D0)
    {
      v62 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v30 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type);
      if (OUTLINED_FUNCTION_15_52(v30))
      {
        v63 = 136315906;
        v64 = "fpic_filterIncomingEventsForCurrentPrimaryItem";
        v65 = 2048;
        v66 = v3;
        v67 = 2112;
        v68 = v14;
        v69 = 2048;
        v70 = v16;
        OUTLINED_FUNCTION_95_1();
        OUTLINED_FUNCTION_108();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_467();
      v9 = v58;
    }

    goto LABEL_17;
  }

  v21 = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
  if (v21)
  {
    v22 = v21;
    v23 = OUTLINED_FUNCTION_313_1();
    CFDictionaryAddValue(v23, v24, v22);
    v25 = v22;
    v9 = v58;
    v3 = v56;
    CFRelease(v25);
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_120();
  v31 = FigSignalErrorAtGM();
  CFRelease(v16);
  v9 = v58;
LABEL_65:
  CFRelease(theArray);
  CFRelease(v9);
  Mutable = 0;
  v9 = 0;
  v1 = v55;
LABEL_20:
  *(*(*(v1 + 32) + 8) + 24) = v31;
  OUTLINED_FUNCTION_50_14();
  if (!v32)
  {
    if (Mutable)
    {
      v33 = CFArrayGetCount(Mutable);
    }

    else
    {
      v33 = 0;
    }

    OUTLINED_FUNCTION_313_1();
    v34 = v9;
    if (!FigCFEqual() && v33 < 1)
    {
      v35 = 0;
      goto LABEL_43;
    }

    if (v33 >= 1)
    {
      CFArrayGetValueAtIndex(Mutable, 0);
      OUTLINED_FUNCTION_399();
      fpic_UnwrapEvent();
      v35 = FigPlayerInterstitialEventCopyPrimaryItem();
    }

    else
    {
      v35 = 0;
    }

    if (*(v1 + 128))
    {
      v36 = *(v1 + 120);
      if (v33)
      {
        v37 = 1;
      }

      else
      {
        v37 = *(v36 + 216) == 0;
      }

      *(v36 + 1140) = v37;
    }

    else
    {
      v38 = *(v1 + 120);
      v39 = *(v38 + 216);
      *(v38 + 216) = Mutable;
      if (Mutable)
      {
        CFRetain(Mutable);
      }

      if (v39)
      {
        CFRelease(v39);
      }
    }

    v40 = *(v1 + 120);
    v41 = Mutable;
    v9 = v34;
    if (*(v1 + 128))
    {
      if (!*(v40 + 1140))
      {
        v41 = *(v40 + 216);
      }

      goto LABEL_42;
    }

    if (!*(v40 + 1140))
    {
LABEL_42:
      v42 = fpic_setEventsInAddOrderForPlayerItem(*(v1 + 104), v35, v41, *(v1 + 112), (*(*(v1 + 40) + 8) + 24), (*(*(v1 + 48) + 8) + 24), (*(*(v1 + 56) + 8) + 24), *(*(*(v1 + 64) + 8) + 24), (*(*(v1 + 72) + 8) + 24), (*(*(v1 + 80) + 8) + 24), *(*(v1 + 88) + 8) + 32);
      OUTLINED_FUNCTION_30_8(v42, *(v1 + 32));
      OUTLINED_FUNCTION_50_14();
      if (!v43)
      {
LABEL_43:
        v44 = *(v1 + 104);
        v45 = *(v1 + 112);
        v46 = FigCFDictionaryCopyArrayOfKeys();
        if (v46)
        {
          v47 = v46;
          v48 = CFArrayGetCount(v46);
          v49 = v48 - 1;
          if (v48 < 1)
          {
            v53 = 0;
          }

          else
          {
            v50 = 0;
            do
            {
              v51 = CFArrayGetValueAtIndex(v47, v50);
              v52 = CFDictionaryGetValue(v34, v51);
              v53 = fpic_setEventsInAddOrderForPlayerItem(v44, v51, v52, v45, 0, 0, 0, 0, 0, 0, 0);
              if (v53)
              {
                break;
              }
            }

            while (v49 != v50++);
          }

          CFRelease(v47);
        }

        else
        {
          v53 = 0;
        }

        *(*(*(v1 + 32) + 8) + 24) = v53;
        v9 = v34;
      }
    }

    if (v35)
    {
      CFRelease(v35);
    }
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

@end
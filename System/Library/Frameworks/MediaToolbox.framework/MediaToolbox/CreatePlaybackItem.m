@interface CreatePlaybackItem
@end

@implementation CreatePlaybackItem

void __playerairplay_CreatePlaybackItem_block_invoke(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CMBaseObjectGetDerivedStorage();
  v4 = *MEMORY[0x1E695E480];
  v5 = MEMORY[0x1E695E9D8];
  v6 = MEMORY[0x1E695E9E8];
  v7 = OUTLINED_FUNCTION_173_0();
  Mutable = CFDictionaryCreateMutable(v7, v8, v5, v6);
  v10 = OUTLINED_FUNCTION_173_0();
  v12 = CFDictionaryCreateMutable(v10, v11, v5, v6);
  cf = 0;
  if (!*(DerivedStorage + 72) && !*(DerivedStorage + 352))
  {
    FigPlayerGetFigBaseObject(*(v3 + 8));
    if (*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      v13 = OUTLINED_FUNCTION_111_2();
      v14(v13);
    }

    FigCFDictionarySetValue();
    FigPlayerGetFigBaseObject(*(v3 + 8));
    if (*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      v15 = OUTLINED_FUNCTION_111_2();
      v16(v15);
    }

    FigCFDictionarySetValue();
    FigPlayerGetFigBaseObject(*(v3 + 8));
    if (*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      v17 = OUTLINED_FUNCTION_111_2();
      v18(v17);
    }

    FigCFDictionarySetValue();
    FigBaseObject = FigPlayerGetFigBaseObject(*(v3 + 8));
    v20 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v20)
    {
      v20(FigBaseObject, @"AllowsLegibleFallbackMediaSelectionCriteriaForAllAudibleMediaSelections", v4, &cf);
    }

    FigCFDictionarySetValue();
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    FigCFDictionarySetValue();
    pap_playbackSessionGetBooleanProperty();
    FigCFDictionarySetBoolean();
    v21 = OUTLINED_FUNCTION_104_0();
    FigAirPlayMediaSelectionCreate(v21, v22, Mutable, v23, v24);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  v25 = *(a1 + 32);
  if (v25)
  {
    CFRelease(v25);
  }

  v26 = *(a1 + 40);
  if (v26)
  {
    CFRelease(v26);
  }
}

@end
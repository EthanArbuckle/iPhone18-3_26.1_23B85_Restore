@interface EstablishCurrentPrimaryItem
@end

@implementation EstablishCurrentPrimaryItem

void __fpic_EstablishCurrentPrimaryItem_block_invoke(void *a1)
{
  v80 = *MEMORY[0x1E69E9840];
  v2 = a1[5];
  v3 = *(a1[6] + 160);
  if (v2 != v3 && v3 != 0)
  {
    fpic_DisengageFromPrimaryItem(a1[7], a1[8], (*(a1[4] + 8) + 24));
    v2 = a1[5];
    v3 = *(a1[6] + 160);
  }

  if (v2)
  {
    v5 = v2 == v3;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    goto LABEL_24;
  }

  value = *MEMORY[0x1E695E4C0];
  v79[0].value = *MEMORY[0x1E695E4C0];
  v7 = *MEMORY[0x1E695E480];
  FigBaseObject = FigPlaybackItemGetFigBaseObject(v2);
  v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v9 || ((v10 = v9(FigBaseObject, @"BasicsReadyForInspection", v7, v79), value = v79[0].value, !v10) ? (v11 = *MEMORY[0x1E695E4D0] == v79[0].value) : (v11 = 0), !v11))
  {
    v12 = 1;
    if (!value)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v77[0] = 0;
  v24 = *(*(CMBaseObjectGetVTable() + 16) + 152);
  if (v24)
  {
    v25 = v24(v2, v77);
    v26 = v77[0];
    if (v25)
    {
      v27 = 1;
    }

    else
    {
      v27 = v77[0] == 0;
    }

    if (v27)
    {
      v28 = 0;
    }

    else
    {
      LODWORD(cf.value) = 0;
      v29 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v29)
      {
        if (v29(v26, @"MediaSelectionArray", &cf, 0, 0))
        {
          v30 = 0;
        }

        else
        {
          v30 = LODWORD(cf.value) == 2;
        }

        v28 = v30;
      }

      else
      {
        v28 = 0;
      }

      v26 = v77[0];
    }

    if (v26)
    {
      CFRelease(v26);
    }
  }

  else
  {
    v28 = 0;
  }

  value = v79[0].value;
  v12 = v28 == 0;
  if (v79[0].value)
  {
LABEL_16:
    CFRelease(value);
  }

LABEL_17:
  v2 = a1[5];
  if (!v12)
  {
    v13 = a1[7];
    v14 = a1[8];
    v15 = *(a1[4] + 8);
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    cf.value = 0;
    PrimaryPlayerAndCopyWrapper = fpic_GetPrimaryPlayerAndCopyWrapper(v13, &cf);
    v74 = 0;
    v75 = 0;
    v72 = 0;
    v73 = 0;
    v71 = 1.0;
    v18 = *(DerivedStorage + 160);
    if (v18 != v2)
    {
      v31 = PrimaryPlayerAndCopyWrapper;
      if (v18)
      {
        fpic_DisengageFromPrimaryItem(v13, v14, (v15 + 24));
      }

      v32 = 0;
      *(DerivedStorage + 1196) = 0;
      *(DerivedStorage + 1176) = 0u;
      if (v2)
      {
        v32 = CFRetain(v2);
      }

      *(DerivedStorage + 160) = v32;
      if (dword_1EAF178D0)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v40 = *(*(CMBaseObjectGetVTable() + 16) + 152);
      if (v40 && !v40(v2, &v72) && v72)
      {
        CMBaseObject = FigAssetGetCMBaseObject(v72);
        v49 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v49)
        {
          v49(CMBaseObject, @"assetProperty_InstanceUUID", v7, DerivedStorage + 168);
        }

        if (v72)
        {
          CFRelease(v72);
        }
      }

      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterAddWeakListener();
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterAddWeakListener();
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterAddWeakListener();
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterAddWeakListener();
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterAddWeakListener();
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterAddWeakListener();
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterAddWeakListener();
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterAddWeakListener();
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterAddWeakListener();
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterAddWeakListener();
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterAddWeakListener();
      v41 = FigPlaybackItemGetFigBaseObject(v2);
      v42 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v42)
      {
        v42(v41, @"Timebase", v7, &v75);
      }

      v43 = FigPlaybackItemGetFigBaseObject(v2);
      v44 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v44)
      {
        v44(v43, @"CoordinationIdentifier", v7, &v73);
      }

      v45 = *(DerivedStorage + 176);
      v46 = v73;
      *(DerivedStorage + 176) = v73;
      if (v46)
      {
        CFRetain(v46);
      }

      if (v45)
      {
        CFRelease(v45);
      }

      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterAddWeakListener();
      CMNotificationCenterGetDefaultLocalCenter();
      FigGetNotifyingObjectForMediaAccessibilityChanged();
      FigNotificationCenterAddWeakListener();
      fpic_applyCoordinationMediaSelectionCriteria(v13, *(DerivedStorage + 160));
      if (v75)
      {
        CMNotificationCenterGetDefaultLocalCenter();
        FigNotificationCenterAddWeakListener();
        CMNotificationCenterGetDefaultLocalCenter();
        FigNotificationCenterAddWeakListener();
        *(DerivedStorage + 1224) = CFRetain(v75);
        CFRelease(v75);
      }

      else
      {
        v47 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v50 = *(*(CMBaseObjectGetVTable() + 16) + 48);
      if (v50 && !v50(v31, &v71) && v71 > 0.0)
      {
        *(DerivedStorage + 880) = v71;
      }

      v51 = *(DerivedStorage + 160);
      CMBaseObjectGetDerivedStorage();
      v52 = FigCFWeakReferenceHolderCopyReferencedObject();
      if (v52)
      {
        v53 = v52;
        v54 = FigCFDictionaryCopyArrayOfKeys();
        v55 = 0;
        while (1)
        {
          v56 = v54 ? CFArrayGetCount(v54) : 0;
          if (v55 >= v56)
          {
            break;
          }

          ValueAtIndex = CFArrayGetValueAtIndex(v54, v55);
          v58 = CMBaseObjectGetDerivedStorage();
          v59 = 0;
          if (ValueAtIndex && ValueAtIndex != @"DummyItem")
          {
            v59 = (*(v58 + 80))(v13, v53, ValueAtIndex);
          }

          ++v55;
          if (v59 == v51)
          {
            v60 = CMBaseObjectGetDerivedStorage();
            v61 = CFDictionaryGetValue(*(v60 + 184), ValueAtIndex);
            goto LABEL_106;
          }
        }

        ValueAtIndex = 0;
        v61 = 0;
LABEL_106:
        if (v54)
        {
          CFRelease(v54);
        }

        CFRelease(v53);
        if (v61 && CFArrayGetCount(v61) >= 1)
        {
          fpic_CopyEventsWithOfflineURLsIfNecessary(v13, v61, &v74);
          FigCFArrayAppendArray();
          CFDictionaryRemoveValue(*(DerivedStorage + 184), ValueAtIndex);
          if (dword_1EAF178D0)
          {
            v62 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          fpic_SortEventsInAddOrder();
          fpic_PostNotification(v13, @"fpiEventsDidChange", 0);
        }
      }

      fpic_UpdatePlaybackItemEventList();
      v63 = CMBaseObjectGetDerivedStorage();
      v65 = (v63 + 192);
      v64 = *(v63 + 192);
      if (v64)
      {
        CFRelease(v64);
        *v65 = 0;
      }

      v66 = FigPlaybackItemGetFigBaseObject(*(v63 + 160));
      v67 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v67)
      {
        v67(v66, @"OfflineInterstitialListJSON", v7, v65);
      }

      v68 = CMBaseObjectGetDerivedStorage();
      for (i = 0; ; ++i)
      {
        Count = *(v68 + 704);
        if (Count)
        {
          Count = CFArrayGetCount(Count);
        }

        if (i >= Count)
        {
          break;
        }

        CFArrayGetValueAtIndex(*(v68 + 704), i);
        fpic_LimitPreloadToPlayhead();
      }

      if (v73)
      {
        CFRelease(v73);
      }
    }

    if (cf.value)
    {
      CFRelease(cf.value);
    }

    if (v74)
    {
      CFRelease(v74);
    }

    fpic_SwapToInterstitialPlayerLayerIfPrerollDetected(a1[7], a1[8]);
    v2 = a1[5];
  }

LABEL_24:
  if (v2)
  {
    CFRelease(v2);
  }

  v19 = a1[6];
  v20 = *(v19 + 160);
  if (v20)
  {
    if (!*(v19 + 1142))
    {
      *v77 = *MEMORY[0x1E6960C70];
      v78 = *(MEMORY[0x1E6960C70] + 16);
      v21 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (v21)
      {
        if (!v21(v20, v77) && (BYTE4(v77[1]) & 1) != 0)
        {
          if ((BYTE4(v77[1]) & 0x10) != 0)
          {
            memset(v79, 0, 24);
            fpic_GetSeekableRange(*(a1[6] + 160), 0, v79, &cf);
            v34 = a1[6];
            if ((v79[0].flags & 1) == 0)
            {
              v35 = *(v34 + 1142) != 0;
LABEL_65:
              if (v35 && dword_1EAF178D0 >= 2)
              {
                LODWORD(v75) = 0;
                LOBYTE(v74) = 0;
                v36 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v37 = v75;
                if (os_log_type_enabled(v36, v74))
                {
                  v38 = v37;
                }

                else
                {
                  v38 = v37 & 0xFFFFFFFE;
                }

                if (v38)
                {
                  v39 = *(a1[6] + 1141);
                  LODWORD(cf.value) = 136315394;
                  *(&cf.value + 4) = "fpic_EstablishCurrentPrimaryItem_block_invoke";
                  LOWORD(cf.flags) = 1024;
                  *(&cf.flags + 2) = v39;
                  _os_log_send_and_compose_impl();
                }

                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }

              return;
            }

            v22 = (v34 + 1141);
            v23 = 257;
          }

          else
          {
            v22 = (a1[6] + 1141);
            v23 = 256;
          }

          *v22 = v23;
          v35 = 1;
          goto LABEL_65;
        }
      }
    }
  }
}

@end
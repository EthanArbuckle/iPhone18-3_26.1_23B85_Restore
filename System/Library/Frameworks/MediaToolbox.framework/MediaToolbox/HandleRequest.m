@interface HandleRequest
@end

@implementation HandleRequest

void __urlProcessor_HandleRequest_block_invoke(uint64_t a1)
{
  v19 = 0;
  cf = 0;
  v18[0] = 1;
  v18[1] = urlProcessor_contentKeyRequestDidSucceed;
  v18[2] = urlProcessor_contentKeyRequestDidFail;
  v18[3] = urlProcessor_contentKeyRequestDidUpdateContentKeyBossToNewBoss;
  v2 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    goto LABEL_25;
  }

  FigCFDictionarySetValue();
  if (*(*(a1 + 32) + 32))
  {
    FigCFDictionarySetValue();
  }

  if (!FigContentKeySpecifierCreate(1, *(a1 + 40), 0, 0, &cf))
  {
    v4 = CFDictionaryCreateMutable(v2, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (v4)
    {
      v5 = v4;
      CFDictionarySetValue(v4, @"kCKRPCO_AssociatedObjectID", *(*(a1 + 32) + 152));
      if (!FigContentKeyRequestParamsCreate(v2, cf, 0, 2, 2, 0, 0, *(a1 + 48), *(a1 + 56), *(a1 + 88), v5, &v19))
      {
        v6 = *(a1 + 32);
        v7 = *(v6 + 24);
        v8 = v19;
        v9 = *(a1 + 64);
        v10 = *(a1 + 72);
        v11 = *(v6 + 120);
        v12 = *(a1 + 80);
        v13 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        if (v13)
        {
          v13(v7, v8, 5, 0, Mutable, v9, v18, v10, v11, v12 + 16);
        }
      }

      CFRelease(v5);
      goto LABEL_10;
    }

LABEL_25:
    FigSignalErrorAtGM();
  }

LABEL_10:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  v14 = *(a1 + 40);
  if (v14)
  {
    CFRelease(v14);
  }

  v15 = *(a1 + 64);
  if (v15)
  {
    CFRelease(v15);
  }

  v16 = *(a1 + 72);
  if (v16)
  {
    CFRelease(v16);
  }

  v17 = *(a1 + 48);
  if (v17)
  {
    CFRelease(v17);
  }
}

void __urlProcessor_HandleRequest_block_invoke_2(uint64_t a1)
{
  v39 = *MEMORY[0x1E69E9840];
  cf = 0;
  v27 = 0;
  FigReadWriteLockLockForRead();
  v3 = *(a1 + 32);
  if (*v3 || !*(v3 + 32) || !*(a1 + 40))
  {
    v4 = 0;
LABEL_3:
    v5 = 0;
    goto LABEL_4;
  }

  v11 = *MEMORY[0x1E695E480];
  Mutable = FigCustomURLRequestInfoCreateMutable();
  if (Mutable || (Mutable = FigCustomURLRequestInfoSetHTTPHeaders()) != 0 || (Mutable = FigCustomURLRequestInfoSetCryptor()) != 0 || (Mutable = FigCustomURLRequestInfoSetIsSecureStopSupported()) != 0)
  {
    v4 = Mutable;
    goto LABEL_3;
  }

  if (*(a1 + 89))
  {
    v13 = CFArrayCreateMutable(v11, 0, MEMORY[0x1E695E9C0]);
    v5 = v13;
    if (!v13)
    {
      OUTLINED_FUNCTION_243();
      IsRenewalRequest = FigSignalErrorAtGM();
      goto LABEL_47;
    }

    CFArrayAppendValue(v13, @"com.apple.streamingkeydelivery.contentkey");
    if (*(a1 + 90))
    {
      CFArrayAppendValue(v5, @"com.apple.streamingkeydelivery.persistentcontentkey");
    }

    IsRenewalRequest = FigCustomURLRequestInfoSetAllowedUniversalTypeIdentifiers();
    if (IsRenewalRequest)
    {
      goto LABEL_47;
    }
  }

  else
  {
    v5 = 0;
  }

  IsRenewalRequest = FigCustomURLRequestInfoSetIsFromPreMonarchAirPlayReceiver();
  if (IsRenewalRequest)
  {
    goto LABEL_47;
  }

  if (urlp_FigCFDictionaryGetBooleanIfPresent(*(a1 + 72), *MEMORY[0x1E6960D28], &v27))
  {
    if (v27)
    {
      IsRenewalRequest = FigCustomURLRequestInfoSetIsRenewalRequest();
      if (IsRenewalRequest)
      {
        goto LABEL_47;
      }
    }
  }

  v20 = cf;
  if (cf)
  {
    v20 = CFRetain(cf);
    v21 = cf;
  }

  else
  {
    v21 = 0;
  }

  *(*(a1 + 40) + 32) = v20;
  v22 = *(a1 + 32);
  v23 = *(a1 + 40);
  v1 = *(v22 + 32);
  v24 = *(a1 + 80);
  v25 = *(v22 + 120);
  v26 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (v26)
  {
    IsRenewalRequest = v26(v1, v21, v24, v25, urlProcessor_customURLLoaderDataCallback, v23 + 8);
LABEL_47:
    v4 = IsRenewalRequest;
    goto LABEL_4;
  }

  v4 = -12782;
LABEL_4:
  FigReadWriteLockUnlockForRead();
  if (v4)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_46();
    if (v1)
    {
      v7 = *(a1 + 80);
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      v9 = (DerivedStorage + 128);
      v10 = *(*(a1 + 40) + 16);
      if (!DerivedStorage)
      {
        v9 = "";
      }

      v29 = 136316162;
      v30 = "urlProcessor_HandleRequest_block_invoke_2";
      v31 = 2048;
      v32 = v7;
      v33 = 2082;
      v34 = v9;
      v35 = 2048;
      v36 = v10;
      v37 = 1024;
      v38 = v4;
      OUTLINED_FUNCTION_39();
      OUTLINED_FUNCTION_30();
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v15 = *(a1 + 48);
  if (v15)
  {
    CFRelease(v15);
  }

  v16 = *(a1 + 56);
  if (v16)
  {
    CFRelease(v16);
  }

  v17 = *(a1 + 80);
  if (v17)
  {
    CFRelease(v17);
  }

  v18 = *(a1 + 72);
  if (v18)
  {
    CFRelease(v18);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  v19 = *(a1 + 64);
  if (v19)
  {
    CFRelease(v19);
  }
}

@end
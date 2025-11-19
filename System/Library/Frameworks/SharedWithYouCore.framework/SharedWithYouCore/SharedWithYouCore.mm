id SWFrameworkBundle()
{
  if (SWFrameworkBundle_onceToken != -1)
  {
    SWFrameworkBundle_cold_1();
  }

  v1 = SWFrameworkBundle_sBundle;

  return v1;
}

uint64_t __SWFrameworkBundle_block_invoke()
{
  SWFrameworkBundle_sBundle = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.SharedWithYou"];

  return MEMORY[0x1EEE66BB8]();
}

id SWCoreFrameworkBundle()
{
  if (SWCoreFrameworkBundle_onceToken != -1)
  {
    SWCoreFrameworkBundle_cold_1();
  }

  v1 = SWCoreFrameworkBundle_sBundle;

  return v1;
}

uint64_t __SWCoreFrameworkBundle_block_invoke()
{
  SWCoreFrameworkBundle_sBundle = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.SharedWithYouCore"];

  return MEMORY[0x1EEE66BB8]();
}

void sub_1D2C25F90(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

id SWFileProviderCollaborationProvidingInterface()
{
  if (SWFileProviderCollaborationProvidingInterface_once != -1)
  {
    SWFileProviderCollaborationProvidingInterface_cold_1();
  }

  v1 = SWFileProviderCollaborationProvidingInterface_interface;

  return v1;
}

id SWFileProviderCollaborationProvidingInterfaceEntitled()
{
  if (SWFileProviderCollaborationProvidingInterfaceEntitled_once != -1)
  {
    SWFileProviderCollaborationProvidingInterfaceEntitled_cold_1();
  }

  v1 = SWFileProviderCollaborationProvidingInterfaceEntitled_interface;

  return v1;
}

void SWCollaborationMetadataForDocumentURL(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __SWCollaborationMetadataForDocumentURL_block_invoke;
  v7[3] = &unk_1E8412528;
  v8 = v3;
  v9 = v4;
  v5 = v3;
  v6 = v4;
  withServiceProxy(v5, @"com.apple.SocialServices.MessagesCollaborationService", v7);
}

void withServiceProxy(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = a1;
  v8 = objc_opt_new();
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __withServiceProxy_block_invoke;
  v11[3] = &unk_1E84125A0;
  v12 = v5;
  v13 = v6;
  v9 = v5;
  v10 = v6;
  [v8 synchronouslyGetFileProviderServiceWithName:v9 forItemAtURL:v7 completionHandler:v11];
}

void __SWCollaborationMetadataForDocumentURL_block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(a1 + 40);
    v5 = *(*(a1 + 40) + 16);

    v5();
  }

  else
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __SWCollaborationMetadataForDocumentURL_block_invoke_2;
    v9[3] = &unk_1E8412500;
    v10 = *(a1 + 32);
    v7 = *(a1 + 40);
    v11 = 0;
    v12 = v7;
    v8 = [a2 remoteObjectProxyWithErrorHandler:v9];
    [v8 collaborationMetadataWithCompletionHandler:*(a1 + 40)];
  }
}

void __SWCollaborationMetadataForDocumentURL_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __SWCollaborationMetadataForDocumentURL_block_invoke_2_cold_1(a1, v3);
  }

  v5 = *(a1 + 40);
  (*(*(a1 + 48) + 16))();
}

void SWPerformActionForDocumentURL(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __SWPerformActionForDocumentURL_block_invoke;
  v11[3] = &unk_1E8412550;
  v13 = v6;
  v14 = v7;
  v12 = v5;
  v8 = v6;
  v9 = v5;
  v10 = v7;
  withServiceProxy(v9, @"com.apple.SocialServices.MessagesCollaborationService.Entitled", v11);
}

void __SWPerformActionForDocumentURL_block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(a1 + 48);
    v5 = *(*(a1 + 48) + 16);

    v5();
  }

  else
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __SWPerformActionForDocumentURL_block_invoke_2;
    v9[3] = &unk_1E8412500;
    v10 = *(a1 + 32);
    v7 = *(a1 + 48);
    v11 = 0;
    v12 = v7;
    v8 = [a2 remoteObjectProxyWithErrorHandler:v9];
    [v8 performAction:*(a1 + 40) completionHandler:*(a1 + 48)];
  }
}

void __SWPerformActionForDocumentURL_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __SWPerformActionForDocumentURL_block_invoke_2_cold_1(a1, v3);
  }

  v5 = *(a1 + 40);
  (*(*(a1 + 48) + 16))();
}

uint64_t __SWFileProviderCollaborationProvidingInterface_block_invoke()
{
  SWFileProviderCollaborationProvidingInterface_interface = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4E1D788];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __SWFileProviderCollaborationProvidingInterfaceEntitled_block_invoke()
{
  SWFileProviderCollaborationProvidingInterfaceEntitled_interface = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4E1D818];

  return MEMORY[0x1EEE66BB8]();
}

void __withServiceProxy_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    (*(*(a1 + 40) + 16))();
  }

  else if (v5)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __withServiceProxy_block_invoke_2;
    v9[3] = &unk_1E8412578;
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    [v5 getFileProviderConnectionWithCompletionHandler:v9];
  }

  else
  {
    v7 = *(a1 + 40);
    v8 = FPNotSupportedError();
    (*(v7 + 16))(v7, 0, v8);
  }
}

void __withServiceProxy_block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = *(a1 + 32);
  v6 = a3;
  if ([v5 isEqualToString:@"com.apple.SocialServices.MessagesCollaborationService.Entitled"])
  {
    SWFileProviderCollaborationProvidingInterfaceEntitled();
  }

  else
  {
    SWFileProviderCollaborationProvidingInterface();
  }
  v7 = ;
  [v10 setRemoteObjectInterface:v7];

  [v10 resume];
  v8 = *(a1 + 40);
  v9 = [v10 remoteObjectProxy];
  (*(v8 + 16))(v8, v9, v6);
}

void OUTLINED_FUNCTION_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

id getSLCollaborationSigningControllerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getSLCollaborationSigningControllerClass_softClass;
  v7 = getSLCollaborationSigningControllerClass_softClass;
  if (!getSLCollaborationSigningControllerClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getSLCollaborationSigningControllerClass_block_invoke;
    v3[3] = &unk_1E84125F8;
    v3[4] = &v4;
    __getSLCollaborationSigningControllerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1D2C27010(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getSLCollaborationSigningControllerClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!SocialLayerLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __SocialLayerLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E8412618;
    v7 = 0;
    SocialLayerLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v5[0];
    if (SocialLayerLibraryCore_frameworkLibrary)
    {
      if (!v5[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("SLCollaborationSigningController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getSLCollaborationSigningControllerClass_block_invoke_cold_1();
  }

  getSLCollaborationSigningControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __SocialLayerLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  SocialLayerLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t SWCollaborationClearNoticeTransmissionMessageReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v30 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v30 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v30 & 0x7F) << v5;
        if ((v30 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 2)
      {
        break;
      }

      if (v13 == 3)
      {
        v14 = PBReaderReadString();
        v15 = 16;
LABEL_38:
        v26 = *(a1 + v15);
        *(a1 + v15) = v14;

        goto LABEL_45;
      }

      if (v13 != 4)
      {
LABEL_26:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        goto LABEL_45;
      }

      v29 = 0;
      v16 = [a2 position] + 8;
      if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 8, v17 <= objc_msgSend(a2, "length")))
      {
        v27 = [a2 data];
        [v27 getBytes:&v29 range:{objc_msgSend(a2, "position"), 8}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
      }

      else
      {
        [a2 _setError];
      }

      *(a1 + 8) = v29;
LABEL_45:
      v28 = [a2 position];
      if (v28 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 1)
    {
      v19 = 0;
      v20 = 0;
      v21 = 0;
      while (1)
      {
        v31 = 0;
        v22 = [a2 position] + 1;
        if (v22 >= [a2 position] && (v23 = objc_msgSend(a2, "position") + 1, v23 <= objc_msgSend(a2, "length")))
        {
          v24 = [a2 data];
          [v24 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v21 |= (v31 & 0x7F) << v19;
        if ((v31 & 0x80) == 0)
        {
          break;
        }

        v19 += 7;
        v11 = v20++ >= 9;
        if (v11)
        {
          v25 = 0;
          goto LABEL_42;
        }
      }

      if ([a2 hasError])
      {
        v25 = 0;
      }

      else
      {
        v25 = v21;
      }

LABEL_42:
      *(a1 + 32) = v25;
      goto LABEL_45;
    }

    if (v13 != 2)
    {
      goto LABEL_26;
    }

    v14 = PBReaderReadString();
    v15 = 24;
    goto LABEL_38;
  }

  return [a2 hasError] ^ 1;
}

uint64_t SWCollaborationNoticeTransmissionMessageReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v37 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v37 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v37 & 0x7F) << v5;
        if ((v37 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 2)
      {
        break;
      }

      switch(v13)
      {
        case 3:
          v21 = PBReaderReadData();
          v22 = 32;
LABEL_34:
          v23 = *(a1 + v22);
          *(a1 + v22) = v21;

          break;
        case 5:
          v36 = 0;
          v24 = [a2 position] + 8;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 8, v25 <= objc_msgSend(a2, "length")))
          {
            v34 = [a2 data];
            [v34 getBytes:&v36 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          *(a1 + 8) = v36;
          break;
        case 4:
          v14 = 0;
          v15 = 0;
          v16 = 0;
          while (1)
          {
            v39 = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:&v39 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v39 & 0x7F) << v14;
            if ((v39 & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_56;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v16;
          }

LABEL_56:
          *(a1 + 16) = v20;
          break;
        default:
          goto LABEL_47;
      }

LABEL_59:
      v35 = [a2 position];
      if (v35 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 1)
    {
      v26 = 0;
      v27 = 0;
      v28 = 0;
      while (1)
      {
        v38 = 0;
        v29 = [a2 position] + 1;
        if (v29 >= [a2 position] && (v30 = objc_msgSend(a2, "position") + 1, v30 <= objc_msgSend(a2, "length")))
        {
          v31 = [a2 data];
          [v31 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v28 |= (v38 & 0x7F) << v26;
        if ((v38 & 0x80) == 0)
        {
          break;
        }

        v26 += 7;
        v11 = v27++ >= 9;
        if (v11)
        {
          v32 = 0;
          goto LABEL_52;
        }
      }

      if ([a2 hasError])
      {
        v32 = 0;
      }

      else
      {
        v32 = v28;
      }

LABEL_52:
      *(a1 + 40) = v32;
      goto LABEL_59;
    }

    if (v13 != 2)
    {
LABEL_47:
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }

      goto LABEL_59;
    }

    v21 = PBReaderReadString();
    v22 = 24;
    goto LABEL_34;
  }

  return [a2 hasError] ^ 1;
}

id getSLPersonClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getSLPersonClass_softClass;
  v7 = getSLPersonClass_softClass;
  if (!getSLPersonClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getSLPersonClass_block_invoke;
    v3[3] = &unk_1E84125F8;
    v3[4] = &v4;
    __getSLPersonClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1D2C2D64C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getSLPersonClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!SocialLayerLibraryCore_frameworkLibrary_0)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __SocialLayerLibraryCore_block_invoke_0;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E8412680;
    v7 = 0;
    SocialLayerLibraryCore_frameworkLibrary_0 = _sl_dlopen();
    v2 = v5[0];
    if (SocialLayerLibraryCore_frameworkLibrary_0)
    {
      if (!v5[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("SLPerson");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getSLPersonClass_block_invoke_cold_1();
  }

  getSLPersonClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __SocialLayerLibraryCore_block_invoke_0(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  SocialLayerLibraryCore_frameworkLibrary_0 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void OUTLINED_FUNCTION_0_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

id SWGeneralTelemetryLogHandle()
{
  if (SWGeneralTelemetryLogHandle_onceToken != -1)
  {
    SWGeneralTelemetryLogHandle_cold_1();
  }

  v1 = SWGeneralTelemetryLogHandle_osLog;

  return v1;
}

uint64_t __SWGeneralTelemetryLogHandle_block_invoke()
{
  SWGeneralTelemetryLogHandle_osLog = os_log_create("com.apple.SharedWithYou.telemetry", "General");

  return MEMORY[0x1EEE66BB8]();
}

id SWFrameworkLogHandle()
{
  if (SWFrameworkLogHandle_onceToken != -1)
  {
    SWFrameworkLogHandle_cold_1();
  }

  v1 = SWFrameworkLogHandle_osLog;

  return v1;
}

uint64_t __SWFrameworkLogHandle_block_invoke()
{
  SWFrameworkLogHandle_osLog = os_log_create("com.apple.SharedWithYou", "General");

  return MEMORY[0x1EEE66BB8]();
}

id SWShareableContentLogHandle()
{
  if (SWShareableContentLogHandle_onceToken != -1)
  {
    SWShareableContentLogHandle_cold_1();
  }

  v1 = SWShareableContentLogHandle_osLog;

  return v1;
}

uint64_t __SWShareableContentLogHandle_block_invoke()
{
  SWShareableContentLogHandle_osLog = os_log_create("com.apple.SharedWithYou", "ShareableContent");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1D2C2FFE4(void *a1)
{
  sub_1D2C301C8();
  v2 = NSStringFromSelector(sel_collaborationIdentifier);
  sub_1D2C307C8();

  v3 = sub_1D2C307E8();

  if (v3)
  {
    v5 = 0;
    sub_1D2C307B8();
  }

  type metadata accessor for SWClearMessagesAction();
  swift_deallocPartialClassInstance();
  return 0;
}

id sub_1D2C3015C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SWClearMessagesAction();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1D2C301C8()
{
  result = qword_1EC72C9A8;
  if (!qword_1EC72C9A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC72C9A8);
  }

  return result;
}

void __swiftcall SWCollaborationOption.init(title:identifier:subtitle:selected:requiredOptionsIdentifiers:)(SWCollaborationOption *__return_ptr retstr, Swift::String title, Swift::String identifier, Swift::String subtitle, Swift::Bool selected, Swift::OpaquePointer requiredOptionsIdentifiers)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = sub_1D2C307A8();

  v9 = sub_1D2C307A8();

  v10 = [ObjCClassFromMetadata optionWithTitle:v8 identifier:v9];

  v11 = v10;
  v12 = sub_1D2C307A8();

  [v11 setSubtitle_];

  [v11 setSelected_];
  v13 = sub_1D2C307D8();

  [v11 setRequiredOptionsIdentifiers_];
}

void __SWCollaborationMetadataForDocumentURL_block_invoke_2_cold_1(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = [*(a1 + 32) fp_shortDescription];
  v4 = [a2 fp_prettyDescription];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_1D2C1D000, v5, v6, "[ERROR] Cannot fetch share options for item at %@. Error: %@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x1E69E9840];
}

void __SWPerformActionForDocumentURL_block_invoke_2_cold_1(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = [*(a1 + 32) fp_shortDescription];
  v4 = [a2 fp_prettyDescription];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_1D2C1D000, v5, v6, "[ERROR] Cannot perform share operation for item at %@. Error: %@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x1E69E9840];
}
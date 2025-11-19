@interface Control
@end

@implementation Control

void __screenstreamudp_Control_block_invoke(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  v34 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v33 = 0;
  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v27 = 0u;
  if (*(DerivedStorage + 24))
  {
    __screenstreamudp_Control_block_invoke_cold_1(&v34);
    v12 = -16762;
    goto LABEL_30;
  }

  if (!v3)
  {
    __screenstreamudp_Control_block_invoke_cold_13(&v34);
    v12 = -16760;
    goto LABEL_30;
  }

  v5 = DerivedStorage;
  Int64 = CFDictionaryGetInt64();
  if (Int64 != *(v5 + 248))
  {
    v7 = Int64;
    if (!Int64)
    {
      v8 = "default";
      goto LABEL_9;
    }

    if (Int64 != 1)
    {
      if (gLogCategory_APEndpointStreamScreenUDP <= 90 && (gLogCategory_APEndpointStreamScreenUDP != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v12 = -16760;
      v34 = -16760;
      APSLogErrorAt();
      goto LABEL_30;
    }

    if (*(v5 + 257))
    {
      v8 = "media presentation";
LABEL_9:
      if (gLogCategory_APEndpointStreamScreenUDP >= 51)
      {
        *(v5 + 248) = Int64;
      }

      else
      {
        if (gLogCategory_APEndpointStreamScreenUDP != -1 || _LogCategory_Initialize())
        {
          v23 = v2;
          v24 = v8;
          LogPrintF();
        }

        v9 = gLogCategory_APEndpointStreamScreenUDP;
        *(v5 + 248) = v7;
        if (v9 <= 40 && (v9 != -1 || _LogCategory_Initialize()))
        {
          __screenstreamudp_Control_block_invoke_cold_2();
        }
      }

      Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (!Mutable)
      {
        __screenstreamudp_Control_block_invoke_cold_12(&v34);
        v12 = -16761;
        goto LABEL_30;
      }

      v11 = Mutable;
      if (!*(v5 + 112) || !*(v5 + 113) || !*(v5 + 120))
      {
        goto LABEL_24;
      }

      v26 = *MEMORY[0x277CBF3A8];
      v25 = 0;
      if (*(v5 + 248) == 1)
      {
        APSScreenGetMediaPresentationParams();
        if (gLogCategory_APEndpointStreamScreenUDP <= 50 && (gLogCategory_APEndpointStreamScreenUDP != -1 || _LogCategory_Initialize()))
        {
          __screenstreamudp_Control_block_invoke_cold_3(&v26);
        }
      }

      else
      {
        v26 = *(v5 + 152);
        v25 = *(v5 + 268);
      }

      v27 = v26;
      LODWORD(v28) = v25;
      BYTE8(v29) = *(v5 + 248) == 1;
      *&v30 = screenstreamudp_getDisplayHDRMode(v5);
      v14 = *(v5 + 216);
      if (v14)
      {
        *(&v31 + 1) = CFDictionaryGetValue(v14, @"encoderEncryptionData");
        if (!*(&v31 + 1))
        {
          __screenstreamudp_Control_block_invoke_cold_5(&v34);
          goto LABEL_24;
        }

        FigCFDictionaryGetInt64IfPresent();
        if (!v32)
        {
          __screenstreamudp_Control_block_invoke_cold_4(&v34);
          goto LABEL_24;
        }
      }

      if (!*(v5 + 113))
      {
LABEL_43:
        TypedValue = 0;
        goto LABEL_44;
      }

      CFDictionarySetInt64();
      DisplayHDRMode = screenstreamudp_getDisplayHDRMode(v5);
      CFDictionarySetValue(v11, @"displayHDRMode", DisplayHDRMode);
      v17 = MEMORY[0x277CBED28];
      if (!*(v5 + 263))
      {
        v17 = MEMORY[0x277CBED10];
      }

      CFDictionarySetValue(v11, @"hdrMirroringSupported", *v17);
      v18 = [*(v5 + 40) isConfigPresentForPresentationMode:BYTE8(v29)];
      if (!v18)
      {
        v19 = *(v5 + 40);
        v20 = screenstreamudp_getDisplayHDRMode(v5);
        v34 = [v19 initializeNegotiatorWithMode:v20 presentationMode:BYTE8(v29) != 0 hdrMirroringSupported:{*(v5 + 263) != 0, v23, v24}];
        if (v34)
        {
          __screenstreamudp_Control_block_invoke_cold_6();
          goto LABEL_24;
        }

        v21 = [*(v5 + 40) negotiationDataForPresentationMode:BYTE8(v29)];
        if (!v21)
        {
          __screenstreamudp_Control_block_invoke_cold_10(&v34);
          goto LABEL_24;
        }

        v22 = v21;
        if (gLogCategory_APEndpointStreamScreenUDP <= 40 && (gLogCategory_APEndpointStreamScreenUDP != -1 || _LogCategory_Initialize()))
        {
          __screenstreamudp_Control_block_invoke_cold_7();
        }

        CFDictionarySetValue(v11, @"negotiationData", v22);
      }

      v34 = APTransportStreamSendPlistMessageCreatingPlistReply();
      if (v34)
      {
        __screenstreamudp_Control_block_invoke_cold_8();
      }

      else
      {
        if (v18)
        {
          goto LABEL_43;
        }

        CFDataGetTypeID();
        TypedValue = CFDictionaryGetTypedValue();
        if (!v34)
        {
LABEL_44:
          v34 = [*(v5 + 40) restartWithScreenOptions:&v27 negotiatedBlob:{TypedValue, v23, v24}];
          if (v34)
          {
            __screenstreamudp_Control_block_invoke_cold_11();
          }

          goto LABEL_24;
        }

        __screenstreamudp_Control_block_invoke_cold_9();
      }

LABEL_24:
      CFRelease(v11);
      if (v33)
      {
        CFRelease(v33);
      }
    }
  }

  v12 = v34;
  if (v34)
  {
LABEL_30:
    screenstreamudp_handleFatalError(v2, v12, @"HDR restart failed");
    v13 = v34;
    goto LABEL_31;
  }

  v13 = 0;
LABEL_31:
  *(*(a1[4] + 8) + 24) = v13;
}

uint64_t __screenstream_Control_block_invoke_3(uint64_t a1)
{
  result = screenstream_handleCommandSetRecordingState(*(a1 + 40), 1);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t __screenstreamudp_Control_block_invoke_cold_4(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -16765;
  return result;
}

uint64_t __screenstreamudp_Control_block_invoke_cold_5(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -16765;
  return result;
}

uint64_t __screenstreamudp_Control_block_invoke_cold_10(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -16761;
  return result;
}

uint64_t __screenstreamudp_Control_block_invoke_cold_12(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -16761;
  return result;
}

void __screenstream_Control_block_invoke()
{
  v2 = OUTLINED_FUNCTION_21_7();
  if (*(v2 + 24) || !v1)
  {
LABEL_27:
    APSLogErrorAt();
    goto LABEL_30;
  }

  v3 = v2;
  Int64 = CFDictionaryGetInt64();
  if (Int64 != *(v3 + 368) && !*(v3 + 394) && !*(v3 + 409))
  {
    v5 = *(v3 + 160);
    if (v5)
    {
      v6 = Int64;
      if (Int64 == 1)
      {
        if (!*(v3 + 383))
        {
          goto LABEL_30;
        }
      }

      else if (Int64)
      {
        if (gLogCategory_APEndpointStreamScreen <= 90 && (gLogCategory_APEndpointStreamScreen != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        goto LABEL_27;
      }

      v7 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (v7)
      {
        v7(v5);
      }

      if (gLogCategory_APEndpointStreamScreen <= 50 && (gLogCategory_APEndpointStreamScreen != -1 || OUTLINED_FUNCTION_4()))
      {
        OUTLINED_FUNCTION_2();
      }

      *(v3 + 368) = v6;
      screenstream_createVirtualDisplayActivationOptions();
      if (!*(*(OUTLINED_FUNCTION_22_3() + 16) + 8) || (v8 = OUTLINED_FUNCTION_14_11(), v9(v8)) || (v10 = *(*(OUTLINED_FUNCTION_33_2() + 16) + 40)) == 0 || v10(v3))
      {
        APSLogErrorAt();
        if (!v0)
        {
          goto LABEL_30;
        }
      }

      else if (!v0)
      {
        goto LABEL_30;
      }

      CFRelease(v0);
    }
  }

LABEL_30:
  OUTLINED_FUNCTION_15_3();
}

uint64_t __screenstream_Control_block_invoke_2(uint64_t a1)
{
  result = CMBaseObjectGetDerivedStorage();
  v3 = result;
  if (gLogCategory_APEndpointStreamScreen <= 50)
  {
    if (gLogCategory_APEndpointStreamScreen != -1 || (result = OUTLINED_FUNCTION_4(), result))
    {
      result = OUTLINED_FUNCTION_2();
    }
  }

  if (*(v3 + 24))
  {
    v7 = -16762;
    goto LABEL_14;
  }

  if (!*(v3 + 26) || (v4 = *(v3 + 160)) == 0)
  {
    v7 = 0;
    goto LABEL_15;
  }

  v5 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (v5)
  {
    v5(v4);
  }

  v6 = *(*(OUTLINED_FUNCTION_33_2() + 16) + 32);
  if (!v6)
  {
    v7 = -12782;
LABEL_14:
    result = APSLogErrorAt();
    goto LABEL_15;
  }

  result = v6(v3);
  v7 = result;
  if (result)
  {
    goto LABEL_14;
  }

LABEL_15:
  *(*(*(a1 + 32) + 8) + 24) = v7;
  return result;
}

uint64_t __screenstream_Control_block_invoke_4(uint64_t a1)
{
  result = screenstream_handleCommandSetRecordingState(*(a1 + 40), 0);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void __screenstream_Control_block_invoke_5()
{
  v2 = OUTLINED_FUNCTION_21_7();
  cf = 0;
  if (*(v2 + 394))
  {
    goto LABEL_26;
  }

  v3 = v2;
  if (*(v2 + 26))
  {
    if (!v1)
    {
      goto LABEL_30;
    }

    v4 = CFGetTypeID(v1);
    if (v4 != CFDictionaryGetTypeID())
    {
      goto LABEL_30;
    }

    v5 = *(v3 + 160);
    v6 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v6)
    {
      v6(v5);
    }

    if (APEndpointDisplayDescriptionCreateWithDisplayInfo(*MEMORY[0x277CBECE8], v1, &cf))
    {
LABEL_30:
      APSLogErrorAt();
      goto LABEL_24;
    }

    if (gLogCategory_APEndpointStreamScreen <= 50 && (gLogCategory_APEndpointStreamScreen != -1 || OUTLINED_FUNCTION_4()))
    {
      OUTLINED_FUNCTION_29_3();
      OUTLINED_FUNCTION_2();
    }

    v7 = *(v3 + 72);
    v8 = cf;
    *(v3 + 72) = cf;
    if (v8)
    {
      CFRetain(v8);
    }

    if (v7)
    {
      CFRelease(v7);
    }

    screenstream_initDisplayInfo(v3);
    screenstream_createVirtualDisplayActivationOptions();
    if (!*(*(OUTLINED_FUNCTION_22_3() + 16) + 8) || (v9 = OUTLINED_FUNCTION_14_11(), v10(v9)) || (v11 = *(*(OUTLINED_FUNCTION_33_2() + 16) + 40)) == 0 || v11(v3))
    {
      APSLogErrorAt();
      if (!v0)
      {
        goto LABEL_24;
      }
    }

    else if (!v0)
    {
      goto LABEL_24;
    }

    CFRelease(v0);
  }

LABEL_24:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_26:
  OUTLINED_FUNCTION_15_3();
}

void __screenstream_Control_block_invoke_6()
{
  v2 = OUTLINED_FUNCTION_21_7();
  if (gLogCategory_APEndpointStreamScreen <= 50 && (gLogCategory_APEndpointStreamScreen != -1 || OUTLINED_FUNCTION_4()))
  {
    OUTLINED_FUNCTION_29_3();
    OUTLINED_FUNCTION_2();
  }

  if (!*(v2 + 394) || !v1 || (v3 = CFGetTypeID(v1), v3 != CFDictionaryGetTypeID()) || !CGSizeMakeWithDictionaryRepresentation(v1, (v2 + 232)))
  {
    APSLogErrorAt();
    goto LABEL_21;
  }

  if (*(v2 + 25))
  {
    v4 = *(v2 + 160);
    if (v4)
    {
      v5 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (v5)
      {
        v5(v4);
      }

      screenstream_createVirtualDisplayActivationOptions();
      if (*(*(OUTLINED_FUNCTION_22_3() + 16) + 8))
      {
        v6 = OUTLINED_FUNCTION_14_11();
        if (!v7(v6))
        {
          v8 = *(*(OUTLINED_FUNCTION_33_2() + 16) + 40);
          if (v8)
          {
            if (!v8(v2))
            {
              if (!v0)
              {
                goto LABEL_21;
              }

              goto LABEL_20;
            }
          }
        }
      }

      APSLogErrorAt();
      if (v0)
      {
LABEL_20:
        CFRelease(v0);
      }
    }
  }

LABEL_21:
  OUTLINED_FUNCTION_15_3();
}

@end
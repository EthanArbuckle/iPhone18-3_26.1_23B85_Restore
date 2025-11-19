@interface AuthenticateEndpoint
@end

@implementation AuthenticateEndpoint

void __mfiMutualAuth_AuthenticateEndpoint_block_invoke(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 40);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v69 = 0;
  v4 = 0x27CFEF000uLL;
  if (gLogCategory_APAuthenticationClientMFiMutualAuth <= 50 && (gLogCategory_APAuthenticationClientMFiMutualAuth != -1 || _LogCategory_Initialize()))
  {
    __mfiMutualAuth_AuthenticateEndpoint_block_invoke_cold_1();
  }

  v5 = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APAuthenticationClientMFiMutualAuth <= 50 && (gLogCategory_APAuthenticationClientMFiMutualAuth != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  FigSimpleMutexLock();
  mfiMutualAuth_setAndLogAuthState(v2, 1);
  FigSimpleMutexUnlock();
  v6 = *(v5 + 8);
  dataPointerOut[0] = MEMORY[0x277D85DD0];
  dataPointerOut[1] = 0x40000000;
  dataPointerOut[2] = __mfiMutualAuth_initMFi4_block_invoke;
  dataPointerOut[3] = &__block_descriptor_tmp_21;
  dataPointerOut[4] = v2;
  dataPointerOut[5] = v5;
  v7 = APAccTransportClientEndpointActivate(v6, 14, 1, dataPointerOut);
  v8 = MEMORY[0x277CBECE8];
  v61 = v1;
  if (v7)
  {
    v21 = v7;
    __mfiMutualAuth_AuthenticateEndpoint_block_invoke_cold_2();
LABEL_169:
    APSLogErrorAt();
    v13 = 0;
    goto LABEL_72;
  }

  v9 = *(v5 + 8);
  lengthAtOffsetOut[0] = MEMORY[0x277D85DD0];
  lengthAtOffsetOut[1] = 0x40000000;
  lengthAtOffsetOut[2] = __mfiMutualAuth_initMFi4_block_invoke_2;
  lengthAtOffsetOut[3] = &__block_descriptor_tmp_25;
  lengthAtOffsetOut[4] = v5;
  lengthAtOffsetOut[5] = v2;
  v10 = APAccTransportClientEndpointSetAuthStatusHandler(v9, lengthAtOffsetOut);
  if (v10)
  {
    v21 = v10;
    __mfiMutualAuth_AuthenticateEndpoint_block_invoke_cold_3();
    goto LABEL_169;
  }

  v11 = *(v5 + 8);
  cf[0] = MEMORY[0x277D85DD0];
  cf[1] = 0x40000000;
  cf[2] = __mfiMutualAuth_initMFi4_block_invoke_3;
  cf[3] = &__block_descriptor_tmp_28;
  cf[4] = v2;
  cf[5] = v5;
  v12 = APAccTransportClientEndpointSetSecureTunnelDataReceiveHandler(v11, cf);
  if (v12)
  {
    v21 = v12;
    __mfiMutualAuth_AuthenticateEndpoint_block_invoke_cold_4();
    goto LABEL_169;
  }

  v59 = DerivedStorage;
  v13 = 0;
  v14 = *v8;
  v15 = *MEMORY[0x277CBED00];
  while (1)
  {
    if (v13)
    {
      CFRelease(v13);
    }

    v16 = v69;
    v17 = CMBaseObjectGetDerivedStorage();
    dataPointerOut[0] = 0;
    lengthAtOffsetOut[0] = 0;
    if (gLogCategory_APAuthenticationClientMFiMutualAuth <= 30 && (gLogCategory_APAuthenticationClientMFiMutualAuth != -1 || _LogCategory_Initialize()))
    {
      __mfiMutualAuth_AuthenticateEndpoint_block_invoke_cold_5();
      if (!v16)
      {
LABEL_29:
        if (gLogCategory_APAuthenticationClientMFiMutualAuth <= 50 && (gLogCategory_APAuthenticationClientMFiMutualAuth != -1 || _LogCategory_Initialize()))
        {
          __mfiMutualAuth_AuthenticateEndpoint_block_invoke_cold_9();
        }

        v19 = 0;
        goto LABEL_33;
      }
    }

    else if (!v16)
    {
      goto LABEL_29;
    }

    FigSimpleMutexLock();
    if (*(v17 + 120) != 2)
    {
      FigSimpleMutexUnlock();
      APSLogErrorAt();
      v13 = 0;
      v21 = -71803;
      goto LABEL_65;
    }

    mfiMutualAuth_setAndLogAuthState(v2, 1);
    FigSimpleMutexUnlock();
    CMBlockBufferGetDataPointer(v16, 0, lengthAtOffsetOut, 0, dataPointerOut);
    if (!dataPointerOut[0] || !lengthAtOffsetOut[0])
    {
      __mfiMutualAuth_AuthenticateEndpoint_block_invoke_cold_8();
      v13 = 0;
      v21 = -71804;
      goto LABEL_65;
    }

    v18 = CFDataCreateWithBytesNoCopy(v14, dataPointerOut[0], lengthAtOffsetOut[0], v15);
    if (!v18)
    {
      __mfiMutualAuth_AuthenticateEndpoint_block_invoke_cold_7();
      v13 = 0;
      v21 = -71800;
      goto LABEL_65;
    }

    v19 = v18;
    if (gLogCategory_APAuthenticationClientMFiMutualAuth <= 30 && (gLogCategory_APAuthenticationClientMFiMutualAuth != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v20 = APAccTransportClientEndpointForwardData(*(v17 + 8), v19);
    if (v20)
    {
      v21 = v20;
      __mfiMutualAuth_AuthenticateEndpoint_block_invoke_cold_6();
      v22 = 0;
      v13 = 0;
LABEL_46:
      CFRelease(v19);
      goto LABEL_47;
    }

LABEL_33:
    dispatch_semaphore_wait(*(v17 + 88), 0xFFFFFFFFFFFFFFFFLL);
    if (gLogCategory_APAuthenticationClientMFiMutualAuth <= 50 && (gLogCategory_APAuthenticationClientMFiMutualAuth != -1 || _LogCategory_Initialize()))
    {
      __mfiMutualAuth_AuthenticateEndpoint_block_invoke_cold_10();
    }

    FigSimpleMutexLock();
    v13 = 0;
    v23 = *(v17 + 120);
    if ((v23 - 3) < 2)
    {
      v22 = 1;
LABEL_44:
      v21 = 0;
LABEL_45:
      FigSimpleMutexUnlock();
      if (!v19)
      {
        goto LABEL_47;
      }

      goto LABEL_46;
    }

    if (v23 != 2)
    {
      v22 = 0;
      v21 = -71803;
      goto LABEL_45;
    }

    v24 = *(v17 + 112);
    if (v24)
    {
      v13 = CFRetain(v24);
      v25 = *(v17 + 112);
      if (v25)
      {
        CFRelease(v25);
        v22 = 0;
        *(v17 + 112) = 0;
      }

      else
      {
        v22 = 0;
      }

      goto LABEL_44;
    }

    __mfiMutualAuth_AuthenticateEndpoint_block_invoke_cold_11();
    v22 = 0;
    v13 = 0;
    v21 = -71802;
    if (v19)
    {
      goto LABEL_46;
    }

LABEL_47:
    if (v21)
    {
      v4 = 0x27CFEF000;
LABEL_65:
      FigSimpleMutexLock();
      mfiMutualAuth_setAndLogAuthState(v2, 4);
      FigSimpleMutexUnlock();
      APSLogErrorAt();
      goto LABEL_66;
    }

    if (v22)
    {
      break;
    }

    if (v69)
    {
      CFRelease(v69);
      v69 = 0;
    }

    v21 = mfiMutualAuth_sendMessageMFi4(v2, v13, 0);
    v4 = 0x27CFEF000uLL;
    if (gLogCategory_APAuthenticationClientMFiMutualAuth <= 20 && (gLogCategory_APAuthenticationClientMFiMutualAuth != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    if (v21)
    {
      __mfiMutualAuth_AuthenticateEndpoint_block_invoke_cold_13();
LABEL_66:
      v8 = MEMORY[0x277CBECE8];
      goto LABEL_72;
    }
  }

  FigSimpleMutexLock();
  v8 = MEMORY[0x277CBECE8];
  if (*(v59 + 120) == 3)
  {
    v21 = 0;
    v4 = 0x27CFEF000;
  }

  else
  {
    v4 = 0x27CFEF000uLL;
    if (gLogCategory_APAuthenticationClientMFiMutualAuth <= 90 && (gLogCategory_APAuthenticationClientMFiMutualAuth != -1 || _LogCategory_Initialize()))
    {
      __mfiMutualAuth_AuthenticateEndpoint_block_invoke_cold_12();
    }

    v21 = -71802;
  }

  FigSimpleMutexUnlock();
LABEL_72:
  if (v69)
  {
    CFRelease(v69);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  v26 = *(v4 + 2848);
  if (v21)
  {
    if (v26 <= 90 && (v26 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    if (v21 == 200403)
    {
      v27 = -71145;
    }

    else
    {
      v27 = -71802;
    }

    FigSimpleMutexLock();
    mfiMutualAuth_setAndLogAuthState(v2, 4);
    FigSimpleMutexUnlock();
  }

  else
  {
    if (v26 <= 50 && (v26 != -1 || _LogCategory_Initialize()))
    {
      __mfiMutualAuth_AuthenticateEndpoint_block_invoke_cold_14();
    }

    v27 = 0;
  }

  *(*(*(v1 + 32) + 8) + 24) = v27;
  if (*(*(*(v1 + 32) + 8) + 24))
  {
    return;
  }

  v28 = *(v1 + 40);
  v29 = CMBaseObjectGetDerivedStorage();
  cf[0] = 0;
  v68 = 0;
  v69 = 0;
  v67 = 0;
  v30 = *v8;
  Mutable = CFDictionaryCreateMutable(*v8, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v65 = 0;
  v66 = 0;
  v32 = *(v4 + 2848);
  if (v32 <= 50 && (v32 != -1 || _LogCategory_Initialize()))
  {
    __mfiMutualAuth_AuthenticateEndpoint_block_invoke_cold_15();
  }

  CFDictionarySetValue(Mutable, @"X-Apple-PairingTranscript", @"1");
  v60 = v29;
  v33 = v29 + 24;
  v34 = *MEMORY[0x277CBED00];
  v58 = CFDataCreateWithBytesNoCopy(v30, (v29 + 24), 32, *MEMORY[0x277CBED00]);
  TransformedMessage = mfiMutualAuth_createTransformedMessage(v28, 0, v58, cf);
  if (TransformedMessage)
  {
    v40 = TransformedMessage;
    __mfiMutualAuth_AuthenticateEndpoint_block_invoke_cold_16();
LABEL_172:
    v37 = 0;
    goto LABEL_176;
  }

  v36 = mfiMutualAuth_sendMessageMFi4(v28, cf[0], Mutable);
  if (v36)
  {
    v40 = v36;
    __mfiMutualAuth_AuthenticateEndpoint_block_invoke_cold_17();
    goto LABEL_172;
  }

  v37 = v67;
  v38 = CMBaseObjectGetDerivedStorage();
  dataPointerOut[0] = 0;
  lengthAtOffsetOut[0] = 0;
  v39 = *(v4 + 2848);
  if (v39 <= 30 && (v39 != -1 || _LogCategory_Initialize()))
  {
    __mfiMutualAuth_AuthenticateEndpoint_block_invoke_cold_18();
    if (!v37)
    {
      goto LABEL_160;
    }

LABEL_99:
    FigSimpleMutexLock();
    if (*(v38 + 124))
    {
      FigSimpleMutexUnlock();
      APSLogErrorAt();
      v37 = 0;
      v40 = -71803;
      goto LABEL_122;
    }

    mfiMutualAuth_setAndLogSecureTunnelState(v28, 5u);
    FigSimpleMutexUnlock();
    CMBlockBufferGetDataPointer(v37, 0, lengthAtOffsetOut, 0, dataPointerOut);
    if (!dataPointerOut[0] || !lengthAtOffsetOut[0])
    {
      __mfiMutualAuth_AuthenticateEndpoint_block_invoke_cold_23();
      v37 = 0;
      v40 = -71804;
      goto LABEL_122;
    }

    v41 = CFDataCreateWithBytesNoCopy(v30, dataPointerOut[0], lengthAtOffsetOut[0], v34);
    if (!v41)
    {
      __mfiMutualAuth_AuthenticateEndpoint_block_invoke_cold_22();
      v37 = 0;
      v40 = -71800;
      goto LABEL_122;
    }

    v42 = v41;
    v43 = *(v4 + 2848);
    if (v43 <= 30 && (v43 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v44 = APAccTransportClientEndpointForwardData(*(v38 + 8), v42);
    if (v44)
    {
      v40 = v44;
      __mfiMutualAuth_AuthenticateEndpoint_block_invoke_cold_19();
    }

    else
    {
      dispatch_semaphore_wait(*(v38 + 88), 0xFFFFFFFFFFFFFFFFLL);
      v45 = *(v4 + 2848);
      if (v45 <= 50 && (v45 != -1 || _LogCategory_Initialize()))
      {
        __mfiMutualAuth_AuthenticateEndpoint_block_invoke_cold_20();
      }

      FigSimpleMutexLock();
      v46 = *(v38 + 124);
      if (v46 != 6)
      {
        v37 = 0;
        v40 = -71803;
LABEL_119:
        FigSimpleMutexUnlock();
        CFRelease(v42);
        if (v46 != 6)
        {
          v4 = 0x27CFEF000uLL;
          goto LABEL_122;
        }

        v1 = v61;
        v4 = 0x27CFEF000;
LABEL_124:
        v49 = mfiMutualAuth_sendMessageMFi4(v28, v37, Mutable);
        if (v49)
        {
          v40 = v49;
          __mfiMutualAuth_AuthenticateEndpoint_block_invoke_cold_26();
        }

        else
        {
          DataPointer = CMBlockBufferGetDataPointer(v68, 0, &v65, 0, &v66);
          if (!DataPointer)
          {
            v51 = CFDataCreateWithBytesNoCopy(v30, v66, v65, v34);
            v52 = mfiMutualAuth_createTransformedMessage(v28, 1, v51, &v69);
            if (v52)
            {
              v40 = v52;
              __mfiMutualAuth_AuthenticateEndpoint_block_invoke_cold_28();
              goto LABEL_177;
            }

            if (CFDataGetLength(v69) == 32)
            {
              BytePtr = CFDataGetBytePtr(v69);
              Length = CFDataGetLength(v69);
              if (!memcmp((v60 + 56), BytePtr, Length))
              {
                v55 = *(v4 + 2848);
                if (v55 <= 50)
                {
                  v56 = v58;
                  if (v55 != -1 || _LogCategory_Initialize())
                  {
                    __mfiMutualAuth_AuthenticateEndpoint_block_invoke_cold_31();
                  }

                  v40 = 0;
                  goto LABEL_135;
                }

                v40 = 0;
LABEL_134:
                v56 = v58;
                goto LABEL_135;
              }

              __mfiMutualAuth_AuthenticateEndpoint_block_invoke_cold_30();
            }

            else
            {
              __mfiMutualAuth_AuthenticateEndpoint_block_invoke_cold_29();
            }

            v40 = -71145;
            goto LABEL_134;
          }

          v40 = DataPointer;
          __mfiMutualAuth_AuthenticateEndpoint_block_invoke_cold_27();
        }

LABEL_176:
        v51 = 0;
        goto LABEL_177;
      }

      v47 = *(v38 + 112);
      if (v47)
      {
        v37 = CFRetain(v47);
        v48 = *(v38 + 112);
        if (v48)
        {
          CFRelease(v48);
          *(v38 + 112) = 0;
        }

        mfiMutualAuth_setAndLogSecureTunnelState(v28, 0);
        v40 = 0;
        goto LABEL_119;
      }

      __mfiMutualAuth_AuthenticateEndpoint_block_invoke_cold_21();
      v40 = -71802;
      v4 = 0x27CFEF000;
    }

    CFRelease(v42);
    v37 = 0;
    goto LABEL_122;
  }

  if (v37)
  {
    goto LABEL_99;
  }

LABEL_160:
  __mfiMutualAuth_AuthenticateEndpoint_block_invoke_cold_24();
  v40 = -71801;
LABEL_122:
  FigSimpleMutexLock();
  mfiMutualAuth_setAndLogSecureTunnelState(v28, 7u);
  FigSimpleMutexUnlock();
  if (!v40)
  {
    v1 = v61;
    goto LABEL_124;
  }

  __mfiMutualAuth_AuthenticateEndpoint_block_invoke_cold_25();
  v51 = 0;
  v1 = v61;
LABEL_177:
  v56 = v58;
LABEL_135:
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  if (v56)
  {
    CFRelease(v56);
  }

  if (v68)
  {
    CFRelease(v68);
  }

  if (v69)
  {
    CFRelease(v69);
  }

  if (v51)
  {
    CFRelease(v51);
  }

  if (v67)
  {
    CFRelease(v67);
  }

  if (v37)
  {
    CFRelease(v37);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  for (i = 0; i != 64; ++i)
  {
    *(v33 + i) = 0;
  }

  if (v40)
  {
    FigSimpleMutexLock();
    mfiMutualAuth_setAndLogSecureTunnelState(v28, 7u);
    FigSimpleMutexUnlock();
  }

  *(*(*(v1 + 32) + 8) + 24) = v40;
}

@end
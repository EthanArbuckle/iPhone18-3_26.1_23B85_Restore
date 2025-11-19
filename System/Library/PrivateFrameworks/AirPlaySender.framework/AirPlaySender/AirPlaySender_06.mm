void epp_delegate_handleStreamsChanged(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a3)
  {
    v6 = DerivedStorage;
    FigSimpleMutexLock();
    v7 = *(v6 + 248);
    v10 = *(v6 + 240);
    FigSimpleMutexUnlock();
    if (v10)
    {
      if (v7)
      {
        v8 = FigCFWeakReferenceHolderCopyReferencedObject();
        if (v8)
        {
          v9 = v8;
          v10(a3, a2, v8);

          CFRelease(v9);
        }

        else
        {
          epp_delegate_handleStreamsChanged_cold_1();
        }
      }

      else
      {

        v10(a3, a2, 0);
      }
    }

    else
    {
      epp_delegate_handleStreamsChanged_cold_2();
    }
  }

  else
  {
    epp_delegate_handleStreamsChanged_cold_3();
  }
}

void epp_delegate_handleConnectedStateChanged(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a5)
  {
    v10 = DerivedStorage;
    FigSimpleMutexLock();
    v14 = *(v10 + 232);
    v11 = *(v10 + 248);
    FigSimpleMutexUnlock();
    if (v14)
    {
      if (v11)
      {
        v12 = FigCFWeakReferenceHolderCopyReferencedObject();
        if (v12)
        {
          v13 = v12;
          v14(a5, a2, a3, a4, v12);

          CFRelease(v13);
        }

        else
        {
          epp_delegate_handleConnectedStateChanged_cold_1();
        }
      }

      else
      {

        v14(a5, a2, a3, a4, 0);
      }
    }

    else
    {
      epp_delegate_handleConnectedStateChanged_cold_2();
    }
  }

  else
  {
    epp_delegate_handleConnectedStateChanged_cold_3();
  }
}

void epp_delegate_handleDidCloseCommChannel(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a4)
  {
    v8 = DerivedStorage;
    FigSimpleMutexLock();
    v9 = *(v8 + 288);
    v12 = *(v8 + 280);
    FigSimpleMutexUnlock();
    if (v12)
    {
      if (v9)
      {
        v10 = FigCFWeakReferenceHolderCopyReferencedObject();
        if (v10)
        {
          v11 = v10;
          v12(a4, a2, a3, v10);

          CFRelease(v11);
        }

        else
        {
          epp_delegate_handleDidCloseCommChannel_cold_1();
        }
      }

      else
      {

        v12(a4, a2, a3, 0);
      }
    }

    else
    {
      epp_delegate_handleDidCloseCommChannel_cold_2();
    }
  }

  else
  {
    epp_delegate_handleDidCloseCommChannel_cold_3();
  }
}

void epp_delegate_handleDidReceiveDataFromCommChannel(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a5)
  {
    v10 = DerivedStorage;
    FigSimpleMutexLock();
    v14 = *(v10 + 272);
    v11 = *(v10 + 288);
    FigSimpleMutexUnlock();
    if (v14)
    {
      if (v11)
      {
        v12 = FigCFWeakReferenceHolderCopyReferencedObject();
        if (v12)
        {
          v13 = v12;
          v14(a5, a2, a3, a4, v12);

          CFRelease(v13);
        }

        else
        {
          epp_delegate_handleDidReceiveDataFromCommChannel_cold_1();
        }
      }

      else
      {

        v14(a5, a2, a3, a4, 0);
      }
    }

    else
    {
      epp_delegate_handleDidReceiveDataFromCommChannel_cold_2();
    }
  }

  else
  {
    epp_delegate_handleDidReceiveDataFromCommChannel_cold_3();
  }
}

void epp_delegate_handleIncomingRemoteControlSessionCreated(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a4)
  {
    v8 = DerivedStorage;
    FigSimpleMutexLock();
    v12 = *(v8 + 264);
    v9 = *(v8 + 288);
    FigSimpleMutexUnlock();
    if (v12)
    {
      if (v9)
      {
        v10 = FigCFWeakReferenceHolderCopyReferencedObject();
        if (v10)
        {
          v11 = v10;
          v12(a4, a2, a3, v10);

          CFRelease(v11);
        }

        else
        {
          epp_delegate_handleIncomingRemoteControlSessionCreated_cold_1();
        }
      }

      else
      {

        v12(a4, a2, a3, 0);
      }
    }

    else
    {
      epp_delegate_handleIncomingRemoteControlSessionCreated_cold_2();
    }
  }

  else
  {
    epp_delegate_handleIncomingRemoteControlSessionCreated_cold_3();
  }
}

uint64_t epp_delegate_handleSetProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a5)
  {
    epp_delegate_handleSetProperty_cold_3();
    return 4294949690;
  }

  v10 = DerivedStorage;
  FigSimpleMutexLock();
  v11 = *(v10 + 320);
  v16 = *(v10 + 312);
  FigSimpleMutexUnlock();
  if (!v16)
  {
    epp_delegate_handleSetProperty_cold_2();
    return 0;
  }

  if (v11)
  {
    v12 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v12)
    {
      v13 = v12;
      v14 = v16(a5, a2, a3, a4, v12);
      CFRelease(v13);
      return v14;
    }

    epp_delegate_handleSetProperty_cold_1();
    return 0;
  }

  return v16(a5, a2, a3, a4, 0);
}

uint64_t epp_delegate_handleCopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a6)
  {
    epp_delegate_handleCopyProperty_cold_3();
    return 4294949690;
  }

  v12 = DerivedStorage;
  FigSimpleMutexLock();
  v18 = *(v12 + 304);
  v13 = *(v12 + 320);
  FigSimpleMutexUnlock();
  if (!v18)
  {
    epp_delegate_handleCopyProperty_cold_2();
    return 0;
  }

  if (v13)
  {
    v14 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v14)
    {
      v15 = v14;
      v16 = v18(a6, a2, a3, a4, a5, v14);
      CFRelease(v15);
      return v16;
    }

    epp_delegate_handleCopyProperty_cold_1();
    return 0;
  }

  return v18(a6, a2, a3, a4, a5, 0);
}

void epp_delegate_handleAuthRequiredCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CMBaseObjectGetDerivedStorage();
  v7 = *(a4 + 16);
  v8 = epp_copyInner();
  if (gLogCategory_APEndpointPlus <= 50 && (gLogCategory_APEndpointPlus != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (v7)
  {
    v7(v8, a2, a3, *(a4 + 24));
    if (!v8)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  epp_delegate_handleAuthRequiredCallback_cold_1();
  if (v8)
  {
LABEL_7:
    CFRelease(v8);
  }

LABEL_8:
  if (*a4)
  {
    CFRelease(*a4);
  }

  v9 = *(a4 + 8);
  if (v9)
  {
    CFRelease(v9);
  }

  free(a4);
}

uint64_t APEndpointStreamAudioHoseAggregateCreate(const __CFAllocator *a1, const void *a2, const __CFDictionary *a3, void *a4)
{
  if (!a2)
  {
    APEndpointStreamAudioHoseAggregateCreate_cold_10();
    return 4294894965;
  }

  if (!a4)
  {
    APEndpointStreamAudioHoseAggregateCreate_cold_9();
    v13 = 0;
    v18 = 4294894965;
    goto LABEL_22;
  }

  if (_MergedGlobals_2 != -1)
  {
    APEndpointStreamAudioHoseAggregateCreate_cold_1();
  }

  v8 = CMDerivedObjectCreate();
  if (v8)
  {
    v18 = v8;
    APEndpointStreamAudioHoseAggregateCreate_cold_2();
LABEL_32:
    v13 = 0;
    goto LABEL_22;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v10 = FigSimpleMutexCreate();
  DerivedStorage[1] = v10;
  if (!v10)
  {
    v18 = 4294894966;
    APEndpointStreamAudioHoseAggregateCreate_cold_8();
    goto LABEL_32;
  }

  SNPrintF();
  v11 = FigDispatchQueueCreateWithPriority();
  DerivedStorage[2] = v11;
  if (!v11)
  {
    v18 = 4294894966;
    APEndpointStreamAudioHoseAggregateCreate_cold_7();
    goto LABEL_32;
  }

  Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  DerivedStorage[3] = Mutable;
  if (!Mutable)
  {
    v18 = 4294894966;
    APEndpointStreamAudioHoseAggregateCreate_cold_6();
    goto LABEL_32;
  }

  if (a3)
  {
    v13 = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (!v13)
    {
      v18 = 4294894966;
      APEndpointStreamAudioHoseAggregateCreate_cold_3();
      goto LABEL_22;
    }

    CFDictionaryGetValue(a3, @"BBufBackingProvider");
    FigCFDictionarySetValue();
  }

  else
  {
    v13 = 0;
  }

  v14 = APTransportStreamAggregateCreate();
  if (v14)
  {
    v18 = v14;
    APEndpointStreamAudioHoseAggregateCreate_cold_4();
  }

  else
  {
    v15 = DerivedStorage[4];
    v16 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v16)
    {
      v17 = v16(v15);
      if (!v17)
      {
        DerivedStorage[5] = CFRetain(a2);
        if (gLogCategory_APEndpointStreamAudioHoseAggregate <= 50 && (gLogCategory_APEndpointStreamAudioHoseAggregate != -1 || _LogCategory_Initialize()))
        {
          APEndpointStreamAudioHoseAggregateCreate_cold_5();
        }

        v18 = 0;
        *a4 = 0;
        goto LABEL_22;
      }

      v18 = v17;
    }

    else
    {
      v18 = 4294954514;
    }

    APSLogErrorAt();
  }

LABEL_22:
  if (v13)
  {
    CFRelease(v13);
  }

  return v18;
}

__CFString *hoseAggregate_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  v3 = Mutable;
  if (Mutable)
  {
    CFStringAppendFormat(Mutable, 0, @"<APEndpointStreamAudioHoseAggregate %p>", a1);
  }

  return v3;
}

uint64_t hoseAggregate_CopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a4)
  {
    v8 = 4294894965;
    hoseAggregate_CopyProperty_cold_2();
    return v8;
  }

  v7 = DerivedStorage;
  if (FigCFEqual())
  {
    v8 = 0;
    *a4 = CFRetain(*MEMORY[0x277CBED28]);
  }

  else if (FigCFEqual())
  {
    context = 0;
    FigSimpleMutexLock();
    if (CFDictionaryGetCount(*(v7 + 24)) >= 1)
    {
      context = -1;
      CFDictionaryApplyFunction(*(v7 + 24), hoseAggregate_arrivalToRenderTicksApplier, &context);
    }

    FigSimpleMutexUnlock();
    Int64 = CFNumberCreateInt64();
    *a4 = Int64;
    if (Int64)
    {
      return 0;
    }

    else
    {
      hoseAggregate_CopyProperty_cold_1();
      return 4294894966;
    }
  }

  else
  {
    if (FigCFEqual())
    {
      CMBaseObject = FigTransportStreamGetCMBaseObject();
      v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v12)
      {
        v8 = v12(CMBaseObject, *MEMORY[0x277CE5078], a3, a4);
        if (!v8)
        {
          return v8;
        }
      }

      else
      {
        v8 = 4294954514;
      }

      APSLogErrorAt();
      return v8;
    }

    if (gLogCategory_APEndpointStreamAudioHoseAggregate <= 50 && (gLogCategory_APEndpointStreamAudioHoseAggregate != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    return 4294954509;
  }

  return v8;
}

uint64_t hoseAggregate_SetProperty()
{
  if (*CMBaseObjectGetDerivedStorage())
  {
    hoseAggregate_SetProperty_cold_1();
    return 4294954511;
  }

  if (gLogCategory_APEndpointStreamAudioHoseAggregate <= 30 && (gLogCategory_APEndpointStreamAudioHoseAggregate != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (FigCFEqual())
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    FigSimpleMutexLock();
    if (!*DerivedStorage)
    {
      CFDictionaryApplyBlock();
      FigSimpleMutexUnlock();
      return 0;
    }

    hoseAggregate_SetProperty_cold_2();
    return 4294954511;
  }

  return 4294954512;
}

uint64_t CMBaseObjectNotificationBarrier(uint64_t a1)
{
  v2 = *(CMBaseObjectGetVTable() + 8);
  if (*v2 < 2uLL)
  {
    return 4294954514;
  }

  v3 = v2[8];
  if (!v3)
  {
    return 4294954514;
  }

  return v3(a1);
}

unint64_t hoseAggregate_arrivalToRenderTicksApplier(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  result = APSGetFBOPropertyInt64();
  v5 = *a3;
  if (*a3 >= result)
  {
    v5 = result;
  }

  *a3 = v5;
  return result;
}

uint64_t __hoseAggregate_setPropertyOnSubHoses_block_invoke(uint64_t a1, uint64_t a2)
{
  if (gLogCategory_APEndpointStreamAudioHoseAggregate <= 20 && (gLogCategory_APEndpointStreamAudioHoseAggregate != -1 || _LogCategory_Initialize()))
  {
    __hoseAggregate_setPropertyOnSubHoses_block_invoke_cold_1();
  }

  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  VTable = CMBaseObjectGetVTable();
  v8 = *(VTable + 8);
  result = VTable + 8;
  v9 = *(v8 + 56);
  if (v9)
  {

    return v9(a2, v4, v5);
  }

  return result;
}

__CFString *hoseAggregate_audioHoseProtocolCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  v3 = Mutable;
  if (Mutable)
  {
    CFStringAppendFormat(Mutable, 0, @"APEndpointStreamAudioHoseAggregate <APSEndpointStreamAudioHoseProtocol> on <%p>", a1);
  }

  return v3;
}

uint64_t hoseAggregate_audioHoseTimeAnnounce()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*DerivedStorage)
  {
    hoseAggregate_audioHoseTimeAnnounce_cold_1();
    v1 = 4294954511;
  }

  else
  {
    CFDictionaryApplyBlock();
    v1 = 0;
  }

  FigSimpleMutexUnlock();
  return v1;
}

uint64_t hoseAggregate_audioHoseFlush(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (a4)
  {
    hoseAggregate_audioHoseFlush_cold_1(&v8);
    v6 = v8;
  }

  else if (*DerivedStorage)
  {
    hoseAggregate_audioHoseFlush_cold_2();
    v6 = 4294954511;
  }

  else
  {
    CFDictionaryApplyBlock();
    v6 = 0;
  }

  FigSimpleMutexUnlock();
  return v6;
}

uint64_t __hoseAggregate_audioHoseTimeAnnounce_block_invoke(uint64_t a1, uint64_t a2)
{
  if (gLogCategory_APEndpointStreamAudioHoseAggregate <= 30 && (gLogCategory_APEndpointStreamAudioHoseAggregate != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v4 = *(a1 + 48);
  v5 = *(a1 + 40);
  APSEndpointStreamAudioHoseProtocolGetProtocolID();
  result = CMBaseObjectGetProtocolVTable();
  if (result)
  {
    v8 = *(result + 16);
    result += 16;
    v7 = v8;
    if (v8)
    {
      v9 = *(v7 + 16);
      if (v9)
      {

        return v9(a2, v4, v5);
      }
    }
  }

  return result;
}

uint64_t __hoseAggregate_audioHoseFlush_block_invoke(uint64_t a1, uint64_t a2)
{
  if (gLogCategory_APEndpointStreamAudioHoseAggregate <= 30 && (gLogCategory_APEndpointStreamAudioHoseAggregate != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v4 = *(a1 + 40);
  *v9 = *(a1 + 44);
  *&v9[12] = *(a1 + 56);
  APSEndpointStreamAudioHoseProtocolGetProtocolID();
  result = CMBaseObjectGetProtocolVTable();
  if (result)
  {
    v7 = *(result + 16);
    result += 16;
    v6 = v7;
    if (v7)
    {
      v8 = *(v6 + 24);
      if (v8)
      {
        v10[0] = *v9;
        *(v10 + 12) = *&v9[12];
        return v8(a2, v4, v10, 0, 0);
      }
    }
  }

  return result;
}

__CFString *hoseAggregate_audioHoseRegistrarProtocolCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"APEndpointStreamAudioHoseAggregate <APSEndpointStreamAudioHoseRegistrarProtocol> on <%p>", a1);
  return Mutable;
}

uint64_t hoseAggregate_audioHoseRegistrarRegisterHose(uint64_t a1, const void *a2, const __CFDictionary *a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    v17 = 4294894965;
    hoseAggregate_audioHoseRegistrarRegisterHose_cold_6();
    return v17;
  }

  if (!a4)
  {
    v17 = 4294894965;
    hoseAggregate_audioHoseRegistrarRegisterHose_cold_5();
    return v17;
  }

  v8 = DerivedStorage;
  if (gLogCategory_APEndpointStreamAudioHoseAggregate <= 50 && (gLogCategory_APEndpointStreamAudioHoseAggregate != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (!a3 || (Value = CFDictionaryGetValue(a3, *MEMORY[0x277CEA0E0])) == 0 || (v10 = Value, v11 = CFGetTypeID(Value), v11 != FigTransportStreamGetTypeID()))
  {
    hoseAggregate_audioHoseRegistrarRegisterHose_cold_4(&v20);
    return v20;
  }

  FigSimpleMutexLock();
  if (*v8)
  {
    hoseAggregate_audioHoseRegistrarRegisterHose_cold_1();
    v17 = 4294954511;
LABEL_37:
    FigSimpleMutexUnlock();
    return v17;
  }

  if (CFDictionaryContainsKey(*(v8 + 24), a2))
  {
    hoseAggregate_audioHoseRegistrarRegisterHose_cold_2(&v19);
    v17 = v19;
    goto LABEL_37;
  }

  v12 = APTransportStreamAggregateAddSubStream();
  if (v12)
  {
    v17 = v12;
    hoseAggregate_audioHoseRegistrarRegisterHose_cold_3();
    goto LABEL_37;
  }

  CFDictionaryAddValue(*(v8 + 24), a2, v10);
  v13 = *(v8 + 40);
  if (v13)
  {
    v14 = CFRetain(v13);
  }

  else
  {
    v14 = 0;
  }

  v15 = *(v8 + 48);
  if (v15 && *(v15 + 16))
  {
    v16 = *(v15 + 16);
  }

  else
  {
    v16 = 0;
  }

  FigSimpleMutexUnlock();
  if (v14 && v16)
  {
    v16(v14);
  }

  if (gLogCategory_APEndpointStreamAudioHoseAggregate <= 30 && (gLogCategory_APEndpointStreamAudioHoseAggregate != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  *a4 = &gHoseAggregateCallbacks;
  if (v14)
  {
    CFRelease(v14);
  }

  return 0;
}

uint64_t hoseAggregate_hoseRegistrarGetMessageAtSequenceNumberCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (!*DerivedStorage && *(DerivedStorage + 56) && (v6 = *(DerivedStorage + 48)) != 0 && *v6)
  {
    if (gLogCategory_APEndpointStreamAudioHoseAggregate <= 20 && (gLogCategory_APEndpointStreamAudioHoseAggregate != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    if (**(DerivedStorage + 48))
    {
      v8 = **(DerivedStorage + 48);
    }

    else
    {
      v8 = 0;
    }

    FigSimpleMutexUnlock();
    v7 = v8(*(DerivedStorage + 40), a2, a3);
    if (v7)
    {
      hoseAggregate_hoseRegistrarGetMessageAtSequenceNumberCallback_cold_1();
    }
  }

  else
  {
    FigSimpleMutexUnlock();
    return 0;
  }

  return v7;
}

uint64_t hoseAggregate_hoseRegistrarTriggerTimeAnnounceCallback()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (!*DerivedStorage && *(DerivedStorage + 56) && (v1 = *(DerivedStorage + 48)) != 0 && *(v1 + 16))
  {
    if (gLogCategory_APEndpointStreamAudioHoseAggregate <= 20 && (gLogCategory_APEndpointStreamAudioHoseAggregate != -1 || _LogCategory_Initialize()))
    {
      hoseAggregate_hoseRegistrarTriggerTimeAnnounceCallback_cold_1();
    }

    if (*(*(DerivedStorage + 48) + 16))
    {
      v2 = *(*(DerivedStorage + 48) + 16);
    }

    else
    {
      v2 = 0;
    }

    FigSimpleMutexUnlock();
    v3 = v2(*(DerivedStorage + 40));
    if (v3)
    {
      hoseAggregate_hoseRegistrarTriggerTimeAnnounceCallback_cold_2();
    }
  }

  else
  {
    FigSimpleMutexUnlock();
    return 0;
  }

  return v3;
}

void hoseAggregate_audioHoseRegistrarDeregisterHoseDispatchInternal(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*DerivedStorage)
  {
    goto LABEL_28;
  }

  if (!CFDictionaryContainsKey(*(DerivedStorage + 24), v3))
  {
    hoseAggregate_audioHoseRegistrarDeregisterHoseDispatchInternal_cold_2(v2, v3, &v9);
LABEL_28:
    FigSimpleMutexUnlock();
    goto LABEL_13;
  }

  Value = CFDictionaryGetValue(*(DerivedStorage + 24), v3);
  if (Value)
  {
    v6 = CFRetain(Value);
  }

  else
  {
    v6 = 0;
  }

  CFDictionaryRemoveValue(*(DerivedStorage + 24), v3);
  if (APTransportStreamAggregateRemoveSubStream())
  {
    hoseAggregate_audioHoseRegistrarDeregisterHoseDispatchInternal_cold_1();
  }

  else if (gLogCategory_APEndpointStreamAudioHoseAggregate <= 20 && (gLogCategory_APEndpointStreamAudioHoseAggregate != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  FigSimpleMutexUnlock();
  if (v6)
  {
    CFRelease(v6);
  }

LABEL_13:
  if (gLogCategory_APEndpointStreamAudioHoseAggregate <= 50 && (gLogCategory_APEndpointStreamAudioHoseAggregate != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  v7 = *(a1 + 8);
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = *(a1 + 16);
  if (v8)
  {

    CFRelease(v8);
  }
}

uint64_t hoseAggregate_initClassIDOnce(uint64_t a1)
{
  ClassID = CMBaseGetClassID();

  return MEMORY[0x282112448](&hoseAggregate_initClassIDOnce_sAPEndpointStreamAudioHoseAggregateClassDesc, ClassID, 1, a1);
}

__CFString *carplaysource_CopyDebugDescription()
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"<APAudioSourceCarPlay>");
  return Mutable;
}

uint64_t carplaysource_CopyProperty(uint64_t a1, const void *a2, uint64_t a3, uint64_t *a4)
{
  CMBaseObjectGetDerivedStorage();
  if (CFEqual(a2, @"BufferCapacityMS"))
  {
    UInt32 = FigCFNumberCreateUInt32();
    *a4 = UInt32;
    if (!UInt32)
    {
      goto LABEL_10;
    }
  }

  if (CFEqual(a2, @"PacketSizeLimit"))
  {
    v7 = FigCFNumberCreateUInt32();
    *a4 = v7;
    if (!v7)
    {
      goto LABEL_10;
    }

    return 0;
  }

  if (!CFEqual(a2, @"VBRTestingBitRate"))
  {
    return 4294954512;
  }

  v8 = FigCFNumberCreateUInt32();
  *a4 = v8;
  if (v8)
  {
    return 0;
  }

LABEL_10:
  carplaysource_CopyProperty_cold_1();
  return 4294950526;
}

uint64_t carplaysource_GetOutputFormat(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 80);
  v5 = *(DerivedStorage + 64);
  *a2 = *(DerivedStorage + 48);
  *(a2 + 16) = v5;
  *(a2 + 32) = v4;
  return 0;
}

uint64_t carplaysource_Flush()
{
  if (*CMBaseObjectGetDerivedStorage())
  {
    return 0;
  }

  else
  {
    return 4294950524;
  }
}

void carplaysource_SuspendInternal(void *a1)
{
  v2 = a1[24];
  if (v2)
  {
    AudioConverterDispose(v2);
    a1[24] = 0;
  }

  MirroredRingBufferFree();
  v3 = a1[19];
  if (v3)
  {
    CFRelease(v3);
    a1[19] = 0;
  }

  v4 = a1[21];
  if (v4)
  {
    CFRelease(v4);
    a1[21] = 0;
  }

  v5 = a1[22];
  if (v5)
  {
    CFRelease(v5);
    a1[22] = 0;
  }

  v6 = a1[18];
  if (v6)
  {
    a1[18] = 0;

    free(v6);
  }
}

void __carplaysource_scheduleReadinessCallbackAfterTimeNs_block_invoke_2(uint64_t a1)
{
  carplaysource_ReadinessCallback(*(a1 + 32));
  v2 = *(a1 + 32);

  CFRelease(v2);
}

uint64_t APHTTPProxyMonitorClientRegisterHTTPProxyMonitor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = [APHTTPProxyMonitorClientManager obtainSharedInstanceOrCreate:1];
  if (v8)
  {
    v9 = [v8 setMonitorCallbackIfNotExists:a4 forKey:a1 forLink:a2 forIP:a3];
  }

  else
  {
    APHTTPProxyMonitorClientRegisterHTTPProxyMonitor_cold_1();
    v9 = 4294960568;
  }

  if (gLogCategory_APHTTPProxyMonitorClient <= 30 && (gLogCategory_APHTTPProxyMonitorClient != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  return v9;
}

uint64_t APHTTPProxyMonitorClientUnregisterHTTPProxyMonitor(uint64_t a1)
{
  v2 = [APHTTPProxyMonitorClientManager obtainSharedInstanceOrCreate:0];
  if (v2)
  {
    v3 = [v2 removeMonitorClientForKey:a1];
  }

  else
  {
    APHTTPProxyMonitorClientUnregisterHTTPProxyMonitor_cold_1();
    v3 = 4294960587;
  }

  if (gLogCategory_APHTTPProxyMonitorClient <= 30 && (gLogCategory_APHTTPProxyMonitorClient != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  return v3;
}

uint64_t APAudioEngineVendorGetTypeID()
{
  if (gAPAudioEngineVendorInitOnce != -1)
  {
    APAudioEngineVendorGetTypeID_cold_1();
  }

  return gAPAudioEngineVendorTypeID;
}

uint64_t _APAudioEngineVendorGetTypeID()
{
  result = _CFRuntimeRegisterClass();
  gAPAudioEngineVendorTypeID = result;
  return result;
}

uint64_t APAudioEngineVendorCreate(const void *a1, const void *a2, uint64_t (*a3)(CFAllocatorRef, void, void, void *), void *a4)
{
  if (a3)
  {
    if (gAPAudioEngineVendorInitOnce != -1)
    {
      APAudioEngineVendorGetTypeID_cold_1();
    }

    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v9 = Instance;
      *(Instance + 16) = 0u;
      *(Instance + 32) = 0u;
      v10 = (Instance + 16);
      if (a1)
      {
        v11 = CFRetain(a1);
      }

      else
      {
        v11 = 0;
      }

      *v10 = v11;
      if (a2)
      {
        v12 = CFRetain(a2);
      }

      else
      {
        v12 = 0;
      }

      v9[3] = v12;
      v9[4] = a3;
      v13 = CFGetAllocator(v9);
      v14 = a3(v13, v9[2], v9[3], v9 + 5);
      if (v14)
      {
        v15 = v14;
        APAudioEngineVendorCreate_cold_2(v14, v9);
      }

      else
      {
        if (gLogCategory_APAudioEngineVendor <= 50 && (gLogCategory_APAudioEngineVendor != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        v15 = 0;
        *a4 = v9;
      }
    }

    else
    {
      APAudioEngineVendorCreate_cold_3();
      return 4294960568;
    }
  }

  else
  {
    APAudioEngineVendorCreate_cold_4();
    return 4294960591;
  }

  return v15;
}

uint64_t APAudioEngineVendorVend(void *cf, uint64_t a2)
{
  v8 = cf[4];
  v4 = CFGetAllocator(cf);
  v5 = cf[2];
  v6 = cf[3];

  return v8(v4, v5, v6, a2);
}

void _APAudioEngineVendorFinalize(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[5];
  if (v4)
  {

    CFRelease(v4);
  }
}

uint64_t endpointAggregate_createInternal(uint64_t a1, int a2, const void *a3, const void *a4, char a5, int a6, int a7, uint64_t a8, const void *a9, const __CFDictionary *a10, void *a11)
{
  v51 = *MEMORY[0x277D85DE8];
  v48 = 0;
  v49 = 0;
  FigEndpointAggregateGetClassID();
  v47 = CMDerivedObjectCreate();
  if (v47)
  {
    endpointAggregate_createInternal_cold_1();
    return v47;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v20 = DerivedStorage;
  DerivedStorage[456] = a5;
  DerivedStorage[457] = a6;
  if (a6)
  {
    v21 = a7 == 0;
  }

  else
  {
    v21 = 0;
  }

  v22 = v21;
  DerivedStorage[458] = v22;
  if (!FigCFDictionaryGetBooleanIfPresent())
  {
    v20[464] = APSMultiPrimariesEnabled();
  }

  v20[465] = APSSettingsIsFeatureEnabled();
  if (FigCFDictionaryGetIntIfPresent())
  {
    DeviceClass = 0;
  }

  else
  {
    DeviceClass = GestaltGetDeviceClass();
  }

  *(v20 + 122) = DeviceClass;
  if (a10)
  {
    Value = CFDictionaryGetValue(a10, @"aggregateIsMemberOfHTGroup");
    *(v20 + 59) = Value;
    if (Value)
    {
      CFRetain(Value);
    }

    v25 = CFDictionaryGetValue(a10, @"aggregateIsPersistentConnectionOverride");
    *(v20 + 60) = v25;
    if (v25)
    {
      CFRetain(v25);
    }

    if (a9)
    {
      goto LABEL_19;
    }
  }

  else
  {
    *(v20 + 59) = 0;
    *(v20 + 60) = 0;
    if (a9)
    {
LABEL_19:
      v26 = CFRetain(a9);
      goto LABEL_22;
    }
  }

  v26 = 0;
LABEL_22:
  *(v20 + 56) = v26;
  v27 = FigSimpleMutexCreate();
  *v20 = v27;
  if (v27)
  {
    if (a3)
    {
      v28 = CFRetain(a3);
    }

    else
    {
      UUIDGet();
      v29 = UUIDtoCString();
      v28 = CFStringCreateWithCString(0, v29, 0x8000100u);
    }

    *(v20 + 54) = v28;
    if (v28)
    {
      if (a7)
      {
        if (!a6)
        {
          endpointAggregate_createInternal_cold_3(&v47);
          return v47;
        }

        LODWORD(v47) = APEndpointLocalCreate(a1, v20 + 52);
        if (v47)
        {
          endpointAggregate_createInternal_cold_2();
          return v47;
        }
      }

      v30 = *MEMORY[0x277CBECE8];
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], &endpointAggregate_createInternal_subEndpointEntryDictionaryCallbacks);
      *(v20 + 1) = Mutable;
      if (Mutable)
      {
        v32 = CFArrayCreateMutable(v30, 0, MEMORY[0x277CBF128]);
        *(v20 + 4) = v32;
        if (v32)
        {
          SNPrintF();
          v33 = dispatch_queue_create(label, 0);
          *(v20 + 49) = v33;
          if (v33)
          {
            SNPrintF();
            v34 = dispatch_queue_create(label, 0);
            *(v20 + 50) = v34;
            if (v34)
            {
              *(v20 + 102) = a2;
              *(v20 + 55) = a8;
              v20[162] = *(v20 + 122) == 4;
              v20[162] = FigGetCFPreferenceNumberWithDefault();
              *(v20 + 45) = 0;
              v35 = CFGetAllocator(0);
              v36 = CFDictionaryCreateMutable(v35, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
              *(v20 + 13) = v36;
              if (v36)
              {
                v37 = CFGetAllocator(0);
                v38 = CFDictionaryCreateMutable(v37, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                *(v20 + 16) = v38;
                if (v38)
                {
                  v39 = CFGetAllocator(0);
                  v40 = CFDictionaryCreateMutable(v39, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                  *(v20 + 21) = v40;
                  if (v40)
                  {
                    v41 = CFGetAllocator(0);
                    v42 = CFDictionaryCreateMutable(v41, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                    *(v20 + 17) = v42;
                    if (v42)
                    {
                      v43 = CFDictionaryCreateMutable(v30, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                      *(v20 + 47) = v43;
                      if (v43)
                      {
                        if (a4)
                        {
                          *(v20 + 53) = CFRetain(a4);
                        }

                        else
                        {
                          v44 = CFStringCreateF();
                          v45 = v47;
                          *(v20 + 53) = v44;
                          if (v45)
                          {
                            endpointAggregate_createInternal_cold_4();
                            return v47;
                          }
                        }

                        if (gLogCategory_APEndpointAggregate <= 50 && (gLogCategory_APEndpointAggregate != -1 || _LogCategory_Initialize()))
                        {
                          LogPrintF();
                        }

                        *a11 = 0;
                      }

                      else
                      {
                        endpointAggregate_createInternal_cold_5();
                      }
                    }

                    else
                    {
                      endpointAggregate_createInternal_cold_6();
                    }
                  }

                  else
                  {
                    endpointAggregate_createInternal_cold_7();
                  }
                }

                else
                {
                  endpointAggregate_createInternal_cold_8();
                }
              }

              else
              {
                endpointAggregate_createInternal_cold_9();
              }
            }

            else
            {
              endpointAggregate_createInternal_cold_10();
            }
          }

          else
          {
            endpointAggregate_createInternal_cold_11();
          }
        }

        else
        {
          endpointAggregate_createInternal_cold_12();
        }
      }

      else
      {
        endpointAggregate_createInternal_cold_13();
      }
    }

    else
    {
      endpointAggregate_createInternal_cold_14();
    }
  }

  else
  {
    endpointAggregate_createInternal_cold_15();
  }

  return v47;
}

void endpointAggregate_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = DerivedStorage[50];
  if (v1)
  {
    dispatch_release(v1);
    DerivedStorage[50] = 0;
  }

  v2 = DerivedStorage[49];
  if (v2)
  {
    dispatch_release(v2);
    DerivedStorage[49] = 0;
  }

  FigSimpleMutexDestroy();
  if (gLogCategory_APEndpointAggregate <= 50 && (gLogCategory_APEndpointAggregate != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v3 = DerivedStorage[31];
  if (v3)
  {
    CFRelease(v3);
    DerivedStorage[31] = 0;
  }

  v4 = DerivedStorage[32];
  if (v4)
  {
    CFRelease(v4);
    DerivedStorage[32] = 0;
  }

  v5 = DerivedStorage[8];
  if (v5)
  {
    CFRelease(v5);
    DerivedStorage[8] = 0;
  }

  v6 = DerivedStorage[9];
  if (v6)
  {
    CFRelease(v6);
    DerivedStorage[9] = 0;
  }

  v7 = DerivedStorage[10];
  if (v7)
  {
    CFRelease(v7);
    DerivedStorage[10] = 0;
  }

  v8 = DerivedStorage[11];
  if (v8)
  {
    CFRelease(v8);
    DerivedStorage[11] = 0;
  }

  v9 = DerivedStorage[13];
  if (v9)
  {
    CFRelease(v9);
    DerivedStorage[13] = 0;
  }

  v10 = DerivedStorage[14];
  if (v10)
  {
    CFRelease(v10);
    DerivedStorage[14] = 0;
  }

  v11 = DerivedStorage[1];
  if (v11)
  {
    CFRelease(v11);
    DerivedStorage[1] = 0;
  }

  v12 = DerivedStorage[3];
  if (v12)
  {
    CFRelease(v12);
    DerivedStorage[3] = 0;
  }

  v13 = DerivedStorage[4];
  if (v13)
  {
    CFRelease(v13);
    DerivedStorage[4] = 0;
  }

  v14 = DerivedStorage[16];
  if (v14)
  {
    CFRelease(v14);
    DerivedStorage[16] = 0;
  }

  v15 = DerivedStorage[17];
  if (v15)
  {
    CFRelease(v15);
    DerivedStorage[17] = 0;
  }

  v16 = DerivedStorage[21];
  if (v16)
  {
    CFRelease(v16);
    DerivedStorage[21] = 0;
  }

  v17 = DerivedStorage[18];
  if (v17)
  {
    CFRelease(v17);
    DerivedStorage[18] = 0;
  }

  v18 = DerivedStorage[19];
  if (v18)
  {
    CFRelease(v18);
    DerivedStorage[19] = 0;
  }

  v19 = DerivedStorage[42];
  if (v19)
  {
    CFRelease(v19);
    DerivedStorage[42] = 0;
  }

  v20 = DerivedStorage[47];
  if (v20)
  {
    CFRelease(v20);
    DerivedStorage[47] = 0;
  }

  v21 = DerivedStorage[56];
  if (v21)
  {
    CFRelease(v21);
    DerivedStorage[56] = 0;
  }

  v22 = DerivedStorage[54];
  if (v22)
  {
    CFRelease(v22);
    DerivedStorage[54] = 0;
  }

  v23 = DerivedStorage[52];
  if (v23)
  {
    CFRelease(v23);
    DerivedStorage[52] = 0;
  }

  v24 = DerivedStorage[53];
  if (v24)
  {
    CFRelease(v24);
    DerivedStorage[53] = 0;
  }

  v25 = DerivedStorage[48];
  if (v25)
  {
    CFRelease(v25);
    DerivedStorage[48] = 0;
  }

  v26 = DerivedStorage[59];
  if (v26)
  {
    CFRelease(v26);
    DerivedStorage[59] = 0;
  }

  v27 = DerivedStorage[60];
  if (v27)
  {
    CFRelease(v27);
    DerivedStorage[60] = 0;
  }
}

uint64_t endpointAggregate_CopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v18 = 0;
  if (gLogCategory_APEndpointAggregate <= 10 && (gLogCategory_APEndpointAggregate != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (a2)
  {
    if (CFEqual(a2, *MEMORY[0x277CC1450]))
    {
      v9 = *(DerivedStorage + 424);
LABEL_15:
      v11 = CFRetain(v9);
LABEL_16:
      v12 = 0;
      *a4 = v11;
      return v12;
    }

    if (CFEqual(a2, *MEMORY[0x277CC1498]))
    {
      if (*(DerivedStorage + 64))
      {
        v9 = *(DerivedStorage + 64);
      }

      else
      {
        v9 = *MEMORY[0x277CC11D8];
      }

      goto LABEL_15;
    }

    if (CFEqual(a2, *MEMORY[0x277CC1568]))
    {
      v10 = MEMORY[0x277CC1A20];
LABEL_14:
      v9 = *v10;
      goto LABEL_15;
    }

    if (CFEqual(a2, *MEMORY[0x277CC14F0]))
    {
      v14 = *(DerivedStorage + 408);
      if (v14 == 3)
      {
        v10 = MEMORY[0x277CC1998];
      }

      else if (v14 == 2)
      {
        v10 = MEMORY[0x277CC1988];
      }

      else
      {
        if (v14)
        {
          v9 = @"Unknown";
          goto LABEL_15;
        }

        v10 = MEMORY[0x277CC1990];
      }

      goto LABEL_14;
    }

    if (CFEqual(a2, *MEMORY[0x277CC1278]))
    {
LABEL_24:
      v10 = MEMORY[0x277CBED10];
      goto LABEL_14;
    }

    if (CFEqual(a2, *MEMORY[0x277CC13F0]))
    {
      v10 = MEMORY[0x277CBED28];
      if (*(DerivedStorage + 408) != 3)
      {
        v10 = MEMORY[0x277CBED10];
      }

      goto LABEL_14;
    }

    if (CFEqual(a2, *MEMORY[0x277CC14F8]))
    {
      if (*(DerivedStorage + 408) == 3)
      {
        valuePtr = 16;
      }

      else
      {
        valuePtr = 10;
        if (APSIsLowLatencyAudioSendingEnabled() && *(DerivedStorage + 408) == 2 && *(DerivedStorage + 456))
        {
          valuePtr = 42;
          v15 = 46;
        }

        else
        {
          v15 = 14;
        }

        v16 = *(CMBaseObjectGetDerivedStorage() + 488);
        if (v16 > 0xD || ((1 << v16) & 0x2090) == 0)
        {
          valuePtr = v15;
        }
      }

      v11 = CFNumberCreate(a3, kCFNumberSInt64Type, &valuePtr);
      if (v11)
      {
        goto LABEL_16;
      }

      endpointAggregate_CopyProperty_cold_1();
      v12 = 4294950575;
    }

    else
    {
      if (CFEqual(a2, @"SupportsMuteControl"))
      {
        goto LABEL_24;
      }

      FigSimpleMutexLock();
      v12 = endpointAggregate_copyPropertyInternal(a1, a2, a3, &v18);
      FigSimpleMutexUnlock();
      if (!v12)
      {
        v11 = v18;
        goto LABEL_16;
      }

      if (v12 == -12784)
      {
        return v12;
      }
    }
  }

  else
  {
    endpointAggregate_CopyProperty_cold_2();
    v12 = 4294950536;
  }

  if (gLogCategory_APEndpointAggregate <= 90 && (gLogCategory_APEndpointAggregate != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  return v12;
}

uint64_t endpointAggregate_SetProperty(const void *a1, const void *a2, const void *a3)
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointAggregate <= 50 && (gLogCategory_APEndpointAggregate != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  FigSimpleMutexLock();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    endpointAggregate_SetProperty_cold_11();
LABEL_44:
    IsEnabledOrDisabled = 4294950576;
    goto LABEL_23;
  }

  v7 = DerivedStorage;
  if (!CFEqual(a2, *MEMORY[0x277CC0A40]))
  {
    if (CFEqual(a2, *MEMORY[0x277CC15A8]) || CFEqual(a2, *MEMORY[0x277CC15C0]) || CFEqual(a2, @"HALVolumeDB"))
    {
      if (*(v7 + 408) != 3)
      {
        IsEnabledOrDisabled = endpointAggregate_setPropertyOnAllSubEndpoints(a1, a2, a3);
        goto LABEL_23;
      }

      endpointAggregate_SetProperty_cold_7();
    }

    else
    {
      if (!CFEqual(a2, *MEMORY[0x277CC13D0]) && !CFEqual(a2, @"IsHALMuted") && !CFEqual(a2, *MEMORY[0x277CC13D8]) && !CFEqual(a2, *MEMORY[0x277CC13E0]))
      {
        if (gLogCategory_APEndpointAggregate <= 30 && (gLogCategory_APEndpointAggregate != -1 || _LogCategory_Initialize()))
        {
          endpointAggregate_SetProperty_cold_10();
        }

        IsEnabledOrDisabled = 4294954512;
        goto LABEL_23;
      }

      if (*(v7 + 408) != 3)
      {
        IsEnabledOrDisabled = endpointAggregate_setPropertyOnAllSubEndpoints(a1, a2, a3);
        if (IsEnabledOrDisabled)
        {
          endpointAggregate_SetProperty_cold_8();
        }

        goto LABEL_23;
      }

      endpointAggregate_SetProperty_cold_9();
    }

LABEL_48:
    IsEnabledOrDisabled = 4294950570;
    goto LABEL_23;
  }

  if (!a3)
  {
    endpointAggregate_SetProperty_cold_6();
    goto LABEL_44;
  }

  v8 = CFGetTypeID(a3);
  if (v8 != CFBooleanGetTypeID())
  {
    endpointAggregate_SetProperty_cold_1();
    goto LABEL_44;
  }

  if (*(v7 + 408) == 3)
  {
    endpointAggregate_SetProperty_cold_5();
    goto LABEL_48;
  }

  if (!*(v7 + 457))
  {
    endpointAggregate_SetProperty_cold_4();
    IsEnabledOrDisabled = 4294954509;
    goto LABEL_23;
  }

  if (endpointAggregate_isATVInHTGroup())
  {
    if (gLogCategory_APEndpointAggregate <= 50 && (gLogCategory_APEndpointAggregate != -1 || _LogCategory_Initialize()))
    {
      endpointAggregate_SetProperty_cold_2();
    }

    goto LABEL_22;
  }

  Value = CFBooleanGetValue(a3);
  if (*(v7 + 160) == Value)
  {
LABEL_22:
    IsEnabledOrDisabled = 0;
    goto LABEL_23;
  }

  *(v7 + 160) = Value;
  if (gLogCategory_APEndpointAggregate <= 50 && (gLogCategory_APEndpointAggregate != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  IsEnabledOrDisabled = endpointAggregate_ensureLocalPlaybackIsEnabledOrDisabled(a1);
  if (IsEnabledOrDisabled)
  {
    endpointAggregate_SetProperty_cold_3();
  }

LABEL_23:
  FigSimpleMutexUnlock();
  return IsEnabledOrDisabled;
}

uint64_t endpointAggregate_copyPropertyInternal(uint64_t a1, const void *a2, const __CFAllocator *a3, void *a4)
{
  isMuted = 0;
  v31 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    endpointAggregate_copyPropertyInternal_cold_10(&isMuted);
    return isMuted;
  }

  v9 = DerivedStorage;
  v10 = *MEMORY[0x277CC1370];
  if (!CFEqual(a2, *MEMORY[0x277CC1370]) && !CFEqual(a2, *MEMORY[0x277CC1368]) && *(v9 + 44))
  {
    endpointAggregate_copyPropertyInternal_cold_1(&isMuted);
    return isMuted;
  }

  if (CFEqual(a2, v10))
  {
    v11 = MEMORY[0x277CBED28];
    v12 = MEMORY[0x277CBED10];
    v13 = *(v9 + 40) == 2;
LABEL_7:
    if (!v13)
    {
      v11 = v12;
    }

    goto LABEL_9;
  }

  if (CFEqual(a2, *MEMORY[0x277CC11E8]))
  {
    valuePtr = 0;
    if (*(v9 + 40) == 2)
    {
      valuePtr = *(v9 + 56);
    }

    v31 = CFNumberCreate(a3, kCFNumberSInt64Type, &valuePtr);
    if (v31)
    {
      goto LABEL_16;
    }

    APSLogErrorAt();
    return -16721;
  }

  if (CFEqual(a2, *MEMORY[0x277CC1368]))
  {
    v14 = *(v9 + 432);
    goto LABEL_10;
  }

  if (CFEqual(a2, *MEMORY[0x277CC0A40]))
  {
    if (!*(v9 + 457))
    {
      endpointAggregate_copyPropertyInternal_cold_2(&isMuted);
      return isMuted;
    }

    v11 = MEMORY[0x277CBED10];
    v12 = MEMORY[0x277CBED28];
    v13 = *(v9 + 160) == 0;
    goto LABEL_7;
  }

  if (CFEqual(a2, *MEMORY[0x277CC14B0]))
  {
    v14 = *(v9 + 72);
    if (!v14)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (!CFEqual(a2, @"EnabledFeatures"))
  {
    if (CFEqual(a2, *MEMORY[0x277CC14E0]))
    {
      v16 = endpointAggregate_copyStreams(a1, a3, &v31);
      goto LABEL_35;
    }

    if (CFEqual(a2, *MEMORY[0x277CC14E8]))
    {
      v16 = endpointAggregate_copyExposedSubEndpoints(a1, &v31);
      goto LABEL_35;
    }

    if (CFEqual(a2, *MEMORY[0x277CC1228]))
    {
      v11 = MEMORY[0x277CBED28];
      v17 = *(v9 + 344);
LABEL_42:
      v18 = MEMORY[0x277CBED10];
      v19 = v17 == 0;
      goto LABEL_43;
    }

    if (CFEqual(a2, *MEMORY[0x277CC15B0]))
    {
      v11 = MEMORY[0x277CBED28];
      v17 = *(v9 + 352);
      goto LABEL_42;
    }

    if (CFEqual(a2, *MEMORY[0x277CC15B8]))
    {
      v31 = CFNumberCreate(a3, kCFNumberSInt64Type, (v9 + 360));
      if (!v31)
      {
        endpointAggregate_copyPropertyInternal_cold_5();
        return isMuted;
      }

      goto LABEL_16;
    }

    if (CFEqual(a2, *MEMORY[0x277CC1448]))
    {
      v11 = MEMORY[0x277CBED28];
      v17 = *(v9 + 368);
      goto LABEL_42;
    }

    if (CFEqual(a2, *MEMORY[0x277CC15C0]) || CFEqual(a2, @"HALVolumeDB") || CFEqual(a2, *MEMORY[0x277CC15A8]))
    {
      v16 = endpointAggregate_copyPropertyFromAnySubEndpoint(a1, a2, a3, &v31);
      goto LABEL_35;
    }

    if (CFEqual(a2, *MEMORY[0x277CC13D0]) || CFEqual(a2, @"IsHALMuted") || CFEqual(a2, *MEMORY[0x277CC13D8]) || CFEqual(a2, *MEMORY[0x277CC13E0]))
    {
      LOBYTE(valuePtr) = 0;
      isMuted = endpointAggregate_isMuted(a1, a2, &valuePtr);
      if (isMuted)
      {
        APSLogErrorAt();
        return isMuted;
      }

      v11 = MEMORY[0x277CBED28];
      v17 = valuePtr;
      goto LABEL_42;
    }

    if (CFEqual(a2, @"EndpointShowInfo"))
    {
      v16 = endpointAggregate_copyShowInfoDict(a1, &v31);
      goto LABEL_35;
    }

    if (CFEqual(a2, *MEMORY[0x277CC1208]) || CFEqual(a2, *MEMORY[0x277CC1218]) || CFEqual(a2, *MEMORY[0x277CC1230]) || CFEqual(a2, *MEMORY[0x277CC1518]) || CFEqual(a2, *MEMORY[0x277CC1520]))
    {
      v14 = *(v9 + 152);
      if (v14)
      {
LABEL_74:
        v14 = endpointAggregate_copySubEndpointProperty(v14, a3, a2, &isMuted);
        goto LABEL_11;
      }

      v11 = MEMORY[0x277CBED10];
LABEL_9:
      v14 = *v11;
LABEL_10:
      v14 = CFRetain(v14);
LABEL_11:
      v31 = v14;
      goto LABEL_16;
    }

    if (CFEqual(a2, *MEMORY[0x277CC12F0]) || CFEqual(a2, *MEMORY[0x277CC1318]) || CFEqual(a2, *MEMORY[0x277CC1308]) || CFEqual(a2, *MEMORY[0x277CC1310]) || CFEqual(a2, *MEMORY[0x277CC1320]) || CFEqual(a2, *MEMORY[0x277CC1588]))
    {
      v14 = *(v9 + 152);
      if (v14)
      {
        goto LABEL_74;
      }

      v11 = MEMORY[0x277CBED28];
      goto LABEL_9;
    }

    if (CFEqual(a2, *MEMORY[0x277CC1238]))
    {
      v21 = *(v9 + 152);
      if (v21)
      {
        Int64 = endpointAggregate_copySubEndpointProperty(v21, a3, a2, &isMuted);
      }

      else
      {
        Int64 = CFNumberCreateInt64();
      }

      v31 = Int64;
      if (!Int64)
      {
        endpointAggregate_copyPropertyInternal_cold_6();
        return isMuted;
      }

      goto LABEL_16;
    }

    if (CFEqual(a2, *MEMORY[0x277CC12F8]) || CFEqual(a2, *MEMORY[0x277CC1300]))
    {
      v14 = *(v9 + 152);
      if (!v14)
      {
        goto LABEL_11;
      }

      goto LABEL_74;
    }

    if (CFEqual(a2, *MEMORY[0x277CC13F8]))
    {
      v11 = MEMORY[0x277CBED28];
      v18 = MEMORY[0x277CBED10];
      v19 = *(v9 + 152) == 0;
LABEL_43:
      if (v19)
      {
        v11 = v18;
      }

      goto LABEL_9;
    }

    if (CFEqual(a2, @"IsEngaged"))
    {
      v11 = MEMORY[0x277CBED28];
      v17 = *(v9 + 45);
      goto LABEL_42;
    }

    if (CFEqual(a2, *MEMORY[0x277CC1570]))
    {
      v14 = *(v9 + 144);
      if (!v14)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    if (CFEqual(a2, *MEMORY[0x277CC1340]))
    {
      v23 = *(v9 + 88);
      if (v23)
      {
        v31 = CFRetain(v23);
        if (v31)
        {
          goto LABEL_16;
        }
      }

      APSLogErrorAt();
      return -17606;
    }

    if (CFEqual(a2, *MEMORY[0x277CC12A0]))
    {
      if (*(v9 + 408) == 2)
      {
        isMuted = endpointAggregate_copyClusterActivatedCompositionAsArray(a1, &v31);
        if (isMuted)
        {
          endpointAggregate_copyPropertyInternal_cold_7();
          return isMuted;
        }

        goto LABEL_17;
      }

      return -16726;
    }

    if (!CFEqual(a2, *MEMORY[0x277CC12D0]))
    {
      if (!CFEqual(a2, *MEMORY[0x277CC1290]))
      {
        return -12784;
      }

      Value = CFDictionaryGetValue(*(v9 + 128), *MEMORY[0x277CC1968]);
      if (!Value)
      {
        endpointAggregate_copyPropertyInternal_cold_9(&isMuted);
        return isMuted;
      }

      v16 = FigEndpointStreamCopyProperty(Value, *MEMORY[0x277CC18B8], a3, &v31);
LABEL_35:
      isMuted = v16;
      if (!v16)
      {
        goto LABEL_17;
      }

LABEL_36:
      endpointAggregate_copyPropertyInternal_cold_8();
      return isMuted;
    }

    v24 = FigCFDictionaryCopyArrayOfKeys();
    if (v24)
    {
      v25 = v24;
      if (CFArrayGetCount(v24) < 1)
      {
        CFRelease(v25);
      }

      else
      {
        v26 = 0;
        v27 = 0;
        do
        {
          CFArrayGetValueAtIndex(v25, v27);
          v26 |= APSGetFBOPropertyInt64() != 0;
          ++v27;
        }

        while (v27 < CFArrayGetCount(v25));
        CFRelease(v25);
        if (v26)
        {
          v28 = MEMORY[0x277CBED28];
          goto LABEL_123;
        }
      }
    }

    v28 = MEMORY[0x277CBED10];
LABEL_123:
    v14 = *v28;
    if (!*v28)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  valuePtr = 0;
  isMuted = APEndpointGetEnabledFeatures(*(v9 + 128), *(v9 + 152) != 0, &valuePtr);
  if (isMuted)
  {
    endpointAggregate_copyPropertyInternal_cold_3();
    return isMuted;
  }

  v31 = CFNumberCreate(a3, kCFNumberSInt64Type, &valuePtr);
  if (!v31)
  {
    endpointAggregate_copyPropertyInternal_cold_4();
    return isMuted;
  }

LABEL_16:
  if (isMuted)
  {
    goto LABEL_36;
  }

LABEL_17:
  *a4 = v31;
  return isMuted;
}

uint64_t endpointAggregate_copyStreams(uint64_t a1, const __CFAllocator *a2, __CFArray **a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a3)
  {
    endpointAggregate_copyStreams_cold_2();
    return 4294950576;
  }

  v7 = DerivedStorage;
  Mutable = CFArrayCreateMutable(a2, 0, MEMORY[0x277CBF128]);
  if (!Mutable)
  {
    endpointAggregate_copyStreams_cold_1();
    return 4294950575;
  }

  v9 = Mutable;
  v10 = FigCFDictionaryCopyArrayOfValues();
  v11 = v10;
  if (v10)
  {
    v15.length = CFArrayGetCount(v10);
    v15.location = 0;
    CFArrayAppendArray(v9, v11, v15);
  }

  v12 = *(v7 + 48);
  if (v12)
  {
    if ((v12 & 1) == 0)
    {
      goto LABEL_11;
    }

LABEL_9:
    if (endpointAggregate_getFirstSubEndpointActivatedForFeatures(a1, 1))
    {
      FigEndpointCopyFirstStreamOfType();
    }

    goto LABEL_11;
  }

  if (*(v7 + 56))
  {
    goto LABEL_9;
  }

LABEL_11:
  *a3 = v9;
  if (v11)
  {
    CFRelease(v11);
  }

  return 0;
}

uint64_t endpointAggregate_copyExposedSubEndpoints(uint64_t a1, __CFArray **a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = FigCFDictionaryCopyArrayOfKeys();
  if (v4)
  {
    v5 = v4;
    Count = CFArrayGetCount(v4);
    v7 = *(DerivedStorage + 416);
    if (v7 && (v8 = Count, v12.location = 0, v12.length = Count, CFArrayContainsValue(v5, v12, v7)))
    {
      MutableCopy = CFArrayCreateMutableCopy(*MEMORY[0x277CBECE8], 0, v5);
      v13.location = 0;
      v13.length = v8;
      FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v5, v13, *(DerivedStorage + 416));
      if (gLogCategory_APEndpointAggregate <= 30 && (gLogCategory_APEndpointAggregate != -1 || _LogCategory_Initialize()))
      {
        endpointAggregate_copyExposedSubEndpoints_cold_1();
      }

      CFArrayRemoveValueAtIndex(MutableCopy, FirstIndexOfValue);
      if (!a2)
      {
        goto LABEL_8;
      }
    }

    else
    {
      MutableCopy = CFRetain(v5);
      if (!a2)
      {
LABEL_8:
        if (MutableCopy)
        {
          CFRelease(MutableCopy);
        }

        goto LABEL_12;
      }
    }

    *a2 = MutableCopy;
LABEL_12:
    CFRelease(v5);
    return 0;
  }

  endpointAggregate_copyExposedSubEndpoints_cold_2();
  return 4294949690;
}

uint64_t endpointAggregate_copyPropertyFromAnySubEndpoint(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointAggregate <= 30 && (gLogCategory_APEndpointAggregate != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v8 = FigCFDictionaryCopyArrayOfKeys();
  v9 = v8;
  if (*(DerivedStorage + 40) != 2)
  {
    endpointAggregate_copyPropertyFromAnySubEndpoint_cold_1();
    v15 = 4294895039;
    if (!v9)
    {
      return v15;
    }

    goto LABEL_17;
  }

  if (!v8)
  {
    endpointAggregate_copyPropertyFromAnySubEndpoint_cold_2();
    return 4294950575;
  }

  Count = CFArrayGetCount(v8);
  if (Count < 1)
  {
    v15 = 0;
LABEL_17:
    CFRelease(v9);
    return v15;
  }

  v11 = Count;
  for (i = 0; i != v11; ++i)
  {
    CFArrayGetValueAtIndex(v9, i);
    CMBaseObject = FigEndpointGetCMBaseObject();
    v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v14)
    {
      v15 = v14(CMBaseObject, a2, a3, a4);
      if (!v15)
      {
        break;
      }
    }

    else
    {
      v15 = 4294954514;
    }
  }

  if (v9)
  {
    goto LABEL_17;
  }

  return v15;
}

uint64_t endpointAggregate_isMuted(uint64_t a1, uint64_t a2, BOOL *a3)
{
  v14 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointAggregate <= 30 && (gLogCategory_APEndpointAggregate != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v5 = FigCFDictionaryCopyArrayOfKeys();
  v6 = v5;
  if (*(DerivedStorage + 40) != 2)
  {
    endpointAggregate_isMuted_cold_1(&v14);
    if (!v6)
    {
      return v14;
    }

    goto LABEL_19;
  }

  if (!v5)
  {
    endpointAggregate_isMuted_cold_4();
    return v14;
  }

  if (!a3)
  {
    endpointAggregate_isMuted_cold_3(&v14);
LABEL_19:
    CFRelease(v6);
    return v14;
  }

  Count = CFArrayGetCount(v5);
  if (Count < 1)
  {
    v11 = 0;
  }

  else
  {
    v8 = Count;
    for (i = 0; i != v8; ++i)
    {
      CFArrayGetValueAtIndex(v6, i);
      v10 = APSGetFBOPropertyInt64();
      v11 = v10 != 0;
      if (v10)
      {
        v12 = 0;
      }

      else
      {
        v12 = 11;
      }

      if (v12)
      {
        break;
      }
    }
  }

  *a3 = v11;
  if (v6)
  {
    goto LABEL_19;
  }

  return v14;
}

uint64_t endpointAggregate_copyShowInfoDict(uint64_t a1, __CFDictionary **a2)
{
  v24 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v23 = 0;
  value[1] = 0;
  v4 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    endpointAggregate_copyShowInfoDict_cold_2();
    return 0;
  }

  v6 = Mutable;
  SNPrintF();
  CFDictionarySetCString();
  v7 = *MEMORY[0x277CBED28];
  v8 = *MEMORY[0x277CBED10];
  if (*(DerivedStorage + 40) == 2)
  {
    v9 = *MEMORY[0x277CBED28];
  }

  else
  {
    v9 = *MEMORY[0x277CBED10];
  }

  CFDictionarySetValue(v6, @"Activated", v9);
  CFDictionarySetValue(v6, @"Name", @"APEndpointAggregate");
  FigCFDictionarySetValue();
  FigCFDictionarySetValue();
  if (*(DerivedStorage + 408) == 3)
  {
    v10 = v7;
  }

  else
  {
    v10 = v8;
  }

  CFDictionarySetValue(v6, @"IsRemoteControlEndpoint", v10);
  v11 = FigCFDictionaryCopyArrayOfKeys();
  if (!v11)
  {
    v20 = 0;
    *a2 = v6;
    return v20;
  }

  v12 = v11;
  Count = CFArrayGetCount(v11);
  if (Count > 0)
  {
    v14 = Count;
    v15 = CFArrayCreateMutable(v4, Count, MEMORY[0x277CBF128]);
    if (!v15)
    {
      endpointAggregate_copyShowInfoDict_cold_1(v6);
      v20 = 4294950575;
      goto LABEL_20;
    }

    v16 = v15;
    for (i = 0; i != v14; ++i)
    {
      value[0] = 0;
      CFArrayGetValueAtIndex(v12, i);
      CMBaseObject = FigEndpointGetCMBaseObject();
      v19 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v19)
      {
        v19(CMBaseObject, @"EndpointShowInfo", v4, value);
      }

      if (value[0])
      {
        CFArrayAppendValue(v16, value[0]);
        if (value[0])
        {
          CFRelease(value[0]);
        }
      }
    }

    CFDictionarySetValue(v6, @"SubEndpointShowInfoDicts", v16);
    CFRelease(v16);
  }

  v20 = 0;
  *a2 = v6;
LABEL_20:
  CFRelease(v12);
  return v20;
}

uint64_t endpointAggregate_copySubEndpointProperty(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v11 = 0;
  CMBaseObject = FigEndpointGetCMBaseObject();
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v8)
  {
    v9 = -12782;
LABEL_7:
    APSLogErrorAt();
    if (!a4)
    {
      return v11;
    }

    goto LABEL_4;
  }

  v9 = v8(CMBaseObject, a3, a2, &v11);
  if (v9)
  {
    goto LABEL_7;
  }

  if (a4)
  {
LABEL_4:
    *a4 = v9;
  }

  return v11;
}

uint64_t endpointAggregate_copyClusterActivatedCompositionAsArray(uint64_t a1, uint64_t *a2)
{
  v7 = 0;
  v8[0] = &v7;
  v8[1] = 0x2000000000;
  v9 = 0;
  if (*(CMBaseObjectGetDerivedStorage() + 408) == 2)
  {
    if (gLogCategory_APEndpointAggregate <= 30 && (gLogCategory_APEndpointAggregate != -1 || _LogCategory_Initialize()))
    {
      endpointAggregate_copyClusterActivatedCompositionAsArray_cold_1();
    }

    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      CFDictionaryApplyBlock();
      if (*(v8[0] + 24))
      {
        endpointAggregate_copyClusterActivatedCompositionAsArray_cold_2();
      }

      else
      {
        v4 = FigCFDictionaryCopyArrayOfValues();
        *a2 = v4;
        if (!v4)
        {
          endpointAggregate_copyClusterActivatedCompositionAsArray_cold_3(v8);
        }
      }
    }

    else
    {
      endpointAggregate_copyClusterActivatedCompositionAsArray_cold_4(v8);
    }
  }

  else
  {
    Mutable = 0;
    *(v8[0] + 24) = -16726;
  }

  if (gLogCategory_APEndpointAggregate <= 30 && (gLogCategory_APEndpointAggregate != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  v5 = *(v8[0] + 24);
  _Block_object_dispose(&v7, 8);
  return v5;
}

uint64_t FigEndpointStreamCopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CMBaseObject = FigEndpointStreamGetCMBaseObject();
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(CMBaseObject, a2, a3, a4);
}

const void *endpointAggregate_getFirstSubEndpointActivatedForFeatures(uint64_t a1, uint64_t a2)
{
  if (*(CMBaseObjectGetDerivedStorage() + 40) == 2)
  {
    v3 = FigCFDictionaryCopyArrayOfKeys();
    Count = CFArrayGetCount(v3);
    if (Count < 1)
    {
LABEL_6:
      ValueAtIndex = 0;
    }

    else
    {
      v5 = Count;
      v6 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v3, v6);
        if ((a2 & ~APSGetFBOPropertyInt64()) == 0)
        {
          break;
        }

        if (v5 == ++v6)
        {
          goto LABEL_6;
        }
      }
    }

    if (v3)
    {
      CFRelease(v3);
    }
  }

  else
  {
    endpointAggregate_getFirstSubEndpointActivatedForFeatures_cold_1();
    return 0;
  }

  return ValueAtIndex;
}

void __endpointAggregate_copyClusterActivatedCompositionAsArray_block_invoke(uint64_t a1, int a2, CFDictionaryRef theDict)
{
  Value = CFDictionaryGetValue(theDict, *MEMORY[0x277CC1550]);
  if (Value)
  {
    v6 = Value;
    v7 = CFDictionaryGetValue(*(a1 + 40), Value);
    if (v7)
    {
      v8 = v7;
      Int64 = CFDictionaryGetInt64();
      v10 = CFDictionaryGetInt64();
      if (Int64)
      {
        v11 = 1;
      }

      else
      {
        v11 = v10 == 0;
      }

      if (!v11)
      {
        FigCFDictionarySetValueFromKeyInDict();
        FigCFDictionarySetValueFromKeyInDict();
        if (gLogCategory_APEndpointAggregate > 30 || gLogCategory_APEndpointAggregate == -1 && !_LogCategory_Initialize())
        {
          return;
        }

LABEL_28:
        LogPrintF();
        return;
      }

      if ((Int64 != 0) == (v10 != 0))
      {
        v12 = *MEMORY[0x277CC0AD0];
        v13 = CFDictionaryGetValue(v8, *MEMORY[0x277CC0AD0]);
        v14 = CFDictionaryGetValue(theDict, v12);
        if (v13)
        {
          v15 = v14;
          v16 = CFGetTypeID(v13);
          if (v16 == CFStringGetTypeID() && v15 != 0)
          {
            v18 = CFGetTypeID(v15);
            if (v18 == CFStringGetTypeID() && CFStringCompare(v13, v15, 1uLL) == kCFCompareGreaterThan)
            {
              CFDictionarySetValue(v8, v12, v15);
              if (gLogCategory_APEndpointAggregate <= 30 && (gLogCategory_APEndpointAggregate != -1 || _LogCategory_Initialize()))
              {
                goto LABEL_28;
              }
            }
          }
        }
      }
    }

    else
    {
      MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x277CBECE8], 0, theDict);
      if (MutableCopy)
      {
        v21 = MutableCopy;
        CFDictionarySetValue(MutableCopy, *MEMORY[0x277CC0AD8], v6);
        FigCFDictionarySetValueFromKeyInDict();
        FigCFDictionarySetValueFromKeyInDict();
        if (gLogCategory_APEndpointAggregate <= 30 && (gLogCategory_APEndpointAggregate != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        CFDictionarySetValue(*(a1 + 40), v6, v21);

        CFRelease(v21);
      }

      else
      {
        *(*(*(a1 + 32) + 8) + 24) = -16721;
      }
    }
  }

  else
  {
    v19 = CFDictionaryGetValue(theDict, *MEMORY[0x277CC0AD8]);
    if (gLogCategory_APEndpointAggregate <= 30 && (gLogCategory_APEndpointAggregate != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v22 = *(a1 + 40);

    CFDictionarySetValue(v22, v19, theDict);
  }
}

uint64_t endpointAggregate_isATVInHTGroup()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 472);
  if (v1)
  {
    return v1 == *MEMORY[0x277CBED28] && *(DerivedStorage + 488) == 4;
  }

  else
  {

    return MEMORY[0x28213C3E8]();
  }
}

uint64_t endpointAggregate_setPropertyOnAllSubEndpoints(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = FigCFDictionaryCopyArrayOfKeys();
  v7 = v6;
  if (*(DerivedStorage + 40) != 2)
  {
    endpointAggregate_setPropertyOnAllSubEndpoints_cold_1();
    v12 = 4294895039;
    if (!v7)
    {
      return v12;
    }

    goto LABEL_15;
  }

  if (!v6)
  {
    endpointAggregate_setPropertyOnAllSubEndpoints_cold_2();
    return 4294950575;
  }

  Count = CFArrayGetCount(v6);
  if (gLogCategory_APEndpointAggregate <= 50 && (gLogCategory_APEndpointAggregate != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (Count < 1)
  {
    v12 = 0;
LABEL_15:
    CFRelease(v7);
    return v12;
  }

  for (i = 0; i != Count; ++i)
  {
    CFArrayGetValueAtIndex(v7, i);
    CMBaseObject = FigEndpointGetCMBaseObject();
    v11 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v11)
    {
      v11(CMBaseObject, a2, a3);
    }
  }

  v12 = 0;
  if (v7)
  {
    goto LABEL_15;
  }

  return v12;
}

uint64_t endpointAggregate_addEndpointInternal(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v41 = 0;
  FigEndpoint = FigEndpointAggregateGetFigEndpoint();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  APSGetFBOPropertyInt64();
  v10 = *(DerivedStorage + 48);
  if (!v10)
  {
    v10 = *(DerivedStorage + 56);
  }

  v11 = &gLogCategory_APEndpointPlaybackSessionRemoteControl;
  if (gLogCategory_APEndpointAggregate <= 50 && (gLogCategory_APEndpointAggregate != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v39 = v10;
  v12 = malloc_type_calloc(1uLL, 0x28uLL, 0x10A004044E3744DuLL);
  v13 = CFRetain(FigEndpoint);
  v14 = *(DerivedStorage + 120);
  *v12 = v13;
  v12[1] = v14;
  v12[3] = a5;
  v12[4] = a4;
  if (*(DerivedStorage + 40) == 2)
  {
    MutableCopy = APSGetFBOPropertyInt64();
    if (v41)
    {
      endpointAggregate_addEndpointInternal_cold_2();
    }

    else
    {
      v16 = APSGetFBOPropertyInt64();
      APSGetFBOPropertyInt64();
      if (*(DerivedStorage + 408) == 3)
      {
        if (!v16)
        {
          endpointAggregate_addEndpointInternal_cold_11();
LABEL_95:
          MutableCopy = 0;
          goto LABEL_96;
        }
      }

      else
      {
        if (!MutableCopy)
        {
          endpointAggregate_addEndpointInternal_cold_6();
LABEL_96:
          v33 = 0;
          goto LABEL_80;
        }

        if (v16)
        {
          endpointAggregate_addEndpointInternal_cold_4();
          goto LABEL_95;
        }

        v17 = CMBaseObjectGetDerivedStorage();
        v42 = 0;
        SubEndpointCount = endpointAggregate_getSubEndpointCount(FigEndpoint, 1);
        if (*(v17 + 96) && !SubEndpointCount)
        {
          if (endpointAggregate_generateGroupID(FigEndpoint, &v42))
          {
            endpointAggregate_addEndpointInternal_cold_5();
          }

          else if (!FigCFEqual())
          {
            if (gLogCategory_APEndpointAggregate <= 50 && (gLogCategory_APEndpointAggregate != -1 || _LogCategory_Initialize()))
            {
              LogPrintF();
            }

            v19 = *(v17 + 88);
            v20 = v42;
            *(v17 + 88) = v42;
            if (v20)
            {
              CFRetain(v20);
            }

            if (v19)
            {
              CFRelease(v19);
            }

            CMNotificationCenterGetDefaultLocalCenter();
            FigDispatchAsyncPostNotification();
          }
        }

        if (v42)
        {
          CFRelease(v42);
        }
      }

      v21 = FigEndpointAggregateGetFigEndpoint();
      v22 = CMBaseObjectGetDerivedStorage();
      if (CFDictionaryContainsKey(*(v22 + 8), a2))
      {
        Value = CFDictionaryGetValue(*(v22 + 8), a2);
        goto LABEL_50;
      }

      if (*(v22 + 408) == 3 || !APSGetFBOPropertyInt64())
      {
LABEL_35:
        Value = malloc_type_calloc(1uLL, 0x10uLL, 0x1000040F7F8B94BuLL);
        v24 = *(v22 + 16) + 1;
        *(v22 + 16) = v24;
        *Value = v24;
        CFDictionarySetValue(*(v22 + 8), a2, Value);
        if (gLogCategory_APEndpointAggregate <= 50 && (gLogCategory_APEndpointAggregate != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        if (!*(v22 + 384) && endpointAggregate_getSubEndpointCount(v21, 1) >= 1 && !*(CMBaseObjectGetDerivedStorage() + 408))
        {
          v25 = a4;
          v26 = *MEMORY[0x277CBECE8];
          v27 = CFUUIDCreate(*MEMORY[0x277CBECE8]);
          if (v27)
          {
            v28 = v27;
            v29 = CFUUIDCreateString(v26, v27);
            if (v29)
            {
              CFRelease(v28);
              *(v22 + 384) = CFRetain(v29);
              if (gLogCategory_APEndpointAggregate >= 51)
              {
                ++Value[1];
                v31 = *Value;
                a4 = v25;
LABEL_56:
                CFRelease(v29);
LABEL_57:
                v41 = 0;
                *(v12 + 4) = v31;
                v32 = *(*(CMBaseObjectGetVTable() + 16) + 48);
                if (v32)
                {
                  v32(a2, DerivedStorage + 264);
                }

                if (*(DerivedStorage + 408) != 3)
                {
                  FigEndpointSetDelegateRemoteControl(a2, DerivedStorage + 304);
                }

                MutableCopy = FigCFDictionaryCreateMutableCopy();
                if (a3)
                {
                  CFDictionaryMergeDictionary();
                }

                v33 = CFStringCreateF();
                if (v41)
                {
                  endpointAggregate_addEndpointInternal_cold_10();
                }

                else
                {
                  CFDictionarySetValue(MutableCopy, @"ParentContextID", v33);
                  v34 = MEMORY[0x277CBED28];
                  if (*(DerivedStorage + 408) != 3)
                  {
                    CFDictionarySetValue(MutableCopy, @"AudioOptions", *(DerivedStorage + 104));
                    CFDictionarySetValue(MutableCopy, @"NetworkClock", *(DerivedStorage + 80));
                    CFDictionarySetValue(MutableCopy, @"GroupID", *(DerivedStorage + 88));
                    v35 = *v34;
                    CFDictionarySetValue(MutableCopy, @"IsGroupPlayback", *v34);
                    v36 = *(DerivedStorage + 408) == 2 ? v35 : *MEMORY[0x277CBED10];
                    CFDictionarySetValue(MutableCopy, @"IsPartOfCluster", v36);
                    if (!APSGetFBOPropertyInt64())
                    {
                      FigCFDictionarySetValue();
                    }
                  }

                  if (endpointAggregate_isUpdateUGLRCServerNeeded())
                  {
                    CFDictionarySetValue(MutableCopy, @"IsUGLRCServerUpdateNeeded", *v34);
                  }

                  SubEndpointFeaturesToActivate = endpointAggregate_getSubEndpointFeaturesToActivate(FigEndpoint, a2, v39);
                  if (gLogCategory_APEndpointAggregate <= 50 && (gLogCategory_APEndpointAggregate != -1 || _LogCategory_Initialize()))
                  {
                    LogPrintF();
                  }

                  FigEndpointActivateWithCompletionCallback(a2, SubEndpointFeaturesToActivate, MutableCopy, v12);
                  CFRetain(FigEndpoint);
                  if (a2)
                  {
                    CFRetain(a2);
                  }

                  CFRetain(*MEMORY[0x277CC0A28]);
                  APSDispatchAsyncFHelper();
                }

LABEL_79:
                if (!v41)
                {
                  goto LABEL_83;
                }

                goto LABEL_80;
              }

              a4 = v25;
              if (gLogCategory_APEndpointAggregate == -1)
              {
                v11 = &gLogCategory_APEndpointPlaybackSessionRemoteControl;
                if (!_LogCategory_Initialize())
                {
LABEL_51:
                  v30 = v11[482];
                  ++Value[1];
                  if (v30 <= 50 && (v30 != -1 || _LogCategory_Initialize()))
                  {
                    LogPrintF();
                  }

                  v31 = *Value;
                  if (!v29)
                  {
                    goto LABEL_57;
                  }

                  goto LABEL_56;
                }
              }

              LogPrintF();
LABEL_48:
              v11 = &gLogCategory_APEndpointPlaybackSessionRemoteControl;
              goto LABEL_51;
            }

            endpointAggregate_addEndpointInternal_cold_8(v28);
          }

          else
          {
            endpointAggregate_addEndpointInternal_cold_9();
            v29 = 0;
          }

          a4 = v25;
          goto LABEL_48;
        }

LABEL_50:
        v29 = 0;
        goto LABEL_51;
      }

      if (!*(v22 + 24))
      {
        *(v22 + 24) = a2;
        if (a2)
        {
          CFRetain(a2);
        }

        goto LABEL_35;
      }

      endpointAggregate_addEndpointInternal_cold_7();
    }

    v33 = 0;
    MutableCopy = 0;
    goto LABEL_79;
  }

  endpointAggregate_addEndpointInternal_cold_1(&v41);
  MutableCopy = 0;
  v33 = 0;
LABEL_80:
  if (a4)
  {
    endpointAggregate_scheduleAddOrRemoveSubEndpointCompletionCallback(FigEndpoint, a2);
  }

  CFRelease(*v12);
  free(v12);
LABEL_83:
  if (v33)
  {
    CFRelease(v33);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  return v41;
}

uint64_t endpointAggregate_removeEndpointInternal(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4)
{
  FigEndpoint = FigEndpointAggregateGetFigEndpoint();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointAggregate <= 50 && (gLogCategory_APEndpointAggregate != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v10 = malloc_type_calloc(1uLL, 0x28uLL, 0x10A004044E3744DuLL);
  v11 = CFRetain(FigEndpoint);
  v12 = *(DerivedStorage + 120);
  *v10 = v11;
  v10[1] = v12;
  v10[3] = a4;
  v10[4] = a3;
  *(v10 + 4) = 0;
  if (*(DerivedStorage + 40) == 2)
  {
    if (*(DerivedStorage + 408) != 3)
    {
      v13 = APSGetFBOPropertyInt64();
      endpointAggregate_handleSubEndpointFeatureActivationStateChanged(FigEndpoint, a2, 0, v13);
    }

    v14 = endpointAggregate_removeEntryForSubEndpoint(a1, a2, 1);
    if (!v14)
    {
      endpointAggregate_updateURLPlaybackSupportedState(FigEndpoint);
      endpointAggregate_updateClusterCompositionPropertiesFromSubEndpoint(FigEndpoint, a2, 1);
      endpointAggregate_unregisterCommChannelsForSubEndpointAndNotifyClientIfNeeded();
      if (*(DerivedStorage + 408) != 3)
      {
        CMNotificationCenterGetDefaultLocalCenter();
        FigNotificationCenterRemoveWeakListener();
        CMNotificationCenterGetDefaultLocalCenter();
        FigNotificationCenterRemoveWeakListener();
        CMNotificationCenterGetDefaultLocalCenter();
        FigNotificationCenterRemoveWeakListener();
        CMNotificationCenterGetDefaultLocalCenter();
        FigNotificationCenterRemoveWeakListener();
        CMNotificationCenterGetDefaultLocalCenter();
        FigNotificationCenterRemoveWeakListener();
        CMNotificationCenterGetDefaultLocalCenter();
        FigNotificationCenterRemoveWeakListener();
        CMNotificationCenterGetDefaultLocalCenter();
        FigNotificationCenterRemoveWeakListener();
        CMNotificationCenterGetDefaultLocalCenter();
        FigNotificationCenterRemoveWeakListener();
        if (*(DerivedStorage + 408) != 3)
        {
          v15 = *(*(CMBaseObjectGetVTable() + 16) + 56);
          if (v15)
          {
            v15(a2, 0);
          }
        }
      }

      v16 = *(*(CMBaseObjectGetVTable() + 16) + 48);
      if (v16)
      {
        v16(a2, 0);
      }

      Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      CFDictionarySetValue(Mutable, *MEMORY[0x277CC0B90], @"RemovedFromAggregate");
      v18 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (v18)
      {
        v18(a2, Mutable, endpointAggregate_deactivateSubEndpointCallback, v10);
      }

      CFRetain(FigEndpoint);
      CFRetain(a2);
      CFRetain(*MEMORY[0x277CC0A30]);
      APSDispatchAsyncFHelper();
      if (Mutable)
      {
        CFRelease(Mutable);
      }

      return 0;
    }

    v19 = v14;
    endpointAggregate_removeEndpointInternal_cold_2();
  }

  else
  {
    endpointAggregate_removeEndpointInternal_cold_1();
    v19 = 4294951716;
  }

  if (a3)
  {
    endpointAggregate_scheduleAddOrRemoveSubEndpointCompletionCallback(FigEndpoint, a2);
  }

  CFRelease(*v10);
  free(v10);
  return v19;
}

CFIndex endpointAggregate_getSubEndpointCount(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = CFDictionaryGetCount(*(DerivedStorage + 8));
  if (a2 && result >= 1 && *(DerivedStorage + 24) && (a2 == 1 || *(DerivedStorage + 416)))
  {
    --result;
  }

  return result;
}

void endpointAggregate_setEnableLocalPlaybackOnAggregateStreams(uint64_t a1, int a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 457) || *(DerivedStorage + 416))
  {
    endpointAggregate_setEnableLocalPlaybackOnAggregateStreams_cold_1();
  }

  else
  {
    v6 = FigCFDictionaryCopyArrayOfValues();
    if (CFArrayGetCount(v6) >= 1)
    {
      v7 = 0;
      v8 = *MEMORY[0x277CC1900];
      v9 = *MEMORY[0x277CBECE8];
      v10 = MEMORY[0x277CBED10];
      if (a2)
      {
        v10 = MEMORY[0x277CBED28];
      }

      v11 = *v10;
      do
      {
        CFArrayGetValueAtIndex(v6, v7);
        cf = 0;
        CMBaseObject = FigEndpointStreamGetCMBaseObject();
        v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v13)
        {
          v13(CMBaseObject, v8, v9, &cf);
        }

        if (cf)
        {
          if ((APEndpointGetFeatureFromStreamType(cf) & a3) != 0)
          {
            v14 = FigEndpointStreamGetCMBaseObject();
            v15 = *(*(CMBaseObjectGetVTable() + 8) + 56);
            if (v15)
            {
              v15(v14, @"enableLocalPlayback", v11);
            }
          }

          if (cf)
          {
            CFRelease(cf);
          }
        }

        ++v7;
      }

      while (v7 < CFArrayGetCount(v6));
    }

    if (v6)
    {
      CFRelease(v6);
    }
  }
}

void endpointAggregate_updateIsVolumeControlSupported()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = FigCFDictionaryCopyArrayOfKeys();
  if (v1)
  {
    v2 = v1;
    if (CFArrayGetCount(v1) < 1)
    {
LABEL_6:
      v4 = *(DerivedStorage + 161);
    }

    else
    {
      v3 = 0;
      while (1)
      {
        CFArrayGetValueAtIndex(v2, v3);
        if (APSGetFBOPropertyInt64())
        {
          break;
        }

        if (++v3 >= CFArrayGetCount(v2))
        {
          goto LABEL_6;
        }
      }

      v4 = 1;
    }

    if (*(DerivedStorage + 352) != v4)
    {
      if (gLogCategory_APEndpointAggregate <= 50 && (gLogCategory_APEndpointAggregate != -1 || _LogCategory_Initialize()))
      {
        endpointAggregate_updateIsVolumeControlSupported_cold_1();
      }

      *(DerivedStorage + 352) = v4;
      CMNotificationCenterGetDefaultLocalCenter();
      FigDispatchAsyncPostNotification();
    }

    CFRelease(v2);
  }

  else
  {
    endpointAggregate_updateIsVolumeControlSupported_cold_2();
  }
}

void endpointAggregate_updateSubEndpointAggregateStreamMembershipForFeatures(uint64_t a1, __CFString *a2, char a3, int a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  theArray = 0;
  if (a2 || *(DerivedStorage + 458))
  {
    if (gLogCategory_APEndpointAggregate <= 30 && (gLogCategory_APEndpointAggregate != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    AllAudioFeatures = APEndpointGetAllAudioFeatures(a3);
    APEndpointCreateStreamTypeArrayFromFeatures(AllAudioFeatures, &theArray);
    if (theArray)
    {
      Count = CFArrayGetCount(theArray);
      if (Count >= 1)
      {
        v10 = Count;
        v11 = 0;
        allocator = *MEMORY[0x277CBECE8];
        if (a2)
        {
          v12 = a2;
        }

        else
        {
          v12 = @"LocalPlaybackID";
        }

        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(theArray, v11);
          v14 = CMBaseObjectGetDerivedStorage();
          v15 = v14;
          if (!a4)
          {
            if (a2 || *(v14 + 458))
            {
              if (ValueAtIndex)
              {
                Value = CFDictionaryGetValue(*(v14 + 136), ValueAtIndex);
                if (Value)
                {
                  v20 = Value;
                  if (CFSetContainsValue(Value, v12))
                  {
                    CFSetRemoveValue(v20, v12);
                    if (gLogCategory_APEndpointAggregate <= 30 && (gLogCategory_APEndpointAggregate != -1 || _LogCategory_Initialize()))
                    {
                      CFSetGetCount(v20);
                      LogPrintF();
                    }

                    if (!CFSetGetCount(v20))
                    {
                      CFDictionaryRemoveValue(*(v15 + 136), ValueAtIndex);
                    }
                  }
                }
              }

              else
              {
                endpointAggregate_updateSubEndpointAggregateStreamMembershipForFeatures_cold_4();
              }
            }

            else
            {
              endpointAggregate_updateSubEndpointAggregateStreamMembershipForFeatures_cold_5();
            }

            goto LABEL_36;
          }

          if (a2 || *(v14 + 458))
          {
            if (ValueAtIndex)
            {
              v16 = CFDictionaryGetValue(*(v14 + 136), ValueAtIndex);
              if (v16)
              {
                v17 = CFRetain(v16);
                if (v17)
                {
                  goto LABEL_20;
                }
              }

              Mutable = CFSetCreateMutable(allocator, 0, MEMORY[0x277CBF158]);
              if (Mutable)
              {
                v17 = Mutable;
                CFDictionarySetValue(*(v15 + 136), ValueAtIndex, Mutable);
LABEL_20:
                CFSetAddValue(v17, v12);
                if (gLogCategory_APEndpointAggregate <= 30 && (gLogCategory_APEndpointAggregate != -1 || _LogCategory_Initialize()))
                {
                  CFSetGetCount(v17);
                  LogPrintF();
                }

                CFRelease(v17);
                goto LABEL_36;
              }

              endpointAggregate_updateSubEndpointAggregateStreamMembershipForFeatures_cold_1();
            }

            else
            {
              endpointAggregate_updateSubEndpointAggregateStreamMembershipForFeatures_cold_2();
            }
          }

          else
          {
            endpointAggregate_updateSubEndpointAggregateStreamMembershipForFeatures_cold_3();
          }

LABEL_36:
          ++v11;
        }

        while (v10 != v11);
      }
    }

    else
    {
      endpointAggregate_updateSubEndpointAggregateStreamMembershipForFeatures_cold_6();
    }
  }

  else
  {
    endpointAggregate_updateSubEndpointAggregateStreamMembershipForFeatures_cold_7();
  }

  if (theArray)
  {
    CFRelease(theArray);
  }
}

uint64_t endpointAggregate_createAndInitAudioStream(uint64_t a1, const __CFDictionary *a2, uint64_t a3, uint64_t a4, const void *a5, int a6, const void *a7, const void *a8, const void *a9, const void *a10, char a11, CFTypeRef *a12)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (!a9)
  {
    endpointAggregate_createAndInitAudioStream_cold_8();
    return 4294950576;
  }

  if (!a2)
  {
    endpointAggregate_createAndInitAudioStream_cold_7();
LABEL_31:
    v26 = 4294950576;
    goto LABEL_20;
  }

  if (!a5)
  {
    endpointAggregate_createAndInitAudioStream_cold_6();
    goto LABEL_31;
  }

  v20 = DerivedStorage;
  if (!a4 && !*(DerivedStorage + 458))
  {
    endpointAggregate_createAndInitAudioStream_cold_5();
    goto LABEL_31;
  }

  Value = CFDictionaryGetValue(a2, a9);
  if (!Value)
  {
    endpointAggregate_createAndInitAudioStream_cold_4();
    goto LABEL_31;
  }

  v22 = CFDictionaryGetValue(Value, @"AudioEngineVendor");
  if (!v22)
  {
    endpointAggregate_createAndInitAudioStream_cold_3();
    goto LABEL_31;
  }

  v23 = *MEMORY[0x277CBECE8];
  v24 = APEndpointStreamAggregateAudioCreate(*MEMORY[0x277CBECE8], a9, a3, v22, a5, a4, 1, *(v20 + 408) == 2, *(v20 + 456), *(v20 + 458), a11, a10, &cf);
  if (v24)
  {
    v26 = v24;
    endpointAggregate_createAndInitAudioStream_cold_1();
  }

  else
  {
    if (!a6)
    {
      *a12 = CFRetain(cf);
LABEL_15:
      if (gLogCategory_APEndpointAggregate <= 50 && (gLogCategory_APEndpointAggregate != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v26 = 0;
      goto LABEL_20;
    }

    if (a8)
    {
      v25 = APEndpointStreamInterruptingWrapperCreate(v23, cf, a8, a7, a12);
    }

    else
    {
      v25 = APEndpointStreamInterruptibleWrapperCreate(v23, cf, a7, a12);
    }

    v26 = v25;
    if (!v25)
    {
      goto LABEL_15;
    }

    endpointAggregate_createAndInitAudioStream_cold_2();
  }

LABEL_20:
  if (cf)
  {
    CFRelease(cf);
  }

  return v26;
}

void endpointAggregate_addObserverInternal(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  APSubEndpointAddRemoveObservingProtocolGetProtocolID();
  if (CMBaseObjectImplementsProtocol())
  {
    v4 = *(DerivedStorage + 32);

    CFArrayAppendValue(v4, a2);
  }

  else
  {
    endpointAggregate_addObserverInternal_cold_1();
  }
}

uint64_t endpointAggregate_handleAggregateStreamInUseChanged()
{
  CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  endpointAggregate_updateEngagedState();

  return FigSimpleMutexUnlock();
}

uint64_t endpointAggregate_handleBufferedAudioCapabilitiesChanged()
{
  CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointAggregate <= 50 && (gLogCategory_APEndpointAggregate != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  CMNotificationCenterGetDefaultLocalCenter();

  return FigDispatchAsyncPostNotification();
}

void endpointAggregate_destroyAggregateStreams(uint64_t a1, char a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  AllAudioFeatures = APEndpointGetAllAudioFeatures(a2);
  APEndpointCreateStreamTypeArrayFromFeatures(AllAudioFeatures, &cf);
  if (cf)
  {
    endpointAggregate_destroyAggregateStreams_cold_1(cf, &cf, a1, DerivedStorage);
  }

  else
  {
    endpointAggregate_destroyAggregateStreams_cold_2();
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t __endpointAggregate_notifyStreamObservers_block_invoke(uint64_t a1, uint64_t a2, const void *a3)
{
  FeatureFromStreamType = APEndpointGetFeatureFromStreamType(a2);
  result = APEndpointGetAllAudioFeatures(*(a1 + 32));
  if ((result & FeatureFromStreamType) != 0)
  {
    if (gLogCategory_APEndpointAggregate <= 50 && (gLogCategory_APEndpointAggregate != -1 || _LogCategory_Initialize()))
    {
      __endpointAggregate_notifyStreamObservers_block_invoke_cold_1();
    }

    CFRetain(a3);
    CFRetain(*(a1 + 48));
    return APSDispatchAsyncFHelper();
  }

  return result;
}

void endpointAggregate_notifyObserverNotificationQueueDispatch(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *a1;
  v4 = *(a1 + 8);
  APSubEndpointAddRemoveObservingProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (v2)
  {
    if (ProtocolVTable)
    {
      v6 = *(ProtocolVTable + 16);
      if (v6)
      {
        v7 = *(v6 + 8);
        if (v7)
        {
LABEL_9:
          v7(v3, v4);
        }
      }
    }
  }

  else if (ProtocolVTable)
  {
    v8 = *(ProtocolVTable + 16);
    if (v8)
    {
      v7 = *(v8 + 16);
      if (v7)
      {
        goto LABEL_9;
      }
    }
  }

  CFRelease(*(a1 + 8));
  v9 = *a1;

  CFRelease(v9);
}

uint64_t FigEndpointSetDelegateRemoteControl(uint64_t a1, uint64_t a2)
{
  VTable = CMBaseObjectGetVTable();
  v6 = *(VTable + 16);
  result = VTable + 16;
  v7 = *(v6 + 56);
  if (v7)
  {

    return v7(a1, a2);
  }

  return result;
}

uint64_t FigEndpointActivateWithCompletionCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  VTable = CMBaseObjectGetVTable();
  v10 = *(VTable + 16);
  result = VTable + 16;
  v11 = *(v10 + 8);
  if (v11)
  {

    return v11(a1, a2, a3, endpointAggregate_activateSubEndpointCallback, a4);
  }

  return result;
}

void endpointAggregate_activateSubEndpointCallback(const void *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a1 || (FigEndpointExtendedGetClassID(), v9 = a1, !CMBaseObjectIsMemberOfClass()))
  {
    v9 = 0;
  }

  FigSimpleMutexLock();
  Value = CFDictionaryGetValue(*(DerivedStorage + 8), a1);
  if (Value && *Value == *(a5 + 16))
  {
    if (gLogCategory_APEndpointAggregate <= 50 && (gLogCategory_APEndpointAggregate != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    if (a4)
    {
      v11 = *a5;
      if (!*a5 || (FigEndpointAggregateGetClassID(), !CMBaseObjectIsMemberOfClass()))
      {
        v11 = 0;
      }

      endpointAggregate_removeEntryForSubEndpoint(v11, a1, 0);
    }

    else
    {
      if (v9)
      {
        v12 = *(DerivedStorage + 336);
        if (v12)
        {
          v13 = *(*(CMBaseObjectGetVTable() + 24) + 48);
          if (v13)
          {
            v13(v9, v12);
          }
        }
      }

      if (*(DerivedStorage + 408) != 3)
      {
        endpointAggregate_activateSubEndpointCallback_cold_1(a5, a1);
      }
    }
  }

  else if (gLogCategory_APEndpointAggregate <= 60 && (gLogCategory_APEndpointAggregate != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  endpointAggregate_scheduleAddOrRemoveSubEndpointCompletionCallback(*a5, a1);
  FigSimpleMutexUnlock();
  CFRelease(*a5);

  free(a5);
}

void endpointAggregate_postEndpointAddedOrRemovedNotification(uint64_t a1)
{
  value = 0;
  v2 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v4 = Mutable;
    if (*a1)
    {
      CMBaseObject = FigEndpointGetCMBaseObject();
      v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (!v6 || v6(CMBaseObject, *MEMORY[0x277CC1368], v2, &value))
      {
        endpointAggregate_postEndpointAddedOrRemovedNotification_cold_2();
      }

      else
      {
        CFDictionarySetValue(v4, *MEMORY[0x277CC0A20], value);
        if (gLogCategory_APEndpointAggregate <= 10 && (gLogCategory_APEndpointAggregate != -1 || _LogCategory_Initialize()))
        {
          endpointAggregate_postEndpointAddedOrRemovedNotification_cold_1();
        }

        CMNotificationCenterGetDefaultLocalCenter();
        CMNotificationCenterPostNotification();
      }
    }

    else
    {
      endpointAggregate_postEndpointAddedOrRemovedNotification_cold_3();
    }

    CFRelease(v4);
    if (value)
    {
      CFRelease(value);
    }
  }

  else
  {
    endpointAggregate_postEndpointAddedOrRemovedNotification_cold_4();
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  v7 = *(a1 + 8);
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = *(a1 + 16);
  if (v8)
  {
    CFRelease(v8);
  }
}

uint64_t endpointAggregate_scheduleAddOrRemoveSubEndpointCompletionCallback(const void *a1, const void *a2)
{
  CMBaseObjectGetDerivedStorage();
  CFRetain(a1);
  CFRetain(a2);
  return APSDispatchAsyncFHelper();
}

uint64_t endpointAggregate_generateGroupID(uint64_t a1, uint64_t *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v5 = Mutable;
    v6 = MEMORY[0x277CBED28];
    if (!*(DerivedStorage + 464))
    {
      v6 = MEMORY[0x277CBED10];
    }

    CFDictionarySetValue(Mutable, *MEMORY[0x277CEA290], *v6);
    CFDictionarySetNumber();
    v7 = APSCreateGroupIDForLocalDeviceEx();
    v8 = v7;
    if (a2)
    {
      *a2 = v7;
      v9 = v5;
    }

    else
    {
      CFRelease(v5);
      if (!v8)
      {
        return 0;
      }

      v9 = v8;
    }

    CFRelease(v9);
    return 0;
  }

  endpointAggregate_generateGroupID_cold_1();
  return 4294950575;
}

uint64_t endpointAggregate_removeEntryForSubEndpoint(uint64_t a1, const void *a2, int a3)
{
  FigEndpoint = FigEndpointAggregateGetFigEndpoint();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFDictionaryContainsKey(*(DerivedStorage + 8), a2))
  {
    Value = CFDictionaryGetValue(*(DerivedStorage + 8), a2);
    v8 = Value[1];
    if (v8)
    {
      v9 = Value;
      Value[1] = v8 - 1;
      if (gLogCategory_APEndpointAggregate <= 50 && (gLogCategory_APEndpointAggregate != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      if (!a3 && v9[1])
      {
        return 0;
      }

      if (gLogCategory_APEndpointAggregate <= 50 && (gLogCategory_APEndpointAggregate != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      CFDictionaryRemoveValue(*(DerivedStorage + 8), a2);
      if (FigCFEqual())
      {
        v10 = *(DerivedStorage + 24);
        if (v10)
        {
          CFRelease(v10);
          *(DerivedStorage + 24) = 0;
        }
      }

      if (*(DerivedStorage + 384) && !endpointAggregate_getSubEndpointCount(FigEndpoint, 1))
      {
        if (gLogCategory_APEndpointAggregate <= 50 && (gLogCategory_APEndpointAggregate != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        result = *(DerivedStorage + 384);
        if (result)
        {
          CFRelease(result);
          result = 0;
          *(DerivedStorage + 384) = 0;
        }
      }

      else
      {
        return 0;
      }
    }

    else
    {
      endpointAggregate_removeEntryForSubEndpoint_cold_1();
      return 4294949690;
    }
  }

  else
  {
    endpointAggregate_removeEntryForSubEndpoint_cold_2();
    return 4294895046;
  }

  return result;
}

void endpointAggregate_handleSubEndpointVolumeDidChange(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a5)
  {
    v7 = DerivedStorage;
    v8 = *MEMORY[0x277CC15A8];
    CFNumberGetTypeID();
    TypedValue = CFDictionaryGetTypedValue();
    FigSimpleMutexLock();
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v11 = Mutable;
      CFDictionarySetValue(Mutable, *MEMORY[0x277CC1368], *(v7 + 432));
      CFDictionarySetValue(v11, v8, TypedValue);
      if (gLogCategory_APEndpointAggregate <= 50 && (gLogCategory_APEndpointAggregate != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      CMNotificationCenterGetDefaultLocalCenter();
      FigDispatchAsyncPostNotification();
      FigSimpleMutexUnlock();
      CFRelease(v11);
    }

    else
    {
      endpointAggregate_handleSubEndpointVolumeDidChange_cold_2();
    }
  }

  else
  {
    endpointAggregate_handleSubEndpointVolumeDidChange_cold_3();
  }
}

void endpointAggregate_handleSubEndpointIsMutedDidChange()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v2 = Mutable;
    CFDictionarySetValue(Mutable, *MEMORY[0x277CC1368], *(DerivedStorage + 432));
    if (gLogCategory_APEndpointAggregate <= 50 && (gLogCategory_APEndpointAggregate != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();
    FigSimpleMutexUnlock();

    CFRelease(v2);
  }

  else
  {
    endpointAggregate_handleSubEndpointIsMutedDidChange_cold_1();
  }
}

uint64_t endpointAggregate_handleSubEndpointVolumeControlSupportedChanged()
{
  CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  endpointAggregate_updateIsVolumeControlSupported();

  return FigSimpleMutexUnlock();
}

uint64_t endpointAggregate_handleSubEndpointVolumeControlTypeChanged()
{
  CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  endpointAggregate_updateVolumeControlType();

  return FigSimpleMutexUnlock();
}

uint64_t endpointAggregate_handleSubEndpointMuteControlSupportedChanged()
{
  CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  endpointAggregate_updateIsMuteControlSupported();

  return FigSimpleMutexUnlock();
}

uint64_t endpointAggregate_handleSubEndpointAirPlayVideoPlaybackChanged(uint64_t a1, const void *a2)
{
  CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  endpointAggregate_updateVideoPlaybackIsActive(a2);

  return FigSimpleMutexUnlock();
}

uint64_t endpointAggregate_handleSubEndpointDescriptionChanged(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, uint64_t a5)
{
  CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (a5 && (CFDictionaryGetInt64() || CFDictionaryGetInt64() || CFDictionaryGetInt64()))
  {
    endpointAggregate_updateClusterCompositionPropertiesFromSubEndpoint(a2, a4, 0);
  }

  return FigSimpleMutexUnlock();
}

void endpointAggregate_updateVolumeControlType()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = FigCFDictionaryCopyArrayOfKeys();
  if (v1)
  {
    v2 = v1;
    if (CFArrayGetCount(v1) < 1)
    {
      v3 = 0;
    }

    else
    {
      v3 = 0;
      v4 = 0;
      while (1)
      {
        CFArrayGetValueAtIndex(v2, v4);
        v5 = APSGetFBOPropertyInt64();
        if (v5 == 3)
        {
          break;
        }

        v6 = v5;
        if (CFArrayGetCount(v2) == 1)
        {
          v3 = v6;
        }

        if (++v4 >= CFArrayGetCount(v2))
        {
          goto LABEL_11;
        }
      }

      v3 = 3;
    }

LABEL_11:
    if (*(DerivedStorage + 360) != v3)
    {
      if (gLogCategory_APEndpointAggregate <= 50 && (gLogCategory_APEndpointAggregate != -1 || _LogCategory_Initialize()))
      {
        APSGetFigEndpointVolumeControlTypeName();
        APSGetFigEndpointVolumeControlTypeName();
        LogPrintF();
      }

      *(DerivedStorage + 360) = v3;
      CMNotificationCenterGetDefaultLocalCenter();
      FigDispatchAsyncPostNotification();
    }

    CFRelease(v2);
  }

  else
  {
    endpointAggregate_updateVolumeControlType_cold_1();
  }
}

void endpointAggregate_updateIsMuteControlSupported()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = FigCFDictionaryCopyArrayOfKeys();
  if (v1)
  {
    v2 = v1;
    if (CFArrayGetCount(v1) < 1)
    {
      v4 = 0;
    }

    else
    {
      v3 = 0;
      while (1)
      {
        CFArrayGetValueAtIndex(v2, v3);
        if (APSGetFBOPropertyInt64())
        {
          break;
        }

        if (++v3 >= CFArrayGetCount(v2))
        {
          v4 = 0;
          goto LABEL_9;
        }
      }

      v4 = 1;
    }

LABEL_9:
    if (*(DerivedStorage + 368) != v4)
    {
      if (gLogCategory_APEndpointAggregate <= 50 && (gLogCategory_APEndpointAggregate != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      *(DerivedStorage + 368) = v4;
      CMNotificationCenterGetDefaultLocalCenter();
      FigDispatchAsyncPostNotification();
    }

    CFRelease(v2);
  }

  else
  {
    endpointAggregate_updateIsMuteControlSupported_cold_1();
  }
}

void endpointAggregate_updateVideoPlaybackIsActive(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = FigCFDictionaryCopyArrayOfKeys();
  if (!v3)
  {
    endpointAggregate_updateVideoPlaybackIsActive_cold_2();
    return;
  }

  v4 = v3;
  if (CFArrayGetCount(v3) < 1)
  {
LABEL_6:
    v6 = 0;
  }

  else
  {
    v5 = 0;
    while (1)
    {
      CFArrayGetValueAtIndex(v4, v5);
      if (APSGetFBOPropertyInt64())
      {
        break;
      }

      if (++v5 >= CFArrayGetCount(v4))
      {
        goto LABEL_6;
      }
    }

    v6 = 1;
  }

  if (*(DerivedStorage + 344) != v6)
  {
    *(DerivedStorage + 344) = v6;
    v8 = CFGetAllocator(a1);
    Mutable = CFDictionaryCreateMutable(v8, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v10 = Mutable;
      FigCFDictionarySetInt64();
      CMNotificationCenterGetDefaultLocalCenter();
      FigDispatchAsyncPostNotification();
      CFRelease(v4);
      v7 = v10;
      goto LABEL_12;
    }

    endpointAggregate_updateVideoPlaybackIsActive_cold_1();
  }

  v7 = v4;
LABEL_12:

  CFRelease(v7);
}

void endpointAggregate_addOrRemoveSubEndpointCallCompletionCallback(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    v2(*(a1 + 8), *a1, *(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40));
  }

  CFRelease(*a1);
  v3 = *(a1 + 8);

  CFRelease(v3);
}

void endpointAggregate_unregisterCommChannelsForSubEndpointAndNotifyClientIfNeeded()
{
  CMBaseObjectGetDerivedStorage();
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  if (Mutable)
  {
    v1 = Mutable;
    CFDictionaryApplyBlock();
    CFArrayGetCount(v1);
    CFArrayApplyBlock();
    CFRelease(v1);
  }

  else
  {
    endpointAggregate_unregisterCommChannelsForSubEndpointAndNotifyClientIfNeeded_cold_1();
  }
}

void __endpointAggregate_unregisterCommChannelsForSubEndpointAndNotifyClientIfNeeded_block_invoke(uint64_t a1, void *value, CFTypeRef cf2)
{
  v5 = *(a1 + 32);
  if (!v5 || CFEqual(v5, cf2))
  {
    v6 = *(a1 + 40);

    CFArrayAppendValue(v6, value);
  }
}

void endpointAggregate_unregisterCommChannelAndNotifyClientIfNeeded(const void *a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFDictionaryContainsKey(*(DerivedStorage + 168), a2))
  {
    APEndpointCallRCDelegateDidCloseAsync(a1, *(DerivedStorage + 120), a2, *(DerivedStorage + 400), *(DerivedStorage + 240), *(DerivedStorage + 256));
    if (gLogCategory_APEndpointAggregate <= 50 && (gLogCategory_APEndpointAggregate != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v5 = *(DerivedStorage + 168);

    CFDictionaryRemoveValue(v5, a2);
  }
}

__CFString *endpointAggregate_subEndpointSupportProtocolCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"APEndpointCluster <FigEndpointSubEndpointSupportProtocol> on <%p>", a1);
  return Mutable;
}

uint64_t endpointAggregate_Activate(const void *a1, uint64_t a2, CFTypeRef a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (gLogCategory_APEndpointAggregate <= 50 && (gLogCategory_APEndpointAggregate != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (a3 && (v9 = CFGetTypeID(a3), v9 != CFDictionaryGetTypeID()))
  {
    endpointAggregate_Activate_cold_1();
    v11 = 4294950576;
  }

  else if (*(DerivedStorage + 40))
  {
    endpointAggregate_Activate_cold_2();
    v11 = 4294950569;
  }

  else if (*(DerivedStorage + 44))
  {
    endpointAggregate_Activate_cold_3();
    v11 = 4294950573;
  }

  else
  {
    v10 = CMBaseObjectGetDerivedStorage();
    if (CFDictionaryGetCount(*(v10 + 8)))
    {
      endpointAggregate_Activate_cold_4();
      v11 = 4294895043;
    }

    else
    {
      v11 = endpointAggregate_copyActivationOptionsToStorage(a1, a2, a3, *(DerivedStorage + 408) != 3, 1);
      if (v11)
      {
        endpointAggregate_Activate_cold_5();
      }

      else
      {
        *(DerivedStorage + 264) = 0u;
        *(DerivedStorage + 280) = 0u;
        *(DerivedStorage + 304) = 0u;
        *(DerivedStorage + 320) = 0u;
        *(DerivedStorage + 296) = 0;
        *(DerivedStorage + 304) = a1;
        *(DerivedStorage + 264) = a1;
        *(DerivedStorage + 272) = endpointAggregate_handleAuthRequiredInternal;
        *(DerivedStorage + 288) = endpointAggregate_handleConnectedStateChangedInternal;
        *(DerivedStorage + 280) = endpointAggregate_handleFailedInternal;
        *(DerivedStorage + 320) = endpointAggregate_handleDidReceiveDataFromCommChannelInternal;
        *(DerivedStorage + 328) = endpointAggregate_handleDidCloseCommChannelInternal;
        *(DerivedStorage + 48) = a2;
        *(DerivedStorage + 40) = 1;
        ++*(DerivedStorage + 120);
      }
    }
  }

  v12 = CFRetain(a1);
  if (a3)
  {
    a3 = CFRetain(a3);
  }

  v13 = *(DerivedStorage + 80);
  if (v13)
  {
    v14 = CFRetain(v13);
  }

  else
  {
    v14 = 0;
  }

  if (*(DerivedStorage + 408) != 3)
  {
    APSDispatchAsyncFHelper();
    goto LABEL_34;
  }

  v15 = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointAggregate <= 50 && (gLogCategory_APEndpointAggregate != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (v11)
  {
    APSLogErrorAt();
    if (gLogCategory_APEndpointAggregate <= 90 && (gLogCategory_APEndpointAggregate != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    endpointAggregate_clearActivationState(v12);
    if (!a4)
    {
      goto LABEL_30;
    }
  }

  else
  {
    *(v15 + 56) = a2;
    *(v15 + 40) = 2;
    if (gLogCategory_APEndpointAggregate <= 50 && (gLogCategory_APEndpointAggregate != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    if (!a4)
    {
      goto LABEL_30;
    }
  }

  CFRetain(v12);
  APSDispatchAsyncFHelper();
LABEL_30:
  CFRelease(v12);
  if (a3)
  {
    CFRelease(a3);
  }

  if (v14)
  {
    CFRelease(v14);
  }

LABEL_34:
  FigSimpleMutexUnlock();
  return v11;
}

uint64_t endpointAggregate_Deactivate(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointAggregate <= 50 && (gLogCategory_APEndpointAggregate != -1 || _LogCategory_Initialize()))
  {
    endpointAggregate_Deactivate_cold_1();
  }

  FigSimpleMutexLock();
  if (*(DerivedStorage + 44))
  {
    v3 = 4294950573;
LABEL_13:
    APSLogErrorAt();
    goto LABEL_8;
  }

  if (*(DerivedStorage + 40) != 2)
  {
    v3 = 4294951716;
    goto LABEL_13;
  }

  if (endpointAggregate_getSubEndpointCount(a1, 2))
  {
    v3 = 4294895043;
    goto LABEL_13;
  }

  v3 = 0;
LABEL_8:
  CFRetain(a1);
  APSDispatchAsyncFHelper();
  FigSimpleMutexUnlock();
  return v3;
}

uint64_t endpointAggregate_Dissociate()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (!*(DerivedStorage + 44))
  {
    if (gLogCategory_APEndpointAggregate <= 50 && (gLogCategory_APEndpointAggregate != -1 || _LogCategory_Initialize()))
    {
      endpointAggregate_Dissociate_cold_1();
    }

    *(DerivedStorage + 44) = 1;
    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();
  }

  FigSimpleMutexUnlock();
  return 0;
}

uint64_t endpointAggregate_SetDelegate(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 + 16);
    v10[0] = *a2;
    v10[1] = v3;
    v11 = *(a2 + 32);
    v8[1] = 0;
    v8[0] = *&v10[0];
    v9 = *(a2 + 48);
    v4 = endpointAggregate_SetDelegateRouting(a1, v10);
    if (v4)
    {
      v5 = v4;
      endpointAggregate_SetDelegate_cold_1();
    }

    else
    {
      v5 = endpointAggregate_SetDelegateRemoteControl(a1, v8);
      if (v5)
      {
        endpointAggregate_SetDelegate_cold_2();
      }
    }
  }

  else
  {
    v6 = endpointAggregate_SetDelegateRouting(a1, 0);
    if (v6)
    {
      v5 = v6;
      endpointAggregate_SetDelegate_cold_3();
    }

    else
    {
      v5 = endpointAggregate_SetDelegateRemoteControl(a1, 0);
      if (v5)
      {
        endpointAggregate_SetDelegate_cold_4();
      }
    }
  }

  return v5;
}

uint64_t endpointAggregate_SetDelegateRouting(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 44))
  {
    endpointAggregate_SetDelegateRouting_cold_1();
    a2 = 4294950573;
  }

  else
  {
    if (gLogCategory_APEndpointAggregate <= 50 && (gLogCategory_APEndpointAggregate != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v4 = *(DerivedStorage + 248);
    if (v4)
    {
      CFRelease(v4);
      *(DerivedStorage + 248) = 0;
    }

    if (a2)
    {
      v5 = *a2;
      v6 = *(a2 + 16);
      *(DerivedStorage + 208) = *(a2 + 32);
      *(DerivedStorage + 176) = v5;
      *(DerivedStorage + 192) = v6;
      a2 = 0;
      *(DerivedStorage + 248) = FigCFWeakReferenceHolderCreateWithReferencedObject();
    }

    else
    {
      *(DerivedStorage + 208) = 0;
      *(DerivedStorage + 176) = 0u;
      *(DerivedStorage + 192) = 0u;
    }
  }

  FigSimpleMutexUnlock();
  return a2;
}

uint64_t endpointAggregate_SetDelegateRemoteControl(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 44))
  {
    endpointAggregate_SetDelegateRemoteControl_cold_1();
    a2 = 4294950573;
  }

  else
  {
    if (gLogCategory_APEndpointAggregate <= 50 && (gLogCategory_APEndpointAggregate != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v4 = *(DerivedStorage + 256);
    if (v4)
    {
      CFRelease(v4);
      *(DerivedStorage + 256) = 0;
    }

    if (a2)
    {
      v5 = *a2;
      *(DerivedStorage + 232) = *(a2 + 16);
      *(DerivedStorage + 216) = v5;
      a2 = 0;
      *(DerivedStorage + 256) = FigCFWeakReferenceHolderCreateWithReferencedObject();
    }

    else
    {
      *(DerivedStorage + 232) = 0u;
      *(DerivedStorage + 216) = 0u;
    }
  }

  FigSimpleMutexUnlock();
  return a2;
}

uint64_t endpointAggregate_CreatePlaybackSession(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 40) != 2)
  {
    endpointAggregate_CreatePlaybackSession_cold_1();
    v6 = 4294951716;
    goto LABEL_8;
  }

  v4 = *(DerivedStorage + 152);
  if (!v4)
  {
    endpointAggregate_CreatePlaybackSession_cold_2();
    v6 = 4294895039;
    goto LABEL_8;
  }

  v5 = *(*(CMBaseObjectGetVTable() + 16) + 72);
  if (!v5)
  {
    v6 = 4294954514;
LABEL_7:
    APSLogErrorAt();
    goto LABEL_8;
  }

  v6 = v5(v4, a2);
  if (v6)
  {
    goto LABEL_7;
  }

LABEL_8:
  FigSimpleMutexUnlock();
  return v6;
}

uint64_t endpointAggregate_UpdateFeatures(const void *a1, uint64_t a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointAggregate <= 50 && (gLogCategory_APEndpointAggregate != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  FigSimpleMutexLock();
  if (*(DerivedStorage + 408) == 3)
  {
    endpointAggregate_UpdateFeatures_cold_2();
    v6 = 4294950570;
  }

  else if (*(DerivedStorage + 40))
  {
    if (a1)
    {
      CFRetain(a1);
    }

    if (a3)
    {
      CFRetain(a3);
    }

    APSDispatchAsyncFHelper();
    v6 = 0;
  }

  else
  {
    endpointAggregate_UpdateFeatures_cold_1();
    v6 = 4294949690;
  }

  FigSimpleMutexUnlock();
  return v6;
}

uint64_t endpointAggregate_copyActivationOptionsToStorage(uint64_t a1, char a2, const void *a3, int a4, int a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v54 = 0;
  v11 = *(DerivedStorage + 112);
  if (v11)
  {
    CFRelease(v11);
    *(DerivedStorage + 112) = 0;
  }

  v52 = a2;
  if (a3)
  {
    v12 = *MEMORY[0x277CC09D8];
    if (CFDictionaryContainsKey(a3, *MEMORY[0x277CC09D8]))
    {
      MutableCopy = CFRetain(a3);
    }

    else
    {
      v17 = APSCreateNewUUIDString();
      MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x277CBECE8], 0, a3);
      CFDictionaryAddValue(MutableCopy, v12, v17);
      if (v17)
      {
        CFRelease(v17);
      }
    }

    *(DerivedStorage + 112) = MutableCopy;
    v18 = CFDictionaryGetValue(a3, *MEMORY[0x277CC09E8]);
    v14 = CFDictionaryGetValue(a3, *MEMORY[0x277CC09F8]);
    v16 = CFDictionaryGetInt64() == 0;
    v15 = *(DerivedStorage + 64);
    *(DerivedStorage + 64) = v18;
    if (v18)
    {
      CFRetain(v18);
    }
  }

  else
  {
    v14 = 0;
    *(DerivedStorage + 112) = 0;
    v15 = *(DerivedStorage + 64);
    v16 = 1;
    *(DerivedStorage + 64) = 0;
  }

  if (v15)
  {
    CFRelease(v15);
  }

  v19 = *(DerivedStorage + 72);
  *(DerivedStorage + 72) = v14;
  if (v14)
  {
    CFRetain(v14);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (!a4)
  {
    v34 = 0;
    v25 = 0;
    Mutable = 0;
LABEL_83:
    AudioStreamOptions = 0;
    goto LABEL_84;
  }

  v20 = FigCFEqual();
  Int64 = APSSettingsGetInt64();
  v22 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    endpointAggregate_copyActivationOptionsToStorage_cold_5();
    v34 = 0;
    v25 = 0;
    AudioStreamOptions = 4294950575;
    goto LABEL_84;
  }

  v51 = a1;
  v24 = a5;
  v25 = CFDictionaryCreateMutable(v22, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v26 = *MEMORY[0x277CBED28];
  CFDictionarySetValue(v25, @"IsSharedAudioEngine", *MEMORY[0x277CBED28]);
  v27 = *MEMORY[0x277CBED10];
  if (v16)
  {
    v28 = *MEMORY[0x277CBED10];
  }

  else
  {
    v28 = v26;
  }

  CFDictionarySetValue(v25, @"IsHTGroup", v28);
  FigCFDictionarySetValueFromKeyInDict();
  v29 = MEMORY[0x277CEA278];
  if (Int64)
  {
    v29 = MEMORY[0x277CEA268];
  }

  CFDictionarySetValue(Mutable, @"PreferredNetworkClockType", *v29);
  CFDictionarySetValue(Mutable, @"AllowP2PForNTP", v26);
  if (v20)
  {
    v30 = v26;
  }

  else
  {
    v30 = v27;
  }

  CFDictionarySetValue(Mutable, @"IgnoreClientPIDForMediaRemote", v30);
  CFDictionarySetValue(Mutable, @"AudioEngineOptions", v25);
  v31 = *(DerivedStorage + 448);
  if (v31)
  {
    CFDictionarySetValue(Mutable, @"NetworkClock", v31);
  }

  SharedContext = APEndpointCopyFromActivationOptionsOrCreateSharedContext(a3, v52, Mutable, &cf, 0, &v54);
  if (SharedContext)
  {
    AudioStreamOptions = SharedContext;
    endpointAggregate_copyActivationOptionsToStorage_cold_1();
    goto LABEL_105;
  }

  if (v24)
  {
    v33 = CMBaseObjectGetDerivedStorage();
    if (*(v33 + 408) || (v35 = *(CMBaseObjectGetDerivedStorage() + 488), v35 > 0xD))
    {
      LOBYTE(v36) = 1;
      if (!a3)
      {
        goto LABEL_42;
      }
    }

    else
    {
      v36 = 0x1F6Fu >> v35;
      if (!a3)
      {
        goto LABEL_42;
      }
    }

    v37 = CFDictionaryGetValue(a3, @"GroupID");
    if (v37)
    {
      v38 = CFRetain(v37);
      value = v38;
      if (v38)
      {
        v34 = v38;
        v39 = 0;
        goto LABEL_58;
      }

      goto LABEL_43;
    }

LABEL_42:
    value = 0;
LABEL_43:
    if (v36)
    {
      if (*(v33 + 408) == 2 && (endpointAggregate_isATVInHTGroup() || endpointAggregate_isPersistentConnection() && *(v33 + 488) == 7))
      {
        v34 = 0;
        v39 = 1;
        goto LABEL_58;
      }

      v41 = APSCreateNewUUIDString();
      value = v41;
      if (gLogCategory_APEndpointAggregate <= 50 && (gLogCategory_APEndpointAggregate != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      if (v41)
      {
        v39 = 0;
        goto LABEL_57;
      }

      endpointAggregate_copyActivationOptionsToStorage_cold_3();
      AudioStreamOptions = 4294950575;
    }

    else
    {
      GroupID = endpointAggregate_generateGroupID(v51, &value);
      if (!GroupID)
      {
        v39 = 1;
LABEL_57:
        v34 = value;
LABEL_58:
        if (gLogCategory_APEndpointAggregate <= 50 && (gLogCategory_APEndpointAggregate != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        v42 = *(DerivedStorage + 88);
        *(DerivedStorage + 88) = v34;
        if (v34)
        {
          CFRetain(v34);
        }

        if (v42)
        {
          CFRelease(v42);
        }

        *(DerivedStorage + 96) = v39;
        goto LABEL_67;
      }

      AudioStreamOptions = GroupID;
      endpointAggregate_copyActivationOptionsToStorage_cold_2();
    }

    if (value)
    {
      CFRelease(value);
    }

    APSLogErrorAt();
LABEL_105:
    v34 = 0;
    goto LABEL_84;
  }

  v34 = 0;
LABEL_67:
  v43 = cf;
  v44 = CMBaseObjectGetDerivedStorage();
  value = 0;
  if (!*(v44 + 456))
  {
    goto LABEL_75;
  }

  v45 = v44;
  if (!APSIsLowLatencyAudioSendingEnabled() || (v46 = *MEMORY[0x277CC1970], CFDictionaryContainsKey(*(v45 + 104), *MEMORY[0x277CC1970])))
  {
    AudioStreamOptions = 0;
  }

  else
  {
    AudioStreamOptions = APEndpointCreateAudioStreamOptions(v46, v43, v25);
    if (AudioStreamOptions)
    {
      endpointAggregate_copyActivationOptionsToStorage_cold_4();
    }

    else
    {
      CFDictionarySetValue(*(v45 + 104), v46, value);
    }
  }

  if (value)
  {
    CFRelease(value);
  }

  if (!AudioStreamOptions)
  {
LABEL_75:
    CFDictionaryMergeDictionary();
    if (gLogCategory_APEndpointAggregate <= 50 && (gLogCategory_APEndpointAggregate != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v48 = *(DerivedStorage + 80);
    v49 = cf;
    *(DerivedStorage + 80) = cf;
    if (v49)
    {
      CFRetain(v49);
    }

    if (v48)
    {
      CFRelease(v48);
    }

    goto LABEL_83;
  }

  APSLogErrorAt();
LABEL_84:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v34)
  {
    CFRelease(v34);
  }

  if (v54)
  {
    CFRelease(v54);
  }

  if (v25)
  {
    CFRelease(v25);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return AudioStreamOptions;
}

uint64_t endpointAggregate_handleAuthRequiredInternal(const void *a1, uint64_t a2, uint64_t a3, const void *a4, const void *a5, uint64_t a6, uint64_t a7)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 184))
  {
    if (*(DerivedStorage + 248) && (v13 = FigCFWeakReferenceHolderCopyReferencedObject(), *(DerivedStorage + 248)) && !v13)
    {
      if (gLogCategory_APEndpointAggregate <= 90 && (gLogCategory_APEndpointAggregate != -1 || _LogCategory_Initialize()))
      {
        endpointAggregate_handleAuthRequiredInternal_cold_1();
      }
    }

    else
    {
      v14 = malloc_type_calloc(1uLL, 0x18uLL, 0xA00402214FCE6uLL);
      if (a1)
      {
        v15 = CFRetain(a1);
      }

      else
      {
        v15 = 0;
      }

      *v14 = v15;
      v14[1] = a6;
      v14[2] = a7;
      if (a4)
      {
        CFRetain(a4);
      }

      if (a1)
      {
        CFRetain(a1);
      }

      if (a5)
      {
        CFRetain(a5);
      }

      APSDispatchAsyncFHelper();
    }
  }

  return FigSimpleMutexUnlock();
}

uint64_t endpointAggregate_handleConnectedStateChangedInternal(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 200))
  {
    if (*(DerivedStorage + 248) && (v8 = FigCFWeakReferenceHolderCopyReferencedObject(), *(DerivedStorage + 248)) && !v8)
    {
      if (gLogCategory_APEndpointAggregate <= 90 && (gLogCategory_APEndpointAggregate != -1 || _LogCategory_Initialize()))
      {
        endpointAggregate_handleConnectedStateChangedInternal_cold_1();
      }
    }

    else
    {
      if (a5)
      {
        CFRetain(a5);
      }

      if (a1)
      {
        CFRetain(a1);
      }

      APSDispatchAsyncFHelper();
    }
  }

  return FigSimpleMutexUnlock();
}

void endpointAggregate_handleFailedInternal(const void *a1, uint64_t a2, const __CFDictionary *a3, const void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (!*(DerivedStorage + 192))
  {
LABEL_8:

    FigSimpleMutexUnlock();
    return;
  }

  if (*(DerivedStorage + 248))
  {
    v8 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (*(DerivedStorage + 248))
    {
      if (!v8)
      {
        if (gLogCategory_APEndpointAggregate <= 90 && (gLogCategory_APEndpointAggregate != -1 || _LogCategory_Initialize()))
        {
          endpointAggregate_handleFailedInternal_cold_1();
        }

        goto LABEL_8;
      }
    }
  }

  if (a3)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, a3);
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  }

  v10 = MutableCopy;
  if (MutableCopy)
  {
    CFDictionaryAddValue(MutableCopy, *MEMORY[0x277CC0A10], a1);
    CFDictionarySetInt64();
    if (a4)
    {
      CFRetain(a4);
    }

    CFRetain(v10);
    APSDispatchAsyncFHelper();
    FigSimpleMutexUnlock();
    CFRelease(v10);
  }

  else
  {
    endpointAggregate_handleFailedInternal_cold_2();
  }
}

uint64_t endpointAggregate_handleDidReceiveDataFromCommChannelInternal(const void *a1, uint64_t a2, const void *a3, const void *a4, const void *a5)
{
  if (!a1)
  {
    return endpointAggregate_handleDidReceiveDataFromCommChannelInternal_cold_8();
  }

  if (!a3)
  {
    return endpointAggregate_handleDidReceiveDataFromCommChannelInternal_cold_7();
  }

  if (!a4)
  {
    return endpointAggregate_handleDidReceiveDataFromCommChannelInternal_cold_6();
  }

  if (!a5)
  {
    return endpointAggregate_handleDidReceiveDataFromCommChannelInternal_cold_5();
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 44))
  {
    endpointAggregate_handleDidReceiveDataFromCommChannelInternal_cold_1();
  }

  else if (*(DerivedStorage + 40) == 2)
  {
    if (endpointAggregate_getSubEndpointCount(a5, 1) <= 0)
    {
      endpointAggregate_handleDidReceiveDataFromCommChannelInternal_cold_4();
    }

    else if (CFDictionaryContainsKey(*(DerivedStorage + 8), a1))
    {
      if (!CFDictionaryContainsKey(*(DerivedStorage + 168), a3))
      {
        if (gLogCategory_APEndpointAggregate <= 50 && (gLogCategory_APEndpointAggregate != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        CFDictionarySetValue(*(DerivedStorage + 168), a3, a1);
      }

      APEndpointCallRCDelegateDidReceiveDataAsync(a5, *(DerivedStorage + 120), a3, a4, *(DerivedStorage + 400), *(DerivedStorage + 232), *(DerivedStorage + 256));
    }

    else
    {
      endpointAggregate_handleDidReceiveDataFromCommChannelInternal_cold_3();
    }
  }

  else
  {
    endpointAggregate_handleDidReceiveDataFromCommChannelInternal_cold_2();
  }

  return FigSimpleMutexUnlock();
}

uint64_t endpointAggregate_handleDidCloseCommChannelInternal(uint64_t a1, uint64_t a2, const void *a3, const void *a4)
{
  if (!a1)
  {
    return endpointAggregate_handleDidCloseCommChannelInternal_cold_4();
  }

  if (!a3)
  {
    return endpointAggregate_handleDidCloseCommChannelInternal_cold_3();
  }

  if (!a4)
  {
    return endpointAggregate_handleDidCloseCommChannelInternal_cold_2();
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 44))
  {
    endpointAggregate_handleDidCloseCommChannelInternal_cold_1();
  }

  else
  {
    endpointAggregate_unregisterCommChannelAndNotifyClientIfNeeded(a4, a3);
  }

  return FigSimpleMutexUnlock();
}

void endpointAggregate_activateInternal(uint64_t a1)
{
  v2 = *a1;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(a1 + 32))
  {
    APSLogErrorAt();
    if (*(a1 + 32))
    {
LABEL_9:
      if (gLogCategory_APEndpointAggregate <= 90 && (gLogCategory_APEndpointAggregate != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      FigSimpleMutexLock();
      if (*(a1 + 16) == *(DerivedStorage + 120) && *(DerivedStorage + 40) == 1)
      {
        endpointAggregate_clearActivationState(v2);
      }

      FigSimpleMutexUnlock();
      goto LABEL_17;
    }
  }

  else
  {
    if (gLogCategory_APEndpointAggregate <= 50 && (gLogCategory_APEndpointAggregate != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    FigSimpleMutexLock();
    if (*(a1 + 16) != *(DerivedStorage + 120) || *(DerivedStorage + 40) != 1)
    {
      FigSimpleMutexUnlock();
      APSLogErrorAt();
      goto LABEL_9;
    }

    *(DerivedStorage + 40) = 2;
    v6 = *(a1 + 8);
    *(DerivedStorage + 48) = 0;
    *(DerivedStorage + 56) = v6;
    endpointAggregate_ensureLocalPlaybackIsEnabledOrDisabled(v2);
    FigSimpleMutexUnlock();
  }

  if (gLogCategory_APEndpointAggregate <= 50 && (gLogCategory_APEndpointAggregate != -1 || _LogCategory_Initialize()))
  {
    endpointAggregate_activateInternal_cold_1();
  }

LABEL_17:
  if (*(a1 + 40))
  {
    CFRetain(v2);
    APSDispatchAsyncFHelper();
  }

  CFRelease(*a1);
  v4 = *(a1 + 24);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(a1 + 56);
  if (v5)
  {
    CFRelease(v5);
  }
}

uint64_t endpointAggregate_isPersistentConnection()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 480);
  if (v1)
  {
    return v1 == *MEMORY[0x277CBED28];
  }

  v1 = *(DerivedStorage + 472);
  if (v1)
  {
    return v1 == *MEMORY[0x277CBED28];
  }

  if (!*(DerivedStorage + 456))
  {
    return 0;
  }

  return APSIsMemberOfPersistentGroup();
}

void endpointAggregate_authHandlingCompletionCallbackInternal(int a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4[1];
  if (v5)
  {
    v5(*a4, a2, a3, a4[2]);
  }

  if (*a4)
  {
    CFRelease(*a4);
  }

  free(a4);
}

void endpointAggregate_callDelegateHandleAuthRequiredInternal(uint64_t a1)
{
  (*(a1 + 16))(*a1, *(a1 + 8), *(a1 + 24), *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56));
  if (*a1)
  {
    CFRelease(*a1);
  }

  v2 = *(a1 + 32);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 40);
  if (v4)
  {

    CFRelease(v4);
  }
}

void endpointAggregate_callDelegateHandleConnectedStateChangedInternal(uint64_t a1)
{
  (*(a1 + 8))(*a1, *(a1 + 24), *(a1 + 32), *(a1 + 16), *(a1 + 40));
  if (*a1)
  {
    CFRelease(*a1);
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {

    CFRelease(v3);
  }
}

void endpointAggregate_callDelegateHandleFailedInternal(uint64_t a1)
{
  (*(a1 + 8))(*a1, *(a1 + 16), *(a1 + 24), *(a1 + 32));
  if (*a1)
  {
    CFRelease(*a1);
  }

  v2 = *(a1 + 32);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 24);
  if (v3)
  {

    CFRelease(v3);
  }
}

void endpointAggregate_deactivateInternal(uint64_t a1)
{
  v2 = *a1;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(a1 + 32))
  {
    APSLogErrorAt();
  }

  else
  {
    FigSimpleMutexLock();
    if (*(a1 + 16) == *(DerivedStorage + 120) && *(DerivedStorage + 40))
    {
      endpointAggregate_clearActivationState(v2);
      FigSimpleMutexUnlock();
    }

    else
    {
      FigSimpleMutexUnlock();
      APSLogErrorAt();
    }
  }

  if (*(a1 + 40))
  {
    CFRetain(v2);
    APSDispatchAsyncFHelper();
  }

  CFRelease(*a1);
}

void endpointAggregate_updateFeaturesInternalWithContext(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v22 = *(a1 + 32);
  v23[0] = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = DerivedStorage;
  v8 = *(DerivedStorage + 48);
  if (!v8)
  {
    v8 = *(DerivedStorage + 56);
  }

  if (gLogCategory_APEndpointAggregate <= 50 && (gLogCategory_APEndpointAggregate != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v9 = v8 | v3;
  if ((v8 | v3) == v8 && v9 == v3)
  {
    goto LABEL_32;
  }

  if (v9 != v8 && v9 != v3)
  {
    v23[0] = -6705;
    goto LABEL_32;
  }

  isPersistentConnection = endpointAggregate_isPersistentConnection();
  v23[0] = endpointAggregate_copyActivationOptionsToStorage(v2, v3, v5, (v8 | v3) != v8, isPersistentConnection);
  if (v23[0])
  {
    endpointAggregate_updateFeaturesInternalWithContext_cold_1();
    goto LABEL_32;
  }

  v13 = *MEMORY[0x277CBECE8];
  MutableCopy = FigCFDictionaryCreateMutableCopy();
  if (!MutableCopy)
  {
    endpointAggregate_updateFeaturesInternalWithContext_cold_4();
LABEL_32:
    CFRetain(v2);
    APSDispatchAsyncFHelper();
    if (v23[0])
    {
      endpointAggregate_updateFeaturesInternalWithContext_cold_5();
    }

    goto LABEL_34;
  }

  v15 = MutableCopy;
  v16 = MEMORY[0x277CBED28];
  if (*(v7 + 408) != 2)
  {
    v16 = MEMORY[0x277CBED10];
  }

  CFDictionarySetValue(MutableCopy, @"IsPartOfCluster", *v16);
  if (v9 == v8)
  {
    v17 = 0;
  }

  else
  {
    v17 = CFStringCreateF();
    CFDictionarySetValue(v15, @"ParentContextID", v17);
  }

  CFDictionarySetValue(v15, @"AudioOptions", *(v7 + 104));
  *(v7 + 48) = v3;
  v18 = malloc_type_calloc(1uLL, 0x40uLL, 0x10A00407E6BCD4EuLL);
  if (v18)
  {
    v19 = v18;
    *v18 = v2;
    CFRetain(v2);
    v20 = *(v7 + 120);
    v19[1] = v3;
    v19[2] = v20;
    *(v19 + 6) = 0;
    v19[4] = v4;
    v19[5] = v22;
    v19[6] = CFDictionaryCreateMutable(v13, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v19[7] = CFDictionaryGetCount(*(v7 + 8));
    if (gLogCategory_APEndpointAggregate <= 50 && (gLogCategory_APEndpointAggregate != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    CFDictionaryApplyBlock();
  }

  else
  {
    endpointAggregate_updateFeaturesInternalWithContext_cold_3(v23);
  }

  CFRelease(v15);
  if (v17)
  {
    CFRelease(v17);
  }

  if (v23[0])
  {
    goto LABEL_32;
  }

LABEL_34:
  FigSimpleMutexUnlock();
  if (*a1)
  {
    CFRelease(*a1);
  }

  v21 = *(a1 + 16);
  if (v21)
  {
    CFRelease(v21);
  }
}

void __endpointAggregate_updateFeaturesInternal_block_invoke(void *a1, const void *a2)
{
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 80);
  if (v7)
  {
    v8 = v7(a2, v4, v5, endpointaggregate_handleSubEndpointUpdateFeaturesCompleted, v6);
  }

  else
  {
    v8 = -12782;
  }

  if (gLogCategory_APEndpointAggregate <= 50 && (gLogCategory_APEndpointAggregate != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (v8 == -12782)
  {
    if (a2)
    {
      CFRetain(a2);
    }

    v9 = a1[8];
    v10 = *(v9 + 400);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __endpointAggregate_updateFeaturesInternal_block_invoke_2;
    block[3] = &__block_descriptor_tmp_163;
    v11 = a1[4];
    block[4] = a2;
    block[5] = v11;
    v14 = -12782;
    v12 = a1[6];
    block[6] = v9;
    block[7] = v12;
    dispatch_async(v10, block);
  }
}

void endpointaggregate_handleSubEndpointUpdateFeaturesCompleted(const void *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    CFRetain(a1);
  }

  v11 = *(DerivedStorage + 400);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __endpointaggregate_handleSubEndpointUpdateFeaturesCompleted_block_invoke;
  block[3] = &__block_descriptor_tmp_165;
  block[4] = a1;
  block[5] = a2;
  v13 = a4;
  block[6] = a3;
  block[7] = a5;
  dispatch_async(v11, block);
}

void __endpointAggregate_updateFeaturesInternal_block_invoke_2(uint64_t a1)
{
  endpointaggregate_handleSubEndpointUpdateFeaturesCompletedInternal(*(a1 + 32), *(a1 + 64), *(a1 + 56));
  v2 = *(a1 + 32);
  if (v2)
  {

    CFRelease(v2);
  }
}

void endpointaggregate_handleSubEndpointUpdateFeaturesCompletedInternal(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointAggregate <= 50 && (gLogCategory_APEndpointAggregate != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  CFDictionarySetInt64();
  if (CFDictionaryGetCount(*(a3 + 48)) == *(a3 + 56))
  {
    v15 = 0u;
    memset(v14, 0, sizeof(v14));
    v10 = 0;
    v11 = &v10;
    v12 = 0x2000000000;
    v13 = 0;
    v6 = 0;
    v7 = &v6;
    v8 = 0x2000000000;
    v9 = 0;
    CFDictionaryApplyBlock();
    FigSimpleMutexLock();
    if (gLogCategory_APEndpointAggregate <= 50 && (gLogCategory_APEndpointAggregate != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    if (*(v7 + 24))
    {
      *(v11 + 6) = 0;
    }

    else if (*(v11 + 6))
    {
      goto LABEL_17;
    }

    *(DerivedStorage + 56) = *(a3 + 8);
LABEL_17:
    *(DerivedStorage + 48) = 0;
    FigSimpleMutexUnlock();
    *&v14[0] = CFRetain(*a3);
    *(v14 + 8) = vextq_s8(*(a3 + 8), *(a3 + 8), 8uLL);
    DWORD2(v14[1]) = *(v11 + 6);
    v15 = *(a3 + 32);
    APSDispatchAsyncFHelper();
    if (*a3)
    {
      CFRelease(*a3);
    }

    v5 = *(a3 + 48);
    if (v5)
    {
      CFRelease(v5);
    }

    free(a3);
    _Block_object_dispose(&v6, 8);
    _Block_object_dispose(&v10, 8);
    return;
  }

  if (gLogCategory_APEndpointAggregate <= 50 && (gLogCategory_APEndpointAggregate != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }
}

void __endpointaggregate_handleSubEndpointUpdateFeaturesCompleted_block_invoke(uint64_t a1)
{
  endpointaggregate_handleSubEndpointUpdateFeaturesCompletedInternal(*(a1 + 32), *(a1 + 64), *(a1 + 56));
  v2 = *(a1 + 32);
  if (v2)
  {

    CFRelease(v2);
  }
}

uint64_t __endpointaggregate_handleSubEndpointUpdateFeaturesCompletedInternal_block_invoke(uint64_t a1)
{
  result = FigCFNumberGetUInt64();
  v3 = *(*(a1 + 32) + 8);
  if (*(v3 + 24))
  {
    v4 = 1;
  }

  else
  {
    v4 = result == 0;
  }

  if (v4)
  {
    if (!result)
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
    }
  }

  else
  {
    *(v3 + 24) = result;
  }

  return result;
}

uint64_t endpointAggregate_DuckAudio(uint64_t a1, const __CFDictionary *a2)
{
  FigEndpointExtendedGetFigEndpoint();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointAggregate <= 50 && (gLogCategory_APEndpointAggregate != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  FigSimpleMutexLock();
  if (!a2)
  {
    v15 = 4294950576;
LABEL_33:
    APSLogErrorAt();
    FigSimpleMutexUnlock();
    return v15;
  }

  if (!CFDictionaryContainsKey(a2, *MEMORY[0x277CC0BA8]))
  {
    v15 = 4294950576;
    goto LABEL_33;
  }

  if (*(DerivedStorage + 40) != 2)
  {
    v15 = 4294951716;
    goto LABEL_33;
  }

  v4 = FigCFDictionaryCopyArrayOfKeys();
  if (!v4)
  {
    v15 = 4294950575;
    goto LABEL_33;
  }

  v5 = v4;
  Count = CFArrayGetCount(v4);
  if (Count < 1)
  {
LABEL_21:
    v14 = *(DerivedStorage + 336);
    *(DerivedStorage + 336) = a2;
    CFRetain(a2);
    if (v14)
    {
      CFRelease(v14);
    }

    v15 = 0;
  }

  else
  {
    v7 = Count;
    for (i = 0; i != v7; ++i)
    {
      if (CFArrayGetValueAtIndex(v5, i))
      {
        FigEndpointExtendedGetClassID();
        if (CMBaseObjectIsMemberOfClass())
        {
          continue;
        }
      }

      APSLogErrorAt();
      v15 = 4294950570;
      goto LABEL_25;
    }

    v9 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v5, v9);
      if (!ValueAtIndex || (v11 = ValueAtIndex, FigEndpointExtendedGetClassID(), !CMBaseObjectIsMemberOfClass()))
      {
        v11 = 0;
      }

      v12 = *(*(CMBaseObjectGetVTable() + 24) + 48);
      if (!v12)
      {
        v15 = 4294954514;
        goto LABEL_28;
      }

      v13 = v12(v11, a2);
      if (v13)
      {
        break;
      }

      if (v7 == ++v9)
      {
        goto LABEL_21;
      }
    }

    v15 = v13;
LABEL_28:
    APSLogErrorAt();
  }

LABEL_25:
  FigSimpleMutexUnlock();
  CFRelease(v5);
  return v15;
}

uint64_t endpointAggregate_SendCommand(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, void, uint64_t), uint64_t a5)
{
  FigEndpointExtendedGetFigEndpoint();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 40) != 2)
  {
    v19 = 4294951716;
LABEL_19:
    APSLogErrorAt();
    v12 = 0;
    goto LABEL_12;
  }

  v11 = FigCFDictionaryCopyArrayOfKeys();
  if (!v11)
  {
    v19 = 4294950575;
    goto LABEL_19;
  }

  v12 = v11;
  Count = CFArrayGetCount(v11);
  if (Count >= 1)
  {
    v14 = Count;
    for (i = 0; i != v14; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v12, i);
      if (!ValueAtIndex || (v17 = ValueAtIndex, FigEndpointExtendedGetClassID(), !CMBaseObjectIsMemberOfClass()))
      {
        v17 = 0;
      }

      v18 = *(*(CMBaseObjectGetVTable() + 24) + 72);
      if (v18)
      {
        v18(v17, a2, a3, 0, 0);
      }
    }
  }

  v19 = 0;
LABEL_12:
  FigSimpleMutexUnlock();
  if (a4)
  {
    a4(a1, v19, 0, a5);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  return v19;
}

uint64_t endpointAggregate_SendData(const void *a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  FigEndpoint = FigEndpointExtendedGetFigEndpoint();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v12 = endpointAggregate_copySubEndpointExtendedForRelayCommChannel(FigEndpoint, a2);
  if (v12)
  {
    RCSendDataCompletionContext = APEndpointCreateRCSendDataCompletionContext(a1, a2, *(DerivedStorage + 400), a4, a5);
    if (RCSendDataCompletionContext)
    {
      v14 = RCSendDataCompletionContext;
      v15 = *(*(CMBaseObjectGetVTable() + 24) + 96);
      if (v15)
      {
        v15(v12, a2, a3, APEndpointCallRCSendDataCompletionFromContextAsync, v14);
      }

LABEL_5:
      CFRelease(v12);
      return 0;
    }

    v17 = -16721;
  }

  else
  {
    v17 = -16725;
  }

  APSLogErrorAt();
  if (a4)
  {
    APEndpointCallRCSendDataCompletionAsync(a1, a2, v17, *(DerivedStorage + 400), a4, a5);
  }

  if (v12)
  {
    goto LABEL_5;
  }

  return 0;
}

uint64_t endpointAggregate_AcquireAndCopyResource(uint64_t a1, uint64_t a2, const __CFDictionary *a3, void *a4)
{
  FigEndpointExtendedGetFigEndpoint();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointAggregate <= 50 && (gLogCategory_APEndpointAggregate != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  FigSimpleMutexLock();
  if (*(DerivedStorage + 40) != 2)
  {
    v15 = 4294949690;
    goto LABEL_23;
  }

  if (FigCFEqual())
  {
    v7 = CMBaseObjectGetDerivedStorage();
    if (a3)
    {
      v8 = v7;
      Value = CFDictionaryGetValue(a3, *MEMORY[0x277CC09A8]);
      if (Value)
      {
        v10 = Value;
        v11 = *(v8 + 128);
        if (v11)
        {
          v12 = CFDictionaryGetValue(v11, v10);
          if (v12)
          {
            v13 = CFRetain(v12);
            if (v13)
            {
              v14 = v13;
              if (gLogCategory_APEndpointAggregate <= 50 && (gLogCategory_APEndpointAggregate != -1 || _LogCategory_Initialize()))
              {
                LogPrintF();
              }

              v15 = 0;
              *a4 = v14;
              goto LABEL_23;
            }
          }

          endpointAggregate_AcquireAndCopyResource_cold_1();
        }

        else
        {
          endpointAggregate_AcquireAndCopyResource_cold_2();
        }

        v15 = 4294950571;
        goto LABEL_23;
      }

      endpointAggregate_AcquireAndCopyResource_cold_3();
    }

    else
    {
      endpointAggregate_AcquireAndCopyResource_cold_4();
    }

    v15 = 4294950576;
    goto LABEL_23;
  }

  if (gLogCategory_APEndpointAggregate <= 90 && (gLogCategory_APEndpointAggregate != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v15 = 4294950570;
LABEL_23:
  FigSimpleMutexUnlock();
  return v15;
}

uint64_t endpointAggregate_RelinquishResource(uint64_t a1, uint64_t a2, uint64_t a3)
{
  FigEndpointExtendedGetFigEndpoint();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointAggregate <= 50 && (gLogCategory_APEndpointAggregate != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  FigSimpleMutexLock();
  if (*(DerivedStorage + 40) != 2)
  {
    v5 = 4294949690;
LABEL_13:
    APSLogErrorAt();
    goto LABEL_9;
  }

  if (!a3)
  {
    v5 = 4294950576;
    goto LABEL_13;
  }

  if (!FigCFEqual())
  {
    v5 = 4294950570;
    goto LABEL_13;
  }

  v5 = 0;
LABEL_9:
  FigSimpleMutexUnlock();
  return v5;
}

void endpointAggregate_CloseAllCommChannels()
{
  FigEndpointExtendedGetFigEndpoint();
  CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v0 = FigCFDictionaryCopyArrayOfKeys();
  FigSimpleMutexUnlock();
  if (v0)
  {
    CFArrayGetCount(v0);
    CFArrayApplyBlock();
    CFRelease(v0);
  }

  else
  {
    endpointAggregate_CloseAllCommChannels_cold_1();
  }
}

uint64_t endpointAggregate_borrowOrUnborrowScreen(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  FigEndpoint = FigEndpointExtendedGetFigEndpoint();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 408) != 2)
  {
    endpointAggregate_borrowOrUnborrowScreen_cold_1();
    v13 = 4294950570;
    goto LABEL_18;
  }

  if (*(DerivedStorage + 40) != 2)
  {
    endpointAggregate_borrowOrUnborrowScreen_cold_2();
    v13 = 4294951716;
    goto LABEL_18;
  }

  FirstSubEndpointActivatedForFeatures = endpointAggregate_getFirstSubEndpointActivatedForFeatures(FigEndpoint, 1);
  if (!FirstSubEndpointActivatedForFeatures)
  {
    endpointAggregate_borrowOrUnborrowScreen_cold_3();
    goto LABEL_9;
  }

  v10 = FirstSubEndpointActivatedForFeatures;
  FigEndpointExtendedGetClassID();
  if (!CMBaseObjectIsMemberOfClass())
  {
    APSLogErrorAt();
LABEL_9:
    v13 = 4294949690;
    goto LABEL_18;
  }

  v11 = *(CMBaseObjectGetVTable() + 24);
  if (a4)
  {
    v12 = *(v11 + 24);
    if (v12)
    {
LABEL_11:
      v13 = v12(v10, a2, a3);
      if (!v13)
      {
        goto LABEL_18;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v12 = *(v11 + 16);
    if (v12)
    {
      goto LABEL_11;
    }
  }

  v13 = 4294954514;
LABEL_14:
  APSLogErrorAt();
  if (gLogCategory_APEndpointAggregate <= 90 && (gLogCategory_APEndpointAggregate != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

LABEL_18:
  FigSimpleMutexUnlock();
  return v13;
}

const void *endpointAggregate_copySubEndpointExtendedForRelayCommChannel(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 40) == 2)
  {
    Value = CFDictionaryGetValue(*(DerivedStorage + 168), a2);
    if (Value)
    {
      FigEndpointExtendedGetClassID();
      if (!CMBaseObjectIsMemberOfClass())
      {
        Value = 0;
      }

      CFRetain(Value);
    }

    else
    {
      endpointAggregate_copySubEndpointExtendedForRelayCommChannel_cold_2();
    }
  }

  else
  {
    endpointAggregate_copySubEndpointExtendedForRelayCommChannel_cold_1();
    Value = 0;
  }

  FigSimpleMutexUnlock();
  return Value;
}

uint64_t endpointAggregate_AddEndpoint(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  FigEndpointAggregateGetFigEndpoint();
  CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v10 = endpointAggregate_addEndpointInternal(a1, a2, a3, a4, a5);
  FigSimpleMutexUnlock();
  return v10;
}

uint64_t endpointAggregate_RemoveEndpoint(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  FigEndpointAggregateGetFigEndpoint();
  CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v9 = endpointAggregate_removeEndpointInternal(a1, a2, a4, a5);
  FigSimpleMutexUnlock();
  return v9;
}

uint64_t APEndpointStreamCarPlayAudioCreate(const __CFAllocator *a1, uint64_t a2, const void *a3, const void *a4, const void *a5, const __CFDictionary *a6, const void *a7, const void *a8, const void *a9, const void *a10, CFTypeRef *a11)
{
  v77 = *MEMORY[0x277D85DE8];
  cf = 0;
  v69 = 0;
  theString = 0;
  v67 = 0;
  v75 = 0u;
  v76 = 0u;
  *label = 0u;
  v74 = 0u;
  if (!a2)
  {
    APEndpointStreamCarPlayAudioCreate_cold_23();
LABEL_110:
    v31 = 4294950536;
    goto LABEL_86;
  }

  if (!a3)
  {
    APEndpointStreamCarPlayAudioCreate_cold_22();
    goto LABEL_110;
  }

  if (!a5)
  {
    APEndpointStreamCarPlayAudioCreate_cold_21();
    goto LABEL_110;
  }

  if (!a8)
  {
    APEndpointStreamCarPlayAudioCreate_cold_20();
    goto LABEL_110;
  }

  if (!a7)
  {
    APEndpointStreamCarPlayAudioCreate_cold_19();
    goto LABEL_110;
  }

  if (!a10)
  {
    APEndpointStreamCarPlayAudioCreate_cold_18();
    goto LABEL_110;
  }

  if (!a9)
  {
    APEndpointStreamCarPlayAudioCreate_cold_17();
    goto LABEL_110;
  }

  if (!a11)
  {
    APEndpointStreamCarPlayAudioCreate_cold_16();
    goto LABEL_110;
  }

  FigEndpointStreamGetClassID();
  v17 = CMDerivedObjectCreate();
  if (v17)
  {
    v31 = v17;
    APEndpointStreamCarPlayAudioCreate_cold_1();
    goto LABEL_86;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *DerivedStorage = FigCFWeakReferenceHolderCreateWithReferencedObject();
  *(DerivedStorage + 24) = CFRetain(a3);
  *(DerivedStorage + 32) = CFRetain(a4);
  *(DerivedStorage + 40) = CFRetain(a5);
  *(DerivedStorage + 96) = CFRetain(a8);
  *(DerivedStorage + 8) = CFRetain(a7);
  *(DerivedStorage + 16) = CFRetain(a10);
  *(DerivedStorage + 104) = CFRetain(a9);
  CMBaseObject = APEndpointDescriptionGetCMBaseObject(a7);
  v20 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v20)
  {
    v31 = 4294954514;
    goto LABEL_15;
  }

  v21 = v20(CMBaseObject, @"DeviceID", a1, &cf);
  if (v21)
  {
    v31 = v21;
    goto LABEL_15;
  }

  v22 = cf;
  v23 = *(DerivedStorage + 32);
  v24 = *(DerivedStorage + 40);
  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  *(DerivedStorage + 48) = CFStringCreateWithFormat(a1, 0, @"%@-%@-%@-%llu", v22, v23, v24, UpTimeNanoseconds);
  v26 = CFEqual(a5, *MEMORY[0x277CC1938]);
  v27 = MEMORY[0x277CC1940];
  if (v26)
  {
    v28 = 1;
    v29 = 1835100526;
    v30 = 1;
  }

  else if (CFEqual(a5, *MEMORY[0x277CC1918]))
  {
    v28 = 0;
    v30 = 1;
    v29 = 1634497568;
  }

  else if (CFEqual(a5, *MEMORY[0x277CC1920]))
  {
    v28 = 0;
    v30 = 1;
    v29 = 1635088495;
  }

  else
  {
    if (!CFEqual(a5, *v27))
    {
      v31 = 4294950536;
      goto LABEL_15;
    }

    v30 = 0;
    v28 = 1;
    v29 = 1869575779;
  }

  *(DerivedStorage + 68) = v29;
  *(DerivedStorage + 72) = v28;
  *(DerivedStorage + 73) = v30;
  if (APSSettingsGetInt64())
  {
    theDict = 0;
    v32 = *MEMORY[0x277CBECE8];
    v33 = APEndpointDescriptionGetCMBaseObject(*(DerivedStorage + 8));
    v34 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v34)
    {
      v34(v33, @"HeadUnitRestrictions", v32, &theDict);
    }

    if (!theDict)
    {
      APEndpointStreamCarPlayAudioCreate_cold_2();
      v31 = 0;
      goto LABEL_86;
    }

    v35 = CFDictionaryContainsKey(theDict, @"kAPCarPlay_ClockUnstable") == 0;
    goto LABEL_34;
  }

  v32 = *MEMORY[0x277CBECE8];
  v36 = APEndpointDescriptionGetCMBaseObject(*(DerivedStorage + 8));
  v37 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v37)
  {
    v37(v36, @"Manufacturer", v32, &v67);
  }

  v38 = APEndpointDescriptionGetCMBaseObject(*(DerivedStorage + 8));
  v39 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v39)
  {
    v39(v38, @"Model", v32, &theString);
  }

  v40 = FigCFEqual();
  v41 = 1;
  if (v40 && theString)
  {
    v35 = CFStringFind(theString, @"NBTEvo", 0).location == -1;
LABEL_34:
    v41 = v35;
  }

  v42 = APAudioZeroTimeStampProviderCreate(2.017, a1, v41, (DerivedStorage + 56));
  if (v42)
  {
    v31 = v42;
    APEndpointStreamCarPlayAudioCreate_cold_3();
    goto LABEL_86;
  }

  v43 = CMBaseObjectGetDerivedStorage();
  theString1 = 0;
  theDict = 0;
  if (APSSettingsGetInt64())
  {
    v70 = 0;
    v44 = APEndpointDescriptionGetCMBaseObject(*(v43 + 8));
    v45 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v45 && (v45(v44, @"HeadUnitRestrictions", v32, &v70), v70))
    {
      CFDictionaryContainsKey(v70, @"kAPCarPlay_DisableTimestampSmoothing");
    }

    else
    {
      APEndpointStreamCarPlayAudioCreate_cold_4();
    }
  }

  else
  {
    v46 = APEndpointDescriptionGetCMBaseObject(*(v43 + 8));
    v47 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v47)
    {
      v47(v46, @"Manufacturer", v32, &theDict);
    }

    v48 = APEndpointDescriptionGetCMBaseObject(*(v43 + 8));
    v49 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v49)
    {
      v49(v48, @"Model", v32, &theString1);
      v50 = theDict;
      if (theDict)
      {
        if (theString1)
        {
          if (gLogCategory_APEndpointStreamCarPlayAudio <= 30)
          {
            if (gLogCategory_APEndpointStreamCarPlayAudio != -1 || (v51 = _LogCategory_Initialize(), v50 = theDict, v51))
            {
              LogPrintF();
              v50 = theDict;
            }
          }

          if ((CFStringCompare(v50, @"SUZUKI", 0) == kCFCompareEqualTo && CFStringCompare(theString1, @"Suzuki Harman MY15SN", 0) == kCFCompareEqualTo || CFStringCompare(theDict, @"JBL", 0) == kCFCompareEqualTo && CFStringCompare(theString1, @"Legend CP100", 0) == kCFCompareEqualTo) && gLogCategory_APEndpointStreamCarPlayAudio <= 50 && (gLogCategory_APEndpointStreamCarPlayAudio != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }
        }
      }
    }
  }

  IntWithDefault = APSSettingsGetIntWithDefault();
  if (theDict)
  {
    CFRelease(theDict);
  }

  if (theString1)
  {
    CFRelease(theString1);
  }

  *(DerivedStorage + 64) = IntWithDefault;
  if (gLogCategory_APEndpointStreamCarPlayAudio <= 50 && (gLogCategory_APEndpointStreamCarPlayAudio != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  *(DerivedStorage + 392) = 0;
  *(DerivedStorage + 488) = 0;
  CMBaseObjectGetDerivedStorage();
  if (a6)
  {
    CFDictionaryGetValue(a6, @"EventRecorder");
  }

  if (FigCFEqual())
  {
    v53 = APSEventRecorderCreate();
    if (!v53)
    {
      goto LABEL_77;
    }

    v31 = v53;
    APEndpointStreamCarPlayAudioCreate_cold_5();
LABEL_15:
    APSLogErrorAt();
    goto LABEL_86;
  }

  if (FigCFEqual())
  {
    v54 = APSEventRecorderCreate();
    if (v54)
    {
      v31 = v54;
      APEndpointStreamCarPlayAudioCreate_cold_6();
      goto LABEL_15;
    }
  }

  else
  {
    if (!FigCFEqual())
    {
      if (FigCFEqual())
      {
        v56 = APSEventRecorderCreate();
        if (!v56)
        {
          goto LABEL_77;
        }

        v31 = v56;
        APEndpointStreamCarPlayAudioCreate_cold_8();
      }

      else
      {
        v31 = 4294950536;
        APSLogErrorAt();
      }

      goto LABEL_15;
    }

    v55 = APSEventRecorderCreate();
    if (v55)
    {
      v31 = v55;
      APEndpointStreamCarPlayAudioCreate_cold_7();
      goto LABEL_15;
    }
  }

LABEL_77:
  APSEventRecorderAddSignPostForEvent();
  v57 = APCarPlayAnalyticsCreate(a1, (DerivedStorage + 88));
  if (v57)
  {
    v31 = v57;
    APEndpointStreamCarPlayAudioCreate_cold_9();
    goto LABEL_86;
  }

  SNPrintF();
  v58 = dispatch_queue_create(label, 0);
  *(DerivedStorage + 112) = v58;
  if (!v58)
  {
    APEndpointStreamCarPlayAudioCreate_cold_15();
LABEL_119:
    v31 = 4294950535;
    goto LABEL_86;
  }

  SNPrintF();
  v59 = dispatch_queue_create(label, 0);
  *(DerivedStorage + 120) = v59;
  if (!v59)
  {
    APEndpointStreamCarPlayAudioCreate_cold_14();
    goto LABEL_119;
  }

  SNPrintF();
  v60 = FigDispatchQueueCreateWithPriority();
  *(DerivedStorage + 168) = v60;
  if (!v60)
  {
    APEndpointStreamCarPlayAudioCreate_cold_13();
    goto LABEL_119;
  }

  SNPrintF();
  v61 = FigDispatchQueueCreateWithPriority();
  *(DerivedStorage + 352) = v61;
  if (!v61)
  {
    APEndpointStreamCarPlayAudioCreate_cold_12();
    goto LABEL_119;
  }

  SNPrintF();
  v62 = FigDispatchQueueCreateWithPriority();
  *(DerivedStorage + 416) = v62;
  if (!v62)
  {
    APEndpointStreamCarPlayAudioCreate_cold_11();
    goto LABEL_119;
  }

  if (CFEqual(a5, *v27) && (v63 = APCarPlayAVVCServerRegisterStream(v69), v63))
  {
    v31 = v63;
    APEndpointStreamCarPlayAudioCreate_cold_10();
  }

  else
  {
    v31 = 0;
    *a11 = v69;
    v69 = 0;
  }

LABEL_86:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v69)
  {
    CFRelease(v69);
  }

  if (v67)
  {
    CFRelease(v67);
  }

  if (theString)
  {
    CFRelease(theString);
  }

  return v31;
}

uint64_t carAudioStream_finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APEndpointStreamCarPlayAudio <= 50 && (gLogCategory_APEndpointStreamCarPlayAudio != -1 || _LogCategory_Initialize()))
  {
    carAudioStream_finalize_cold_1();
  }

  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }

  v1 = *(DerivedStorage + 8);
  if (v1)
  {
    CFRelease(v1);
    *(DerivedStorage + 8) = 0;
  }

  v2 = *(DerivedStorage + 16);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 16) = 0;
  }

  v3 = *(DerivedStorage + 24);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 24) = 0;
  }

  v4 = *(DerivedStorage + 40);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 40) = 0;
  }

  v5 = *(DerivedStorage + 48);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 48) = 0;
  }

  v6 = *(DerivedStorage + 80);
  if (v6)
  {
    CFRelease(v6);
    *(DerivedStorage + 80) = 0;
  }

  v7 = *(DerivedStorage + 96);
  if (v7)
  {
    CFRelease(v7);
    *(DerivedStorage + 96) = 0;
  }

  v8 = *(DerivedStorage + 104);
  if (v8)
  {
    CFRelease(v8);
    *(DerivedStorage + 104) = 0;
  }

  v9 = *(DerivedStorage + 56);
  if (v9)
  {
    CFRelease(v9);
    *(DerivedStorage + 56) = 0;
  }

  v10 = *(DerivedStorage + 136);
  if (v10)
  {
    CFRelease(v10);
    *(DerivedStorage + 136) = 0;
  }

  v11 = *(DerivedStorage + 144);
  if (v11)
  {
    CFRelease(v11);
    *(DerivedStorage + 144) = 0;
  }

  v12 = *(DerivedStorage + 152);
  if (v12)
  {
    CFRelease(v12);
    *(DerivedStorage + 152) = 0;
  }

  v13 = *(DerivedStorage + 160);
  if (v13)
  {
    CFRelease(v13);
    *(DerivedStorage + 160) = 0;
  }

  v14 = *(DerivedStorage + 112);
  if (v14)
  {
    dispatch_release(v14);
    *(DerivedStorage + 112) = 0;
  }

  v15 = *(DerivedStorage + 120);
  if (v15)
  {
    dispatch_release(v15);
    *(DerivedStorage + 120) = 0;
  }

  v16 = *(DerivedStorage + 168);
  if (v16)
  {
    dispatch_release(v16);
    *(DerivedStorage + 168) = 0;
  }

  v17 = *(DerivedStorage + 352);
  if (v17)
  {
    dispatch_release(v17);
    *(DerivedStorage + 352) = 0;
  }

  v18 = *(DerivedStorage + 416);
  if (v18)
  {
    dispatch_release(v18);
    *(DerivedStorage + 416) = 0;
  }

  v19 = *(DerivedStorage + 88);
  if (v19)
  {
    CFRelease(v19);
    *(DerivedStorage + 88) = 0;
  }

  v20 = *(DerivedStorage + 368);
  if (v20)
  {
    CFRelease(v20);
    *(DerivedStorage + 368) = 0;
  }

  v21 = *(DerivedStorage + 376);
  if (v21)
  {
    CFRelease(v21);
    *(DerivedStorage + 376) = 0;
  }

  v22 = *(DerivedStorage + 384);
  if (v22)
  {
    CFRelease(v22);
    *(DerivedStorage + 384) = 0;
  }

  v23 = *(DerivedStorage + 432);
  if (v23)
  {
    CFRelease(v23);
    *(DerivedStorage + 432) = 0;
  }

  v24 = *(DerivedStorage + 448);
  if (v24)
  {
    CFRelease(v24);
    *(DerivedStorage + 448) = 0;
  }

  v25 = *(DerivedStorage + 456);
  if (v25)
  {
    CFRelease(v25);
    *(DerivedStorage + 456) = 0;
  }

  v26 = *(DerivedStorage + 464);
  if (v26)
  {
    CFRelease(v26);
    *(DerivedStorage + 464) = 0;
  }

  v27 = *(DerivedStorage + 392);
  if (v27)
  {
    CFRelease(v27);
    *(DerivedStorage + 392) = 0;
  }

  v28 = *(DerivedStorage + 488);
  if (v28)
  {
    CFRelease(v28);
    *(DerivedStorage + 488) = 0;
  }

  return kdebug_trace();
}

__CFString *carAudioStream_copyDebugDescription(const void *a1)
{
  Mutable = CFStringCreateMutable(0, 0);
  CFStringAppendFormat(Mutable, 0, @"<APEndpointStreamCarPlayAudio %p>\n", a1);
  v3 = CFGetAllocator(a1);
  v4 = carAudioStream_copyShowInfo(a1, v3);
  if (v4)
  {
    v5 = v4;
    ASPrintF();
    v6 = strlen(0);
    if (v6 && *(v6 - 1) == 10)
    {
      *(v6 - 1) = 0;
    }

    CFStringAppendFormat(Mutable, 0, @"%s", 0);
    free(0);
    CFRelease(v5);
  }

  return Mutable;
}

__CFDictionary *carAudioStream_copyShowInfo(uint64_t a1, const __CFAllocator *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFDictionaryCreateMutable(a2, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v5 = Mutable;
  if (Mutable)
  {
    CFDictionarySetValue(Mutable, @"Type", *(DerivedStorage + 32));
    CFDictionarySetValue(v5, @"Subtype", *(DerivedStorage + 40));
    CFDictionarySetValue(v5, @"Name", *(DerivedStorage + 24));
    CFDictionarySetValue(v5, @"ID", *(DerivedStorage + 48));
    v6 = MEMORY[0x277CBED28];
    if (!*(DerivedStorage + 176))
    {
      v6 = MEMORY[0x277CBED10];
    }

    CFDictionarySetValue(v5, @"Resumed", *v6);
  }

  else
  {
    carAudioStream_copyShowInfo_cold_1();
  }

  return v5;
}

uint64_t carAudioStream_flush(const void *a1, uint64_t a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 128))
  {
    carAudioStream_flush_cold_1();
    return 4294950534;
  }

  else
  {
    v7 = DerivedStorage;
    CFRetain(a1);
    if (a3)
    {
      CFRetain(a3);
    }

    v8 = *(v7 + 168);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 0x40000000;
    v10[2] = __carAudioStream_flush_block_invoke;
    v10[3] = &__block_descriptor_tmp_186;
    v10[4] = v7;
    v10[5] = a3;
    v10[6] = a1;
    v10[7] = a2;
    dispatch_async(v8, v10);
    return 0;
  }
}

uint64_t carAudioStream_dissociate(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CMBaseObjectGetDerivedStorage();
  v4 = *(v3 + 120);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __carAudioStream_dissociateInternal_block_invoke;
  block[3] = &__block_descriptor_tmp_188;
  block[4] = v3;
  dispatch_sync(v4, block);
  v5 = *(v3 + 168);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 0x40000000;
  v9[2] = __carAudioStream_dissociateInternal_block_invoke_2;
  v9[3] = &__block_descriptor_tmp_189;
  v9[4] = a1;
  dispatch_sync(v5, v9);
  if (CFEqual(*(v3 + 40), *MEMORY[0x277CC1940]))
  {
    APCarPlayAVVCServerRemoveStream(a1);
  }

  CFRetain(a1);
  v6 = *(DerivedStorage + 112);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 0x40000000;
  v8[2] = __carAudioStream_dissociate_block_invoke;
  v8[3] = &__block_descriptor_tmp_187;
  v8[4] = a1;
  dispatch_async(v6, v8);
  return 0;
}

void __carAudioStream_suspendInternal_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  *(v2 + 360) = 0;
  *(v2 + 400) = 0;
  v3 = *(v2 + 392);
  if (v3)
  {
    CFRelease(v3);
    v2 = *(a1 + 32);
  }

  v4 = *(v2 + 376);
  if (v4)
  {
    CFRelease(v4);
    v2 = *(a1 + 32);
  }

  v5 = *(v2 + 368);
  if (v5)
  {

    CFRelease(v5);
  }
}

uint64_t carAudioStream_updateZeroTimeFromPhaseValues(double a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 272) = a1;
  *(DerivedStorage + 280) = a3;
  *(DerivedStorage + 328) = 3;
  *(DerivedStorage + 288) = a4;
  if (gLogCategory_APEndpointStreamCarPlayAudio <= 50 && (gLogCategory_APEndpointStreamCarPlayAudio != -1 || _LogCategory_Initialize()))
  {
    mach_absolute_time();
    LogPrintF();
  }

  v8 = *APCarPlayAudioFormatInfoGetDescription(*(DerivedStorage + 192));
  if ((~*(DerivedStorage + 264) & 3) != 0)
  {
    v11 = *(DerivedStorage + 320);
    *(DerivedStorage + 240) = *(DerivedStorage + 304);
    *(DerivedStorage + 256) = v11;
    v12 = *(DerivedStorage + 288);
    *(DerivedStorage + 208) = *(DerivedStorage + 272);
    *(DerivedStorage + 224) = v12;
    *(DerivedStorage + 224) = a4;
    *(DerivedStorage + 344) = v8;
  }

  else
  {
    v9 = a1 - *(DerivedStorage + 272);
    UpTicksToSecondsF();
    v13 = v9 / v10;
    if (vabdd_f64(*(DerivedStorage + 344), v8) > v8 * 0.00025 && gLogCategory_APEndpointStreamCarPlayAudioTimeStamps <= 50 && (gLogCategory_APEndpointStreamCarPlayAudioTimeStamps != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    if (vabdd_f64(*(DerivedStorage + 344), v13) > *(DerivedStorage + 344) * 0.00005 && gLogCategory_APEndpointStreamCarPlayAudioTimeStamps <= 50 && (gLogCategory_APEndpointStreamCarPlayAudioTimeStamps != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v14 = a1 - *(DerivedStorage + 208);
    UpTicksToSecondsF();
    *(DerivedStorage + 344) = v14 / v15;
  }

  v16 = *(DerivedStorage + 56);

  return APAudioZeroTimeStampProviderSetZeroTimeStamp(v16, (DerivedStorage + 272));
}

uint64_t CMBaseObjectSetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(a1, a2, a3);
}

uint64_t FigEndpointAudioSourceResume(uint64_t a1)
{
  v2 = *(CMBaseObjectGetVTable() + 16);
  if (*v2 < 2uLL)
  {
    return 4294954515;
  }

  v3 = v2[4];
  if (!v3)
  {
    return 4294954514;
  }

  return v3(a1);
}

uint64_t carAudioStream_sendFlush(const void *a1, __int16 a2, int a3)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2000000000;
  v16 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFRetain(a1);
  v7 = *(DerivedStorage + 168);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 0x40000000;
  v10[2] = __carAudioStream_sendFlush_block_invoke;
  v10[3] = &unk_27849B608;
  v10[5] = a1;
  v10[6] = DerivedStorage;
  v12 = a2;
  v11 = a3;
  v10[4] = &v13;
  dispatch_async(v7, v10);
  v8 = *(v14 + 6);
  _Block_object_dispose(&v13, 8);
  return v8;
}

uint64_t carAudioStream_sendMainHighMessage(const void *a1, int a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2 == 1734700576)
  {
    v7 = DerivedStorage;
    CFRetain(a1);
    CFRetain(a3);
    v8 = *(v7 + 168);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 0x40000000;
    v10[2] = __carAudioStream_sendMainHighMessage_block_invoke;
    v10[3] = &__block_descriptor_tmp_162;
    v11 = 1734700576;
    v10[4] = v7;
    v10[5] = a3;
    v10[6] = a1;
    dispatch_async(v8, v10);
    return 0;
  }

  else
  {
    carAudioStream_sendMainHighMessage_cold_1();
    return 4294960561;
  }
}

uint64_t APSenderSessionCreateTransportStreamWithID(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(a1, a2, a3, a4);
}

uint64_t FigTransportStreamResume(uint64_t a1)
{
  v2 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v2)
  {
    return 4294954514;
  }

  return v2(a1);
}

uint64_t APAudioEngineRegisterStream(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(a1, a2, a3, 0, 0, a4);
}

void __carAudioStream_sendFlush_block_invoke(uint64_t a1)
{
  cf = 0;
  if (gLogCategory_APEndpointStreamCarPlayAudio <= 50 && (gLogCategory_APEndpointStreamCarPlayAudio != -1 || _LogCategory_Initialize()))
  {
    __carAudioStream_sendFlush_block_invoke_cold_1();
  }

  v2 = *(*(a1 + 48) + 96);
  v3 = CFGetAllocator(*(a1 + 40));
  CMBaseObject = APSenderSessionGetCMBaseObject(v2);
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v5)
  {
    v6 = v5(CMBaseObject, @"TransportControlStream", v3, &cf);
  }

  else
  {
    v6 = -12782;
  }

  v7 = a1 + 32;
  *(*(*(a1 + 32) + 8) + 24) = v6;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    __carAudioStream_sendFlush_block_invoke_cold_2();
    Mutable = 0;
LABEL_29:
    v10 = 0;
LABEL_31:
    Data = 0;
    goto LABEL_17;
  }

  v8 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    __carAudioStream_sendFlush_block_invoke_cold_7();
    goto LABEL_29;
  }

  v10 = CFStringCreateWithFormat(v8, 0, @"seq=%u;rtptime=%u", *(a1 + 60), *(a1 + 56));
  if (!v10)
  {
    __carAudioStream_sendFlush_block_invoke_cold_6();
    goto LABEL_31;
  }

  CFDictionarySetValue(Mutable, @"RTP-Info", v10);
  Data = CFPropertyListCreateData(v8, Mutable, kCFPropertyListBinaryFormat_v1_0, 0, 0);
  if (Data)
  {
    *(*(*v7 + 8) + 24) = FigCreateBlockBufferWithCFDataNoCopy();
    if (*(*(*v7 + 8) + 24))
    {
      __carAudioStream_sendFlush_block_invoke_cold_3();
    }

    else
    {
      v12 = cf;
      v13 = *(*(CMBaseObjectGetVTable() + 16) + 56);
      if (v13)
      {
        v14 = v13(v12, 1718383464, 0, 0);
      }

      else
      {
        v14 = -12782;
      }

      *(*(*v7 + 8) + 24) = v14;
      if (*(*(*v7 + 8) + 24))
      {
        __carAudioStream_sendFlush_block_invoke_cold_4();
      }
    }
  }

  else
  {
    __carAudioStream_sendFlush_block_invoke_cold_5();
  }

LABEL_17:
  if (cf)
  {
    CFRelease(cf);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (Data)
  {
    CFRelease(Data);
  }

  CFRelease(*(a1 + 40));
}

void __carAudioStream_flush_block_invoke(uint64_t a1)
{
  v3 = a1 + 32;
  v2 = *(a1 + 32);
  if (*(v2 + 176))
  {
    if (APCarPlayAudioFormatInfoGetStreamType(*(v2 + 192)) == 102)
    {
      v9 = **&MEMORY[0x277CC0898];
      FigCFDictionaryGetCMTimeIfPresent();
      if (gLogCategory_APEndpointStreamCarPlayAudio <= 30 && (gLogCategory_APEndpointStreamCarPlayAudio != -1 || _LogCategory_Initialize()))
      {
        __carAudioStream_flush_block_invoke_cold_2(a1, v3, &v9);
      }

      v4 = *(*(a1 + 32) + 16);
      v5 = *(a1 + 56);
      v8 = v9;
      v6 = *(*(CMBaseObjectGetVTable() + 16) + 40);
      if (v6)
      {
        v10 = v8;
        v6(v4, v5 & 1, &v10);
      }
    }

    else if (gLogCategory_APEndpointStreamCarPlayAudio <= 30 && (gLogCategory_APEndpointStreamCarPlayAudio != -1 || _LogCategory_Initialize()))
    {
      __carAudioStream_flush_block_invoke_cold_1();
    }
  }

  else
  {
    __carAudioStream_flush_block_invoke_cold_3();
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    CFRelease(v7);
  }

  CFRelease(*(a1 + 48));
}

void __carAudioStream_dissociate_block_invoke(uint64_t a1)
{
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  v2 = *(a1 + 32);

  CFRelease(v2);
}

uint64_t APSenderSessionAirPlayCreate(double a1, uint64_t a2, const void *a3, const void *a4, const void *a5, int a6, int a7, NSObject *a8, char a9, char a10, char a11, const void *a12, const void *a13, const void *a14, char a15, const __CFDictionary *a16, const void *a17, const void *a18, CFTypeRef *a19)
{
  v89 = *MEMORY[0x277D85DE8];
  v80 = 0;
  cf = 0;
  APSenderSessionGetClassID();
  v26 = CMDerivedObjectCreate();
  if (v26)
  {
    v46 = v26;
    APSenderSessionAirPlayCreate_cold_1();
    goto LABEL_39;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 8) = CFRetain(a3);
  v28 = FigSimpleMutexCreate();
  *(DerivedStorage + 296) = v28;
  if (!v28)
  {
    v46 = 4294895476;
    APSenderSessionAirPlayCreate_cold_16();
    goto LABEL_39;
  }

  *(DerivedStorage + 48) = a8;
  dispatch_retain(a8);
  *(DerivedStorage + 56) = CFRetain(a4);
  if (a5)
  {
    v29 = CFRetain(a5);
  }

  else
  {
    v29 = 0;
  }

  *(DerivedStorage + 64) = v29;
  *(DerivedStorage + 400) = -998653952;
  *(DerivedStorage + 404) = 0;
  *(DerivedStorage + 72) = a6;
  *(DerivedStorage + 88) = a7;
  *(DerivedStorage + 112) = a9;
  *(DerivedStorage + 113) = a11;
  *(DerivedStorage + 114) = a10;
  if (a17)
  {
    v30 = CFRetain(a17);
  }

  else
  {
    v30 = 0;
  }

  *(DerivedStorage + 120) = v30;
  if (a18)
  {
    v31 = CFRetain(a18);
  }

  else
  {
    v31 = 0;
  }

  *(DerivedStorage + 128) = v31;
  *(DerivedStorage + 136) = a15;
  *(DerivedStorage + 144) = a1;
  if (a13)
  {
    v32 = CFRetain(a13);
  }

  else
  {
    v32 = 0;
  }

  *(DerivedStorage + 96) = v32;
  if (a14)
  {
    v33 = CFRetain(a14);
  }

  else
  {
    v33 = 0;
  }

  *(DerivedStorage + 104) = v33;
  *(DerivedStorage + 24) = @"None";
  v34 = *(DerivedStorage + 72) - 1;
  v35 = MEMORY[0x277CBECE8];
  if (v34 >= 8 || ((0xE1u >> v34) & 1) == 0)
  {
    if (!a12)
    {
      APSenderSessionAirPlayCreate_cold_2();
      v46 = 4294895475;
      goto LABEL_39;
    }

    CMBaseObject = APSNetworkClockGetCMBaseObject();
    v38 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v38)
    {
      v39 = *v35;
      v40 = v38(CMBaseObject, *MEMORY[0x277CEA260], *v35, &v80);
      if (!v40)
      {
        if (FigCFEqual())
        {
          v41 = @"PTP";
        }

        else
        {
          v41 = @"NTP";
        }

        if (APSenderSessionShouldEstablishNetworkClockLink(*(DerivedStorage + 72), *(DerivedStorage + 56)))
        {
          *(DerivedStorage + 24) = v41;
          *(DerivedStorage + 80) = CFRetain(a12);
        }

        *(DerivedStorage + 310) = 1;
        v36 = *(DerivedStorage + 24);
        if (!v36)
        {
          goto LABEL_31;
        }

        goto LABEL_30;
      }

      v46 = v40;
    }

    else
    {
      v46 = 4294954514;
    }

    APSLogErrorAt();
    goto LABEL_39;
  }

  v36 = @"None";
LABEL_30:
  CFRetain(v36);
  v39 = *v35;
LABEL_31:
  ShouldForcePairSetup = APManagedConfigurationShouldForcePairSetup();
  if (*(DerivedStorage + 72) == 5)
  {
    v43 = 0;
  }

  else
  {
    v43 = ShouldForcePairSetup;
  }

  *(DerivedStorage + 432) = v43;
  Mutable = CFDictionaryCreateMutable(v39, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  *(DerivedStorage + 576) = Mutable;
  if (!Mutable)
  {
    v46 = 4294895476;
    APSenderSessionAirPlayCreate_cold_15();
    goto LABEL_39;
  }

  SNPrintF();
  *(DerivedStorage + 184) = dispatch_queue_create(label, 0);
  SNPrintF();
  *(DerivedStorage + 40) = dispatch_queue_create(label, 0);
  SNPrintF();
  *(DerivedStorage + 32) = dispatch_queue_create(label, 0);
  v45 = CMBaseObjectGetDerivedStorage();
  if (a16)
  {
    CFDictionaryGetValue(a16, @"eventRecorder");
  }

  v47 = CFStringCreateF();
  v48 = *(v45 + 160);
  if (v48)
  {
    CFRelease(v48);
    *(v45 + 160) = 0;
  }

  v49 = *(v45 + 168);
  if (v49)
  {
    CFRelease(v49);
    *(v45 + 168) = 0;
  }

  v50 = APSEventRecorderCreate();
  if (v50)
  {
    v46 = v50;
    APSenderSessionAirPlayCreate_cold_3();
    goto LABEL_55;
  }

  if (*(v45 + 72) != 5)
  {
    goto LABEL_53;
  }

  v51 = APSEventRecorderAddSignPostForEvent();
  if (v51)
  {
    v46 = v51;
    APSenderSessionAirPlayCreate_cold_4();
    goto LABEL_55;
  }

  v52 = APSEventRecorderAddSignPostForEvent();
  if (v52)
  {
    v46 = v52;
    APSenderSessionAirPlayCreate_cold_5();
    goto LABEL_55;
  }

  v53 = APSEventRecorderAddSignPostForEvent();
  if (v53)
  {
    v46 = v53;
    APSenderSessionAirPlayCreate_cold_6();
    goto LABEL_55;
  }

  v54 = APSEventRecorderAddSignPostForEvent();
  if (v54)
  {
    v46 = v54;
    APSenderSessionAirPlayCreate_cold_7();
    goto LABEL_55;
  }

  v55 = APSEventRecorderAddSignPostForEvent();
  if (v55)
  {
    v46 = v55;
    APSenderSessionAirPlayCreate_cold_8();
    goto LABEL_55;
  }

  v56 = APSEventRecorderAddSignPostForEvent();
  if (v56)
  {
    v46 = v56;
    APSenderSessionAirPlayCreate_cold_9();
  }

  else
  {
LABEL_53:
    v57 = CFArrayCreateMutable(v39, 0, MEMORY[0x277CBF128]);
    *(v45 + 168) = v57;
    if (v57)
    {
      v46 = 0;
    }

    else
    {
      v46 = 4294895476;
      APSenderSessionAirPlayCreate_cold_10();
    }
  }

LABEL_55:
  if (v47)
  {
    CFRelease(v47);
  }

  if (v46)
  {
    APSenderSessionAirPlayCreate_cold_11();
  }

  else
  {
    if (a16)
    {
      *(DerivedStorage + 152) = CFDictionaryGetInt64() != 0;
      *(DerivedStorage + 153) = CFDictionaryGetInt64() != 0;
      FigCFDictionaryGetBooleanIfPresent();
    }

    v58 = CMBaseObjectGetDerivedStorage();
    v86 = 0;
    v87 = 0;
    v84 = 0;
    v85 = 0;
    v82 = 0;
    v83 = 0;
    v59 = CFDictionaryCreateMutable(v39, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (v59)
    {
      v60 = APEndpointDescriptionGetCMBaseObject(*(v58 + 56));
      v61 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v61)
      {
        v61(v60, @"Company", 0, &v85);
      }

      v62 = APEndpointDescriptionGetCMBaseObject(*(v58 + 56));
      v63 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v63)
      {
        v63(v62, @"Manufacturer", 0, &v84);
      }

      v64 = APEndpointDescriptionGetCMBaseObject(*(v58 + 56));
      v65 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v65)
      {
        v65(v64, @"Model", 0, &v83);
      }

      v66 = APEndpointDescriptionGetCMBaseObject(*(v58 + 56));
      v67 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v67)
      {
        v67(v66, @"OSVersion", 0, &v82);
      }

      v68 = APEndpointDescriptionGetCMBaseObject(*(v58 + 56));
      v69 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v69)
      {
        v69(v68, @"StatusFlags", 0, &v86);
      }

      v70 = APEndpointDescriptionGetCMBaseObject(*(v58 + 56));
      v71 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v71)
      {
        v71(v70, @"AirPlaySecurity", 0, &v87);
      }

      v72 = APSGetFBOPropertyInt64();
      v73 = APSGetFBOPropertyInt64();
      APSGetFBOPropertyInt64();
      FigCFDictionarySetValue();
      FigCFDictionarySetValue();
      FigCFDictionarySetValue();
      FigCFDictionarySetValue();
      FigCFDictionarySetValue();
      FigCFDictionarySetValue();
      v74 = *MEMORY[0x277CBED28];
      v75 = *MEMORY[0x277CBED10];
      if (v73)
      {
        v76 = *MEMORY[0x277CBED28];
      }

      else
      {
        v76 = *MEMORY[0x277CBED10];
      }

      CFDictionarySetValue(v59, @"unifiedAuthPairing", v76);
      if (v72)
      {
        v77 = v74;
      }

      else
      {
        v77 = v75;
      }

      CFDictionarySetValue(v59, @"supportsVideoV2", v77);
      CFDictionarySetInt64();
      *(DerivedStorage + 496) = v59;
      if (v85)
      {
        CFRelease(v85);
      }

      v46 = 0;
    }

    else
    {
      v46 = 4294895476;
      APSenderSessionAirPlayCreate_cold_12();
    }

    if (v84)
    {
      CFRelease(v84);
    }

    if (v83)
    {
      CFRelease(v83);
    }

    if (v82)
    {
      CFRelease(v82);
    }

    if (v86)
    {
      CFRelease(v86);
    }

    if (v87)
    {
      CFRelease(v87);
    }

    if (v59)
    {
      if (gLogCategory_APSenderSessionAirPlay <= 50 && (gLogCategory_APSenderSessionAirPlay != -1 || _LogCategory_Initialize()))
      {
        APSenderSessionAirPlayCreate_cold_13();
      }

      v46 = 0;
      *a19 = cf;
      cf = 0;
      goto LABEL_97;
    }

    APSenderSessionAirPlayCreate_cold_14();
  }

LABEL_39:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_97:
  if (v80)
  {
    CFRelease(v80);
  }

  return v46;
}

void APSenderSessionGetPreferredAndEligibleTransportsBasedOnUsage(int a1, uint64_t a2, int *a3, int *a4, _BYTE *a5)
{
  if (!IsAppleInternalBuild())
  {
    v10 = 0;
    goto LABEL_13;
  }

  v9 = APSSettingsCopyValue();
  v10 = v9;
  if (!v9)
  {
LABEL_13:
    v11 = 1;
    goto LABEL_15;
  }

  if (CFStringGetLength(v9) >= 1)
  {
    if (CFStringHasPrefix(v10, @"awdl"))
    {
      v11 = 0;
      v12 = 2;
      v13 = 2;
    }

    else
    {
      HasPrefix = CFStringHasPrefix(v10, @"nan");
      v11 = 0;
      if (HasPrefix)
      {
        v12 = 4;
      }

      else
      {
        v12 = 1;
      }

      if (HasPrefix)
      {
        v13 = 4;
      }

      else
      {
        v13 = 9;
      }
    }

    goto LABEL_60;
  }

  v11 = 0;
LABEL_15:
  v15 = 9;
  v12 = 1;
  if (a1 > 3)
  {
    if (a1 == 4)
    {
      if (IsAppleInternalBuild() && APSSettingsGetInt64())
      {
        v26 = 0;
      }

      else
      {
        v20 = APSGetFBOPropertyInt64();
        if (v20)
        {
          v21 = 4;
        }

        else
        {
          v21 = 2;
        }

        v22 = 4 * (v20 != 0);
        if (v20)
        {
          v23 = 12;
        }

        else
        {
          v23 = 8;
        }

        v24 = APSGetFBOPropertyInt64();
        v25 = v23 | 2;
        if (v24)
        {
          v26 = v21;
        }

        else
        {
          v26 = v22;
        }

        if (!v24)
        {
          v25 = v23;
        }

        v15 = v25 | 1;
      }

      if (v26 <= 1)
      {
        v12 = 1;
      }

      else
      {
        v12 = v26;
      }
    }

    else if (a1 == 11 && APSSettingsIsFeatureEnabled())
    {
      v16 = APSIsVirtualMachine();
      if (v16)
      {
        v12 = 1;
      }

      else
      {
        v12 = 4;
      }

      if (v16)
      {
        v15 = 9;
      }

      else
      {
        v15 = 13;
      }
    }
  }

  else if (a1)
  {
    if (a1 == 3)
    {
      v12 = 4;
      if (APSGetAllowPersistentGroupsOnInfra())
      {
        v12 = APSIsVirtualMachine() ? 1 : 4;
      }

      else
      {
        v15 = 8;
      }

      if (APSSettingsGetIntWithDefault())
      {
        v15 |= 4u;
      }
    }
  }

  else
  {
    if (APSGetFBOPropertyInt64())
    {
      v17 = 12;
    }

    else
    {
      v17 = 8;
    }

    v18 = APSGetFBOPropertyInt64();
    v19 = v17 | 2;
    if (!v18)
    {
      v19 = v17;
    }

    v15 = v19 | 1;
    v12 = 1;
  }

  isDirectLinkEligible = apsession_isDirectLinkEligible();
  v13 = v15 & 7;
  if (isDirectLinkEligible)
  {
    v13 = v15;
  }

LABEL_60:
  if ((a1 - 1) > 0xA)
  {
    v28 = 0;
    if (!a3)
    {
      goto LABEL_65;
    }

    goto LABEL_64;
  }

  v28 = byte_2222982E0[a1 - 1];
  if (a3)
  {
LABEL_64:
    *a3 = v12;
  }

LABEL_65:
  if (a4)
  {
    *a4 = v13;
  }

  if (a5)
  {
    *a5 = v28;
  }

  if ((v11 & 1) == 0)
  {

    CFRelease(v10);
  }
}

BOOL apsession_isClusterSession(int a1, uint64_t a2, _DWORD *a3, BOOL *a4, BOOL *a5)
{
  cf = 0;
  CMBaseObject = APEndpointDescriptionGetCMBaseObject(a2);
  v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v11 || v11(CMBaseObject, @"ClusterType", *MEMORY[0x277CBECE8], &cf))
  {
    apsession_isClusterSession_cold_1();
    UInt32 = 0;
    goto LABEL_13;
  }

  UInt32 = FigCFNumberGetUInt32();
  if (UInt32)
  {
    v13 = APSGetFBOPropertyInt64() != 0;
    if ((a1 | 8) == 0xB)
    {
      isTightSyncBuddyConnection = 1;
      if (!a3)
      {
        goto LABEL_9;
      }
    }

    else
    {
      isTightSyncBuddyConnection = apsession_isTightSyncBuddyConnection(a2);
      if (!a3)
      {
        goto LABEL_9;
      }
    }

    goto LABEL_8;
  }

  v13 = 0;
  isTightSyncBuddyConnection = 0;
  if (a3)
  {
LABEL_8:
    *a3 = UInt32;
  }

LABEL_9:
  if (a4)
  {
    *a4 = v13;
  }

  if (a5)
  {
    *a5 = isTightSyncBuddyConnection;
  }

LABEL_13:
  if (cf)
  {
    CFRelease(cf);
  }

  return UInt32 != 0;
}

BOOL apsession_isTightSyncBuddyConnection(uint64_t a1)
{
  cf2 = 0;
  cf1 = 0;
  APSCopyTightSyncInfo();
  CMBaseObject = APEndpointDescriptionGetCMBaseObject(a1);
  v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v3 || v3(CMBaseObject, @"TightSyncUUID", *MEMORY[0x277CBECE8], &cf2))
  {
    apsession_isTightSyncBuddyConnection_cold_1();
    v4 = 0;
  }

  else
  {
    v4 = 0;
    if (cf1 && cf2)
    {
      v4 = CFEqual(cf1, cf2) != 0;
    }
  }

  if (cf1)
  {
    CFRelease(cf1);
  }

  if (cf2)
  {
    CFRelease(cf2);
  }

  return v4;
}

uint64_t APSenderSessionGetFallbackConnectionType(int a1, char a2, int a3, _DWORD *a4)
{
  if (a3 == -71890 && !a4[2])
  {
    a4[2] = 1;
  }

  v6 = a4[1];
  switch(a1)
  {
    case 4:
      if ((a2 & 2) != 0 && (v6 & 2) == 0)
      {
        result = 2;
        break;
      }

LABEL_16:
      if (v6)
      {
        result = 0;
      }

      else
      {
        result = a2 & 1;
      }

      break;
    case 2:
      if ((a2 & 4) != 0 && (v6 & 4) == 0)
      {
        result = 4;
        break;
      }

      goto LABEL_16;
    case 1:
      if (v6)
      {
        if (a4[2] == 1)
        {
          result = 2;
          a4[2] = 2;
          break;
        }

LABEL_23:
        result = 0;
        break;
      }

      if ((a2 & 4) != 0)
      {
        result = 4;
      }

      else
      {
        result = a2 & 2;
      }

      break;
    default:
      if (gLogCategory_APSenderSessionAirPlay > 90)
      {
        goto LABEL_23;
      }

      if (gLogCategory_APSenderSessionAirPlay != -1 || (result = _LogCategory_Initialize(), result))
      {
        APSenderSessionGetFallbackConnectionType_cold_1();
        goto LABEL_23;
      }

      break;
  }

  v8 = a4[1] | a1;
  *a4 = a1;
  a4[1] = v8;
  return result;
}

uint64_t APSenderSessionAirPlayPerformPairingPeersListManagement(uint64_t a1, CFArrayRef theArray, const __CFArray *a3, __CFArray **a4)
{
  v37 = 0;
  v35 = 0;
  v36 = 0;
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    if (a3)
    {
LABEL_3:
      v9 = CFArrayGetCount(a3);
      goto LABEL_6;
    }
  }

  else
  {
    Count = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v9 = 0;
LABEL_6:
  apsession_copyTransportControlStream(a1, &v37);
  if (v37)
  {
    cf = v37;
    v10 = APPairingClientCoreUtilsCreate(*MEMORY[0x277CBECE8], 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, v37, &v36);
    if (v10)
    {
      v30 = v10;
      APSenderSessionAirPlayPerformPairingPeersListManagement_cold_1();
    }

    else
    {
      v32 = a4;
      theArraya = a3;
      if (Count < 1)
      {
LABEL_16:
        if (v9 < 1)
        {
LABEL_22:
          if (APPairingClientCoreUtilsPerformListPairings(v36, &v35))
          {
            APSLogErrorAt();
            v30 = 0;
            Mutable = 0;
            *v32 = 0;
            goto LABEL_33;
          }

          Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
          if (!Mutable)
          {
            APSenderSessionAirPlayPerformPairingPeersListManagement_cold_4();
            v30 = 4294895476;
            goto LABEL_33;
          }

          if (v35)
          {
            v25 = CFArrayGetCount(v35);
            if (v25 >= 1)
            {
              v26 = v25;
              v27 = 0;
              while (1)
              {
                ValueAtIndex = CFArrayGetValueAtIndex(v35, v27);
                CFDictionaryGetValue(ValueAtIndex, @"identifier");
                CFDictionaryGetValue(ValueAtIndex, @"pk");
                CFDictionaryGetValue(ValueAtIndex, @"permissions");
                Formatted = CFPropertyListCreateFormatted();
                if (Formatted)
                {
                  break;
                }

                CFArrayAppendValue(Mutable, 0);
                if (v26 == ++v27)
                {
                  goto LABEL_29;
                }
              }

              v30 = Formatted;
              APSLogErrorAt();
              goto LABEL_33;
            }
          }

LABEL_29:
          if (!v32)
          {
            v30 = 0;
            goto LABEL_33;
          }

          v30 = 0;
          *v32 = Mutable;
        }

        else
        {
          v21 = 0;
          v22 = *MEMORY[0x277CC0B48];
          while (1)
          {
            v23 = CFArrayGetValueAtIndex(theArraya, v21);
            if (!v23)
            {
              v30 = 4294895475;
              APSenderSessionAirPlayPerformPairingPeersListManagement_cold_6();
              goto LABEL_31;
            }

            if (!CFDictionaryGetValue(v23, v22))
            {
              v30 = 4294895475;
              APSenderSessionAirPlayPerformPairingPeersListManagement_cold_5();
              goto LABEL_31;
            }

            v24 = APPairingClientCoreUtilsPerformRemovePairing();
            if (v24)
            {
              break;
            }

            if (v9 == ++v21)
            {
              goto LABEL_22;
            }
          }

          v30 = v24;
          APSenderSessionAirPlayPerformPairingPeersListManagement_cold_3();
        }
      }

      else
      {
        v11 = 0;
        v12 = *MEMORY[0x277CC0B48];
        v13 = *MEMORY[0x277CC0B58];
        v14 = *MEMORY[0x277CC0B50];
        while (1)
        {
          v15 = CFArrayGetValueAtIndex(theArray, v11);
          Mutable = v15;
          if (!v15)
          {
            v30 = 4294895475;
            APSenderSessionAirPlayPerformPairingPeersListManagement_cold_10();
            goto LABEL_33;
          }

          Value = CFDictionaryGetValue(v15, v12);
          v18 = CFDictionaryGetValue(Mutable, v13);
          v19 = CFDictionaryGetValue(Mutable, v14);
          if (!Value)
          {
            v30 = 4294895475;
            APSenderSessionAirPlayPerformPairingPeersListManagement_cold_9();
            goto LABEL_31;
          }

          if (!v18)
          {
            v30 = 4294895475;
            APSenderSessionAirPlayPerformPairingPeersListManagement_cold_8();
            goto LABEL_31;
          }

          if (!v19)
          {
            v30 = 4294895475;
            APSenderSessionAirPlayPerformPairingPeersListManagement_cold_7();
            goto LABEL_31;
          }

          v20 = APPairingClientCoreUtilsPerformAddPairing();
          if (v20)
          {
            break;
          }

          if (Count == ++v11)
          {
            goto LABEL_16;
          }
        }

        v30 = v20;
        APSenderSessionAirPlayPerformPairingPeersListManagement_cold_2();
      }
    }

LABEL_31:
    Mutable = 0;
LABEL_33:
    CFRelease(cf);
    goto LABEL_34;
  }

  APSenderSessionAirPlayPerformPairingPeersListManagement_cold_11();
  Mutable = 0;
  v30 = 4294895467;
LABEL_34:
  if (v36)
  {
    CFRelease(v36);
  }

  if (v35)
  {
    CFRelease(v35);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v30;
}

uint64_t apsession_Invalidate(const void *a1)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APSenderSessionAirPlay <= 50 && (gLogCategory_APSenderSessionAirPlay != -1 || _LogCategory_Initialize()))
  {
    apsession_Invalidate_cold_1();
  }

  apsession_recordActivationMessageTiming(a1);
  FigSimpleMutexLock();
  apsession_invalidateAndClearTransportStreams(a1);
  FigSimpleMutexUnlock();
  v3 = *(DerivedStorage + 184);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 0x40000000;
  v6[2] = __apsession_Invalidate_block_invoke;
  v6[3] = &unk_27849B900;
  v6[4] = &v7;
  v6[5] = a1;
  dispatch_sync(v3, v6);
  if (*(v8 + 6))
  {
    APSLogErrorAt();
    v4 = *(v8 + 6);
  }

  else
  {
    v4 = 0;
  }

  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t apsession_Finalize()
{
  result = CMBaseObjectGetDerivedStorage();
  v1 = result;
  if (gLogCategory_APSenderSessionAirPlay <= 50)
  {
    if (gLogCategory_APSenderSessionAirPlay != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF();
    }
  }

  if (*v1)
  {
    if (*(v1 + 288) && *(v1 + 264))
    {
      Shared = APMulticastProbeSenderGetShared();
      APMulticastProbeSenderReleaseSSMGroupInfo(Shared);
      *(v1 + 288) = 0;
    }

    MEMORY[0x223DB15B0](v1 + 344);
    *(v1 + 344) = 0;
    v3 = *(v1 + 320);
    if (v3)
    {
      if (gLogCategory_APSenderSessionAirPlay > 50)
      {
        goto LABEL_15;
      }

      if (gLogCategory_APSenderSessionAirPlay != -1 || _LogCategory_Initialize())
      {
        LogPrintF();
      }

      v3 = *(v1 + 320);
      if (v3)
      {
LABEL_15:
        CFRelease(v3);
        *(v1 + 320) = 0;
      }
    }

    v4 = *(v1 + 496);
    if (v4)
    {
      CFRelease(v4);
      *(v1 + 496) = 0;
    }

    v5 = *(v1 + 504);
    if (v5)
    {
      CFRelease(v5);
      *(v1 + 504) = 0;
    }

    v6 = *(v1 + 512);
    if (v6)
    {
      CFRelease(v6);
      *(v1 + 512) = 0;
    }

    v7 = *(v1 + 552);
    if (v7)
    {
      CFRelease(v7);
      *(v1 + 552) = 0;
    }

    v8 = *(v1 + 560);
    if (v8)
    {
      CFRelease(v8);
      *(v1 + 560) = 0;
    }

    v9 = *(v1 + 568);
    if (v9)
    {
      CFRelease(v9);
      *(v1 + 568) = 0;
    }

    v10 = *(v1 + 160);
    if (v10)
    {
      CFRelease(v10);
      *(v1 + 160) = 0;
    }

    v11 = *(v1 + 168);
    if (v11)
    {
      CFRelease(v11);
      *(v1 + 168) = 0;
    }

    v12 = *(v1 + 176);
    if (v12)
    {
      CFRelease(v12);
      *(v1 + 176) = 0;
    }

    v13 = *(v1 + 528);
    if (v13)
    {
      CFRelease(v13);
      *(v1 + 528) = 0;
    }

    v14 = *(v1 + 536);
    if (v14)
    {
      CFRelease(v14);
      *(v1 + 536) = 0;
    }

    v15 = *(v1 + 96);
    if (v15)
    {
      CFRelease(v15);
      *(v1 + 96) = 0;
    }

    v16 = *(v1 + 104);
    if (v16)
    {
      CFRelease(v16);
      *(v1 + 104) = 0;
    }

    v17 = *(v1 + 80);
    if (v17)
    {
      CFRelease(v17);
      *(v1 + 80) = 0;
    }

    v18 = *(v1 + 48);
    if (v18)
    {
      dispatch_release(v18);
      *(v1 + 48) = 0;
    }

    v19 = *(v1 + 40);
    if (v19)
    {
      dispatch_release(v19);
      *(v1 + 40) = 0;
    }

    v20 = *(v1 + 184);
    if (v20)
    {
      dispatch_release(v20);
      *(v1 + 184) = 0;
    }

    v21 = *(v1 + 32);
    if (v21)
    {
      dispatch_release(v21);
      *(v1 + 32) = 0;
    }

    v22 = *(v1 + 8);
    if (v22)
    {
      CFRelease(v22);
      *(v1 + 8) = 0;
    }

    v23 = *(v1 + 16);
    if (v23)
    {
      CFRelease(v23);
      *(v1 + 16) = 0;
    }

    v24 = *(v1 + 24);
    if (v24)
    {
      CFRelease(v24);
      *(v1 + 24) = 0;
    }

    v25 = *(v1 + 200);
    if (v25)
    {
      CFRelease(v25);
      *(v1 + 200) = 0;
    }

    v26 = *(v1 + 248);
    if (v26)
    {
      CFRelease(v26);
      *(v1 + 248) = 0;
    }

    v27 = *(v1 + 256);
    if (v27)
    {
      CFRelease(v27);
      *(v1 + 256) = 0;
    }

    v28 = *(v1 + 264);
    if (v28)
    {
      CFRelease(v28);
      *(v1 + 264) = 0;
    }

    v29 = *(v1 + 280);
    if (v29)
    {
      CFRelease(v29);
      *(v1 + 280) = 0;
    }

    v30 = *(v1 + 576);
    if (v30)
    {
      CFRelease(v30);
      *(v1 + 576) = 0;
    }

    return FigSimpleMutexDestroy();
  }

  else
  {
    if (gLogCategory_APSenderSessionAirPlay <= 100)
    {
      if (gLogCategory_APSenderSessionAirPlay != -1 || (result = _LogCategory_Initialize(), result))
      {
        result = apsession_Finalize_cold_1();
      }
    }

    __break(1u);
  }

  return result;
}

__CFString *apsession_CopyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"<APSenderSessionAirPlay %p %@>", a1, *(DerivedStorage + 8));
  return Mutable;
}

uint64_t apsession_SetProperty(uint64_t a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APSenderSessionAirPlay <= 30 && (gLogCategory_APSenderSessionAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (*DerivedStorage)
  {
    apsession_SetProperty_cold_1();
    return 4294954511;
  }

  else
  {
    if (a2)
    {
      FigSimpleMutexLock();
      v6 = CMBaseObjectGetDerivedStorage();
      if (CFEqual(a2, @"AuthorizationString"))
      {
        if (!a3)
        {
          v8 = (v6 + 392);
          v9 = *(v6 + 392);
          *(v6 + 392) = 0;
          if (!v9)
          {
            goto LABEL_12;
          }

          goto LABEL_11;
        }

        v7 = CFGetTypeID(a3);
        if (v7 == CFStringGetTypeID())
        {
          v8 = (v6 + 392);
          v9 = *(v6 + 392);
          *(v6 + 392) = a3;
          CFRetain(a3);
          if (!v9)
          {
LABEL_12:
            if (*(v6 + 328))
            {
              v10 = *v8;
              CMBaseObject = FigTransportStreamGetCMBaseObject();
              v12 = *(*(CMBaseObjectGetVTable() + 8) + 56);
              if (v12)
              {
                v12(CMBaseObject, *MEMORY[0x277CE5070], v10);
              }
            }

            CMNotificationCenterGetDefaultLocalCenter();
            FigDispatchAsyncPostNotification();
            goto LABEL_18;
          }

LABEL_11:
          CFRelease(v9);
          goto LABEL_12;
        }

        apsession_SetProperty_cold_2();
LABEL_18:
        FigSimpleMutexUnlock();
        return 0;
      }

      if (CFEqual(a2, @"DACPID"))
      {
        *(v6 + 440) = CFGetInt64();
        goto LABEL_18;
      }

      if (CFEqual(a2, @"DACPRemoteID"))
      {
        *(v6 + 448) = CFGetInt64();
        goto LABEL_18;
      }

      if (CFEqual(a2, @"PublishEncryptionKeyDiagnosticMode"))
      {
        *(v6 + 384) = CFGetInt64() != 0;
        goto LABEL_18;
      }

      if (CFEqual(a2, @"GroupID"))
      {
        if (a3)
        {
          v14 = CFGetTypeID(a3);
          if (v14 != CFStringGetTypeID())
          {
            apsession_SetProperty_cold_6();
            goto LABEL_18;
          }

          v15 = *(v6 + 552);
          *(v6 + 552) = a3;
          goto LABEL_29;
        }

        v15 = *(v6 + 552);
        *(v6 + 552) = 0;
LABEL_35:
        if (v15)
        {
          CFRelease(v15);
        }

        goto LABEL_18;
      }

      if (CFEqual(a2, @"IsMediaSession"))
      {
        v16 = *(v6 + 72);
        if (v16 <= 8 && ((1 << v16) & 0x1C2) != 0)
        {
          APSLogErrorAt();
        }

        else
        {
          v18 = CFGetInt64();
          v19 = v18 != 0;
          if (*(v6 + 310) != v19)
          {
            if (gLogCategory_APSenderSessionAirPlay <= 50 && (gLogCategory_APSenderSessionAirPlay != -1 || _LogCategory_Initialize()))
            {
              LogPrintF();
            }

            *(v6 + 310) = v19;
          }
        }

        goto LABEL_18;
      }

      if (CFEqual(a2, @"RCServerInfo"))
      {
        if (!a3)
        {
          v15 = *(v6 + 568);
          *(v6 + 568) = 0;
          goto LABEL_35;
        }

        v17 = CFGetTypeID(a3);
        if (v17 != CFDictionaryGetTypeID())
        {
          apsession_SetProperty_cold_8();
          goto LABEL_18;
        }

        v15 = *(v6 + 568);
        *(v6 + 568) = a3;
      }

      else
      {
        if (CFEqual(a2, @"ShouldUseNANDiversifiedPIN"))
        {
          *(v6 + 464) = CFGetInt64() != 0;
          goto LABEL_18;
        }

        if (!CFEqual(a2, @"NANMACAddress"))
        {
          goto LABEL_18;
        }

        if (!a3)
        {
          v15 = *(v6 + 472);
          *(v6 + 472) = 0;
          goto LABEL_35;
        }

        v20 = CFGetTypeID(a3);
        if (v20 != CFStringGetTypeID())
        {
          apsession_SetProperty_cold_10();
          goto LABEL_18;
        }

        v15 = *(v6 + 472);
        *(v6 + 472) = a3;
      }

LABEL_29:
      CFRetain(a3);
      goto LABEL_35;
    }

    apsession_SetProperty_cold_11();
    return 4294895475;
  }
}

void apsession_invalidateAndClearTransportStreams(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 64) && *(DerivedStorage + 240))
  {
    APSConnectionInterfaceManagerReleaseInterfaceSelection();
    *(DerivedStorage + 240) = 0;
  }

  if (*(DerivedStorage + 320))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    CFRetain(a1);
    *(DerivedStorage + 328) = 0;
    *(DerivedStorage + 336) = 0;
    *(DerivedStorage + 376) = 0;
    APSDispatchAsyncFHelper();
    *(DerivedStorage + 306) = 0;
    *(DerivedStorage + 304) = 0;
    v3 = *(DerivedStorage + 560);
    if (v3)
    {
      CFRelease(v3);
      *(DerivedStorage + 560) = 0;
    }

    v4 = *(DerivedStorage + 568);
    if (v4)
    {
      CFRelease(v4);
      *(DerivedStorage + 568) = 0;
    }
  }
}

void apsession_invalidateTransportStreams(const void **a1)
{
  v2 = a1 + 1;
  v3 = a1[1];
  if (v3)
  {
    v4 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v4)
    {
      v4(v3, 0, 0, 0);
    }

    CMBaseObject = FigTransportStreamGetCMBaseObject();
    if (CMBaseObject)
    {
      v6 = CMBaseObject;
      v7 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v7)
      {
        v7(v6);
      }
    }

    if (gLogCategory_APSenderSessionAirPlay <= 50 && (gLogCategory_APSenderSessionAirPlay != -1 || _LogCategory_Initialize()))
    {
      apsession_invalidateTransportStreams_cold_1();
    }

    CFRelease(*v2);
  }

  v8 = a1[2];
  if (v8)
  {
    v9 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v9)
    {
      v9(v8, 0, 0, 0);
    }

    v10 = FigTransportStreamGetCMBaseObject();
    if (v10)
    {
      v11 = v10;
      v12 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v12)
      {
        v12(v11);
      }
    }

    if (gLogCategory_APSenderSessionAirPlay <= 50 && (gLogCategory_APSenderSessionAirPlay != -1 || _LogCategory_Initialize()))
    {
      apsession_invalidateTransportStreams_cold_2();
    }

    CFRelease(a1[2]);
  }

  v13 = a1[3];
  if (v13)
  {
    v14 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v14)
    {
      v14(v13, 0, 0, 0);
    }

    v15 = FigTransportStreamGetCMBaseObject();
    if (v15)
    {
      v16 = v15;
      v17 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v17)
      {
        v17(v16);
      }
    }

    if (gLogCategory_APSenderSessionAirPlay <= 50 && (gLogCategory_APSenderSessionAirPlay != -1 || _LogCategory_Initialize()))
    {
      apsession_invalidateTransportStreams_cold_3();
    }

    CFRelease(a1[3]);
  }

  v18 = *a1;

  CFRelease(v18);
}

uint64_t apsession_dispatchPostFailedNotification(const void *a1)
{
  CMBaseObjectGetDerivedStorage();
  CFRetain(a1);
  return APSDispatchAsyncFHelper();
}

void __apsession_handleTransportSessionDisconnected_block_invoke(uint64_t a1)
{
  if (*(a1 + 32) == *(*(a1 + 40) + 320))
  {
    apsession_disconnectControlStream(*(a1 + 48));
  }

  else if (gLogCategory_APSenderSessionAirPlay <= 50 && (gLogCategory_APSenderSessionAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  CFRelease(*(a1 + 32));
  v2 = *(a1 + 48);

  CFRelease(v2);
}

void apsession_disconnectControlStream(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APSenderSessionAirPlay <= 50 && (gLogCategory_APSenderSessionAirPlay != -1 || _LogCategory_Initialize()))
  {
    apsession_disconnectControlStream_cold_1();
  }

  apsession_stopSenderNetworkClockIfNeeded(a1);
  apsession_ensureDisconnected(a1);
  FigSimpleMutexLock();
  v3 = *(DerivedStorage + 408);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 408) = 0;
  }

  v4 = *(DerivedStorage + 416);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 416) = 0;
  }

  v5 = *(DerivedStorage + 424);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 424) = 0;
  }

  FigSimpleMutexUnlock();
  v6 = *(DerivedStorage + 224);
  if (v6)
  {
    CFRelease(v6);
    *(DerivedStorage + 224) = 0;
  }

  v7 = *(DerivedStorage + 200);
  if (v7)
  {
    CFRelease(v7);
    *(DerivedStorage + 200) = 0;
  }

  *(DerivedStorage + 193) = 0;
  *(DerivedStorage + 195) = 0;
}

void apsession_postFailedNotificationCallback(uint64_t a1)
{
  apsession_postFailedNotification(*a1, *(a1 + 8), *(a1 + 16));
  v2 = *a1;

  CFRelease(v2);
}

void apsession_postFailedNotification(const void *a1, uint64_t a2, const void *a3)
{
  CMBaseObjectGetDerivedStorage();
  v5 = CFGetAllocator(a1);
  Mutable = CFDictionaryCreateMutable(v5, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v7 = Mutable;
    CFDictionarySetInt64();
    CFDictionarySetValue(v7, @"SessionState", a3);
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();

    CFRelease(v7);
  }

  else
  {
    CMNotificationCenterGetDefaultLocalCenter();

    CMNotificationCenterPostNotification();
  }
}

const void *apsession_getTimingPeerIdentifier()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 280);
  if (!v1)
  {
    return *(DerivedStorage + 248);
  }

  v2 = *MEMORY[0x277CEA238];

  return CFDictionaryGetValue(v1, v2);
}

void apsession_setTransportSession(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 320);
  if (v4 == a2)
  {
    if (a2)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v5 = DerivedStorage;
    if (v4 && gLogCategory_APSenderSessionAirPlay <= 50 && (gLogCategory_APSenderSessionAirPlay != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    if (a2)
    {
      if (gLogCategory_APSenderSessionAirPlay <= 50 && (gLogCategory_APSenderSessionAirPlay != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      *(v5 + 319) = 0;
      *(v5 + 311) = 0;
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterAddWeakListener();
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterAddWeakListener();
      if (gLogCategory_APSenderSessionAirPlay <= 30 && (gLogCategory_APSenderSessionAirPlay != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v4 = *(v5 + 320);
      *(v5 + 320) = a2;
LABEL_24:
      CFRetain(a2);
      if (!v4)
      {
        return;
      }

      goto LABEL_15;
    }

    v4 = *(v5 + 320);
    *(v5 + 320) = 0;
  }

  if (!v4)
  {
    return;
  }

LABEL_15:

  CFRelease(v4);
}

uint64_t apsession_getConnectionLatencyHint(uint64_t a1, int *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (*(DerivedStorage + 320))
  {
    if (*(DerivedStorage + 328))
    {
      v4 = APSGetFBOPropertyInt64();
      CMBaseObject = FigTransportStreamGetCMBaseObject();
      v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v6)
      {
        v6(CMBaseObject, *MEMORY[0x277CE4ED8], *MEMORY[0x277CBECE8], &cf);
      }

      if (v4 == 2)
      {
        v7 = 0;
        v8 = 1;
      }

      else
      {
        v7 = 0;
        if (APSIsDirectLinkInterface())
        {
          v8 = -1;
        }

        else
        {
          v8 = 0;
        }
      }
    }

    else
    {
      v7 = 4294895466;
      apsession_getConnectionLatencyHint_cold_1();
      v8 = 0;
    }
  }

  else
  {
    apsession_getConnectionLatencyHint_cold_2();
    v8 = 0;
    v7 = 4294895467;
  }

  if (a2)
  {
    *a2 = v8;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v7;
}
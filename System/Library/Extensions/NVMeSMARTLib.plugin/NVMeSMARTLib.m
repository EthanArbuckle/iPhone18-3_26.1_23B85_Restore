uint64_t NVMeSMARTClient::sSetIOLogLevel(NVMeSMARTClient *this, void *a2)
{
  v2 = *(this + 1);
  input = a2;
  return IOConnectCallScalarMethod(*(v2 + 52), 0xBu, &input, 1u, 0, 0);
}

uint64_t NVMeSMARTClient::sGetCriticalWarning(NVMeSMARTClient *this, BOOL *a2, unsigned __int8 *a3)
{
  v4 = *(this + 1);
  output = 0;
  outputCnt = 1;
  result = IOConnectCallScalarMethod(*(v4 + 52), 0x12u, 0, 0, &output, &outputCnt);
  *a2 = output != 0;
  return result;
}

uint64_t SMARTLibFactory(uint64_t a1, const void *a2)
{
  v3 = CFUUIDGetConstantUUIDWithBytes(0, 0xAAu, 0xFu, 0xA6u, 0xF9u, 0xC2u, 0xD6u, 0x45u, 0x7Fu, 0xB1u, 0xBu, 0x59u, 0xA1u, 0x32u, 0x53u, 0x29u, 0x2Fu);
  v4 = CFEqual(a2, v3);
  if (v4)
  {

    NVMeSMARTClient::alloc(v4);
  }

  return 0;
}

void NVMeSMARTClient::NVMeSMARTClient(NVMeSMARTClient *this)
{
  *this = off_4128;
  *(this + 2) = 1;
  *(this + 2) = &NVMeSMARTClient::sIOCFPlugInInterface;
  *(this + 3) = this;
  *(this + 4) = &NVMeSMARTClient::sNVMeSMARTInterface;
  *(this + 5) = this;
  NVMeSMARTClient::sFactoryAddRef(this);
}

{
  *this = off_4128;
  *(this + 2) = 1;
  *(this + 2) = &NVMeSMARTClient::sIOCFPlugInInterface;
  *(this + 3) = this;
  *(this + 4) = &NVMeSMARTClient::sNVMeSMARTInterface;
  *(this + 5) = this;
  NVMeSMARTClient::sFactoryAddRef(this);
}

void NVMeSMARTClient::sFactoryAddRef(NVMeSMARTClient *this)
{
  if (!atomic_fetch_add(&NVMeSMARTClient::sFactoryRefCount, 1u))
  {
    v2 = CFUUIDGetConstantUUIDWithBytes(0, 0x68u, 0x41u, 0x3Fu, 0x59u, 0x26u, 0x8Au, 0x47u, 0x87u, 0xBCu, 0x48u, 0x7Fu, 0x99u, 0x60u, 0x23u, 0x56u, 0x47u);
    CFRetain(v2);

    CFPlugInAddInstanceForFactory(v2);
  }
}

void NVMeSMARTClient::sFactoryRelease(NVMeSMARTClient *this)
{
  if (atomic_fetch_add(&NVMeSMARTClient::sFactoryRefCount, 0xFFFFFFFF) == 1)
  {
    v2 = CFUUIDGetConstantUUIDWithBytes(0, 0x68u, 0x41u, 0x3Fu, 0x59u, 0x26u, 0x8Au, 0x47u, 0x87u, 0xBCu, 0x48u, 0x7Fu, 0x99u, 0x60u, 0x23u, 0x56u, 0x47u);
    CFPlugInRemoveInstanceForFactory(v2);

    CFRelease(v2);
  }
}

void NVMeSMARTClient::~NVMeSMARTClient(NVMeSMARTClient *this)
{
  *this = off_4128;
  NVMeSMARTClient::sFactoryRelease(this);
}

{
  NVMeSMARTClient::~NVMeSMARTClient(this);

  operator delete();
}

uint64_t NVMeSMARTClient::QueryInterface(NVMeSMARTClient *this, CFUUIDBytes a2, void **a3)
{
  v5 = CFUUIDCreateFromUUIDBytes(0, a2);
  v6 = CFUUIDGetConstantUUIDWithBytes(kCFAllocatorSystemDefault, 0, 0, 0, 0, 0, 0, 0, 0, 0xC0u, 0, 0, 0, 0, 0, 0, 0x46u);
  if (CFEqual(v5, v6) || (v7 = CFUUIDGetConstantUUIDWithBytes(0, 0xC2u, 0x44u, 0xE8u, 0x58u, 0x10u, 0x9Cu, 0x11u, 0xD4u, 0x91u, 0xD4u, 0, 0x50u, 0xE4u, 0xC6u, 0x42u, 0x6Fu), CFEqual(v5, v7)))
  {
    v8 = this + 16;
    v9 = *this;
  }

  else
  {
    v12 = CFUUIDGetConstantUUIDWithBytes(0, 0xCCu, 0xD1u, 0xDBu, 0x19u, 0xFDu, 0x9Au, 0x4Du, 0xAFu, 0xBFu, 0x95u, 0x12u, 0x45u, 0x4Bu, 0x23u, 0xAu, 0xB6u);
    if (!CFEqual(v5, v12))
    {
      *a3 = 0;
      v10 = 2147483652;
      goto LABEL_5;
    }

    v8 = this + 32;
    v9 = *this;
  }

  *a3 = v8;
  (*(v9 + 48))(this);
  v10 = 0;
LABEL_5:
  CFRelease(v5);
  return v10;
}

uint64_t NVMeSMARTClient::AddRef(NVMeSMARTClient *this)
{
  v1 = (*(this + 2) + 1);
  *(this + 2) = v1;
  return v1;
}

uint64_t NVMeSMARTClient::Release(NVMeSMARTClient *this)
{
  v1 = (*(this + 2) - 1);
  if (v1 < 1)
  {
    if (*(this + 2) == 1)
    {
      *(this + 2) = 0;
      (*(*this + 8))(this);
    }

    return 0;
  }

  else
  {
    *(this + 2) = v1;
  }

  return v1;
}

uint64_t NVMeSMARTClient::Probe(NVMeSMARTClient *this, const __CFDictionary *a2, io_registry_entry_t entry, int *a4)
{
  properties = 0;
  if (!entry)
  {
    return 3758097090;
  }

  v4 = IORegistryEntryCreateCFProperties(entry, &properties, 0, 0);
  if (!v4)
  {
    CFDictionaryContainsKey(properties, @"IOCFPlugInTypes");
  }

  if (properties)
  {
    CFRelease(properties);
  }

  return v4;
}

uint64_t NVMeSMARTClient::Start(NVMeSMARTClient *this, const __CFDictionary *a2, io_service_t service)
{
  *(this + 12) = service;
  LODWORD(result) = IOServiceOpen(service, mach_task_self_, 0xCu, this + 13);
  if (*(this + 13))
  {
    return result;
  }

  else
  {
    return 3758097088;
  }
}

uint64_t NVMeSMARTClient::Stop(NVMeSMARTClient *this)
{
  v2 = *(this + 13);
  if (v2)
  {
    IOServiceClose(v2);
    *(this + 13) = 0;
  }

  return 0;
}

uint64_t NVMeSMARTClient::GetCriticalWarning(NVMeSMARTClient *this, BOOL *a2)
{
  output = 0;
  outputCnt = 1;
  result = IOConnectCallScalarMethod(*(this + 13), 0x12u, 0, 0, &output, &outputCnt);
  *a2 = output != 0;
  return result;
}

uint64_t NVMeSMARTClient::CopyAppleCareNANDInfo(NVMeSMARTClient *this, const __CFDictionary **a2)
{
  v3 = 3758097090;
  valuePtr = 0;
  v15[0] = kNANDHealthInfoMaxPercentUsedKey[0];
  v15[1] = kNANDHealthInfoHostReadErrorsKey[0];
  v15[2] = kNANDHealthInfoNumGrowBadBlocksKey[0];
  v15[3] = kNANDHealthInfoMaxE2EErrorsKey[0];
  v15[4] = kNANDHealthInfoDieFailures[0];
  v4 = NVMeSMARTClient::CopyNANDHealthInfo(this);
  if (v4)
  {
    v5 = v4;
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (Mutable)
    {
      v7 = Mutable;
      v8 = 0;
      v9 = 0;
      do
      {
        valuePtr = 0;
        v10 = v15[v8];
        Mutable = NVMeSMARTClient::GetNumberFromDictionarySafe(Mutable, v5, v10);
        if (Mutable)
        {
          Value = CFNumberGetValue(Mutable, kCFNumberSInt32Type, &valuePtr);
          NVMeSMARTClient::SetNumberValueForType(Value, v7, v10, &valuePtr, kCFNumberSInt32Type);
        }

        else
        {
          v9 = 1;
        }

        ++v8;
      }

      while (v8 != 5);
      v12 = CFDictionaryGetValue(v5, kNANDHealthInfoAssertHistoryKey[0]);
      if (v12)
      {
        CFDictionarySetValue(v7, kNANDHealthInfoAssertHistoryKey[0], v12);
      }

      if (v9 == 1)
      {
        valuePtr = 1;
        NVMeSMARTClient::SetNumberValueForType(v12, v7, kNANDInfoErrorKey, &valuePtr, kCFNumberSInt32Type);
      }

      v3 = 0;
      *a2 = v7;
    }

    CFRelease(v5);
  }

  return v3;
}

__CFDictionary *NVMeSMARTClient::CopyNANDHealthInfo(NVMeSMARTClient *this)
{
  v26[0] = kNANDHealthInfoFWUpdatesKey[0];
  v26[1] = kNANDHealthInfoIntPartitionUsed[0];
  v26[2] = kNANDHealthInfoUserPartitionUsed[0];
  valuePtr = 0;
  v25[0] = kNANDHealthInfoE2E_H2F_VL_LBA[0];
  v25[1] = kNANDHealthInfoE2E_H2F_VL_Corr[0];
  v25[2] = kNANDHealthInfoE2E_H2F_VL_UECC[0];
  v25[3] = kNANDHealthInfoE2E_H2F_SL_LBA[0];
  v25[4] = kNANDHealthInfoE2E_H2F_SL_Corr[0];
  v25[5] = kNANDHealthInfoE2E_H2F_SL_UECC[0];
  v25[6] = kNANDHealthInfoE2E_F2H_VL_LBA[0];
  v25[7] = kNANDHealthInfoE2E_F2H_VL_Corr[0];
  v25[8] = kNANDHealthInfoE2E_F2H_VL_UECC[0];
  v25[9] = kNANDHealthInfoE2E_F2H_SL_LBA[0];
  v25[10] = kNANDHealthInfoE2E_F2H_SL_Corr[0];
  v25[11] = kNANDHealthInfoE2E_F2H_SL_UECC[0];
  v22 = kNANDHealthInfoSpareAvailablePercent[0];
  v23 = kNANDHealthInfoNumGrowBadBlocksKey[0];
  v1 = NVMeSMARTClient::CopyNANDInfo(this);
  if (v1)
  {
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v3 = Mutable;
    if (Mutable)
    {
      v4 = 0;
      v5 = 0;
      HIDWORD(valuePtr) = 0;
      do
      {
        v6 = v26[v4];
        Mutable = NVMeSMARTClient::GetNumberFromDictionarySafe(Mutable, v1, v6);
        if (Mutable)
        {
          Value = CFNumberGetValue(Mutable, kCFNumberSInt32Type, &valuePtr);
          NVMeSMARTClient::SetNumberValueForType(Value, v3, v6, &valuePtr, kCFNumberSInt32Type);
          if (v5 < valuePtr)
          {
            HIDWORD(valuePtr) = valuePtr;
            v5 = valuePtr;
          }
        }

        ++v4;
      }

      while (v4 != 3);
      NVMeSMARTClient::SetNumberValueForType(Mutable, v3, kNANDHealthInfoMaxPercentUsedKey[0], &valuePtr + 4, kCFNumberSInt32Type);
      v9 = 0;
      HIDWORD(valuePtr) = 0;
      do
      {
        v10 = v25[v9];
        NumberFromDictionarySafe = NVMeSMARTClient::GetNumberFromDictionarySafe(NumberFromDictionarySafe, v1, v10);
        if (NumberFromDictionarySafe)
        {
          v11 = CFNumberGetValue(NumberFromDictionarySafe, kCFNumberSInt32Type, &valuePtr);
          NVMeSMARTClient::SetNumberValueForType(v11, v3, v10, &valuePtr, kCFNumberSInt64Type);
          if (HIDWORD(valuePtr) < valuePtr)
          {
            HIDWORD(valuePtr) = valuePtr;
          }
        }

        ++v9;
      }

      while (v9 != 12);
      NVMeSMARTClient::SetNumberValueForType(NumberFromDictionarySafe, v3, kNANDHealthInfoMaxE2EErrorsKey[0], &valuePtr + 4, kCFNumberSInt32Type);
      v13 = NVMeSMARTClient::GetNumberFromDictionarySafe(v12, v1, kNANDHealthInfoRAIDSMARTErrors[0]);
      if (v13)
      {
        v14 = CFNumberGetValue(v13, kCFNumberSInt32Type, &valuePtr);
        NVMeSMARTClient::SetNumberValueForType(v14, v3, kNANDHealthInfoHostReadErrorsKey[0], &valuePtr, kCFNumberSInt32Type);
      }

      v15 = &v23;
      v16 = 1;
      do
      {
        v17 = v16;
        LODWORD(valuePtr) = 0;
        v18 = *v15;
        v13 = NVMeSMARTClient::GetNumberFromDictionarySafe(v13, v1, *v15);
        if (v13)
        {
          v19 = CFNumberGetValue(v13, kCFNumberSInt32Type, &valuePtr);
          NVMeSMARTClient::SetNumberValueForType(v19, v3, v18, &valuePtr, kCFNumberSInt32Type);
        }

        v16 = 0;
        v15 = &v22;
      }

      while ((v17 & 1) != 0);
    }

    v20 = CFDictionaryGetValue(v1, kNANDHealthInfoAssertHistoryKey[0]);
    if (v20)
    {
      CFDictionarySetValue(v3, kNANDHealthInfoAssertHistoryKey[0], v20);
    }
  }

  else
  {
    v3 = 0;
  }

  CFRelease(v1);
  return v3;
}

CFNumberRef NVMeSMARTClient::GetNumberFromDictionarySafe(NVMeSMARTClient *this, CFDictionaryRef theDict, const __CFString *key)
{
  valuePtr = 0;
  result = CFDictionaryGetValue(theDict, key);
  if (!result)
  {
    return CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &valuePtr);
  }

  return result;
}

void NVMeSMARTClient::SetNumberValueForType(NVMeSMARTClient *this, __CFDictionary *a2, const __CFString *a3, const void *valuePtr, CFNumberType theType)
{
  v7 = CFNumberCreate(kCFAllocatorDefault, theType, valuePtr);
  if (v7)
  {
    v8 = v7;
    CFDictionarySetValue(a2, a3, v7);

    CFRelease(v8);
  }
}

uint64_t NVMeSMARTClient::CopyOTANANDInfo(NVMeSMARTClient *this, const __CFDictionary **a2)
{
  valuePtr = 0;
  v14[0] = kNANDHealthInfoMaxPercentUsedKey[0];
  v14[1] = kNANDHealthInfoHostReadErrorsKey[0];
  v14[2] = kNANDHealthInfoNumGrowBadBlocksKey[0];
  v14[3] = kNANDHealthInfoE2E_H2F_VL_LBA[0];
  v14[4] = kNANDHealthInfoE2E_H2F_VL_Corr[0];
  v14[5] = kNANDHealthInfoE2E_H2F_VL_UECC[0];
  v14[6] = kNANDHealthInfoE2E_H2F_SL_LBA[0];
  v14[7] = kNANDHealthInfoE2E_H2F_SL_Corr[0];
  v14[8] = kNANDHealthInfoE2E_H2F_SL_UECC[0];
  v14[9] = kNANDHealthInfoE2E_F2H_VL_LBA[0];
  v14[10] = kNANDHealthInfoE2E_F2H_VL_Corr[0];
  v14[11] = kNANDHealthInfoE2E_F2H_VL_UECC[0];
  v14[12] = kNANDHealthInfoE2E_F2H_SL_LBA[0];
  v14[13] = kNANDHealthInfoE2E_F2H_SL_Corr[0];
  v14[14] = kNANDHealthInfoE2E_F2H_SL_UECC[0];
  v3 = NVMeSMARTClient::CopyNANDHealthInfo(this);
  if (!v3)
  {
    return 3758097090;
  }

  v4 = v3;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v6 = Mutable;
  if (Mutable)
  {
    v7 = 0;
    v8 = 0;
LABEL_4:
    v9 = &v14[v7++];
    do
    {
      valuePtr = 0;
      v10 = *v9;
      Mutable = NVMeSMARTClient::GetNumberFromDictionarySafe(Mutable, v4, *v9);
      if (!Mutable)
      {
        v8 = 1;
        if (v7 != 15)
        {
          goto LABEL_4;
        }

        goto LABEL_11;
      }

      Value = CFNumberGetValue(Mutable, kCFNumberSInt32Type, &valuePtr);
      NVMeSMARTClient::SetNumberValueForType(Value, v6, v10, &valuePtr, kCFNumberSInt32Type);
      ++v7;
      ++v9;
    }

    while (v7 != 16);
    if ((v8 & 1) == 0)
    {
      goto LABEL_12;
    }

LABEL_11:
    valuePtr = 1;
    NVMeSMARTClient::SetNumberValueForType(Mutable, v6, kNANDInfoErrorKey, &valuePtr, kCFNumberSInt32Type);
  }

LABEL_12:
  CFRelease(v4);
  result = 0;
  *a2 = v6;
  return result;
}

uint64_t NVMeSMARTClient::CopyInternalLabNANDInfo(NVMeSMARTClient *this, const __CFDictionary **a2)
{
  valuePtr = 0;
  v17 = -1;
  v18 = -1;
  v20[0] = kNANDHealthInfoMaxPercentUsedKey[0];
  v20[1] = kNANDHealthInfoHostReadErrorsKey[0];
  v20[2] = kNANDHealthInfoNumGrowBadBlocksKey[0];
  v20[3] = kNANDHealthInfoMaxE2EErrorsKey[0];
  v20[4] = kNANDHealthInfoSpareAvailablePercent[0];
  v3 = NVMeSMARTClient::CopyNANDHealthInfo(this);
  if (!v3)
  {
    return 3758097090;
  }

  v4 = v3;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v6 = Mutable;
  if (Mutable)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      valuePtr = 0;
      v9 = v20[v7];
      Mutable = NVMeSMARTClient::GetNumberFromDictionarySafe(Mutable, v4, v9);
      if (Mutable)
      {
        Value = CFNumberGetValue(Mutable, kCFNumberSInt32Type, &valuePtr);
        NVMeSMARTClient::SetNumberValueForType(Value, v6, v9, &valuePtr, kCFNumberSInt32Type);
      }

      else
      {
        v8 = 1;
      }

      ++v7;
    }

    while (v7 != 5);
    valuePtr = 0;
    NVMeSMARTClient::SetNumberValueForType(Mutable, v6, kNANDHealthInfoIsNANDRetirableKey[0], &valuePtr, kCFNumberSInt32Type);
    NumberFromDictionarySafe = NVMeSMARTClient::GetNumberFromDictionarySafe(v11, v4, kNANDHealthInfoMaxPercentUsedKey[0]);
    if (NumberFromDictionarySafe)
    {
      NumberFromDictionarySafe = CFNumberGetValue(NumberFromDictionarySafe, kCFNumberSInt32Type, &v17);
    }

    v13 = NVMeSMARTClient::GetNumberFromDictionarySafe(NumberFromDictionarySafe, v4, kNANDHealthInfoSpareAvailablePercent[0]);
    if (!v13 || (v13 = CFNumberGetValue(v13, kCFNumberSInt32Type, &v18), v18 < 100) || v17 >= 100)
    {
      valuePtr = 1;
      NVMeSMARTClient::SetNumberValueForType(v13, v6, kNANDHealthInfoIsNANDRetirableKey[0], &valuePtr, kCFNumberSInt32Type);
    }
  }

  else
  {
    v8 = 0;
  }

  v15 = CFDictionaryGetValue(v4, kNANDHealthInfoAssertHistoryKey[0]);
  if (v15)
  {
    CFDictionarySetValue(v6, kNANDHealthInfoAssertHistoryKey[0], v15);
  }

  CFRelease(v4);
  if (v8 == 1)
  {
    valuePtr = 1;
    NVMeSMARTClient::SetNumberValueForType(v16, v6, kNANDInfoErrorKey, &valuePtr, kCFNumberSInt32Type);
  }

  result = 0;
  *a2 = v6;
  return result;
}

void *sub_1B54(int a1, const void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char __dst)
{

  return memmove(&__dst, a2, v16);
}

uint64_t NVMeSMARTClient::sGetIdentifyData(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return sub_1B48();
  }

  v2 = *(*(a1 + 8) + 52);
  sub_1B20();
  return IOConnectCallStructMethod(v3, v4, v5, v6, v7, v8);
}

uint64_t NVMeSMARTClient::sGetFieldCounters(NVMeSMARTClient *this, void *a2, char *a3)
{
  if (!a2)
  {
    return 3758097090;
  }

  v3 = *(*(this + 1) + 52);
  sub_1B20();
  return IOConnectCallScalarMethod(v4, v5, v6, v7, v8, v9);
}

uint64_t NVMeSMARTClient::sGetLogPage(NVMeSMARTClient *this, void *a2, void *a3)
{
  if (!a2)
  {
    return sub_1B48();
  }

  v3 = *(*(this + 1) + 52);
  sub_1B20();
  return IOConnectCallStructMethod(v4, v5, v6, v7, v8, v9);
}

uint64_t NVMeSMARTClient::sGetSamsungDebugLog(NVMeSMARTClient *this, void *a2, char *a3)
{
  if (!a2)
  {
    return sub_1B48();
  }

  v3 = *(*(this + 1) + 52);
  sub_1B20();
  return IOConnectCallStructMethod(v4, v5, v6, v7, v8, v9);
}

uint64_t NVMeSMARTClient::SMARTReadData(uint64_t a1, void *a2)
{
  v2 = 3758097090;
  if (a2)
  {
    sub_1B78();
    v6 = malloc_type_malloc(0x1000uLL, v5);
    if (v6)
    {
      v7 = v6;
      bzero(v6, 0x1000uLL);
      v8 = *(a1 + 52);
      sub_1B20();
      v2 = IOConnectCallScalarMethod(v9, v10, v11, v12, v13, v14);
      if (!v2)
      {
        memmove(a2, v7, 0x200uLL);
      }

      free(v7);
    }
  }

  return v2;
}

uint64_t NVMeSMARTClient::GetIdentifyData(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return sub_1B48();
  }

  v2 = *(a1 + 52);
  sub_1B20();
  return IOConnectCallStructMethod(v3, v4, v5, v6, v7, v8);
}

void NVMeSMARTClient::GetSystemCounters(NVMeSMARTClient *this, char *a2, unsigned int *a3)
{
  sub_1AE4();
  if (v5)
  {
    if (v3)
    {
      v6 = sub_1AC8(v4);
      v10 = IOConnectCallScalarMethod(v6, 6u, v7, 1u, v8, v9);
      sub_1B14(v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20);
    }
  }
}

void NVMeSMARTClient::GetSystemCountersV2(NVMeSMARTClient *this, char *a2, unsigned int *a3)
{
  sub_1AE4();
  if (v5)
  {
    if (v3)
    {
      v6 = sub_1AC8(v4);
      v10 = IOConnectCallScalarMethod(v6, 9u, v7, 1u, v8, v9);
      sub_1B14(v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20);
    }
  }
}

void NVMeSMARTClient::GetAlgorithmCounters(NVMeSMARTClient *this, char *a2, unsigned int *a3)
{
  sub_1AE4();
  if (v5)
  {
    if (v3)
    {
      v6 = sub_1AC8(v4);
      v10 = IOConnectCallScalarMethod(v6, 7u, v7, 1u, v8, v9);
      sub_1B14(v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20);
    }
  }
}

void NVMeSMARTClient::GetAlgorithmCountersV2(NVMeSMARTClient *this, char *a2, unsigned int *a3)
{
  sub_1AE4();
  if (v5)
  {
    if (v3)
    {
      v6 = sub_1AC8(v4);
      v10 = IOConnectCallScalarMethod(v6, 0xAu, v7, 1u, v8, v9);
      sub_1B14(v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20);
    }
  }
}

uint64_t NVMeSMARTClient::GetIOLogLevel(NVMeSMARTClient *this, unsigned int *a2)
{
  output = 0;
  outputCnt = 1;
  result = IOConnectCallScalarMethod(*(this + 13), 0xCu, 0, 0, &output, &outputCnt);
  if (HIDWORD(output))
  {
    return 3758097128;
  }

  *a2 = output;
  return result;
}

uint64_t NVMeSMARTClient::IOLogExport(NVMeSMARTClient *this, char *a2, unsigned int *a3)
{
  v3 = 3758097090;
  if (a2 && a3)
  {
    v5 = sub_1B2C(this);
    v9 = IOConnectCallScalarMethod(v5, 0xDu, v6, 1u, v7, v8);
    *a3 = 0;
    return v9;
  }

  return v3;
}

uint64_t NVMeSMARTClient::IOLogExportHeader(NVMeSMARTClient *this, char *a2, unsigned int *a3)
{
  v3 = 3758097090;
  if (a2 && a3)
  {
    v5 = sub_1B2C(this);
    v9 = IOConnectCallScalarMethod(v5, 0xEu, v6, 1u, v7, v8);
    *a3 = 0;
    return v9;
  }

  return v3;
}

uint64_t NVMeSMARTClient::GetFieldCounters(NVMeSMARTClient *this, char *a2)
{
  if (!a2)
  {
    return 3758097090;
  }

  v2 = *(this + 13);
  sub_1B20();
  return IOConnectCallScalarMethod(v3, v4, v5, v6, v7, v8);
}

void NVMeSMARTClient::GetFieldCountersV2(NVMeSMARTClient *this, char *a2, unsigned int *a3)
{
  sub_1AE4();
  if (v5)
  {
    if (v3)
    {
      v6 = sub_1AC8(v4);
      v10 = IOConnectCallScalarMethod(v6, 8u, v7, 1u, v8, v9);
      sub_1B14(v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20);
    }
  }
}

void NVMeSMARTClient::ExportStats(NVMeSMARTClient *this, char *a2, unsigned int *a3)
{
  sub_1AE4();
  if (v5)
  {
    if (v3)
    {
      v6 = sub_1AC8(v4);
      v10 = IOConnectCallScalarMethod(v6, 0xFu, v7, 1u, v8, v9);
      sub_1B14(v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20);
    }
  }
}

void NVMeSMARTClient::ReadStats(NVMeSMARTClient *this, char *a2, unsigned int *a3)
{
  sub_1AE4();
  if (v5)
  {
    if (v3)
    {
      v6 = sub_1AC8(v4);
      v10 = IOConnectCallScalarMethod(v6, 0x10u, v7, 1u, v8, v9);
      sub_1B14(v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20);
    }
  }
}

void NVMeSMARTClient::ReadBandStats(NVMeSMARTClient *this, char *a2, unsigned int *a3)
{
  sub_1AE4();
  if (v5)
  {
    if (v3)
    {
      v6 = sub_1AC8(v4);
      v10 = IOConnectCallScalarMethod(v6, 0x11u, v7, 1u, v8, v9);
      sub_1B14(v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20);
    }
  }
}

uint64_t NVMeSMARTClient::GetLogPage(NVMeSMARTClient *this, void *a2)
{
  if (!a2)
  {
    return sub_1B48();
  }

  v2 = *(this + 13);
  sub_1B20();
  return IOConnectCallStructMethod(v3, v4, v5, v6, v7, v8);
}

uint64_t NVMeSMARTClient::GetSamsungDebugLogCount(NVMeSMARTClient *this, unsigned int a2, unsigned int *a3)
{
  output = 0;
  outputCnt = 1;
  input = a2;
  result = IOConnectCallScalarMethod(*(this + 13), 0x14u, &input, 1u, &output, &outputCnt);
  if (!a3 || result)
  {
    if (!a3)
    {
      return result;
    }

    v5 = 0;
  }

  else
  {
    v5 = output;
    if (HIDWORD(output))
    {
      return 3758097128;
    }

    result = 0;
  }

  *a3 = v5;
  return result;
}

uint64_t NVMeSMARTClient::GetSamsungDebugLog(NVMeSMARTClient *this, char *a2)
{
  if (!a2)
  {
    return sub_1B48();
  }

  v2 = *(this + 13);
  sub_1B20();
  return IOConnectCallStructMethod(v3, v4, v5, v6, v7, v8);
}

void NVMeSMARTClient::GetDefectEntries(NVMeSMARTClient *this, char *a2, unsigned int *a3)
{
  sub_1AE4();
  if (v5)
  {
    if (v3)
    {
      v6 = sub_1AC8(v4);
      v10 = IOConnectCallScalarMethod(v6, 0x15u, v7, 1u, v8, v9);
      sub_1B14(v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20);
    }
  }
}

void NVMeSMARTClient::GetNANDGeometry(NVMeSMARTClient *this, char *a2, unsigned int *a3)
{
  sub_1AE4();
  if (v5)
  {
    if (v3)
    {
      v6 = sub_1AC8(v4);
      v10 = IOConnectCallScalarMethod(v6, 0x16u, v7, 1u, v8, v9);
      sub_1B14(v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20);
    }
  }
}

uint64_t NVMeSMARTClient::GetErrorPayloads(NVMeSMARTClient *this, char *a2, unsigned int *a3)
{
  v6 = 0;
  input = a2;
  result = 3758097090;
  if (a2)
  {
    if (a3)
    {
      result = IOConnectCallScalarMethod(*(this + 13), 0x17u, &input, 1u, &v6, 0);
      *a3 = v6;
    }
  }

  return result;
}

void NVMeSMARTClient::GetMSPCounters(NVMeSMARTClient *this, unsigned int a2, char *a3, unsigned int *a4)
{
  if (a3)
  {
    if (a4)
    {
      v4 = sub_1AF8(this);
      v8 = IOConnectCallStructMethod(v4, 0x18u, v5, 0x10uLL, v6, v7);
      sub_1B6C(v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, SHIDWORD(v19));
    }
  }
}

void NVMeSMARTClient::GetFieldCountersSnapshot(NVMeSMARTClient *this, char *a2, unsigned int a3, unsigned int *a4)
{
  if (a2)
  {
    if (a4)
    {
      v4 = sub_1AF8(this);
      v8 = IOConnectCallStructMethod(v4, 0x19u, v5, 0x10uLL, v6, v7);
      sub_1B6C(v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, SHIDWORD(v19));
    }
  }
}

void NVMeSMARTClient::ExportStatsSnapshot(NVMeSMARTClient *this, char *a2, unsigned int a3, unsigned int *a4)
{
  if (a2)
  {
    if (a4)
    {
      v4 = sub_1AF8(this);
      v8 = IOConnectCallStructMethod(v4, 0x1Au, v5, 0x10uLL, v6, v7);
      sub_1B6C(v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, SHIDWORD(v19));
    }
  }
}

void NVMeSMARTClient::ReadStatsSnapshot(NVMeSMARTClient *this, char *a2, unsigned int a3, unsigned int *a4)
{
  if (a2)
  {
    if (a4)
    {
      v4 = sub_1AF8(this);
      v8 = IOConnectCallStructMethod(v4, 0x1Bu, v5, 0x10uLL, v6, v7);
      sub_1B6C(v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, SHIDWORD(v19));
    }
  }
}

__CFDictionary *NVMeSMARTClient::CopyNANDInfo(NVMeSMARTClient *this)
{
  v38[0] = kNANDHealthInfoE2E_H2F_VL_LBA[0];
  v38[1] = kNANDHealthInfoE2E_H2F_VL_Corr[0];
  v38[2] = kNANDHealthInfoE2E_H2F_VL_UECC[0];
  v38[3] = kNANDHealthInfoE2E_H2F_SL_LBA[0];
  v38[4] = kNANDHealthInfoE2E_H2F_SL_Corr[0];
  v38[5] = kNANDHealthInfoE2E_H2F_SL_UECC[0];
  v38[6] = kNANDHealthInfoE2E_F2H_VL_LBA[0];
  v38[7] = kNANDHealthInfoE2E_F2H_VL_Corr[0];
  v38[8] = kNANDHealthInfoE2E_F2H_VL_UECC[0];
  v38[9] = kNANDHealthInfoE2E_F2H_SL_LBA[0];
  v38[10] = kNANDHealthInfoE2E_F2H_SL_Corr[0];
  v38[11] = kNANDHealthInfoE2E_F2H_SL_UECC[0];
  sub_1B78();
  v3 = malloc_type_malloc(0xFF000uLL, v2);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  output = 0;
  input = v3;
  HIDWORD(v35) = 1;
  if (!IOConnectCallScalarMethod(*(this + 13), 9u, &input, 1u, &output, &v35 + 1))
  {
    v5 = output;
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v13 = Mutable;
    v14 = 0;
    v33 = v4;
    v34 = (v4 + 2);
    v31 = (v4 + 4);
    HIDWORD(v32) = v5;
    while (1)
    {
      v15 = *&v4[v14];
      v16 = *(v34 + v14);
      v17 = v14 + 4;
      input = 0;
      v18 = &v4[v17];
      switch(v15)
      {
        case 9:
          v19 = sub_1B54(Mutable, v18, v7, v8, v9, v10, v11, v12, v30, v31, v32, v33, v34, v35, output, input);
          v20 = kNANDHealthInfoRAIDSMARTErrors[0];
          goto LABEL_36;
        case 12:
          v19 = sub_1B54(Mutable, v18, v7, v8, v9, v10, v11, v12, v30, v31, v32, v33, v34, v35, output, input);
          v20 = kNANDHealthInfoSpareAvailablePercent[0];
          goto LABEL_36;
        case 117:
          Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
          if (Mutable)
          {
            v22 = Mutable;
            if (!v16)
            {
LABEL_34:
              CFDictionarySetValue(v13, kNANDHealthInfoAssertHistoryKey[0], v22);
              v4 = v33;
              v5 = HIDWORD(v32);
              break;
            }

            v23 = 0;
            v24 = (v31 + v17);
            while (2)
            {
              LODWORD(output) = *(v24 - 1);
              HIDWORD(v35) = *v24;
              v25 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &output);
              v26 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &v35 + 4);
              v27 = v26;
              if (v25 && v26)
              {
                CFDictionarySetValue(v22, v25, v26);
                goto LABEL_30;
              }

              if (v25)
              {
LABEL_30:
                CFRelease(v25);
              }

              if (v27)
              {
                CFRelease(v27);
              }

              v24 += 5;
              v23 += 20;
              if (v23 >= v16)
              {
                goto LABEL_34;
              }

              continue;
            }
          }

          break;
        case 1048:
          v19 = sub_1B54(Mutable, v18, v7, v8, v9, v10, v11, v12, v30, v31, v32, v33, v34, v35, output, input);
          v20 = kNANDHealthInfoIntPartitionUsed[0];
          goto LABEL_36;
        case 1049:
          v19 = sub_1B54(Mutable, v18, v7, v8, v9, v10, v11, v12, v30, v31, v32, v33, v34, v35, output, input);
          v20 = kNANDHealthInfoUserPartitionUsed[0];
          goto LABEL_36;
        case 1525:
          v19 = sub_1B54(Mutable, v18, v7, v8, v9, v10, v11, v12, v30, v31, v32, v33, v34, v35, output, input);
          v20 = kNANDHealthInfoNumGrowBadBlocksKey[0];
          goto LABEL_36;
        case 1829:
          if (v16 == 96)
          {
            for (i = 0; i != 12; ++i)
            {
              input = *&v4[v17 + i * 8];
              NVMeSMARTClient::SetNumberValueForType(Mutable, v13, v38[i], &input, kCFNumberSInt64Type);
            }
          }

          break;
        case 2125:
          v19 = sub_1B54(Mutable, v18, v7, v8, v9, v10, v11, v12, v30, v31, v32, v33, v34, v35, output, input);
          v20 = kNANDHealthInfoDieFailures[0];
          goto LABEL_36;
        case 1998:
          v19 = memmove(&input, &v4[v17], v16);
          v20 = kNANDHealthInfoFWUpdatesKey[0];
LABEL_36:
          NVMeSMARTClient::SetNumberValueForType(v19, v13, v20, &input, kCFNumberSInt64Type);
          break;
      }

      v14 = v17 + v16;
      if (v15 == 0xFFFF || v14 >= v5)
      {
        goto LABEL_42;
      }
    }
  }

  v13 = 0;
LABEL_42:
  free(v4);
  return v13;
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}
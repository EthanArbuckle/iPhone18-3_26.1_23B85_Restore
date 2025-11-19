BOOL APSIsFBOPropertyAvailable(uint64_t a1, uint64_t a2)
{
  cf = 0;
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v4)
  {
    return 0;
  }

  v5 = v4(a1, a2, *MEMORY[0x277CBECE8], &cf) == 0;
  if (cf)
  {
    CFRelease(cf);
  }

  return v5;
}

BOOL APSIsFBOPropertyEqual(uint64_t a1, uint64_t a2, CFTypeRef a3, int *a4)
{
  cf1 = 0;
  if (a1)
  {
    v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v8)
    {
      v9 = v8(a1, a2, *MEMORY[0x277CBECE8], &cf1);
      if (v9)
      {
        v10 = 0;
      }

      else
      {
        if (cf1 == a3)
        {
          v10 = 1;
        }

        else
        {
          v10 = 0;
          if (a3 && cf1)
          {
            v10 = CFEqual(cf1, a3) != 0;
          }
        }

        v9 = 0;
      }
    }

    else
    {
      v10 = 0;
      v9 = -12782;
    }
  }

  else
  {
    v10 = 0;
    v9 = -6705;
  }

  if (a4)
  {
    *a4 = v9;
  }

  if (cf1)
  {
    CFRelease(cf1);
  }

  return v10;
}

uint64_t APSSetFBOPropertyCString(uint64_t a1, uint64_t a2, char *cStr, CFIndex numBytes)
{
  if (numBytes == -1)
  {
    v6 = CFStringCreateWithCString(0, cStr, 0x8000100u);
    if (v6)
    {
      goto LABEL_3;
    }

    return 4294960596;
  }

  v6 = CFStringCreateWithBytes(0, cStr, numBytes, 0x8000100u, 0);
  if (!v6)
  {
    return 4294960596;
  }

LABEL_3:
  v7 = v6;
  VTable = CMBaseObjectGetVTable();
  v9 = *(*(VTable + 8) + 56);
  if (v9)
  {
    v10 = *(VTable + 8) + 56;
    v11 = v9(a1, a2, v7);
  }

  else
  {
    v11 = 4294954514;
  }

  CFRelease(v7);
  return v11;
}

uint64_t APSSetFBOPropertyData(uint64_t a1, uint64_t a2, UInt8 *bytes, CFIndex length)
{
  v6 = CFDataCreate(0, bytes, length);
  if (!v6)
  {
    return 4294960596;
  }

  v7 = v6;
  VTable = CMBaseObjectGetVTable();
  v9 = *(*(VTable + 8) + 56);
  if (v9)
  {
    v10 = *(VTable + 8) + 56;
    v11 = v9(a1, a2, v7);
  }

  else
  {
    v11 = 4294954514;
  }

  CFRelease(v7);
  return v11;
}

uint64_t APSSetFBOPropertyDouble(uint64_t a1, uint64_t a2, double a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(0, kCFNumberDoubleType, &valuePtr);
  if (!v5)
  {
    return 4294960568;
  }

  v6 = v5;
  VTable = CMBaseObjectGetVTable();
  v8 = *(*(VTable + 8) + 56);
  if (v8)
  {
    v9 = *(VTable + 8) + 56;
    v10 = v8(a1, a2, v6);
  }

  else
  {
    v10 = 4294954514;
  }

  CFRelease(v6);
  return v10;
}

uint64_t APSSetFBOPropertyDictionary(uint64_t a1, uint64_t a2, CFDictionaryRef theDict)
{
  if (!theDict)
  {
    return 4294960591;
  }

  Copy = CFDictionaryCreateCopy(*MEMORY[0x277CBECE8], theDict);
  if (!Copy)
  {
    return 4294960568;
  }

  v6 = Copy;
  VTable = CMBaseObjectGetVTable();
  v8 = *(*(VTable + 8) + 56);
  if (v8)
  {
    v9 = *(VTable + 8) + 56;
    v10 = v8(a1, a2, v6);
  }

  else
  {
    v10 = 4294954514;
  }

  CFRelease(v6);
  return v10;
}

uint64_t APSRecycleBinGetTypeID()
{
  if (gAPSRecycleBinInitOnce != -1)
  {
    dispatch_once_f(&gAPSRecycleBinInitOnce, 0, _APSRecycleBinGetTypeID);
  }

  return gAPSRecycleBinTypeID;
}

uint64_t _APSRecycleBinGetTypeID()
{
  result = _CFRuntimeRegisterClass();
  gAPSRecycleBinTypeID = result;
  return result;
}

void *_APSRecycleBinFinalize(void *a1)
{
  _X20 = 0;
  v3 = a1[12];
  _X21 = 0;
  __asm { CASPA           X20, X21, X20, X21, [X8] }

  if (_X20)
  {
    do
    {
      v10 = _X20[1];
      v11 = a1[5];
      if (v11)
      {
        v11(*_X20);
      }

      free(_X20);
      _X20 = v10;
    }

    while (v10);
  }

  _X0 = 0;
  _X1 = 0;
  __asm { CASPA           X0, X1, X0, X1, [X8]; void * }

  if (result)
  {
    do
    {
      v15 = result[1];
      free(result);
      result = v15;
    }

    while (v15);
  }

  v16 = a1[6];
  if (v16)
  {
    v17 = a1[2];

    return v16(v17);
  }

  return result;
}

uint64_t APSRecycleBinCreate(__int128 *a1, uint64_t a2, CFTypeRef *a3)
{
  if (!a3)
  {
    return 4294960591;
  }

  if (gAPSRecycleBinInitOnce != -1)
  {
    dispatch_once_f(&gAPSRecycleBinInitOnce, 0, _APSRecycleBinGetTypeID);
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    return 4294960568;
  }

  v7 = Instance;
  _X0 = 0;
  *(v7 + 16) = 0u;
  *(v7 + 80) = 0u;
  *(v7 + 96) = 0u;
  *(v7 + 48) = 0u;
  *(v7 + 64) = 0u;
  *(v7 + 32) = 0u;
  v9 = *(v7 + 64);
  do
  {
    _X5 = *(v7 + 72);
    __asm { CASPAL          X4, X5, X0, X1, [X9] }

    _ZF = _X4 == v9;
    v9 = _X4;
  }

  while (!_ZF);
  _X0 = 0;
  v17 = *(v7 + 80);
  do
  {
    _X5 = *(v7 + 88);
    __asm { CASPAL          X4, X5, X0, X1, [X9] }

    _ZF = _X4 == v17;
    v17 = _X4;
  }

  while (!_ZF);
  atomic_store(0, (v7 + 96));
  if (a1)
  {
    v20 = *a1;
    v21 = a1[1];
    *(v7 + 48) = *(a1 + 4);
    *(v7 + 16) = v20;
    *(v7 + 32) = v21;
  }

  if (a2)
  {
    if (*(v7 + 24))
    {
      v22 = 0;
      v23 = 0;
      while (1)
      {
        v24 = malloc_type_malloc(0x10uLL, 0xE0040CF218873uLL);
        if (!v24)
        {
          break;
        }

        _X22 = v24;
        v26 = (*(v7 + 24))(*(v7 + 16), v24);
        if (v26)
        {
          v30 = v26;
          free(_X22);
          goto LABEL_25;
        }

        _X22[1] = v22;
        v27 = *(v7 + 64);
        do
        {
          _X3 = *(v7 + 72);
          __asm { CASP            X2, X3, X22, X23, [X8] }

          _ZF = _X2 == v27;
          v27 = _X2;
        }

        while (!_ZF);
        atomic_fetch_add_explicit((v7 + 96), 1uLL, memory_order_relaxed);
        ++v23;
        v22 = _X22;
        if (v23 == a2)
        {
          __dmb(0xBu);
          goto LABEL_23;
        }
      }

      v30 = 4294960568;
    }

    else
    {
      v30 = 4294960561;
    }
  }

  else
  {
LABEL_23:
    v30 = 0;
    *a3 = CFRetain(v7);
  }

LABEL_25:
  CFRelease(v7);
  return v30;
}

uint64_t APSRecycleBinTakeItem(uint64_t a1, void *a2)
{
  v22 = 0;
  v2 = 4294960591;
  if (a1 && a2)
  {
    _X4 = 0;
    _X5 = 0;
    __asm { CASP            X4, X5, X4, X5, [X8] }

    _X6 = _X4;
    while (_X6)
    {
      _X2 = _X6;
      __dmb(9u);
      _X8 = _X6[1];
      _X7 = 0;
      __asm { CASPA           X6, X7, X8, X9, [X10] }

      if (_X6 == _X2)
      {
        _X4 = 0;
        v22 = *_X2;
        _X5 = 0;
        __asm { CASP            X4, X5, X4, X5, [X8] }

        do
        {
          _X2[1] = _X4;
          _X1 = 0;
          __asm { CASPL           X0, X1, X2, X3, [X8] }

          _ZF = _X0 == _X4;
          _X4 = _X0;
        }

        while (!_ZF);
LABEL_12:
        v2 = 0;
        *a2 = v22;
        return v2;
      }
    }

    v20 = *(a1 + 24);
    if (v20)
    {
      v2 = v20(*(a1 + 16), &v22);
      if (v2)
      {
        return v2;
      }

      goto LABEL_12;
    }

    return 4294960546;
  }

  return v2;
}

uint64_t APSRecycleBinAddItem(uint64_t a1, uint64_t a2)
{
  result = 4294960591;
  if (a1)
  {
    v4 = a2;
    if (a2)
    {
      _X0 = 0;
      _X1 = 0;
      __asm { CASP            X0, X1, X0, X1, [X8] }

      _X2 = _X0;
      while (_X2)
      {
        _X20 = _X2;
        __dmb(9u);
        _X4 = _X2[1];
        _X3 = 0;
        __asm { CASP            X2, X3, X4, X5, [X8] }

        if (_X2 == _X20)
        {
          goto LABEL_9;
        }
      }

      v16 = malloc_type_malloc(0x10uLL, 0xE0040CF218873uLL);
      if (!v16)
      {
        return 4294960568;
      }

      _X20 = v16;
      atomic_fetch_add_explicit((a1 + 96), 1uLL, memory_order_relaxed);
LABEL_9:
      v17 = *(a1 + 32);
      if (v17)
      {
        v4 = v17(v4);
      }

      _X0 = 0;
      *_X20 = v4;
      _X1 = 0;
      __asm { CASP            X0, X1, X0, X1, [X8] }

      do
      {
        _X20[1] = _X0;
        _X3 = 0;
        __asm { CASPL           X2, X3, X20, X21, [X8] }

        _ZF = _X2 == _X0;
        _X0 = _X2;
      }

      while (!_ZF);
      return 0;
    }
  }

  return result;
}

uint64_t APSEventRecorderGetTypeID()
{
  if (APSEventRecorderGetTypeID_once != -1)
  {
    dispatch_once_f(&APSEventRecorderGetTypeID_once, &APSEventRecorderGetTypeID_typeID, eventRecorder_registerCMClass);
  }

  return APSEventRecorderGetTypeID_typeID;
}

uint64_t eventRecorder_registerCMClass(uint64_t *a1)
{
  result = _CFRuntimeRegisterClass();
  *a1 = result;
  return result;
}

uint64_t APSEventRecorderCreate(int a1, const void *a2, unsigned int a3, int *a4, uint64_t a5, uint64_t *a6)
{
  if (!a3 || !a6)
  {
    APSLogErrorAt(0);
    return 4294895135;
  }

  v12 = *MEMORY[0x277CBECE8];
  if (APSEventRecorderGetTypeID_once != -1)
  {
    dispatch_once_f(&APSEventRecorderGetTypeID_once, &APSEventRecorderGetTypeID_typeID, eventRecorder_registerCMClass);
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    v23 = 4294895136;
    APSLogErrorAt(0);
    return v23;
  }

  v14 = Instance;
  *(Instance + 112) = 0;
  *(Instance + 80) = 0u;
  *(Instance + 96) = 0u;
  *(Instance + 48) = 0u;
  *(Instance + 64) = 0u;
  *(Instance + 16) = 0u;
  *(Instance + 32) = 0u;
  Mutable = pthread_mutex_init((Instance + 40), 0);
  if (Mutable)
  {
    v23 = Mutable;
LABEL_31:
    APSLogErrorAt(Mutable);
    CFRelease(v14);
    return v23;
  }

  v16 = a3;
  Mutable = malloc_type_calloc(a3, 0x18uLL, 0x10000400CE834B2uLL);
  *(v14 + 112) = Mutable;
  if (!Mutable)
  {
    v23 = 4294895136;
    goto LABEL_31;
  }

  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  *(v14 + 32) = Mutable;
  if (!Mutable)
  {
    v23 = 4294895136;
    goto LABEL_31;
  }

  *(v14 + 104) = a3;
  *(v14 + 16) = a1;
  if (a2)
  {
    v17 = CFRetain(a2);
  }

  else
  {
    v17 = 0;
  }

  *(v14 + 24) = v17;
  if (a4)
  {
    v18 = (*(v14 + 112) + 16);
    do
    {
      v19 = *a4++;
      *v18 = v19;
      v18 += 6;
      --v16;
    }

    while (v16);
  }

  if (a5)
  {
    eventRecorder_addChildToParent(a5, v14);
  }

  if (gLogCategory_APSEventRecorder <= 30 && (gLogCategory_APSEventRecorder != -1 || _LogCategory_Initialize()))
  {
    v20 = *(v14 + 24);
    v21 = *(v14 + 16);
    if (a5)
    {
      v22 = *(a5 + 24);
    }

    v25 = *(v14 + 104);
    LogPrintF();
  }

  v23 = 0;
  *a6 = v14;
  return v23;
}

uint64_t eventRecorder_addChildToParent(uint64_t a1, const void *a2)
{
  result = 4294895135;
  if (a1)
  {
    if (a2)
    {
      pthread_mutex_lock((a1 + 40));
      CFArrayAppendValue(*(a1 + 32), a2);
      pthread_mutex_unlock((a1 + 40));
      return 0;
    }
  }

  return result;
}

uint64_t APSEventRecorderGetType(uint64_t result)
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

uint64_t APSEventRecorderCopyName(uint64_t result, void *a2)
{
  if (result)
  {
    if (a2)
    {
      v3 = *(result + 24);
      if (v3)
      {
        v4 = CFRetain(v3);
      }

      else
      {
        v4 = 0;
      }

      result = 0;
      *a2 = v4;
    }

    else
    {
      APSLogErrorAt(0);
      return 4294895135;
    }
  }

  return result;
}

uint64_t APSEventRecorderGetEventTime(uint64_t result, int a2)
{
  if (result)
  {
    if ((a2 & 0xFFFF000) == *(result + 16) && (a2 & 0xFFFu) < *(result + 104))
    {
      v2 = (*(result + 112) + 24 * (a2 & 0xFFF));
      result = *v2;
      v3 = v2[1];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t APSEventRecorderResetEvent(uint64_t result, int a2)
{
  if (result && (a2 & 0xFFFF000) == *(result + 16) && (a2 & 0xFFFu) < *(result + 104))
  {
    v2 = (*(result + 112) + 24 * (a2 & 0xFFF));
    *v2 = 0;
    v2[1] = 0;
  }

  return result;
}

uint64_t APSEventRecorderReset(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 104);
    if (v2)
    {
      v3 = 0;
      v4 = 24 * v2;
      do
      {
        v5 = (*(result + 112) + v3);
        *v5 = 0;
        v5[1] = 0;
        v3 += 24;
      }

      while (v4 != v3);
    }

    pthread_mutex_lock((result + 40));
    CFArrayRemoveAllValues(*(v1 + 32));

    return pthread_mutex_unlock((v1 + 40));
  }

  return result;
}

uint64_t APSEventRecorderGetTimeBetweenEventsInMilliSecond(uint64_t a1, int a2, uint64_t a3, int a4)
{
  if (!a1 || !a3)
  {
    return 0;
  }

  if ((a2 & 0xFFFF000) == *(a1 + 16) && (a2 & 0xFFFu) < *(a1 + 104))
  {
    v5 = *(*(a1 + 112) + 24 * (a2 & 0xFFF));
  }

  else
  {
    v5 = 0;
  }

  if ((a4 & 0xFFFF000) == *(a3 + 16) && (a4 & 0xFFFu) < *(a3 + 104))
  {
    v6 = *(*(a3 + 112) + 24 * (a4 & 0xFFF));
  }

  else
  {
    v6 = 0;
  }

  if (v6 < v5)
  {
    APSLogErrorAt(0);
    return 0;
  }

  return UpTicksToMilliseconds();
}

uint64_t APSEventRecorderGetTimeBetweenEventsInMilliSecondRecursive(const void *a1, int a2, const void *a3, int a4)
{
  v5 = 0;
  APSEventRecorderGetTimeBetweenEventsInMilliSecondRecursiveEx(a1, a2, a3, a4, 0, &v5);
  return v5;
}

uint64_t APSEventRecorderGetTimeBetweenEventRecorderTimeAndEventInMilliSecond(unint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (!a3)
  {
    return 0;
  }

  if ((a4 & 0xFFFF000) == *(a3 + 16) && (a4 & 0xFFFu) < *(a3 + 104))
  {
    v5 = *(*(a3 + 112) + 24 * (a4 & 0xFFF));
  }

  else
  {
    v5 = 0;
  }

  if (v5 < a1)
  {
    APSLogErrorAt(0);
    return 0;
  }

  return UpTicksToMilliseconds();
}

uint64_t APSEventRecorderGetTimeSinceEventInMilliSecond(uint64_t a1, int a2)
{
  mach_absolute_time();
  if (!a1)
  {
    return 0;
  }

  if ((a2 & 0xFFFF000) == *(a1 + 16) && (a2 & 0xFFFu) < *(a1 + 104))
  {
    v4 = *(*(a1 + 112) + 24 * (a2 & 0xFFF));
  }

  return UpTicksToMilliseconds();
}

uint64_t APSEventRecorderGetTimeSinceEventInMilliSecondRecursive(const void *a1, int a2)
{
  mach_absolute_time();
  if (!a1)
  {
    return 0;
  }

  APSEventRecorderGetEventTimeRecursive(a1, a2, 0);

  return UpTicksToMilliseconds();
}

uint64_t APSEventRecorderAddSignPostForEvent(uint64_t result, int a2, int a3)
{
  if (result)
  {
    v3 = result;
    result = 4294895134;
    if ((a2 & 0xFFFF000) == *(v3 + 16) && (a2 & 0xFFFu) < *(v3 + 104))
    {
      result = 0;
      *(*(v3 + 112) + 24 * (a2 & 0xFFF) + 16) = a3;
    }
  }

  return result;
}

uint64_t APSEventRecorderCopyChildEventRecorderOfType(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = 4294895133;
  if (a3)
  {
    v5 = eventRecorder_copyChildEventRecorderOfTypeByDeepSearch(a1, a2);
    if (v5)
    {
      v3 = 0;
      *a3 = v5;
    }
  }

  else
  {
    APSLogErrorAt(0);
    return 4294895135;
  }

  return v3;
}

uint64_t APSEventRecorderRemoveChildEventRecorderFromParent(uint64_t a1, uint64_t a2)
{
  result = 4294895135;
  if (a1)
  {
    if (a2)
    {
      pthread_mutex_lock((a1 + 40));
      v4 = *(a1 + 32);
      FigCFArrayRemoveLastElementOfValue();
      pthread_mutex_unlock((a1 + 40));
      return 0;
    }
  }

  return result;
}

uint64_t APSEventRecorderSetTimeInDictionary()
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v1 = Mutable;
    FigCFDictionarySetUInt64();
    FigCFDictionarySetDouble();
    FigCFDictionarySetValue();
    CFRelease(v1);
    return 0;
  }

  else
  {
    APSLogErrorAt(0);
    return 4294895136;
  }
}

uint64_t APSEventRecorderGetTimeFromDictionaryIfPresent()
{
  CFDictionaryGetTypeID();
  CFDictionaryGetTypedValue();
  result = FigCFDictionaryGetInt64IfPresent();
  if (result)
  {
    return FigCFDictionaryGetDoubleIfPresent() != 0;
  }

  return result;
}

uint64_t eventRecorder_applyForEachMatchingChildEventRecorder(uint64_t a1)
{
  pthread_mutex_lock((a1 + 40));
  v2 = *MEMORY[0x277CBECE8];
  Copy = CFArrayCreateCopy(*MEMORY[0x277CBECE8], *(a1 + 32));
  pthread_mutex_unlock((a1 + 40));
  if (Copy)
  {
    Count = CFArrayGetCount(Copy);
    pthread_mutex_lock((a1 + 40));
    v5 = CFArrayCreateCopy(v2, *(a1 + 32));
    pthread_mutex_unlock((a1 + 40));
    if (gLogCategory_APSEventRecorder <= 50 && (gLogCategory_APSEventRecorder != -1 || _LogCategory_Initialize()))
    {
      v18 = *(a1 + 24);
      LogPrintF();
    }

    if (*(a1 + 104))
    {
      v6 = 0;
      for (i = 0; i < *(a1 + 104); ++i)
      {
        if (!*(*(a1 + 112) + v6) || gLogCategory_APSEventRecorder > 50)
        {
          goto LABEL_13;
        }

        if (gLogCategory_APSEventRecorder == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_13;
          }

          v8 = *(*(a1 + 112) + v6);
        }

        LogPrintF();
LABEL_13:
        v6 += 24;
      }
    }

    if (v5)
    {
      v9 = CFArrayGetCount(v5);
      if (v9 >= 1)
      {
        v10 = v9;
        for (j = 0; j != v10; ++j)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v5, j);
          if (gLogCategory_APSEventRecorder <= 50)
          {
            v13 = ValueAtIndex;
            if (gLogCategory_APSEventRecorder != -1 || _LogCategory_Initialize())
            {
              v19 = *(a1 + 24);
              v20 = v13[3];
              LogPrintF();
            }
          }
        }
      }

      CFRelease(v5);
    }

    else
    {
      APSLogErrorAt(0);
    }

    if (Count >= 1)
    {
      for (k = 0; k != Count; ++k)
      {
        v15 = CFArrayGetValueAtIndex(Copy, k);
        eventRecorder_applyForEachMatchingChildEventRecorder(v15);
      }
    }

    CFRelease(Copy);
    return 4294895133;
  }

  else
  {
    APSLogErrorAt(0);
    return 4294895136;
  }
}

uint64_t APSRTCReportingAgentGetTypeID()
{
  if (APSRTCReportingAgentGetTypeID_sInitOnce != -1)
  {
    dispatch_once_f(&APSRTCReportingAgentGetTypeID_sInitOnce, &APSRTCReportingAgentGetTypeID_sTypeID, reportingAgent_getTypeID);
  }

  return APSRTCReportingAgentGetTypeID_sTypeID;
}

uint64_t reportingAgent_getTypeID(uint64_t *a1)
{
  result = _CFRuntimeRegisterClass();
  *a1 = result;
  return result;
}

__CFString *reportingAgent_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  v3 = Mutable;
  if (Mutable)
  {
    CFStringAppendFormat(Mutable, 0, @"<APSRTCReportingAgent %p>", a1);
  }

  else
  {
    APSLogErrorAt(0);
  }

  return v3;
}

void reportingAgent_Finalize(void *a1)
{
  if (gLogCategory_APSRTCReportingAgent <= 40 && (gLogCategory_APSRTCReportingAgent != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v2 = a1[7];
  if (v2)
  {
    CFRelease(v2);
    a1[7] = 0;
  }

  v3 = a1[10];
  if (v3)
  {
    CFRelease(v3);
    a1[10] = 0;
  }

  v4 = a1[5];
  if (v4)
  {
    CFRelease(v4);
    a1[5] = 0;
  }

  v5 = a1[4];
  if (v5)
  {
    CFRelease(v5);
    a1[4] = 0;
  }

  v6 = a1[3];
  if (v6)
  {
    CFRelease(v6);
    a1[3] = 0;
  }

  v7 = a1[2];
  if (v7)
  {
    dispatch_release(v7);
    a1[2] = 0;
  }
}

uint64_t APSRTCReportingAgentCreate(const void *a1, __CFString *a2, void *a3)
{
  if (!a1 || !a3)
  {
    APSLogErrorAt(0);
    return 72303;
  }

  v6 = *MEMORY[0x277CBECE8];
  if (APSRTCReportingAgentGetTypeID_sInitOnce != -1)
  {
    dispatch_once_f(&APSRTCReportingAgentGetTypeID_sInitOnce, &APSRTCReportingAgentGetTypeID_sTypeID, reportingAgent_getTypeID);
  }

  v7 = 72300;
  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    APSLogErrorAt(0);
    return v7;
  }

  v9 = Instance;
  *(Instance + 80) = 0;
  *(Instance + 48) = 0u;
  *(Instance + 64) = 0u;
  *(Instance + 16) = 0u;
  *(Instance + 32) = 0u;
  v10 = dispatch_queue_create("APSRTCReportingAgentQueue", 0);
  v9[2] = v10;
  if (v10)
  {
    if (a2)
    {
      v11 = a2;
    }

    else
    {
      v11 = @"Default";
    }

    v9[5] = CFRetain(v11);
    v9[4] = CFRetain(a1);
    v9[8] = mach_absolute_time();
    v12 = CFUUIDCreate(v6);
    if (v12)
    {
      v13 = v12;
      v14 = CFUUIDCreateString(v6, v12);
      v9[3] = v14;
      if (v14)
      {
        v7 = 0;
        *a3 = v9;
      }

      else
      {
        APSLogErrorAt(0);
        CFRelease(v9);
        v7 = 4294960568;
      }

      v15 = v13;
      goto LABEL_14;
    }

    v7 = 4294960568;
  }

  APSLogErrorAt(0);
  v15 = v9;
LABEL_14:
  CFRelease(v15);
  return v7;
}

void APSRTCReportingAgentSendMediaEvent(uint64_t a1, CFTypeRef cf, const void *a3, int a4)
{
  if (!a1 || !cf && !a4)
  {
    return;
  }

  if (!cf || (v8 = CFGetTypeID(cf), v8 != CFDictionaryGetTypeID()))
  {
    Value = 0;
    if (a4)
    {
      goto LABEL_32;
    }

LABEL_31:
    if (!Value)
    {
      return;
    }

    goto LABEL_32;
  }

  Value = CFDictionaryGetValue(cf, @"title");
  if (!Value)
  {
    v41 = 0;
    v42 = &v41;
    v43 = 0x2020000000;
    v10 = getkMRMediaRemoteNowPlayingInfoTitleSymbolLoc_ptr;
    v44 = getkMRMediaRemoteNowPlayingInfoTitleSymbolLoc_ptr;
    if (!getkMRMediaRemoteNowPlayingInfoTitleSymbolLoc_ptr)
    {
      v36 = MEMORY[0x277D85DD0];
      v37 = 3221225472;
      v38 = __getkMRMediaRemoteNowPlayingInfoTitleSymbolLoc_block_invoke;
      v39 = &unk_2784A4060;
      v40 = &v41;
      v11 = MediaRemoteLibrary();
      v42[3] = dlsym(v11, "kMRMediaRemoteNowPlayingInfoTitle");
      getkMRMediaRemoteNowPlayingInfoTitleSymbolLoc_ptr = *(v40[1] + 24);
      v10 = v42[3];
    }

    _Block_object_dispose(&v41, 8);
    if (!v10)
    {
      goto LABEL_54;
    }

    Value = CFDictionaryGetValue(cf, *v10);
  }

  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v12 = getkMRMediaRemoteNowPlayingInfoClientPropertiesDataSymbolLoc_ptr;
  v44 = getkMRMediaRemoteNowPlayingInfoClientPropertiesDataSymbolLoc_ptr;
  if (!getkMRMediaRemoteNowPlayingInfoClientPropertiesDataSymbolLoc_ptr)
  {
    v36 = MEMORY[0x277D85DD0];
    v37 = 3221225472;
    v38 = __getkMRMediaRemoteNowPlayingInfoClientPropertiesDataSymbolLoc_block_invoke;
    v39 = &unk_2784A4060;
    v40 = &v41;
    v13 = MediaRemoteLibrary();
    v42[3] = dlsym(v13, "kMRMediaRemoteNowPlayingInfoClientPropertiesData");
    getkMRMediaRemoteNowPlayingInfoClientPropertiesDataSymbolLoc_ptr = *(v40[1] + 24);
    v12 = v42[3];
  }

  _Block_object_dispose(&v41, 8);
  if (!v12)
  {
    goto LABEL_54;
  }

  v14 = CFDictionaryGetValue(cf, *v12);
  if (!v14)
  {
    goto LABEL_28;
  }

  v15 = v14;
  v16 = CFGetTypeID(v14);
  if (v16 != CFDataGetTypeID())
  {
    goto LABEL_28;
  }

  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v17 = getMRNowPlayingClientCreateFromExternalRepresentationSymbolLoc_ptr;
  v44 = getMRNowPlayingClientCreateFromExternalRepresentationSymbolLoc_ptr;
  if (!getMRNowPlayingClientCreateFromExternalRepresentationSymbolLoc_ptr)
  {
    v36 = MEMORY[0x277D85DD0];
    v37 = 3221225472;
    v38 = __getMRNowPlayingClientCreateFromExternalRepresentationSymbolLoc_block_invoke;
    v39 = &unk_2784A4060;
    v40 = &v41;
    v18 = MediaRemoteLibrary();
    v42[3] = dlsym(v18, "MRNowPlayingClientCreateFromExternalRepresentation");
    getMRNowPlayingClientCreateFromExternalRepresentationSymbolLoc_ptr = *(v40[1] + 24);
    v17 = v42[3];
  }

  _Block_object_dispose(&v41, 8);
  if (!v17)
  {
    goto LABEL_54;
  }

  v19 = v17(v15);
  if (!v19)
  {
    goto LABEL_28;
  }

  v20 = v19;
  v21 = *(a1 + 80);
  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v22 = getMRNowPlayingClientGetDisplayNameSymbolLoc_ptr;
  v44 = getMRNowPlayingClientGetDisplayNameSymbolLoc_ptr;
  if (!getMRNowPlayingClientGetDisplayNameSymbolLoc_ptr)
  {
    v36 = MEMORY[0x277D85DD0];
    v37 = 3221225472;
    v38 = __getMRNowPlayingClientGetDisplayNameSymbolLoc_block_invoke;
    v39 = &unk_2784A4060;
    v40 = &v41;
    v23 = MediaRemoteLibrary();
    v42[3] = dlsym(v23, "MRNowPlayingClientGetDisplayName");
    getMRNowPlayingClientGetDisplayNameSymbolLoc_ptr = *(v40[1] + 24);
    v22 = v42[3];
  }

  _Block_object_dispose(&v41, 8);
  if (!v22)
  {
LABEL_54:
    dlerror();
    v33 = abort_report_np();
    _Block_object_dispose(&v41, 8);
    _Unwind_Resume(v33);
  }

  v24 = v22(v20);
  *(a1 + 80) = v24;
  if (v24)
  {
    CFRetain(v24);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  CFRelease(v20);
LABEL_28:
  if (!a4)
  {
    goto LABEL_31;
  }

LABEL_32:
  if (a4 || (v27 = *(a1 + 56)) != 0 && CFStringCompare(Value, v27, 0))
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (!Mutable)
    {
      APSLogErrorAt(0);
      return;
    }

    v26 = Mutable;
    if (gLogCategory_APSRTCReportingAgent <= 40 && (gLogCategory_APSRTCReportingAgent != -1 || _LogCategory_Initialize()))
    {
      v34 = *(a1 + 56);
      LogPrintF();
    }

    v28 = *(a1 + 72);
    FigCFDictionarySetInt32();
    mach_absolute_time();
    v29 = *(a1 + 64);
    UpTicksToSeconds();
    FigCFDictionarySetInt64();
    v30 = *(a1 + 80);
    if (v30)
    {
      CFDictionarySetValue(v26, @"clientDisplayName", v30);
    }

    CFDictionarySetValue(v26, @"rtcAgentID", *(a1 + 24));
    CFDictionarySetValue(v26, @"sessionType", a3);
    CFRetain(a1);
    CFRetain(v26);
    v31 = *(a1 + 16);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __APSRTCReportingAgentSendMediaEvent_block_invoke;
    block[3] = &__block_descriptor_48_e5_v8__0l;
    block[4] = a1;
    block[5] = v26;
    dispatch_async(v31, block);
    ++*(a1 + 72);
    *(a1 + 64) = mach_absolute_time();
  }

  else
  {
    v26 = 0;
  }

  if (!*(a1 + 64))
  {
    *(a1 + 64) = mach_absolute_time();
  }

  v32 = *(a1 + 56);
  *(a1 + 56) = Value;
  if (Value)
  {
    CFRetain(Value);
  }

  if (v32)
  {
    CFRelease(v32);
  }

  if (v26)
  {
    CFRelease(v26);
  }
}

void *__getkMRMediaRemoteNowPlayingInfoTitleSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaRemoteLibrary();
  result = dlsym(v2, "kMRMediaRemoteNowPlayingInfoTitle");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkMRMediaRemoteNowPlayingInfoTitleSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t MediaRemoteLibrary()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!MediaRemoteLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __MediaRemoteLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_2784A4080;
    v6 = 0;
    MediaRemoteLibraryCore_frameworkLibrary = _sl_dlopen();
    v1 = v4[0];
    v0 = MediaRemoteLibraryCore_frameworkLibrary;
    if (MediaRemoteLibraryCore_frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v1 = abort_report_np();
    }

    free(v1);
    goto LABEL_5;
  }

  v0 = MediaRemoteLibraryCore_frameworkLibrary;
LABEL_5:
  v2 = *MEMORY[0x277D85DE8];
  return v0;
}

void *__getkMRMediaRemoteNowPlayingInfoClientPropertiesDataSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaRemoteLibrary();
  result = dlsym(v2, "kMRMediaRemoteNowPlayingInfoClientPropertiesData");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkMRMediaRemoteNowPlayingInfoClientPropertiesDataSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMRNowPlayingClientCreateFromExternalRepresentationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaRemoteLibrary();
  result = dlsym(v2, "MRNowPlayingClientCreateFromExternalRepresentation");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMRNowPlayingClientCreateFromExternalRepresentationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMRNowPlayingClientGetDisplayNameSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaRemoteLibrary();
  result = dlsym(v2, "MRNowPlayingClientGetDisplayName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMRNowPlayingClientGetDisplayNameSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void __APSRTCReportingAgentSendMediaEvent_block_invoke(uint64_t a1)
{
  reportingAgent_SendReportToRTC(*(a1 + 32), 2, *(a1 + 40), 0);
  v2 = *(a1 + 40);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {

    CFRelease(v3);
  }
}

void reportingAgent_SendReportToRTC(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4)
{
  cf = 0;
  if (a1)
  {
    v7 = APSRTCReportingCreateOrCopy(*(a1 + 32), *(a1 + 40), 0, &cf, 0);
    if (v7)
    {
      v8 = v7;
      APSLogErrorAt(v7);
      if (a4)
      {
        (*(a4 + 16))(a4, 0, v8);
      }
    }

    else
    {
      if (gLogCategory_APSRTCReportingAgent <= 40 && (gLogCategory_APSRTCReportingAgent != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      APSRTCReportingSendMsg(cf, a2, 1, a3, a4);
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }
}

uint64_t __MediaRemoteLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MediaRemoteLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void APSRTCReportingAgentSendEventWithCompletionHandler(uint64_t a1, __int16 a2, const __CFDictionary *a3, uint64_t a4)
{
  if (a1 && (MutableCopy = FigCFDictionaryCreateMutableCopy()) != 0)
  {
    v9 = MutableCopy;
    v10 = *(a1 + 80);
    if (v10)
    {
      CFDictionarySetValue(MutableCopy, @"clientDisplayName", v10);
    }

    v11 = CFPreferencesCopyAppValue(@"rtcUserPrefValue1", @"com.apple.airplay");
    v12 = v11;
    if (v11 && CFStringGetLength(v11))
    {
      CFDictionarySetValue(v9, @"rtcUserPrefValue1", v12);
    }

    CFDictionarySetValue(v9, @"rtcAgentID", *(a1 + 24));
    Value = CFDictionaryGetValue(a3, @"sessionType");
    if (Value)
    {
      v14 = Value;
      if (CFStringCompare(Value, @"AudioBuffered", 0) == kCFCompareEqualTo || CFStringCompare(v14, @"AudioRealTime", 0) == kCFCompareEqualTo)
      {
        v15 = *(a1 + 72);
        FigCFDictionarySetInt64();
      }
    }

    CFRetain(a1);
    CFRetain(v9);
    v16 = *(a1 + 16);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __APSRTCReportingAgentSendEventWithCompletionHandler_block_invoke;
    v18[3] = &unk_2784A4038;
    v19 = a2;
    v18[5] = v9;
    v18[6] = a1;
    v18[4] = a4;
    dispatch_async(v16, v18);
    CFRelease(v9);
    if (v12)
    {
      CFRelease(v12);
    }
  }

  else if (a4)
  {
    v17 = *(a4 + 16);

    v17(a4, 0, 72303);
  }
}

void __APSRTCReportingAgentSendEventWithCompletionHandler_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2 == 150 || v2 == 200)
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 48) + 48);
    FigCFDictionarySetInt32();
    v5 = *(a1 + 48);
    ++*(v5 + 48);
    LOWORD(v2) = *(a1 + 56);
  }

  else
  {
    v5 = *(a1 + 48);
  }

  reportingAgent_SendReportToRTC(v5, v2, *(a1 + 40), *(a1 + 32));
  v6 = *(a1 + 40);
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *(a1 + 48);
  if (v7)
  {

    CFRelease(v7);
  }
}

void APSRTCReportingAgentSendOfflineEvent(void *a1, CFDictionaryRef theDict)
{
  if (!a1)
  {
    return;
  }

  if (!theDict)
  {
LABEL_16:

    APSLogErrorAt(0);
    return;
  }

  CFDictionaryGetValue(theDict, @"_sender");
  if (FigCFEqual())
  {
    CFRetain(a1);
    CFRetain(theDict);
    v4 = a1[2];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __APSRTCReportingAgentSendOfflineEvent_block_invoke;
    block[3] = &__block_descriptor_48_e5_v8__0l;
    block[4] = theDict;
    block[5] = a1;
    dispatch_async(v4, block);
    return;
  }

  Int64Ranged = CFDictionaryGetInt64Ranged();
  if (Int64Ranged - 7000 <= 0x63)
  {
    MutableCopy = FigCFDictionaryCreateMutableCopy();
    if (MutableCopy)
    {
      v7 = MutableCopy;
      CFDictionarySetValue(MutableCopy, @"receiverSuppliedInfoSource", @"ThirdPartyTVFamily");
      APSRTCReportingAgentSendEventWithCompletionHandler(a1, Int64Ranged, v7, 0);

      CFRelease(v7);
      return;
    }

    goto LABEL_16;
  }

  if (gLogCategory_APSRTCReportingAgent <= 60 && (gLogCategory_APSRTCReportingAgent != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }
}

void __APSRTCReportingAgentSendOfflineEvent_block_invoke(uint64_t a1)
{
  v2 = FigReportingAgentOfflineAirPlayCreate();
  if (v2)
  {
    APSLogErrorAt(v2);
  }

  else
  {
    v3 = *(a1 + 32);
    FigReportingAgentOfflineAirPlayIssueReportingEvent();
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    CFRelease(v5);
  }
}

uint64_t APSStreamingAudioRendererGetTypeID()
{
  if (gAPSStreamingAudioRendererInitOnce != -1)
  {
    dispatch_once_f(&gAPSStreamingAudioRendererInitOnce, 0, _APSStreamingAudioRendererGetTypeID);
  }

  return gAPSStreamingAudioRendererTypeID;
}

uint64_t _APSStreamingAudioRendererGetTypeID()
{
  result = _CFRuntimeRegisterClass();
  gAPSStreamingAudioRendererTypeID = result;
  return result;
}

void _APSStreamingAudioRendererFinalize(uint64_t *a1)
{
  v2 = a1[22];
  if (v2)
  {
    APSRTPPassThroughJitterBufferRelinquishNode(a1[13], v2);
    a1[21] = 0;
    a1[22] = 0;
  }

  v3 = a1[13];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[15];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[17];
  if (v5)
  {
    AudioConverterDispose(v5);
  }

  v6 = a1[20];

  free(v6);
}

uint64_t APSStreamingAudioRendererCreate(const void *a1, uint64_t a2, int a3, CFTypeRef *a4)
{
  if (!a1 || !a4)
  {
    APSLogErrorAt(0);
    return 4294960591;
  }

  if (gAPSStreamingAudioRendererInitOnce != -1)
  {
    dispatch_once_f(&gAPSStreamingAudioRendererInitOnce, 0, _APSStreamingAudioRendererGetTypeID);
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    APSLogErrorAt(0);
    return 4294960568;
  }

  v9 = Instance;
  *(Instance + 176) = 0;
  *(Instance + 144) = 0u;
  *(Instance + 160) = 0u;
  *(Instance + 112) = 0u;
  *(Instance + 128) = 0u;
  *(Instance + 80) = 0u;
  *(Instance + 96) = 0u;
  *(Instance + 48) = 0u;
  *(Instance + 64) = 0u;
  *(Instance + 16) = 0u;
  *(Instance + 32) = 0u;
  *(Instance + 104) = CFRetain(a1);
  if (a2 <= 0x3FFFFFFF)
  {
    if (a2 < 0x8000)
    {
      v10 = 0x1000000001;
      v11 = xmmword_22234D3F0;
      if (a2 > 255)
      {
        if (a2 <= 2047)
        {
          if (a2 == 256)
          {
            goto LABEL_138;
          }

          if (a2 == 512)
          {
            v10 = 0x1000000002;
            v11 = xmmword_22234D3D0;
            goto LABEL_138;
          }

          if (a2 != 1024)
          {
            goto LABEL_174;
          }
        }

        else if (a2 >= 0x2000)
        {
          if (a2 != 0x2000)
          {
            if (a2 != 0x4000)
            {
              goto LABEL_174;
            }

            goto LABEL_155;
          }

          v10 = 0x1800000002;
          v11 = xmmword_22234D390;
        }

        else if (a2 == 2048)
        {
          v10 = 0x1000000002;
          v11 = xmmword_22234D3D0;
        }

        else
        {
          if (a2 != 4096)
          {
            goto LABEL_174;
          }

          v10 = 0x1800000001;
          v11 = xmmword_22234D3B0;
        }

        goto LABEL_133;
      }

      if (a2 <= 15)
      {
        if (a2 != 0x8000000000000000)
        {
          v12 = 0x40BF400000000000;
          if (a2 == 4)
          {
            goto LABEL_156;
          }

          if (a2 == 8)
          {
            v10 = 0x1000000002;
            v11 = xmmword_22234D3D0;
            goto LABEL_156;
          }

          goto LABEL_174;
        }

        v10 = 6;
        goto LABEL_154;
      }

      if (a2 > 63)
      {
        if (a2 != 64)
        {
          if (a2 != 128)
          {
            goto LABEL_174;
          }

          v10 = 0x1000000002;
          v11 = xmmword_22234D3D0;
        }

        goto LABEL_97;
      }

      if (a2 != 16)
      {
        if (a2 != 32)
        {
          goto LABEL_174;
        }

        v10 = 0x1000000002;
        v11 = xmmword_22234D3D0;
      }
    }

    else
    {
      if (a2 < 0x400000)
      {
        if (a2 < 0x40000)
        {
          switch(a2)
          {
            case 0x8000:
              v10 = 0x1000000002;
              v11 = xmmword_22234D3D0;
              goto LABEL_155;
            case 0x10000:
              v10 = 0x1800000001;
              v11 = xmmword_22234D3B0;
              break;
            case 0x20000:
              v10 = 0x1800000002;
              v11 = xmmword_22234D390;
              break;
            default:
              goto LABEL_174;
          }

          goto LABEL_155;
        }

        if (a2 >= 0x100000)
        {
          if (a2 == 0x100000)
          {
            v10 = 2;
            v11 = xmmword_22234D220;
          }

          else
          {
            if (a2 != 0x200000)
            {
              goto LABEL_174;
            }

            v10 = 2;
            v11 = xmmword_22234D200;
          }

          goto LABEL_155;
        }

        if (a2 == 0x40000)
        {
          v10 = 2;
          v11 = xmmword_22234D220;
        }

        else
        {
          if (a2 != 0x80000)
          {
            goto LABEL_174;
          }

          v10 = 2;
          v11 = xmmword_22234D200;
        }

        goto LABEL_133;
      }

      if (a2 <= 0x3FFFFFF)
      {
        if (a2 > 0xFFFFFF)
        {
          if (a2 != 0x1000000)
          {
            if (a2 != 0x2000000)
            {
              goto LABEL_174;
            }

            v10 = 2;
            goto LABEL_142;
          }

          v10 = 2;
LABEL_126:
          v11 = xmmword_22234D1E0;
          goto LABEL_133;
        }

        if (a2 != 0x400000)
        {
          if (a2 == 0x800000)
          {
            v10 = 2;
            goto LABEL_135;
          }

LABEL_174:
          v16 = 4294960561;
          v13 = 4294960561;
          goto LABEL_175;
        }

        v10 = 2;
        v11 = xmmword_22234D1F0;
LABEL_133:
        v12 = 0x40E5888000000000;
        goto LABEL_156;
      }

      if (a2 > 0xFFFFFFF)
      {
        if (a2 != 0x10000000)
        {
          if (a2 != 0x20000000)
          {
            goto LABEL_174;
          }

          v10 = 1;
          v11 = xmmword_22234D1C0;
          goto LABEL_97;
        }

        v10 = 1;
        v11 = xmmword_22234D1D0;
      }

      else
      {
        if (a2 != 0x4000000)
        {
          if (a2 != 0x8000000)
          {
            goto LABEL_174;
          }

          v10 = 1;
          v11 = xmmword_22234D1E0;
LABEL_97:
          v12 = 0x40D7700000000000;
          goto LABEL_156;
        }

        v10 = 1;
        v11 = xmmword_22234D1E0;
      }
    }

    v12 = 0x40CF400000000000;
    goto LABEL_156;
  }

  if (a2 > 0x7FFFFFFFFFFFLL)
  {
    if (a2 <= 0x3FFFFFFFFFFFFFLL)
    {
      if (a2 <= 0x3FFFFFFFFFFFFLL)
      {
        if (a2 == 0x800000000000)
        {
          v10 = 0x2000000006;
          v11 = xmmword_22234D2C0;
          goto LABEL_155;
        }

        if (a2 == 0x1000000000000)
        {
          v10 = 0x2000000008;
          v11 = xmmword_22234D2A0;
          goto LABEL_155;
        }

        if (a2 != 0x2000000000000)
        {
          goto LABEL_174;
        }

        v10 = 2;
      }

      else if (a2 > 0xFFFFFFFFFFFFFLL)
      {
        if (a2 == 0x10000000000000)
        {
          v10 = 12;
        }

        else
        {
          if (a2 != 0x20000000000000)
          {
            goto LABEL_174;
          }

          v10 = 16;
        }
      }

      else if (a2 == 0x4000000000000)
      {
        v10 = 6;
      }

      else
      {
        if (a2 != 0x8000000000000)
        {
          goto LABEL_174;
        }

        v10 = 8;
      }

      v11 = xmmword_22234D230;
      goto LABEL_155;
    }

    if (a2 > 0x3FFFFFFFFFFFFFFLL)
    {
      if (a2 > 0x1FFFFFFFFFFFFFFFLL)
      {
        if (a2 == 0x2000000000000000)
        {
          v10 = 2;
          v11 = xmmword_22234D170;
          goto LABEL_155;
        }

        if (a2 != 0x4000000000000000)
        {
          goto LABEL_174;
        }

        v10 = 2;
        goto LABEL_154;
      }

      if (a2 == 0x400000000000000)
      {
        v10 = 6;
      }

      else
      {
        if (a2 != 0x1000000000000000)
        {
          goto LABEL_174;
        }

        v10 = 8;
      }
    }

    else
    {
      if (a2 <= 0xFFFFFFFFFFFFFFLL)
      {
        if (a2 == 0x40000000000000)
        {
          v10 = 2;
        }

        else
        {
          if (a2 != 0x80000000000000)
          {
            goto LABEL_174;
          }

          v10 = 6;
        }

LABEL_144:
        v11 = xmmword_22234D160;
        goto LABEL_155;
      }

      if (a2 == 0x100000000000000)
      {
        v10 = 8;
        goto LABEL_144;
      }

      if (a2 != 0x200000000000000)
      {
        goto LABEL_174;
      }

      v10 = 2;
    }

    v11 = xmmword_22234D150;
    goto LABEL_155;
  }

  if (a2 <= 0x7FFFFFFFFFLL)
  {
    if (a2 > 0x1FFFFFFFFLL)
    {
      if (a2 > 0x7FFFFFFFFLL)
      {
        if (a2 != 0x800000000)
        {
          if (a2 != 0x4000000000)
          {
            goto LABEL_174;
          }

          v10 = 0x1000000008;
          v11 = xmmword_22234D350;
          goto LABEL_155;
        }

        v10 = 16;
      }

      else if (a2 == 0x200000000)
      {
        v10 = 8;
      }

      else
      {
        if (a2 != 0x400000000)
        {
          goto LABEL_174;
        }

        v10 = 12;
      }

LABEL_154:
      v11 = xmmword_22234D140;
      goto LABEL_155;
    }

    if (a2 == 0x40000000)
    {
      v10 = 1;
      v11 = xmmword_22234D1A0;
      goto LABEL_155;
    }

    if (a2 != 0x80000000)
    {
      if (a2 != 0x100000000)
      {
        goto LABEL_174;
      }

      v10 = 1;
      goto LABEL_142;
    }

    v10 = 1;
    goto LABEL_126;
  }

  if (a2 <= 0x7FFFFFFFFFFLL)
  {
    if (a2 <= 0x1FFFFFFFFFFLL)
    {
      if (a2 == 0x8000000000)
      {
        v10 = 6;
        goto LABEL_135;
      }

      if (a2 == 0x10000000000)
      {
        v10 = 8;
LABEL_135:
        v11 = xmmword_22234D1F0;
        goto LABEL_155;
      }

      goto LABEL_174;
    }

    if (a2 == 0x20000000000)
    {
      v10 = 6;
    }

    else
    {
      if (a2 != 0x40000000000)
      {
        goto LABEL_174;
      }

      v10 = 8;
    }

LABEL_142:
    v11 = xmmword_22234D1E0;
    goto LABEL_155;
  }

  if (a2 <= 0x1FFFFFFFFFFFLL)
  {
    if (a2 != 0x80000000000)
    {
      if (a2 != 0x100000000000)
      {
        goto LABEL_174;
      }

      v10 = 0x1000000006;
      v11 = xmmword_22234D370;
      goto LABEL_155;
    }

    v10 = 1;
    v11 = xmmword_22234D1E0;
LABEL_138:
    v12 = 0x40DF400000000000;
    goto LABEL_156;
  }

  if (a2 == 0x200000000000)
  {
    v10 = 0x2000000001;
    v11 = xmmword_22234D300;
    goto LABEL_155;
  }

  if (a2 != 0x400000000000)
  {
    goto LABEL_174;
  }

  v10 = 0x2000000002;
  v11 = xmmword_22234D2E0;
LABEL_155:
  v12 = 0x40E7700000000000;
LABEL_156:
  *(v9 + 24) = v12;
  *(v9 + 32) = v11;
  *(v9 + 48) = DWORD2(v11);
  *(v9 + 52) = v10;
  *(v9 + 60) = 0;
  if (a3)
  {
    *(v9 + 44) = a3;
  }

  v13 = APAudioFormatToPCMASBD(a2, v9 + 64);
  if (v13)
  {
    v16 = v13;
    goto LABEL_175;
  }

  *(v9 + 112) = 0;
  *(v9 + 116) = 0;
  v13 = APSRealTimeReadableCreate(0, 0x10uLL, (v9 + 120));
  if (v13)
  {
    v16 = v13;
    goto LABEL_175;
  }

  if (*(v9 + 32) != 1819304813)
  {
    v13 = AudioConverterNew((v9 + 24), (v9 + 64), (v9 + 136));
    if (v13)
    {
      v16 = v13;
      goto LABEL_175;
    }

    v14 = *(v9 + 32);
    if (v14 == 1634492771)
    {
      LODWORD(inPropertyData) = bswap32(*(v9 + 44));
      BYTE4(inPropertyData) = 0;
      BYTE5(inPropertyData) = *(v9 + 96);
      HIWORD(inPropertyData) = 2600;
      v20 = 14;
      v21 = *(v9 + 52);
      v22 = -256;
      v23 = 0;
      v24 = 0;
      v25 = bswap32(*(v9 + 24));
      v13 = AudioConverterSetProperty(*(v9 + 136), 0x646D6763u, 0x18u, &inPropertyData);
      if (v13)
      {
        v16 = v13;
        goto LABEL_175;
      }
    }

    else if (v14 == 1633772389)
    {
      v15 = *(v9 + 52);
      if (v15 >= 3)
      {
        inPropertyDataSize = 0;
        inPropertyData = 0;
        APAudioFormatGetMagicCookieForAACELD(v15, &inPropertyData, &inPropertyDataSize);
        v13 = AudioConverterSetProperty(*(v9 + 136), 0x646D6763u, inPropertyDataSize, inPropertyData);
        if (v13)
        {
          v16 = v13;
LABEL_175:
          APSLogErrorAt(v13);
          goto LABEL_170;
        }
      }
    }

    v17 = malloc_type_malloc((*(v9 + 88) * *(v9 + 44)), 0x54EC8C23uLL);
    *(v9 + 160) = v17;
    if (!v17)
    {
      APSLogErrorAt(0);
      v16 = 4294960568;
      goto LABEL_170;
    }
  }

  v16 = 0;
  *a4 = CFRetain(v9);
LABEL_170:
  CFRelease(v9);
  return v16;
}

uint64_t APSStreamingAudioRendererRender(uint64_t a1, int a2, uint64_t a3, int a4, char *a5, double a6)
{
  if (atomic_exchange_explicit((a1 + 112), 1u, memory_order_acquire))
  {
    return 4294960537;
  }

  bzero(a5, (*(a1 + 88) * a4));
  __dst = 0;
  v35 = 0;
  v12 = APSRealTimeReadableRead(*(a1 + 120), &__dst);
  if (!v12)
  {
    if (v35)
    {
      memset(&v36, 0, sizeof(v36));
      CMClockMakeHostTimeFromSystemUnits(&v36, a3);
      memset(&v33, 0, sizeof(v33));
      CMClockMakeHostTimeFromSystemUnits(&v33, v35);
      memset(&v32, 0, sizeof(v32));
      lhs = v33;
      rhs = v36;
      CMTimeSubtract(&v32, &lhs, &rhs);
      rhs = v32;
      CMTimeMultiplyByFloat64(&lhs, &rhs, 1.0 / a6);
      CMTimeConvertScale(&v29, &lhs, *(a1 + 64), kCMTimeRoundingMethod_RoundHalfAwayFromZero);
      if (!*(a1 + 132))
      {
        *(a1 + 128) = __dst - (LODWORD(v29.value) + a2);
        *(a1 + 132) = 1;
      }

      goto LABEL_6;
    }

    *(a1 + 132) = 0;
LABEL_71:
    v28 = *(a1 + 176);
    if (v28)
    {
      APSRTPPassThroughJitterBufferRelinquishNode(*(a1 + 104), v28);
      *(a1 + 168) = 0;
      *(a1 + 176) = 0;
    }

    goto LABEL_66;
  }

  APSLogErrorAt(v12);
  if (!*(a1 + 132))
  {
    goto LABEL_71;
  }

LABEL_6:
  v13 = *(a1 + 128) + a2 + *(a1 + 116);
  v14 = v13 + a4;
  if (gLogCategory_APSStreamingAudioRenderer <= 30 && (gLogCategory_APSStreamingAudioRenderer != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  while (1)
  {
    while (1)
    {
      while (1)
      {
        v15 = *(a1 + 176);
        if (v15)
        {
          break;
        }

        APSRTPPassThroughJitterBufferAcquireLowestInsertedNode(*(a1 + 104), (a1 + 176));
        if (!*(a1 + 176))
        {
          goto LABEL_66;
        }
      }

      v16 = *(v15 + 32);
      v17 = *(a1 + 44) + v16;
      if (gLogCategory_APSStreamingAudioRenderer <= 30 && (gLogCategory_APSStreamingAudioRenderer != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      if (v17 - v13 > 0)
      {
        break;
      }

      if (gLogCategory_APSStreamingAudioRenderer <= 30 && (gLogCategory_APSStreamingAudioRenderer != -1 || _LogCategory_Initialize()))
      {
LABEL_41:
        LogPrintF();
      }

LABEL_47:
      v26 = *(a1 + 176);
      if (v26)
      {
        APSRTPPassThroughJitterBufferRelinquishNode(*(a1 + 104), v26);
        *(a1 + 168) = 0;
        *(a1 + 176) = 0;
      }
    }

    if (v16 - v14 >= 0)
    {
      break;
    }

    v18 = *(a1 + 44);
    LODWORD(v33.value) = v18;
    v36.value = 0;
    if (*(a1 + 168))
    {
      goto LABEL_25;
    }

    v19 = *(a1 + 176);
    if (!v19)
    {
      v22 = 0;
LABEL_53:
      APSLogErrorAt(v22);
      if (gLogCategory_APSStreamingAudioRenderer <= 30 && (gLogCategory_APSStreamingAudioRenderer != -1 || _LogCategory_Initialize()))
      {
        goto LABEL_41;
      }

      goto LABEL_47;
    }

    if (*(a1 + 32) == 1819304813)
    {
      v23 = (v19 + 8);
      goto LABEL_24;
    }

    v21 = *(a1 + 88);
    v20 = *(a1 + 92);
    LODWORD(v36.value) = 1;
    v36.timescale = v20;
    v36.flags = v21 * v18;
    v36.epoch = *(a1 + 160);
    *(a1 + 144) = 0;
    *(a1 + 152) = 0;
    v22 = AudioConverterFillComplexBuffer(*(a1 + 136), sar_nodeDecodeCallback, a1, &v33, &v36, 0);
    if (v22)
    {
      goto LABEL_53;
    }

    v23 = (a1 + 160);
    if (LODWORD(v33.value) != *(a1 + 44))
    {
      v22 = 0;
      goto LABEL_53;
    }

LABEL_24:
    *(a1 + 168) = *v23;
LABEL_25:
    if (v16 - v13 <= 0)
    {
      v24 = v13;
    }

    else
    {
      v24 = v16;
    }

    if (v17 - v14 >= 0)
    {
      v25 = v13 + a4;
    }

    else
    {
      v25 = v17;
    }

    if (gLogCategory_APSStreamingAudioRenderer <= 30 && (gLogCategory_APSStreamingAudioRenderer != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    memcpy(&a5[*(a1 + 88) * (v24 - v13)], (*(a1 + 168) + (*(a1 + 88) * (v24 - v16))), (*(a1 + 88) * (v25 - v24)));
    if (v25 == v17)
    {
      if (gLogCategory_APSStreamingAudioRenderer <= 30 && (gLogCategory_APSStreamingAudioRenderer != -1 || _LogCategory_Initialize()))
      {
        goto LABEL_41;
      }

      goto LABEL_47;
    }

    if (v25 - v14 >= 0)
    {
      if (gLogCategory_APSStreamingAudioRenderer > 30 || gLogCategory_APSStreamingAudioRenderer == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_66;
      }

LABEL_62:
      LogPrintF();
      goto LABEL_66;
    }
  }

  if (gLogCategory_APSStreamingAudioRenderer <= 30 && (gLogCategory_APSStreamingAudioRenderer != -1 || _LogCategory_Initialize()))
  {
    goto LABEL_62;
  }

LABEL_66:
  result = 0;
  atomic_store(0, (a1 + 112));
  return result;
}

uint64_t sar_nodeDecodeCallback(uint64_t a1, _DWORD *a2, uint64_t a3, void *a4, uint64_t a5)
{
  *a2 = 0;
  *a4 = 0;
  v5 = *(a5 + 176);
  if (v5)
  {
    result = 0;
    if (!*(a5 + 156))
    {
      *a3 = 1;
      *(a5 + 144) = 0;
      v7 = a5 + 144;
      v8 = *(v5 + 16);
      *(a3 + 8) = *(v7 - 92);
      *(a3 + 12) = v8;
      *(a3 + 16) = *(v5 + 8);
      *(v7 + 8) = 0;
      *(v7 + 12) = v8;
      *a2 = 1;
      *a4 = v7;
    }
  }

  else
  {
    APSLogErrorAt(0);
    return 4294960578;
  }

  return result;
}

uint64_t APSStreamingAudioRendererSetSourceAnchor(uint64_t a1, int a2, uint64_t hostTime)
{
  if (gLogCategory_APSStreamingAudioRenderer <= 50 && (gLogCategory_APSStreamingAudioRenderer != -1 || _LogCategory_Initialize()))
  {
    CMClockMakeHostTimeFromSystemUnits(&time, hostTime);
    CMTimeGetSeconds(&time);
    LogPrintF();
  }

  v6 = *(a1 + 120);
  v10 = a2;
  v11 = hostTime;
  v7 = APSRealTimeReadableWrite(v6, &v10);
  v8 = v7;
  if (v7)
  {
    APSLogErrorAt(v7);
  }

  return v8;
}

uint64_t APSStreamingAudioRendererSetRenderTSOffset(uint64_t a1, int a2)
{
  if (gLogCategory_APSStreamingAudioRenderer <= 50 && (gLogCategory_APSStreamingAudioRenderer != -1 || _LogCategory_Initialize()))
  {
    v5 = *(a1 + 64);
    LogPrintF();
  }

  *(a1 + 116) = a2;
  return 0;
}

OpaqueCMBlockBuffer *APSRTPBBufIsValid(OpaqueCMBlockBuffer *result)
{
  if (result)
  {
    return (rtpBBufUtils_validateAndGetPayloadOffset(result, 0, &v2, &v1) == 0);
  }

  return result;
}

uint64_t rtpBBufUtils_validateAndGetPayloadOffset(OpaqueCMBlockBuffer *a1, int a2, unint64_t *a3, void *a4)
{
  v15 = 0;
  destination = 0;
  DataLength = CMBlockBufferGetDataLength(a1);
  if (DataLength < 0xC)
  {
    return 4294960546;
  }

  v9 = DataLength;
  result = CMBlockBufferCopyDataBytes(a1, 0, 1uLL, &destination);
  if (result)
  {
    return result;
  }

  if ((destination & 0xC0) != 0x80)
  {
    return 4294960581;
  }

  v11 = 4 * (destination & 0xF) + 12;
  if (v9 < v11)
  {
    return 4294960546;
  }

  if ((destination & 0x10) != 0)
  {
    if (4 * (destination & 0xF) + 16 > v9)
    {
      return 4294960546;
    }

    result = CMBlockBufferCopyDataBytes(a1, v11 | 2, 2uLL, &v15);
    if (result)
    {
      return result;
    }

    v12 = bswap32(v15) >> 16;
    v15 = v12;
    v11 += 4 + 4 * v12;
    if (v11 > v9)
    {
      return 4294960546;
    }
  }

  if (a2 || (destination & 0x20) == 0)
  {
    v13 = 0;
LABEL_12:
    result = 0;
    *a3 = v11;
    *a4 = v9 - (v11 + v13);
    return result;
  }

  if (v9 <= v11)
  {
    return 4294960546;
  }

  result = CMBlockBufferCopyDataBytes(a1, v9 - 1, 1uLL, &destination + 1);
  if (!result)
  {
    v13 = HIBYTE(destination);
    if (!HIBYTE(destination))
    {
      return 4294960579;
    }

    if (v9 - v11 < HIBYTE(destination))
    {
      return 4294960545;
    }

    goto LABEL_12;
  }

  return result;
}

uint64_t APSRTPBBufGetPayloadType(CMBlockBufferRef theSourceBuffer, _BYTE *a2)
{
  destination = 0;
  result = 4294960591;
  if (theSourceBuffer && a2)
  {
    result = CMBlockBufferCopyDataBytes(theSourceBuffer, 1uLL, 1uLL, &destination);
    if (!result)
    {
      *a2 = destination & 0x7F;
    }
  }

  return result;
}

uint64_t APSRTPBBufGetSeqNum(CMBlockBufferRef theSourceBuffer, _WORD *a2)
{
  destination = 0;
  result = 4294960591;
  if (theSourceBuffer && a2)
  {
    result = CMBlockBufferCopyDataBytes(theSourceBuffer, 2uLL, 2uLL, &destination);
    if (!result)
    {
      *a2 = bswap32(destination) >> 16;
    }
  }

  return result;
}

uint64_t APSRTPBBufSetSeqNum(CMBlockBufferRef destinationBuffer, unsigned int a2)
{
  sourceBytes = __rev16(a2);
  if (destinationBuffer)
  {
    return CMBlockBufferReplaceDataBytes(&sourceBytes, destinationBuffer, 2uLL, 2uLL);
  }

  else
  {
    return 4294960591;
  }
}

uint64_t APSRTPBBufGetTimestamp(CMBlockBufferRef theSourceBuffer, _DWORD *a2)
{
  destination = 0;
  result = 4294960591;
  if (theSourceBuffer && a2)
  {
    result = CMBlockBufferCopyDataBytes(theSourceBuffer, 4uLL, 4uLL, &destination);
    if (!result)
    {
      *a2 = bswap32(destination);
    }
  }

  return result;
}

uint64_t APSRTPBBufGetSSRC(CMBlockBufferRef theSourceBuffer, _DWORD *a2)
{
  destination = 0;
  result = 4294960591;
  if (theSourceBuffer && a2)
  {
    result = CMBlockBufferCopyDataBytes(theSourceBuffer, 8uLL, 4uLL, &destination);
    if (!result)
    {
      *a2 = bswap32(destination);
    }
  }

  return result;
}

uint64_t APSRTPBBufSetSSRC(CMBlockBufferRef destinationBuffer, unsigned int a2)
{
  sourceBytes = bswap32(a2);
  if (destinationBuffer)
  {
    return CMBlockBufferReplaceDataBytes(&sourceBytes, destinationBuffer, 8uLL, 4uLL);
  }

  else
  {
    return 4294960591;
  }
}

uint64_t APSRTPBBufGetPayloadOffset(OpaqueCMBlockBuffer *a1, unint64_t *a2, void *a3)
{
  if (a1 && a2 && a3)
  {
    return rtpBBufUtils_validateAndGetPayloadOffset(a1, 0, a2, a3);
  }

  else
  {
    return 4294960591;
  }
}

uint64_t APSRTPBBufCreateMutableHeaderCopy(OpaqueCMBlockBuffer *a1, const __CFAllocator *a2, CMBlockBufferRef *a3)
{
  v11 = 0;
  blockBufferOut = 0;
  v3 = 4294960591;
  if (a1 && a3)
  {
    PayloadOffset = rtpBBufUtils_validateAndGetPayloadOffset(a1, 0, &v11, &v10);
    if (!PayloadOffset)
    {
      PayloadOffset = CMBlockBufferCreateEmpty(a2, 2u, 0, &blockBufferOut);
      if (!PayloadOffset)
      {
        v8 = v11;
        PayloadOffset = CMBlockBufferAppendMemoryBlock(blockBufferOut, 0, v11, a2, 0, 0, v11, 1u);
        if (!PayloadOffset)
        {
          PayloadOffset = APSCMBlockBufferReplace(blockBufferOut, 0, a1, 0, v8);
          if (!PayloadOffset)
          {
            if (CMBlockBufferGetDataLength(a1) <= v8 || (PayloadOffset = CMBlockBufferAppendBufferReference(blockBufferOut, a1, v8, 0, 0), !PayloadOffset))
            {
              v3 = 0;
              *a3 = blockBufferOut;
              return v3;
            }
          }
        }
      }
    }

    v3 = PayloadOffset;
  }

  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  return v3;
}

uint64_t APSSRTPBBufCreateWithRTPBBuf(const __CFAllocator *a1, CMBlockBufferRef theBuffer, uint64_t a3, CMBlockBufferRef *a4)
{
  v21 = 0;
  blockBufferOut = 0;
  PayloadOffset = 4294960591;
  if (theBuffer && a3 && a4)
  {
    DataLength = CMBlockBufferGetDataLength(theBuffer);
    if (DataLength < 0xC)
    {
      return 4294960553;
    }

    v10 = DataLength;
    v11 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    v12 = v11 ? v11(a3) : 0;
    PayloadOffset = rtpBBufUtils_validateAndGetPayloadOffset(theBuffer, 0, &v21, &v20);
    if (!PayloadOffset)
    {
      v13 = MEMORY[0x223DB3470](a1, v12 + v10, 2341108524, 0);
      if (!v13)
      {
        return 4294960568;
      }

      v14 = v13;
      v15 = CMBlockBufferCopyDataBytes(theBuffer, 0, v10, v13);
      if (!v15)
      {
        v16 = v21;
        v17 = *(*(CMBaseObjectGetVTable() + 16) + 16);
        if (!v17)
        {
          PayloadOffset = 4294954514;
LABEL_17:
          CFAllocatorDeallocate(a1, v14);
          if (blockBufferOut)
          {
            CFRelease(blockBufferOut);
          }

          return PayloadOffset;
        }

        v15 = v17(a3, v14, v16, &v14[v16], v10 - v16, &v14[v16], v10 - v16, &v14[v10], v12);
        if (!v15)
        {
          PayloadOffset = CMBlockBufferCreateWithMemoryBlock(a1, v14, v12 + v10, a1, 0, 0, v12 + v10, 0, &blockBufferOut);
          if (!PayloadOffset)
          {
            *a4 = blockBufferOut;
            return PayloadOffset;
          }

          goto LABEL_17;
        }
      }

      PayloadOffset = v15;
      goto LABEL_17;
    }
  }

  return PayloadOffset;
}

uint64_t APSSRTPBBufCopyRTPBBuf(OpaqueCMBlockBuffer *a1, const __CFAllocator *a2, uint64_t a3, CMBlockBufferRef *a4)
{
  v28 = 0;
  blockBufferOut = 0;
  v26 = 0;
  PayloadOffset = 4294960591;
  if (a1 && a3 && a4)
  {
    DataLength = CMBlockBufferGetDataLength(a1);
    VTable = CMBaseObjectGetVTable();
    v11 = *(*(VTable + 16) + 8);
    if (v11)
    {
      v12 = *(VTable + 16) + 8;
      v13 = v11(a3);
    }

    else
    {
      v13 = 0;
    }

    if (DataLength < v13 + 12)
    {
      return 4294960553;
    }

    PayloadOffset = rtpBBufUtils_validateAndGetPayloadOffset(a1, 1, &v28, &v27);
    if (!PayloadOffset)
    {
      v14 = MEMORY[0x223DB3470](a2, DataLength, 3227126083, 0);
      if (!v14)
      {
        return 4294960568;
      }

      v15 = v14;
      v16 = CMBlockBufferCopyDataBytes(a1, 0, DataLength, v14);
      if (!v16)
      {
        v17 = v28;
        v18 = CMBaseObjectGetVTable();
        v19 = *(*(v18 + 16) + 24);
        if (!v19)
        {
          PayloadOffset = 4294954514;
          goto LABEL_25;
        }

        v20 = *(v18 + 16) + 24;
        v16 = v19(a3, v15, v17, &v15[v17], DataLength - v17, &v15[v17], DataLength - v13 - v17, &v26);
        if (!v16)
        {
          if (v26 + v17 != DataLength - v13)
          {
            PayloadOffset = 4294960534;
            goto LABEL_25;
          }

          if (v13)
          {
            v21 = -v13;
            do
            {
              v15[DataLength + v21] = 0;
            }

            while (!__CFADD__(v21++, 1));
          }

          v16 = CMBlockBufferCreateWithMemoryBlock(a2, v15, DataLength, a2, 0, 0, DataLength - v13, 0, &blockBufferOut);
          if (!v16)
          {
            PayloadOffset = rtpBBufUtils_validateAndGetPayloadOffset(blockBufferOut, 0, &v28, &v27);
            v23 = blockBufferOut;
            if (!PayloadOffset)
            {
              *a4 = blockBufferOut;
              return PayloadOffset;
            }

            goto LABEL_26;
          }
        }
      }

      PayloadOffset = v16;
LABEL_25:
      CFAllocatorDeallocate(a2, v15);
      v23 = blockBufferOut;
LABEL_26:
      if (v23)
      {
        CFRelease(v23);
      }
    }
  }

  return PayloadOffset;
}

uint64_t APSAPAPRTPBBufCreateWithAPAPBBuf(const __CFAllocator *a1, OpaqueCMBlockBuffer *a2, CMBlockBufferRef *a3)
{
  v14 = *MEMORY[0x277CC0898];
  v15 = *(MEMORY[0x277CC0898] + 16);
  v13 = 0;
  blockBufferOut = 0;
  sourceBytes = 0;
  appended = 4294960591;
  if (a2 && a3)
  {
    LOWORD(sourceBytes) = 28800;
    v16 = a2;
    v17 = 0;
    v7 = APSAPAPDecodeHeader(_APSAPAPBBufDecodeReadCallback, &v16, &v14, 0);
    appended = v7;
    if (!v7 && v17 != 15)
    {
      return 4294960587;
    }

    if (!v7)
    {
      HIDWORD(sourceBytes) = bswap32(v14);
      v16 = _byteswap_uint64(__PAIR64__(DWORD1(v14), DWORD2(v14)));
      v8 = CMBlockBufferCreateEmpty(a1, 2u, 0, &blockBufferOut);
      v9 = blockBufferOut;
      if (v8 || (v8 = CMBlockBufferAppendMemoryBlock(blockBufferOut, 0, 0x14uLL, a1, 0, 0, 0x14uLL, 1u), v9 = blockBufferOut, v8) || (v8 = CMBlockBufferReplaceDataBytes(&sourceBytes, blockBufferOut, 0, 0xCuLL), v9 = blockBufferOut, v8) || (v8 = CMBlockBufferReplaceDataBytes(&v16, blockBufferOut, 0xCuLL, 8uLL), v9 = blockBufferOut, v8))
      {
        appended = v8;
      }

      else
      {
        appended = CMBlockBufferAppendBufferReference(blockBufferOut, a2, 0xFuLL, 0, 0);
        v9 = blockBufferOut;
        if (!appended)
        {
          *a3 = blockBufferOut;
          return appended;
        }
      }

      if (v9)
      {
        CFRelease(v9);
      }
    }
  }

  return appended;
}

uint64_t APSAPAPRTPBBufCopyAPAPBBuf(OpaqueCMBlockBuffer *a1, const __CFAllocator *a2, CMBlockBufferRef *a3)
{
  v14 = 0;
  v15 = 0;
  v13 = **&MEMORY[0x277CC0898];
  blockBufferOut = 0;
  appended = 4294960591;
  if (a1 && a3)
  {
    PayloadOffset = rtpBBufUtils_validateAndGetPayloadOffset(a1, 0, &v15, &v14);
    if (PayloadOffset)
    {
      return PayloadOffset;
    }

    LOBYTE(destination.value) = 0;
    PayloadOffset = CMBlockBufferCopyDataBytes(a1, 1uLL, 1uLL, &destination);
    if (PayloadOffset)
    {
      return PayloadOffset;
    }

    if ((destination.value & 0x7F) != 0x70)
    {
      return 4294960579;
    }

    PayloadOffset = APSAPAPRTPBBufGetAPAPTimestamp(a1, &v13);
    if (PayloadOffset)
    {
      return PayloadOffset;
    }

    else
    {
      v10 = v14;
      v9 = v15;
      appended = CMBlockBufferCreateEmpty(a2, 2u, 0, &blockBufferOut);
      v11 = blockBufferOut;
      if (appended)
      {
        goto LABEL_13;
      }

      appended = CMBlockBufferAppendMemoryBlock(blockBufferOut, 0, 0xFuLL, a2, 0, 0, 0xFuLL, 1u);
      v11 = blockBufferOut;
      if (appended || (destination = v13, v17[0] = blockBufferOut, v17[1] = 0, appended = APSAPAPEncodeHeader(&destination, 0, _APSAPAPBBufEncodeWriteCallback, v17), v11 = blockBufferOut, appended) || (appended = CMBlockBufferAppendBufferReference(blockBufferOut, a1, v9 + 8, v10 - 8, 0), v11 = blockBufferOut, appended))
      {
LABEL_13:
        if (v11)
        {
          CFRelease(v11);
        }
      }

      else
      {
        *a3 = blockBufferOut;
      }
    }
  }

  return appended;
}

uint64_t APSAPAPRTPBBufGetAPAPTimestamp(OpaqueCMBlockBuffer *a1, CMTime *a2)
{
  v12 = **&MEMORY[0x277CC0898];
  v10 = 0;
  offsetToData = 0;
  v9 = 0;
  result = 4294960591;
  if (a1)
  {
    if (a2)
    {
      result = rtpBBufUtils_validateAndGetPayloadOffset(a1, 0, &offsetToData, &v10);
      if (!result)
      {
        LOBYTE(destination) = 0;
        result = CMBlockBufferCopyDataBytes(a1, 1uLL, 1uLL, &destination);
        if (!result)
        {
          if ((destination & 0x7F) != 0x70)
          {
            return 4294960579;
          }

          destination = 0;
          result = CMBlockBufferCopyDataBytes(a1, 4uLL, 4uLL, &destination);
          if (!result)
          {
            if (v10 < 8)
            {
              return 4294960546;
            }

            v5 = destination;
            result = CMBlockBufferCopyDataBytes(a1, offsetToData, 8uLL, &v9);
            if (!result)
            {
              v6 = v9;
              v7 = HIDWORD(v9);
              v8 = bswap32(HIDWORD(v9));
              v9 = __PAIR64__(v8, bswap32(v9));
              if (v7)
              {
                CMTimeMake(&v12, bswap64(v6 | (v5 << 32)), v8);
                result = 0;
                *a2 = v12;
                return result;
              }

              return 4294960579;
            }
          }
        }
      }
    }
  }

  return result;
}

unint64_t APSAPAPRTPBBufGetAPAPRTPFragmentCount(OpaqueCMBlockBuffer *a1, unint64_t a2)
{
  result = 0;
  v8 = 0;
  v7 = 0;
  v6 = 0;
  if (a1 && a2 >= 0xD)
  {
    if (rtpBBufUtils_validateAndGetPayloadOffset(a1, 0, &v9, &v8) || CMBlockBufferCopyDataBytes(a1, 0, 0xCuLL, &v6))
    {
      return 0;
    }

    result = 0;
    if (v6 == 128 && BYTE1(v6) == 112)
    {
      if (v8 < 9)
      {
        return 0;
      }

      v5 = v8 / (a2 - 12);
      if (v8 == v5 * (a2 - 12))
      {
        return v8 / (a2 - 12);
      }

      else
      {
        return v5 + 1;
      }
    }
  }

  return result;
}

uint64_t APSAPAPRTPBBufCopyAPAPRTPFragmentBBufs(OpaqueCMBlockBuffer *a1, const __CFAllocator *a2, unint64_t a3, __CFArray **a4)
{
  v31 = 0;
  offsetToData = 0;
  v30 = 0;
  v28 = 0;
  destination = 0;
  v4 = 4294960591;
  blockBufferOut = 0;
  if (a1 && a4)
  {
    if (a3 < 0xD)
    {
      return 4294960553;
    }

    PayloadOffset = rtpBBufUtils_validateAndGetPayloadOffset(a1, 0, &offsetToData, &v31);
    if (PayloadOffset)
    {
      return PayloadOffset;
    }

    PayloadOffset = CMBlockBufferCopyDataBytes(a1, 0, 0xCuLL, &destination);
    if (PayloadOffset)
    {
      return PayloadOffset;
    }

    v4 = 4294960579;
    if ((BYTE1(destination) & 0x7F) == 0x70)
    {
      v10 = v31;
      if (v31 >= 9)
      {
        v4 = 4294960591;
        if (BYTE1(destination) == 112 && destination == 128)
        {
          v11 = offsetToData;
          PayloadOffset = CMBlockBufferCopyDataBytes(a1, offsetToData, 8uLL, &v28);
          if (PayloadOffset)
          {
            return PayloadOffset;
          }

          v24 = v11;
          v13 = a3 - 12;
          v14 = v10 / (a3 - 12);
          if (v10 == v14 * (a3 - 12))
          {
            v15 = v10 / (a3 - 12);
          }

          else
          {
            v15 = v14 + 1;
          }

          cf = CFArrayCreateMutable(a2, v15, MEMORY[0x277CBF128]);
          if (cf)
          {
            v16 = 0;
            v17 = 0;
            v23 = v15 - 1;
            v25 = v15;
            while (1)
            {
              if (v10 - v17 >= v13)
              {
                v18 = v13;
              }

              else
              {
                v18 = v10 - v17;
              }

              if (v15 == 1)
              {
                v19 = 112;
              }

              else if (v16)
              {
                if (v16 < v23)
                {
                  v19 = 114;
                }

                else
                {
                  v19 = 115;
                }
              }

              else
              {
                v19 = 113;
              }

              BYTE1(destination) = v19;
              v20 = 8 - v17;
              if (8 - v17 >= v18)
              {
                v20 = v18;
              }

              v21 = v17 >= 8 ? 0 : v20;
              appended = CMBlockBufferCreateEmpty(a2, 2u, 0, &blockBufferOut);
              if (appended)
              {
                break;
              }

              appended = CMBlockBufferAppendMemoryBlock(blockBufferOut, 0, v21 + 12, a2, 0, 0, v21 + 12, 1u);
              if (appended)
              {
                break;
              }

              appended = CMBlockBufferReplaceDataBytes(&destination, blockBufferOut, 0, 0xCuLL);
              if (appended)
              {
                break;
              }

              if (v21)
              {
                appended = CMBlockBufferReplaceDataBytes(&v28 + v17, blockBufferOut, 0xCuLL, v21);
                if (appended)
                {
                  break;
                }
              }

              if (v18 > v21)
              {
                appended = CMBlockBufferAppendBufferReference(blockBufferOut, a1, v17 + v24 + v21, v18 - v21, 0);
                if (appended)
                {
                  break;
                }
              }

              CFArrayAppendValue(cf, blockBufferOut);
              if (blockBufferOut)
              {
                CFRelease(blockBufferOut);
                blockBufferOut = 0;
              }

              WORD1(destination) = bswap32((bswap32(WORD1(destination)) >> 16) + 1) >> 16;
              v17 += v18;
              ++v16;
              v15 = v25;
              if (v17 >= v10)
              {
                v4 = 0;
                *a4 = cf;
                return v4;
              }
            }

            v4 = appended;
            if (blockBufferOut)
            {
              CFRelease(blockBufferOut);
            }

            CFRelease(cf);
          }

          else
          {
            return 4294960568;
          }
        }
      }
    }
  }

  return v4;
}

uint64_t APSAPAPRTPBBufCreateWithAPAPRTPFragmentBBufs(const __CFAllocator *a1, CFArrayRef theArray, CMBlockBufferRef *a3)
{
  v18 = 0;
  offsetToData = 0;
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
  }

  else
  {
    Count = 0;
  }

  blockBufferOut = 0;
  LODWORD(destination[1]) = 0;
  destination[0] = 0;
  LODWORD(sourceBytes[1]) = 0;
  v7 = 4294960591;
  sourceBytes[0] = 0;
  if (a3 && Count >= 1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
    PayloadOffset = rtpBBufUtils_validateAndGetPayloadOffset(ValueAtIndex, 0, &offsetToData, &v18);
    if (!PayloadOffset)
    {
      PayloadOffset = CMBlockBufferCopyDataBytes(ValueAtIndex, 0, 0xCuLL, destination);
      if (!PayloadOffset)
      {
        v10 = BYTE1(destination[0]) & 0x7F;
        if (Count == 1)
        {
          if (v10 != 112)
          {
            goto LABEL_33;
          }
        }

        else if (v10 != 113)
        {
LABEL_33:
          v7 = 4294960579;
          goto LABEL_17;
        }

        sourceBytes[0] = destination[0];
        LODWORD(sourceBytes[1]) = destination[1];
        LOWORD(sourceBytes[0]) = 28800;
        PayloadOffset = CMBlockBufferCreateEmpty(a1, Count + 1, 0, &blockBufferOut);
        if (!PayloadOffset)
        {
          PayloadOffset = CMBlockBufferAppendMemoryBlock(blockBufferOut, 0, 0xCuLL, a1, 0, 0, 0xCuLL, 1u);
          if (!PayloadOffset)
          {
            PayloadOffset = CMBlockBufferReplaceDataBytes(sourceBytes, blockBufferOut, 0, 0xCuLL);
            if (!PayloadOffset)
            {
              PayloadOffset = CMBlockBufferAppendBufferReference(blockBufferOut, ValueAtIndex, offsetToData, v18, 0);
              if (!PayloadOffset)
              {
                if (Count < 2)
                {
LABEL_32:
                  v7 = 0;
                  *a3 = blockBufferOut;
                  return v7;
                }

                v12 = 1;
                while (1)
                {
                  v13 = CFArrayGetValueAtIndex(theArray, v12);
                  PayloadOffset = rtpBBufUtils_validateAndGetPayloadOffset(v13, 0, &offsetToData, &v18);
                  if (PayloadOffset)
                  {
                    break;
                  }

                  PayloadOffset = CMBlockBufferCopyDataBytes(v13, 0, 0xCuLL, destination);
                  if (PayloadOffset)
                  {
                    break;
                  }

                  if (v12 < Count - 1)
                  {
                    v14 = 114;
                  }

                  else
                  {
                    v14 = 115;
                  }

                  if (v14 != (BYTE1(destination[0]) & 0x7F))
                  {
                    goto LABEL_33;
                  }

                  if (WORD1(destination[0]) != bswap32(v12 + (bswap32(WORD1(sourceBytes[0])) >> 16)) >> 16)
                  {
                    v7 = 4294960527;
                    goto LABEL_17;
                  }

                  if (*(destination + 4) != *(sourceBytes + 4))
                  {
                    v7 = 4294960548;
                    goto LABEL_17;
                  }

                  PayloadOffset = CMBlockBufferAppendBufferReference(blockBufferOut, v13, offsetToData, v18, 0);
                  if (PayloadOffset)
                  {
                    break;
                  }

                  if (Count == ++v12)
                  {
                    goto LABEL_32;
                  }
                }
              }
            }
          }
        }
      }
    }

    v7 = PayloadOffset;
  }

LABEL_17:
  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  return v7;
}

uint64_t APSEndpointStreamAudioHoseAUCreate(uint64_t a1, const void *a2, const void *a3, const void *a4, uint64_t a5, int a6, int a7, const void *a8, uint64_t a9, void *a10)
{
  v38 = *MEMORY[0x277D85DE8];
  cf = 0;
  v35 = 0;
  if (!a4)
  {
    v30 = 4294894965;
    v17 = 0;
    goto LABEL_200;
  }

  if (!a5)
  {
    v30 = 4294894965;
    v17 = 0;
    goto LABEL_200;
  }

  if (!a3)
  {
    v30 = 4294894965;
    v17 = 0;
    goto LABEL_200;
  }

  if (!a10)
  {
    v30 = 4294894965;
    v17 = 0;
    goto LABEL_200;
  }

  if (hoseAU_getClassID_sRegisterOnce != -1)
  {
    dispatch_once_f(&hoseAU_getClassID_sRegisterOnce, &hoseAU_getClassID_sClassID, hoseAU_registerBaseClass);
  }

  v17 = CMDerivedObjectCreate();
  if (v17)
  {
    v30 = v17;
    goto LABEL_200;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  SNPrintF();
  v19 = dispatch_queue_create(label, 0);
  *(DerivedStorage + 8) = v19;
  if (!v19)
  {
    goto LABEL_211;
  }

  if (hoseAU_amIAudioServer_onceToken != -1)
  {
    dispatch_once(&hoseAU_amIAudioServer_onceToken, &__block_literal_global_3106);
  }

  if (hoseAU_amIAudioServer_iSureAm == 1)
  {
    SNPrintF();
    v20 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v21 = dispatch_queue_create(label, v20);
    *(DerivedStorage + 16) = v21;
    if (!v21)
    {
LABEL_211:
      APSLogErrorAt(0);
      v30 = 4294894966;
      goto LABEL_194;
    }
  }

  if (a2)
  {
    v22 = CFRetain(a2);
  }

  else
  {
    v22 = 0;
  }

  *(DerivedStorage + 24) = v22;
  *(DerivedStorage + 32) = CFRetain(a3);
  *(DerivedStorage + 40) = CFRetain(a4);
  if (a8)
  {
    v23 = CFRetain(a8);
  }

  else
  {
    v23 = 0;
  }

  *(DerivedStorage + 48) = v23;
  *(DerivedStorage + 56) = a5;
  if (a5 <= 0x3FFFFFFF)
  {
    if (a5 < 0x8000)
    {
      v24 = 0x1000000001;
      v25 = xmmword_22234D3F0;
      if (a5 > 255)
      {
        if (a5 <= 2047)
        {
          if (a5 == 256)
          {
            goto LABEL_151;
          }

          if (a5 == 512)
          {
            v24 = 0x1000000002;
            v25 = xmmword_22234D3D0;
            goto LABEL_151;
          }

          if (a5 != 1024)
          {
            goto LABEL_199;
          }
        }

        else if (a5 >= 0x2000)
        {
          if (a5 != 0x2000)
          {
            if (a5 != 0x4000)
            {
              goto LABEL_199;
            }

            goto LABEL_168;
          }

          v24 = 0x1800000002;
          v25 = xmmword_22234D390;
        }

        else if (a5 == 2048)
        {
          v24 = 0x1000000002;
          v25 = xmmword_22234D3D0;
        }

        else
        {
          if (a5 != 4096)
          {
            goto LABEL_199;
          }

          v24 = 0x1800000001;
          v25 = xmmword_22234D3B0;
        }

        goto LABEL_146;
      }

      if (a5 <= 15)
      {
        if (a5 != 0x8000000000000000)
        {
          v26 = 0x40BF400000000000;
          if (a5 == 4)
          {
            goto LABEL_169;
          }

          if (a5 == 8)
          {
            v24 = 0x1000000002;
            v25 = xmmword_22234D3D0;
            goto LABEL_169;
          }

          goto LABEL_199;
        }

        v24 = 6;
        goto LABEL_167;
      }

      if (a5 > 63)
      {
        if (a5 != 64)
        {
          if (a5 != 128)
          {
            goto LABEL_199;
          }

          v24 = 0x1000000002;
          v25 = xmmword_22234D3D0;
        }

        goto LABEL_110;
      }

      if (a5 != 16)
      {
        if (a5 != 32)
        {
          goto LABEL_199;
        }

        v24 = 0x1000000002;
        v25 = xmmword_22234D3D0;
      }
    }

    else
    {
      if (a5 < 0x400000)
      {
        if (a5 < 0x40000)
        {
          switch(a5)
          {
            case 0x8000:
              v24 = 0x1000000002;
              v25 = xmmword_22234D3D0;
              goto LABEL_168;
            case 0x10000:
              v24 = 0x1800000001;
              v25 = xmmword_22234D3B0;
              break;
            case 0x20000:
              v24 = 0x1800000002;
              v25 = xmmword_22234D390;
              break;
            default:
              goto LABEL_199;
          }

          goto LABEL_168;
        }

        if (a5 >= 0x100000)
        {
          if (a5 == 0x100000)
          {
            v24 = 2;
            v25 = xmmword_22234D220;
          }

          else
          {
            if (a5 != 0x200000)
            {
              goto LABEL_199;
            }

            v24 = 2;
            v25 = xmmword_22234D200;
          }

          goto LABEL_168;
        }

        if (a5 == 0x40000)
        {
          v24 = 2;
          v25 = xmmword_22234D220;
        }

        else
        {
          if (a5 != 0x80000)
          {
            goto LABEL_199;
          }

          v24 = 2;
          v25 = xmmword_22234D200;
        }

        goto LABEL_146;
      }

      if (a5 <= 0x3FFFFFF)
      {
        if (a5 > 0xFFFFFF)
        {
          if (a5 != 0x1000000)
          {
            if (a5 != 0x2000000)
            {
              goto LABEL_199;
            }

            v24 = 2;
            goto LABEL_155;
          }

          v24 = 2;
LABEL_139:
          v25 = xmmword_22234D1E0;
          goto LABEL_146;
        }

        if (a5 != 0x400000)
        {
          if (a5 == 0x800000)
          {
            v24 = 2;
            goto LABEL_148;
          }

LABEL_199:
          v30 = 4294960561;
          v17 = 4294960561;
          goto LABEL_200;
        }

        v24 = 2;
        v25 = xmmword_22234D1F0;
LABEL_146:
        v26 = 0x40E5888000000000;
        goto LABEL_169;
      }

      if (a5 > 0xFFFFFFF)
      {
        if (a5 != 0x10000000)
        {
          if (a5 != 0x20000000)
          {
            goto LABEL_199;
          }

          v24 = 1;
          v25 = xmmword_22234D1C0;
          goto LABEL_110;
        }

        v24 = 1;
        v25 = xmmword_22234D1D0;
      }

      else
      {
        if (a5 != 0x4000000)
        {
          if (a5 != 0x8000000)
          {
            goto LABEL_199;
          }

          v24 = 1;
          v25 = xmmword_22234D1E0;
LABEL_110:
          v26 = 0x40D7700000000000;
          goto LABEL_169;
        }

        v24 = 1;
        v25 = xmmword_22234D1E0;
      }
    }

    v26 = 0x40CF400000000000;
    goto LABEL_169;
  }

  if (a5 > 0x7FFFFFFFFFFFLL)
  {
    if (a5 <= 0x3FFFFFFFFFFFFFLL)
    {
      if (a5 <= 0x3FFFFFFFFFFFFLL)
      {
        if (a5 == 0x800000000000)
        {
          v24 = 0x2000000006;
          v25 = xmmword_22234D2C0;
          goto LABEL_168;
        }

        if (a5 == 0x1000000000000)
        {
          v24 = 0x2000000008;
          v25 = xmmword_22234D2A0;
          goto LABEL_168;
        }

        if (a5 != 0x2000000000000)
        {
          goto LABEL_199;
        }

        v24 = 2;
      }

      else if (a5 > 0xFFFFFFFFFFFFFLL)
      {
        if (a5 == 0x10000000000000)
        {
          v24 = 12;
        }

        else
        {
          if (a5 != 0x20000000000000)
          {
            goto LABEL_199;
          }

          v24 = 16;
        }
      }

      else if (a5 == 0x4000000000000)
      {
        v24 = 6;
      }

      else
      {
        if (a5 != 0x8000000000000)
        {
          goto LABEL_199;
        }

        v24 = 8;
      }

      v25 = xmmword_22234D230;
      goto LABEL_168;
    }

    if (a5 > 0x3FFFFFFFFFFFFFFLL)
    {
      if (a5 > 0x1FFFFFFFFFFFFFFFLL)
      {
        if (a5 == 0x2000000000000000)
        {
          v24 = 2;
          v25 = xmmword_22234D170;
          goto LABEL_168;
        }

        if (a5 != 0x4000000000000000)
        {
          goto LABEL_199;
        }

        v24 = 2;
        goto LABEL_167;
      }

      if (a5 == 0x400000000000000)
      {
        v24 = 6;
      }

      else
      {
        if (a5 != 0x1000000000000000)
        {
          goto LABEL_199;
        }

        v24 = 8;
      }
    }

    else
    {
      if (a5 <= 0xFFFFFFFFFFFFFFLL)
      {
        if (a5 == 0x40000000000000)
        {
          v24 = 2;
        }

        else
        {
          if (a5 != 0x80000000000000)
          {
            goto LABEL_199;
          }

          v24 = 6;
        }

LABEL_157:
        v25 = xmmword_22234D160;
        goto LABEL_168;
      }

      if (a5 == 0x100000000000000)
      {
        v24 = 8;
        goto LABEL_157;
      }

      if (a5 != 0x200000000000000)
      {
        goto LABEL_199;
      }

      v24 = 2;
    }

    v25 = xmmword_22234D150;
    goto LABEL_168;
  }

  if (a5 <= 0x7FFFFFFFFFLL)
  {
    if (a5 > 0x1FFFFFFFFLL)
    {
      if (a5 > 0x7FFFFFFFFLL)
      {
        if (a5 != 0x800000000)
        {
          if (a5 != 0x4000000000)
          {
            goto LABEL_199;
          }

          v24 = 0x1000000008;
          v25 = xmmword_22234D350;
          goto LABEL_168;
        }

        v24 = 16;
      }

      else if (a5 == 0x200000000)
      {
        v24 = 8;
      }

      else
      {
        if (a5 != 0x400000000)
        {
          goto LABEL_199;
        }

        v24 = 12;
      }

LABEL_167:
      v25 = xmmword_22234D140;
      goto LABEL_168;
    }

    if (a5 == 0x40000000)
    {
      v24 = 1;
      v25 = xmmword_22234D1A0;
      goto LABEL_168;
    }

    if (a5 != 0x80000000)
    {
      if (a5 != 0x100000000)
      {
        goto LABEL_199;
      }

      v24 = 1;
      goto LABEL_155;
    }

    v24 = 1;
    goto LABEL_139;
  }

  if (a5 <= 0x7FFFFFFFFFFLL)
  {
    if (a5 <= 0x1FFFFFFFFFFLL)
    {
      if (a5 == 0x8000000000)
      {
        v24 = 6;
        goto LABEL_148;
      }

      if (a5 == 0x10000000000)
      {
        v24 = 8;
LABEL_148:
        v25 = xmmword_22234D1F0;
        goto LABEL_168;
      }

      goto LABEL_199;
    }

    if (a5 == 0x20000000000)
    {
      v24 = 6;
    }

    else
    {
      if (a5 != 0x40000000000)
      {
        goto LABEL_199;
      }

      v24 = 8;
    }

LABEL_155:
    v25 = xmmword_22234D1E0;
    goto LABEL_168;
  }

  if (a5 <= 0x1FFFFFFFFFFFLL)
  {
    if (a5 != 0x80000000000)
    {
      if (a5 != 0x100000000000)
      {
        goto LABEL_199;
      }

      v24 = 0x1000000006;
      v25 = xmmword_22234D370;
      goto LABEL_168;
    }

    v24 = 1;
    v25 = xmmword_22234D1E0;
LABEL_151:
    v26 = 0x40DF400000000000;
    goto LABEL_169;
  }

  if (a5 == 0x200000000000)
  {
    v24 = 0x2000000001;
    v25 = xmmword_22234D300;
    goto LABEL_168;
  }

  if (a5 != 0x400000000000)
  {
    goto LABEL_199;
  }

  v24 = 0x2000000002;
  v25 = xmmword_22234D2E0;
LABEL_168:
  v26 = 0x40E7700000000000;
LABEL_169:
  *(DerivedStorage + 64) = v26;
  *(DerivedStorage + 72) = v25;
  *(DerivedStorage + 88) = DWORD2(v25);
  *(DerivedStorage + 92) = v24;
  *(DerivedStorage + 100) = 0;
  if (a6)
  {
    *(DerivedStorage + 84) = a6;
  }

  *(DerivedStorage + 184) = a7;
  v17 = APAudioFormatToPCMASBD(a5, DerivedStorage + 104);
  if (v17)
  {
    v30 = v17;
    goto LABEL_200;
  }

  v17 = APAudioFormatToAudioChannelLayout(*(DerivedStorage + 56), (DerivedStorage + 144), &v35);
  if (v17)
  {
    v30 = v17;
    goto LABEL_200;
  }

  *(DerivedStorage + 176) = *(DerivedStorage + 64);
  v17 = APSRTPPassThroughJitterBufferCreate(*MEMORY[0x277CBECE8], 512, 1472, *MEMORY[0x277CBECE8], (DerivedStorage + 272));
  if (v17)
  {
    v30 = v17;
    goto LABEL_200;
  }

  v17 = APSStreamingAudioRendererCreate(*(DerivedStorage + 272), *(DerivedStorage + 56), *(DerivedStorage + 84), (DerivedStorage + 280));
  if (v17)
  {
    v30 = v17;
    goto LABEL_200;
  }

  v27 = cf;
  v28 = CMBaseObjectGetDerivedStorage();
  if (hoseAU_amIAudioServer_onceToken != -1)
  {
    dispatch_once(&hoseAU_amIAudioServer_onceToken, &__block_literal_global_3106);
  }

  if (hoseAU_amIAudioServer_iSureAm == 1)
  {
    if (gLogCategory_APSEndpointStreamAudioHoseAU <= 50 && (gLogCategory_APSEndpointStreamAudioHoseAU != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    if (v27)
    {
      CFRetain(v27);
    }

    dispatch_async_f(*(v28 + 16), v27, hoseAU_initializeGraphAsync);
    goto LABEL_187;
  }

  v29 = hoseAU_initializeGraph(v27);
  if (v29)
  {
    v30 = v29;
    APSLogErrorAt(v29);
    v17 = v30;
LABEL_200:
    APSLogErrorAt(v17);
    goto LABEL_194;
  }

LABEL_187:
  if (gLogCategory_APSEndpointStreamAudioHoseAU <= 50 && (gLogCategory_APSEndpointStreamAudioHoseAU != -1 || _LogCategory_Initialize()))
  {
    v34 = *(DerivedStorage + 32);
    LogPrintF();
  }

  v31 = cf;
  if (cf)
  {
    v31 = CFRetain(cf);
  }

  v30 = 0;
  *a10 = v31;
LABEL_194:
  if (cf)
  {
    CFRelease(cf);
  }

  v32 = *MEMORY[0x277D85DE8];
  return v30;
}

uint64_t hoseAU_initializeGraph(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  memset(&inDesc, 0, sizeof(inDesc));
  ioDataSize = 0;
  outData = 0.0;
  if (gLogCategory_APSEndpointStreamAudioHoseAU <= 50 && (gLogCategory_APSEndpointStreamAudioHoseAU != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  task_info_outCnt = 8;
  v3 = CMBaseObjectGetDerivedStorage();
  v59 = 0;
  cf = 0;
  v58 = 0.0;
  if (gLogCategory_APSEndpointStreamAudioHoseAU <= 50 && (gLogCategory_APSEndpointStreamAudioHoseAU != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v4 = (v3 + 192);
  if (*(v3 + 192))
  {
    HIDWORD(task_info_outCnt) = -6719;
    if (gLogCategory_APSEndpointStreamAudioHoseAU > 90 || gLogCategory_APSEndpointStreamAudioHoseAU == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_40;
    }

    goto LABEL_146;
  }

  if (hoseAU_amIAudioServer_onceToken != -1)
  {
    dispatch_once(&hoseAU_amIAudioServer_onceToken, &__block_literal_global_3106);
  }

  if (hoseAU_amIAudioServer_iSureAm == 1)
  {
    v5 = task_info(*MEMORY[0x277D85F48], 0xFu, (v3 + 196), &task_info_outCnt);
    if (v5)
    {
      HIDWORD(task_info_outCnt) = -6762;
      if (gLogCategory_APSEndpointStreamAudioHoseAU > 90)
      {
        goto LABEL_40;
      }

      v49 = v5;
      if (gLogCategory_APSEndpointStreamAudioHoseAU == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_40;
      }

      mach_error_string(v49);
    }

    else
    {
      HIDWORD(task_info_outCnt) = AudioSessionCreateCoreMXSession();
      if (!HIDWORD(task_info_outCnt))
      {
        v6 = CFStringCreateF();
        if (HIDWORD(task_info_outCnt))
        {
          APSLogErrorAt(HIDWORD(task_info_outCnt));
          goto LABEL_38;
        }

        v7 = *(v3 + 232);
        v8 = *MEMORY[0x277D271E0];
        HIDWORD(task_info_outCnt) = CMSessionSetProperty();
        if (HIDWORD(task_info_outCnt))
        {
          if (gLogCategory_APSEndpointStreamAudioHoseAU > 90 || gLogCategory_APSEndpointStreamAudioHoseAU == -1 && !_LogCategory_Initialize())
          {
            goto LABEL_38;
          }
        }

        else
        {
          v9 = *(v3 + 232);
          v10 = *MEMORY[0x277D27298];
          v11 = *MEMORY[0x277CBED10];
          HIDWORD(task_info_outCnt) = CMSessionSetProperty();
          if (HIDWORD(task_info_outCnt))
          {
            if (gLogCategory_APSEndpointStreamAudioHoseAU > 90 || gLogCategory_APSEndpointStreamAudioHoseAU == -1 && !_LogCategory_Initialize())
            {
              goto LABEL_38;
            }
          }

          else
          {
            v12 = *(v3 + 232);
            v13 = *MEMORY[0x277D271A8];
            v14 = *MEMORY[0x277D27060];
            HIDWORD(task_info_outCnt) = CMSessionSetProperty();
            if (HIDWORD(task_info_outCnt))
            {
              if (gLogCategory_APSEndpointStreamAudioHoseAU > 90 || gLogCategory_APSEndpointStreamAudioHoseAU == -1 && !_LogCategory_Initialize())
              {
                goto LABEL_38;
              }
            }

            else
            {
              v15 = *(v3 + 32);
              v16 = *MEMORY[0x277CC1970];
              if (FigCFEqual() && (v17 = *(v3 + 232), v18 = *MEMORY[0x277D271B0], v19 = *MEMORY[0x277D270B0], (HIDWORD(task_info_outCnt) = CMSessionSetProperty()) != 0))
              {
                if (gLogCategory_APSEndpointStreamAudioHoseAU > 90 || gLogCategory_APSEndpointStreamAudioHoseAU == -1 && !_LogCategory_Initialize())
                {
                  goto LABEL_38;
                }
              }

              else
              {
                v20 = *MEMORY[0x277CBECE8];
                UInt32 = FigCFNumberCreateUInt32();
                cf = UInt32;
                if (!UInt32)
                {
                  APSLogErrorAt(0);
                  HIDWORD(task_info_outCnt) = -72330;
                  goto LABEL_38;
                }

                v22 = UInt32;
                v23 = *(v3 + 232);
                v24 = *MEMORY[0x277D27280];
                HIDWORD(task_info_outCnt) = CMSessionSetProperty();
                if (HIDWORD(task_info_outCnt))
                {
                  if (gLogCategory_APSEndpointStreamAudioHoseAU > 90 || gLogCategory_APSEndpointStreamAudioHoseAU == -1 && !_LogCategory_Initialize())
                  {
                    goto LABEL_38;
                  }
                }

                else
                {
                  v25 = *(v3 + 232);
                  HIDWORD(task_info_outCnt) = CMSessionBeginInterruption();
                  if (HIDWORD(task_info_outCnt))
                  {
                    if (gLogCategory_APSEndpointStreamAudioHoseAU > 90 || gLogCategory_APSEndpointStreamAudioHoseAU == -1 && !_LogCategory_Initialize())
                    {
                      goto LABEL_38;
                    }
                  }

                  else
                  {
                    CFRelease(v22);
                    cf = 0;
                    v26 = *(v3 + 232);
                    v27 = *MEMORY[0x277D27228];
                    HIDWORD(task_info_outCnt) = CMSessionCopyProperty();
                    if (!HIDWORD(task_info_outCnt))
                    {
                      FigCFNumberGetFloat64();
                      goto LABEL_34;
                    }

                    if (gLogCategory_APSEndpointStreamAudioHoseAU > 90 || gLogCategory_APSEndpointStreamAudioHoseAU == -1 && !_LogCategory_Initialize())
                    {
                      goto LABEL_38;
                    }
                  }
                }
              }
            }
          }
        }

LABEL_36:
        LogPrintF();
        goto LABEL_38;
      }

      if (gLogCategory_APSEndpointStreamAudioHoseAU > 90 || gLogCategory_APSEndpointStreamAudioHoseAU == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_40;
      }
    }

LABEL_146:
    LogPrintF();
    goto LABEL_40;
  }

  HIDWORD(task_info_outCnt) = AudioSessionCreateSession_Priv();
  if (HIDWORD(task_info_outCnt))
  {
    if (gLogCategory_APSEndpointStreamAudioHoseAU > 90 || gLogCategory_APSEndpointStreamAudioHoseAU == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_40;
    }

    goto LABEL_146;
  }

  LODWORD(v59) = 1835361385;
  v29 = *v4;
  HIDWORD(task_info_outCnt) = AudioSessionSetProperty_Priv();
  if (HIDWORD(task_info_outCnt))
  {
    if (gLogCategory_APSEndpointStreamAudioHoseAU > 90 || gLogCategory_APSEndpointStreamAudioHoseAU == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_40;
    }

    goto LABEL_146;
  }

  v30 = *(v3 + 32);
  v31 = *MEMORY[0x277CC1970];
  if (FigCFEqual())
  {
    LODWORD(v59) = 1819047524;
    v32 = *v4;
    HIDWORD(task_info_outCnt) = AudioSessionSetProperty_Priv();
    if (HIDWORD(task_info_outCnt))
    {
      if (gLogCategory_APSEndpointStreamAudioHoseAU > 90 || gLogCategory_APSEndpointStreamAudioHoseAU == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_40;
      }

      goto LABEL_146;
    }
  }

  LODWORD(v59) = 5;
  v33 = *v4;
  HIDWORD(task_info_outCnt) = AudioSessionSetProperty_Priv();
  if (HIDWORD(task_info_outCnt))
  {
    if (gLogCategory_APSEndpointStreamAudioHoseAU > 90 || gLogCategory_APSEndpointStreamAudioHoseAU == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_40;
    }

    goto LABEL_146;
  }

  v34 = *v4;
  HIDWORD(task_info_outCnt) = AudioSessionSetActive_Priv();
  if (HIDWORD(task_info_outCnt))
  {
    if (gLogCategory_APSEndpointStreamAudioHoseAU > 90 || gLogCategory_APSEndpointStreamAudioHoseAU == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_40;
    }

    goto LABEL_146;
  }

  HIDWORD(v59) = 4;
  v35 = *v4;
  HIDWORD(task_info_outCnt) = AudioSessionCopyProperty_Priv();
  if (HIDWORD(task_info_outCnt))
  {
    if (gLogCategory_APSEndpointStreamAudioHoseAU > 90 || gLogCategory_APSEndpointStreamAudioHoseAU == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_40;
    }

    goto LABEL_146;
  }

  v6 = 0;
  v28 = v58;
LABEL_34:
  *(v3 + 240) = v28;
  if (gLogCategory_APSEndpointStreamAudioHoseAU > 50)
  {
    goto LABEL_38;
  }

  if (gLogCategory_APSEndpointStreamAudioHoseAU != -1)
  {
    goto LABEL_36;
  }

  if (_LogCategory_Initialize())
  {
    v50 = *(v3 + 240);
    goto LABEL_36;
  }

LABEL_38:
  if (v6)
  {
    CFRelease(v6);
  }

LABEL_40:
  if (cf)
  {
    CFRelease(cf);
  }

  if (HIDWORD(task_info_outCnt))
  {
    if (gLogCategory_APSEndpointStreamAudioHoseAU <= 50 && (gLogCategory_APSEndpointStreamAudioHoseAU != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    hoseAU_destroyAudioSession();
    v36 = HIDWORD(task_info_outCnt);
    if (HIDWORD(task_info_outCnt))
    {
      Property = HIDWORD(task_info_outCnt);
      goto LABEL_98;
    }
  }

  *&inDesc.componentType = xmmword_22234D430;
  inDesc.componentFlagsMask = 0;
  Next = AudioComponentFindNext(0, &inDesc);
  if (!Next)
  {
    goto LABEL_84;
  }

  Property = AudioComponentInstanceNew(Next, (DerivedStorage + 248));
  if (Property)
  {
    v36 = Property;
    goto LABEL_98;
  }

  Property = AudioUnitSetProperty(*(DerivedStorage + 248), 0x7E7u, 2u, 0, (DerivedStorage + 192), 4u);
  if (Property)
  {
    v36 = Property;
    goto LABEL_98;
  }

  *&inDesc.componentType = xmmword_22234D440;
  inDesc.componentFlagsMask = 0;
  v39 = AudioComponentFindNext(0, &inDesc);
  if (!v39)
  {
    goto LABEL_84;
  }

  Property = AudioComponentInstanceNew(v39, (DerivedStorage + 256));
  if (Property)
  {
    v36 = Property;
    goto LABEL_98;
  }

  Property = AudioUnitSetProperty(*(DerivedStorage + 256), 0x13u, 1u, 0, (DerivedStorage + 144), 0x20u);
  if (Property)
  {
    v36 = Property;
    goto LABEL_98;
  }

  *&inDesc.componentType = xmmword_22234D450;
  inDesc.componentFlagsMask = 0;
  v40 = AudioComponentFindNext(0, &inDesc);
  if (!v40)
  {
LABEL_84:
    APSLogErrorAt(0);
    return 0;
  }

  Property = AudioComponentInstanceNew(v40, (DerivedStorage + 264));
  if (Property)
  {
    v36 = Property;
    goto LABEL_98;
  }

  Property = AudioUnitSetProperty(*(DerivedStorage + 264), 8u, 1u, 0, (DerivedStorage + 104), 0x28u);
  if (Property)
  {
    v36 = Property;
    goto LABEL_98;
  }

  v41 = *(DerivedStorage + 248);
  inData[0] = *(DerivedStorage + 256);
  inData[1] = 0;
  Property = AudioUnitSetProperty(v41, 1u, 1u, 0, inData, 0x10u);
  if (Property)
  {
    v36 = Property;
    goto LABEL_98;
  }

  v42 = *(DerivedStorage + 256);
  v53[0] = *(DerivedStorage + 264);
  v53[1] = 0;
  Property = AudioUnitSetProperty(v42, 1u, 1u, 0, v53, 0x10u);
  if (Property)
  {
    v36 = Property;
    goto LABEL_98;
  }

  v43 = *(DerivedStorage + 264);
  v52[0] = hoseAU_renderCallback;
  v52[1] = a1;
  Property = AudioUnitSetProperty(v43, 0x17u, 1u, 0, v52, 0x10u);
  if (Property)
  {
    v36 = Property;
    goto LABEL_98;
  }

  Property = AudioUnitInitialize(*(DerivedStorage + 248));
  if (Property)
  {
    v36 = Property;
    goto LABEL_98;
  }

  Property = AudioUnitInitialize(*(DerivedStorage + 256));
  if (Property)
  {
    v36 = Property;
    goto LABEL_98;
  }

  Property = AudioUnitInitialize(*(DerivedStorage + 264));
  if (Property)
  {
    v36 = Property;
    goto LABEL_98;
  }

  Property = AudioUnitSetParameter(*(DerivedStorage + 256), 0, 1u, 0, 1.0, 0);
  if (Property)
  {
    v36 = Property;
    goto LABEL_98;
  }

  Property = AudioUnitSetParameter(*(DerivedStorage + 256), 0, 2u, 0, 1.0, 0);
  if (Property)
  {
    v36 = Property;
    goto LABEL_98;
  }

  v44 = *(DerivedStorage + 240);
  ioDataSize = 8;
  Property = AudioUnitGetProperty(*(DerivedStorage + 248), 0xCu, 0, 0, &outData, &ioDataSize);
  if (Property)
  {
    v36 = Property;
    goto LABEL_98;
  }

  v45 = outData;
  ioDataSize = 8;
  Property = AudioUnitGetProperty(*(DerivedStorage + 256), 0xCu, 0, 0, &outData, &ioDataSize);
  if (Property)
  {
    v36 = Property;
    goto LABEL_98;
  }

  v46 = outData;
  ioDataSize = 8;
  Property = AudioUnitGetProperty(*(DerivedStorage + 264), 0xCu, 0, 0, &outData, &ioDataSize);
  if (Property)
  {
    v36 = Property;
LABEL_98:
    APSLogErrorAt(Property);
    if (gLogCategory_APSEndpointStreamAudioHoseAU <= 90 && (gLogCategory_APSEndpointStreamAudioHoseAU != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    hoseAU_destroyGraph();
    return v36;
  }

  v47 = ((v44 + 0.0 + v45 + v46 + outData) * *(DerivedStorage + 104));
  if (gLogCategory_APSEndpointStreamAudioHoseAU <= 50 && (gLogCategory_APSEndpointStreamAudioHoseAU != -1 || _LogCategory_Initialize()))
  {
    v51 = *(DerivedStorage + 184);
    LogPrintF();
  }

  APSStreamingAudioRendererSetRenderTSOffset(*(DerivedStorage + 280), *(DerivedStorage + 184) + v47);
  Property = AudioOutputUnitStart(*(DerivedStorage + 248));
  v36 = Property;
  if (Property)
  {
    goto LABEL_98;
  }

  return v36;
}

uint64_t hoseAU_destroyAudioSession()
{
  result = CMBaseObjectGetDerivedStorage();
  if (*(result + 192))
  {
    v1 = result;
    if (gLogCategory_APSEndpointStreamAudioHoseAU <= 50 && (gLogCategory_APSEndpointStreamAudioHoseAU != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    if (hoseAU_amIAudioServer_onceToken != -1)
    {
      dispatch_once(&hoseAU_amIAudioServer_onceToken, &__block_literal_global_3106);
    }

    if (hoseAU_amIAudioServer_iSureAm == 1)
    {
      v2 = *(v1 + 232);
      if (v2)
      {
        CFRelease(v2);
        *(v1 + 232) = 0;
      }

      v3 = *(v1 + 192);
      result = AudioSessionDestroyCoreMXSession();
      *(v1 + 196) = 0u;
      *(v1 + 212) = 0u;
    }

    else
    {
      v4 = *(v1 + 192);
      result = AudioSessionDestroySession_Priv();
    }

    *(v1 + 192) = 0;
  }

  return result;
}

uint64_t hoseAU_destroyGraph()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APSEndpointStreamAudioHoseAU <= 50 && (gLogCategory_APSEndpointStreamAudioHoseAU != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v1 = *(DerivedStorage + 248);
  if (v1)
  {
    AudioOutputUnitStop(v1);
    AudioComponentInstanceDispose(*(DerivedStorage + 248));
    *(DerivedStorage + 248) = 0;
  }

  v2 = *(DerivedStorage + 256);
  if (v2)
  {
    AudioComponentInstanceDispose(v2);
    *(DerivedStorage + 256) = 0;
  }

  v3 = *(DerivedStorage + 264);
  if (v3)
  {
    AudioComponentInstanceDispose(v3);
    *(DerivedStorage + 264) = 0;
  }

  return hoseAU_destroyAudioSession();
}

uint64_t hoseAU_renderCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v10.i64[0] = *a3;
  *v11.i64 = *a3 + trunc(*a3 * 2.32830644e-10) * -4294967300.0;
  v12.f64[0] = NAN;
  v12.f64[1] = NAN;
  v13 = APSStreamingAudioRendererRender(*(DerivedStorage + 280), *vbslq_s8(vnegq_f64(v12), v11, v10).i64, *(a3 + 8), a5, *(a6 + 16), *(a3 + 16));
  if (v13)
  {
    APSLogErrorAt(v13);
  }

  return 0;
}

void hoseAU_initializeGraphAsync(const void *a1)
{
  hoseAU_initializeGraph(a1);
  if (a1)
  {

    CFRelease(a1);
  }
}

const char *__hoseAU_amIAudioServer_block_invoke()
{
  result = getprogname();
  if (result)
  {
    result = strcmp("audiomxd", result);
    if (!result)
    {
      hoseAU_amIAudioServer_iSureAm = 1;
    }
  }

  return result;
}

uint64_t hoseAU_audioHoseFlush(const void *a1, int a2, __int128 *a3, uint64_t a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v11 = APSRTPPassThroughJitterBufferFlush(*(DerivedStorage + 272), *(a3 + 1), 3 * *(DerivedStorage + 176) + *(a3 + 1));
  if (v11)
  {
    v16 = v11;
LABEL_13:
    APSLogErrorAt(v11);
    return v16;
  }

  v11 = APSStreamingAudioRendererSetSourceAnchor(*(DerivedStorage + 280), 0, 0);
  if (v11)
  {
    v16 = v11;
    goto LABEL_13;
  }

  if (a4)
  {
    v12 = malloc_type_malloc(0x38uLL, 0x10A00402FAB73EAuLL);
    if (!v12)
    {
      APSLogErrorAt(0);
      return 4294960568;
    }

    v13 = v12;
    if (a1)
    {
      v14 = CFRetain(a1);
    }

    else
    {
      v14 = 0;
    }

    *v13 = v14;
    *(v13 + 2) = a2;
    v15 = *a3;
    *(v13 + 24) = *(a3 + 12);
    *(v13 + 12) = v15;
    *(v13 + 5) = a4;
    *(v13 + 6) = a5;
    dispatch_async_f(*(DerivedStorage + 8), v13, hoseAU_audioHoseFlushCompletion);
  }

  return 0;
}

void hoseAU_audioHoseFlushCompletion(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 40);
  v4 = *(a1 + 48);
  v7[0] = *(a1 + 12);
  *(v7 + 12) = *(a1 + 24);
  v6 = v5(v2, v3, v7, 0, v4);
  if (v6)
  {
    APSLogErrorAt(v6);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  free(a1);
}

uint64_t hoseAU_audioHoseTimeAnnounce(uint64_t a1, int a2, OpaqueCMBlockBuffer *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  hostTime = 0;
  v6 = 4294960561;
  if (a2 > 1952542317)
  {
    if (a2 != 1952542318)
    {
      v7 = 1953526896;
      goto LABEL_6;
    }

LABEL_9:
    dataPointerOut.value = 0;
    DataPointer = CMBlockBufferGetDataPointer(a3, 0, 0, 0, &dataPointerOut);
    if (DataPointer)
    {
      v6 = DataPointer;
      goto LABEL_22;
    }

    v9 = 0;
    v13 = bswap32(*dataPointerOut.value);
    v14 = bswap32(*(dataPointerOut.value + 4)) + bswap32(*(dataPointerOut.value + 8)) * 2.32830644e-10 + -2208988800.0;
    v11 = floor(v14);
    v12 = v14 - v11;
    goto LABEL_11;
  }

  if (a2 == 1950436942)
  {
    goto LABEL_9;
  }

  v7 = 1951421520;
LABEL_6:
  if (a2 != v7)
  {
    return v6;
  }

  dataPointerOut.value = 0;
  DataPointer = CMBlockBufferGetDataPointer(a3, 0, 0, 0, &dataPointerOut);
  if (DataPointer)
  {
    v6 = DataPointer;
    goto LABEL_22;
  }

  v9 = bswap64(*(dataPointerOut.value + 16));
  v10 = bswap64(*(dataPointerOut.value + 4)) / 1000000000.0;
  v11 = floor(v10);
  v12 = v10 - v11;
  v13 = bswap32(*dataPointerOut.value);
LABEL_11:
  v15 = *(DerivedStorage + 40);
  v16 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v16)
  {
    return 0;
  }

  dataPointerOut.value = v9;
  *&dataPointerOut.timescale = vcvtd_n_u64_f64(v12, 0x40uLL);
  LODWORD(dataPointerOut.epoch) = v11;
  HIDWORD(dataPointerOut.epoch) = 0;
  if (v16(v15, &dataPointerOut, &hostTime))
  {
    return 0;
  }

  if (gLogCategory_APSEndpointStreamAudioHoseAU <= 50 && (gLogCategory_APSEndpointStreamAudioHoseAU != -1 || _LogCategory_Initialize()))
  {
    CMClockMakeHostTimeFromSystemUnits(&dataPointerOut, hostTime);
    CMTimeGetSeconds(&dataPointerOut);
    LogPrintF();
  }

  DataPointer = APSStreamingAudioRendererSetSourceAnchor(*(DerivedStorage + 280), v13, hostTime);
  v6 = DataPointer;
  if (DataPointer)
  {
LABEL_22:
    APSLogErrorAt(DataPointer);
  }

  return v6;
}

uint64_t hoseAU_audioHoseSendAudio(uint64_t a1, int a2, OpaqueCMBlockBuffer *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  dataPointerOut = 0;
  memset(v19, 0, 10);
  v16 = 0;
  v17 = 0;
  if (a2 == 1734700576)
  {
    v7 = 96;
  }

  else
  {
    if (a2 != 1735550308)
    {
      v13 = 4294960561;
      APSLogErrorAt(4294960561);
      return v13;
    }

    v7 = 97;
  }

  AudioDataHeader = APSTransportMessageGetAudioDataHeader(a3, v19);
  if (AudioDataHeader)
  {
    v13 = AudioDataHeader;
LABEL_17:
    APSLogErrorAt(AudioDataHeader);
    goto LABEL_18;
  }

  AudioDataHeader = APSTransportMessageGetAudioDataPointer(a3, &dataPointerOut, &v17);
  if (AudioDataHeader)
  {
    v13 = AudioDataHeader;
    goto LABEL_17;
  }

  if (v17 >= 0x5A1)
  {
    APSLogErrorAt(0);
    v13 = 4294960553;
    goto LABEL_18;
  }

  AudioDataHeader = APSRTPPassThroughJitterBufferAcquireRelinquishedNode(*(DerivedStorage + 272), &v16);
  if (AudioDataHeader)
  {
    v13 = AudioDataHeader;
    goto LABEL_17;
  }

  v9 = v16;
  v10 = *(v16 + 24);
  *v10 = 0x80;
  *(v10 + 1) = v7;
  *(v10 + 2) = bswap32(v19[0].u16[0]) >> 16;
  *(v10 + 4) = vrev32_s8(*(v19 + 2));
  v11 = v17;
  memcpy((v10 + 12), dataPointerOut, v17);
  v12 = APSRTPPacketProcessorProcessPacket(v9, v11 + 12, 0, *(DerivedStorage + 84), *(DerivedStorage + 48), *(DerivedStorage + 272), hoseAU_shouldProcessPacketCallback, hoseAU_enqueuePacketCallback, a1);
  v13 = 0;
  if (!v12)
  {
    return v13;
  }

  v14 = v12;
  APSLogErrorAt(v12);
  v13 = v14;
LABEL_18:
  if (v16)
  {
    APSRTPPassThroughJitterBufferRelinquishNode(*(DerivedStorage + 272), v16);
  }

  return v13;
}

uint64_t hoseAU_enqueuePacketCallback(uint64_t a1, uint64_t a2)
{
  inserted = APSRTPPassThroughJitterBufferInsertNode(a1, a2);
  v3 = inserted;
  if (inserted)
  {
    APSLogErrorAt(inserted);
  }

  return v3;
}

__CFString *hoseAU_audioHoseProtocolCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  v3 = Mutable;
  if (Mutable)
  {
    CFStringAppendFormat(Mutable, 0, @"APSEndpointStreamAudioHoseAU <APSEndpointStreamAudioHoseProtocol> on <%p>", a1);
  }

  else
  {
    APSLogErrorAt(0);
  }

  return v3;
}

uint64_t hoseAU_SetProperty(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APSEndpointStreamAudioHoseAU <= 30 && (gLogCategory_APSEndpointStreamAudioHoseAU != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (atomic_load(DerivedStorage))
  {
    v5 = 4294894964;
    APSLogErrorAt(0);
  }

  else if (a2)
  {
    if (CFEqual(a2, @"APSEndpointStreamAudioHoseProtocolProperty_IsTimelineEstablished"))
    {
      return 0;
    }

    else
    {
      if (gLogCategory_APSEndpointStreamAudioHoseAU <= 30 && (gLogCategory_APSEndpointStreamAudioHoseAU != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      return 4294954512;
    }
  }

  else
  {
    APSLogErrorAt(0);
    return 4294894965;
  }

  return v5;
}

uint64_t hoseAU_CopyProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APSEndpointStreamAudioHoseAU <= 30 && (gLogCategory_APSEndpointStreamAudioHoseAU != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (atomic_load(DerivedStorage))
  {
    APSLogErrorAt(0);
    return 4294894964;
  }

  if (!a2)
  {
    v8 = 4294894965;
LABEL_23:
    APSLogErrorAt(0);
    return v8;
  }

  if (!a4)
  {
    v8 = 4294894965;
    goto LABEL_23;
  }

  if (CFEqual(a2, @"VolumeLinear"))
  {
    return 0;
  }

  if (CFEqual(a2, @"APSEndpointStreamAudioHoseProtocolProperty_Name"))
  {
    v9 = *(DerivedStorage + 24);
    if (v9)
    {
      v9 = CFRetain(v9);
    }

    v8 = 0;
    *a4 = v9;
  }

  else
  {
    if (gLogCategory_APSEndpointStreamAudioHoseAU <= 30 && (gLogCategory_APSEndpointStreamAudioHoseAU != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    return 4294954512;
  }

  return v8;
}

__CFString *hoseAU_CopyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"<APSEndpointStreamAudioHoseAU %p '%@'>", a1, *(DerivedStorage + 24));
  return Mutable;
}

void hoseAU_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APSEndpointStreamAudioHoseAU <= 50 && (gLogCategory_APSEndpointStreamAudioHoseAU != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (!atomic_exchange_explicit(DerivedStorage, 1u, memory_order_acquire))
  {
    if (hoseAU_amIAudioServer_onceToken != -1)
    {
      dispatch_once(&hoseAU_amIAudioServer_onceToken, &__block_literal_global_3106);
    }

    if (hoseAU_amIAudioServer_iSureAm == 1 && gLogCategory_APSEndpointStreamAudioHoseAU <= 60 && (gLogCategory_APSEndpointStreamAudioHoseAU != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    hoseAU_destroyGraph();
  }

  v1 = *(DerivedStorage + 8);
  if (v1)
  {
    dispatch_release(v1);
    *(DerivedStorage + 8) = 0;
  }

  v2 = *(DerivedStorage + 16);
  if (v2)
  {
    dispatch_release(v2);
    *(DerivedStorage + 16) = 0;
  }

  v3 = *(DerivedStorage + 24);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(DerivedStorage + 32);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(DerivedStorage + 40);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(DerivedStorage + 48);
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *(DerivedStorage + 272);
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = *(DerivedStorage + 280);
  if (v8)
  {

    CFRelease(v8);
  }
}

uint64_t hoseAU_Invalidate(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APSEndpointStreamAudioHoseAU <= 50 && (gLogCategory_APSEndpointStreamAudioHoseAU != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (atomic_exchange_explicit(DerivedStorage, 1u, memory_order_acquire))
  {
    if (gLogCategory_APSEndpointStreamAudioHoseAU <= 50 && (gLogCategory_APSEndpointStreamAudioHoseAU != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

  else
  {
    if (hoseAU_amIAudioServer_onceToken != -1)
    {
      dispatch_once(&hoseAU_amIAudioServer_onceToken, &__block_literal_global_3106);
    }

    if (hoseAU_amIAudioServer_iSureAm == 1)
    {
      if (a1)
      {
        CFRetain(a1);
      }

      dispatch_async_f(*(DerivedStorage + 16), a1, hoseAU_invalidateAsync);
    }

    else
    {
      hoseAU_destroyGraph();
    }
  }

  return 0;
}

void hoseAU_invalidateAsync(const void *a1)
{
  hoseAU_destroyGraph();
  if (a1)
  {

    CFRelease(a1);
  }
}

uint64_t hoseAU_registerBaseClass(uint64_t a1)
{
  ClassID = CMBaseGetClassID();

  return MEMORY[0x282112448](&hoseAU_registerBaseClass_sClassDesc, ClassID, 1, a1);
}

uint64_t APSAllocatorGetDefaultAirPlayMallocZone()
{
  if (APSAllocatorGetDefaultAirPlayMallocZone_once != -1)
  {
    dispatch_once(&APSAllocatorGetDefaultAirPlayMallocZone_once, &__block_literal_global_3155);
  }

  return APSAllocatorGetDefaultAirPlayMallocZone_mallocZone;
}

void __APSAllocatorGetDefaultAirPlayMallocZone_block_invoke()
{
  zone = malloc_create_zone(0, 0);
  APSAllocatorGetDefaultAirPlayMallocZone_mallocZone = zone;

  malloc_set_zone_name(zone, "AirPlay");
}

CFAllocatorRef APSAllocatorCreateMallocZoneCFAllocator(void *a1)
{
  context.version = 0;
  context.info = a1;
  memset(&context.retain, 0, 24);
  context.allocate = APSAllocatorMallocZoneCFAllocate;
  context.reallocate = APSAllocatorMallocZoneCFReallocate;
  context.deallocate = APSAllocatorMallocZoneCFDeallocate;
  context.preferredSize = 0;
  return CFAllocatorCreate(0, &context);
}

uint64_t APSAllocatorGetDefaultAirPlayMallocZoneCFAllocator()
{
  if (APSAllocatorGetDefaultAirPlayMallocZoneCFAllocator_once != -1)
  {
    dispatch_once(&APSAllocatorGetDefaultAirPlayMallocZoneCFAllocator_once, &__block_literal_global_4);
  }

  return APSAllocatorGetDefaultAirPlayMallocZoneCFAllocator_allocator;
}

CFAllocatorRef __APSAllocatorGetDefaultAirPlayMallocZoneCFAllocator_block_invoke()
{
  if (APSAllocatorGetDefaultAirPlayMallocZone_once != -1)
  {
    dispatch_once(&APSAllocatorGetDefaultAirPlayMallocZone_once, &__block_literal_global_3155);
  }

  context.version = 0;
  context.info = APSAllocatorGetDefaultAirPlayMallocZone_mallocZone;
  memset(&context.retain, 0, 24);
  context.allocate = APSAllocatorMallocZoneCFAllocate;
  context.reallocate = APSAllocatorMallocZoneCFReallocate;
  context.deallocate = APSAllocatorMallocZoneCFDeallocate;
  context.preferredSize = 0;
  result = CFAllocatorCreate(0, &context);
  APSAllocatorGetDefaultAirPlayMallocZoneCFAllocator_allocator = result;
  return result;
}

uint64_t APSAPAPBBufEncode(const __CFAllocator *a1, OpaqueCMBlockBuffer *a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  lengthAtOffsetOut = 0;
  dataPointerOut = 0;
  totalLengthOut = 0;
  if (a3 && (v17 = *(*(CMBaseObjectGetVTable() + 16) + 8)) != 0)
  {
    v18 = v17(a3);
  }

  else
  {
    v18 = 0;
  }

  v27 = a2;
  v28 = 0;
  v26[0] = a6;
  v26[1] = a7;
  result = 4294960591;
  v25 = a8;
  if (a2)
  {
    if (a8)
    {
      if (a9)
      {
        result = CMBlockBufferGetDataPointer(a2, 0, &lengthAtOffsetOut, &totalLengthOut, &dataPointerOut);
        if (!result)
        {
          if (lengthAtOffsetOut == totalLengthOut)
          {
            v23 = *a4;
            v24 = *(a4 + 16);
            result = APSAPAPEncode(&v23, a5, _APSAPAPBBufEncodeExtensionItemsCallback, v26, _APSAPAPBBufEncodeMediaDataCallback, &v25, _APSAPAPBBufEncodeWriteCallback, &v27);
            if (!result)
            {
              v20 = v28;
              if (v28 < 0x10 || v28 > totalLengthOut)
              {
                return 4294960587;
              }

              else
              {
                if (!a3)
                {
                  return CMBlockBufferCreateWithBufferReference(a1, a2, 0, v20 + v18, 0, a9);
                }

                if (v28 + v18 > totalLengthOut)
                {
                  return 4294960545;
                }

                else
                {
                  v21 = dataPointerOut;
                  v22 = *(*(CMBaseObjectGetVTable() + 16) + 16);
                  if (v22)
                  {
                    result = v22(a3, v21, 12, v21 + 15, v20 - 15, v21 + 15, v20 - 15, &v21[v20], v18);
                    if (!result)
                    {
                      v20 = v28;
                      return CMBlockBufferCreateWithBufferReference(a1, a2, 0, v20 + v18, 0, a9);
                    }
                  }

                  else
                  {
                    return 4294954514;
                  }
                }
              }
            }
          }

          else
          {
            return 4294960591;
          }
        }
      }
    }
  }

  return result;
}

uint64_t _APSAPAPBBufEncodeWriteCallback(const void *a1, size_t dataLength, uint64_t a3)
{
  if (!dataLength || !*a3 || (result = CMBlockBufferReplaceDataBytes(a1, *a3, *(a3 + 8), dataLength), !result))
  {
    result = 0;
    *(a3 + 8) += dataLength;
  }

  return result;
}

uint64_t _APSAPAPBBufEncodeMediaDataCallback(uint64_t (*a1)(char *, size_t, uint64_t), uint64_t a2, CMBlockBufferRef *a3)
{
  DataLength = CMBlockBufferGetDataLength(*a3);
  v9 = 0;
  lengthAtOffsetOut = 0;
  v7 = 0;
  if (DataLength)
  {
    while (1)
    {
      result = CMBlockBufferGetDataPointer(*a3, v7, &lengthAtOffsetOut, 0, &v9);
      if (result)
      {
        break;
      }

      result = a1(v9, lengthAtOffsetOut, a2);
      if (result)
      {
        break;
      }

      v7 += lengthAtOffsetOut;
      if (v7 >= DataLength)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    if (v7 == DataLength)
    {
      return 0;
    }

    else
    {
      return 4294960587;
    }
  }

  return result;
}

uint64_t _APSAPAPBBufEncodeExtensionItemsCallback(uint64_t a1, uint64_t a2, void *a3)
{
  v4[0] = 0;
  v4[1] = a1;
  v4[2] = a2;
  if (!*a3)
  {
    return 0;
  }

  LODWORD(result) = (*a3)(_APSAPAPBBufEncodeExtensionItemCallback, v4, a3[1]);
  if (result)
  {
    return result;
  }

  else
  {
    return LODWORD(v4[0]);
  }
}

uint64_t _APSAPAPBBufEncodeExtensionItemCallback(uint64_t a1, CMBlockBufferRef theBuffer, unsigned int *a3)
{
  totalLengthOut = 0;
  lengthAtOffsetOut = 0;
  dataPointerOut = 0;
  result = *a3;
  if (theBuffer && !result)
  {
    if (CMBlockBufferIsEmpty(theBuffer))
    {
      v7 = 0;
      v8 = 0;
      goto LABEL_5;
    }

    result = CMBlockBufferGetDataPointer(theBuffer, 0, &lengthAtOffsetOut, &totalLengthOut, &dataPointerOut);
    *a3 = result;
    if (!result)
    {
      v8 = lengthAtOffsetOut;
      if (lengthAtOffsetOut != totalLengthOut)
      {
        result = 4294960591;
        goto LABEL_6;
      }

      v7 = dataPointerOut;
LABEL_5:
      result = (*(a3 + 1))(a1, v8, v7, *(a3 + 2));
LABEL_6:
      *a3 = result;
    }
  }

  return result;
}

uint64_t APSAPAPBBufDecode(uint64_t a1, OpaqueCMBlockBuffer *a2, CMBlockBufferRef theBuffer, uint64_t a4, uint64_t a5, int *a6, uint64_t a7, uint64_t a8, CFTypeRef *a9)
{
  totalLengthOut = 0;
  lengthAtOffsetOut = 0;
  v28 = 0;
  dataPointerOut = 0;
  v27[0] = theBuffer;
  v27[1] = 0;
  v26[0] = a1;
  v26[1] = a7;
  v26[2] = a8;
  v26[3] = v27;
  v23 = a1;
  cf = 0;
  v9 = 4294960591;
  v25 = v27;
  if (a2 && theBuffer)
  {
    DataPointer = CMBlockBufferGetDataPointer(theBuffer, 0, &lengthAtOffsetOut, &totalLengthOut, &dataPointerOut);
    if (DataPointer)
    {
      return DataPointer;
    }

    if (lengthAtOffsetOut == totalLengthOut)
    {
      DataLength = CMBlockBufferGetDataLength(a2);
      if (totalLengthOut >= DataLength)
      {
        v17 = DataLength;
        DataPointer = APSCMBlockBufferReplace(theBuffer, 0, a2, 0, DataLength);
        if (DataPointer)
        {
          return DataPointer;
        }

        if (a4)
        {
          v19 = dataPointerOut;
          v20 = totalLengthOut;
          v21 = *(*(CMBaseObjectGetVTable() + 16) + 24);
          if (!v21)
          {
            return 4294954514;
          }

          DataPointer = v21(a4, v19, 12, v19 + 15, v17 - 15, v19 + 15, v20 - 15, &v28);
          if (DataPointer)
          {
            return DataPointer;
          }

          v17 = v28 + 15;
        }

        v28 = v17;
        v9 = APSAPAPDecode(v17, _APSAPAPBBufDecodeReadCallback, v27, a5, a6, _APSAPAPBBufDecodeExtensionItemCallback, v26, _APSAPAPBBufDecodeMediaDataCallback, &v23);
        v22 = cf;
        if (!v9)
        {
          if (!cf)
          {
            return 4294960587;
          }

          if (!a9)
          {
            v9 = 0;
LABEL_21:
            CFRelease(v22);
            return v9;
          }

          *a9 = CFRetain(cf);
          v22 = cf;
        }

        if (!v22)
        {
          return v9;
        }

        goto LABEL_21;
      }
    }
  }

  return v9;
}

uint64_t _APSAPAPBBufDecodeMediaDataCallback(size_t dataLength, int a2, int a3, CMBlockBufferRef *blockBufferOut)
{
  if (blockBufferOut[1])
  {
    return 4294960587;
  }

  v5 = *blockBufferOut;
  if (dataLength)
  {
    return CMBlockBufferCreateWithBufferReference(v5, *blockBufferOut[2], *(blockBufferOut[2] + 1), dataLength, 0, blockBufferOut + 1);
  }

  else
  {
    return CMBlockBufferCreateEmpty(v5, 0, 0, blockBufferOut + 1);
  }
}

uint64_t _APSAPAPBBufDecodeExtensionItemCallback(uint64_t a1, size_t dataLength, uint64_t a3, uint64_t a4, uint64_t a5)
{
  blockBufferOut = 0;
  if (!*(a5 + 8))
  {
    return 0;
  }

  v7 = *a5;
  if (dataLength)
  {
    v8 = CMBlockBufferCreateWithBufferReference(v7, **(a5 + 24), *(*(a5 + 24) + 8), dataLength, 0, &blockBufferOut);
    if (v8)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v8 = CMBlockBufferCreateEmpty(v7, 0, 0, &blockBufferOut);
  if (!v8)
  {
LABEL_4:
    v8 = (*(a5 + 8))(a1, blockBufferOut, *(a5 + 16));
  }

LABEL_5:
  v9 = v8;
  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  return v9;
}

uint64_t _APSAPAPBBufDecodeReadCallback(void *a1, size_t a2, uint64_t a3)
{
  v6 = *(a3 + 8) + a2;
  if (v6 > CMBlockBufferGetDataLength(*a3))
  {
    return 4294960546;
  }

  if (!a1 || (result = CMBlockBufferCopyDataBytes(*a3, *(a3 + 8), a2, a1), !result))
  {
    result = 0;
    *(a3 + 8) += a2;
  }

  return result;
}

uint64_t APSAPAPBBufEncodeHeader(uint64_t a1, __int128 *a2, unsigned int a3)
{
  v6[0] = a1;
  v6[1] = 0;
  v4 = *a2;
  v5 = *(a2 + 2);
  return APSAPAPEncodeHeader(&v4, a3, _APSAPAPBBufEncodeWriteCallback, v6);
}

uint64_t APSAPAPBBufEncodeHeaderSeqNum(uint64_t a1, unsigned int a2)
{
  v9 = *MEMORY[0x277CC0898];
  v10 = *(MEMORY[0x277CC0898] + 16);
  v8 = 0;
  v7[0] = a1;
  v7[1] = 0;
  v6[0] = a1;
  v6[1] = 0;
  result = APSAPAPDecodeHeader(_APSAPAPBBufDecodeReadCallback, v7, &v9, &v8);
  if (!result && v8 != a2)
  {
    v4 = v9;
    v5 = v10;
    return APSAPAPEncodeHeader(&v4, a2, _APSAPAPBBufEncodeWriteCallback, v6);
  }

  return result;
}

uint64_t APSAPAPBBufDecodeHeader(uint64_t a1, uint64_t a2, int *a3)
{
  v5 = a1;
  v6 = 0;
  if (!a1)
  {
    return 4294960591;
  }

  LODWORD(result) = APSAPAPDecodeHeader(_APSAPAPBBufDecodeReadCallback, &v5, a2, a3);
  if (v6 == 15)
  {
    v4 = result;
  }

  else
  {
    v4 = -6709;
  }

  if (result)
  {
    return result;
  }

  else
  {
    return v4;
  }
}

uint64_t APSAPAPBBufEncodeGetMinBackingSize(uint64_t a1, uint64_t (*a2)(void, uint64_t *, uint64_t), uint64_t a3, uint64_t a4, void *a5)
{
  v9 = a1;
  if (a1)
  {
    VTable = CMBaseObjectGetVTable();
    v11 = *(*(VTable + 16) + 8);
    if (v11)
    {
      v12 = *(VTable + 16) + 8;
      v9 = v11(v9);
    }

    else
    {
      v9 = 0;
    }
  }

  if (!a5)
  {
    return 4294960591;
  }

  v14 = 0;
  v15 = 0;
  if (!a2)
  {
    return 4294960591;
  }

  result = a2(_APSAPAPGetEncodeSizeExtensionItemCallback, &v14, a3);
  if (!result)
  {
    result = v14;
    if (!v14)
    {
      *a5 = a4 + v9 + v15 + 16;
    }
  }

  return result;
}

uint64_t APSCMSampleBufferMergerGetTypeID()
{
  if (gAPSCMSampleBufferMergerInitOnce != -1)
  {
    dispatch_once_f(&gAPSCMSampleBufferMergerInitOnce, 0, _APSCMSampleBufferMergerGetTypeID);
  }

  return gAPSCMSampleBufferMergerTypeID;
}

uint64_t _APSCMSampleBufferMergerGetTypeID()
{
  result = _CFRuntimeRegisterClass();
  gAPSCMSampleBufferMergerTypeID = result;
  return result;
}

void _APSCMSampleBufferMergerFinalize(void *a1)
{
  if (gLogCategory_APSCMSampleBufferMerger <= 30 && (gLogCategory_APSCMSampleBufferMerger != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v2 = a1[2];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[3];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[5];
  if (v5)
  {

    CFRelease(v5);
  }
}

uint64_t APSCMSampleBufferMergerCreate(char a1, const void *a2, uint64_t *a3)
{
  if (!a3)
  {
    APSLogErrorAt(0);
    return 4294960591;
  }

  if (gAPSCMSampleBufferMergerInitOnce != -1)
  {
    dispatch_once_f(&gAPSCMSampleBufferMergerInitOnce, 0, _APSCMSampleBufferMergerGetTypeID);
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    APSLogErrorAt(0);
    return 4294960568;
  }

  v7 = Instance;
  *(Instance + 48) = 0;
  *(Instance + 16) = 0u;
  *(Instance + 32) = 0u;
  if (a2)
  {
    v8 = CFRetain(a2);
  }

  else
  {
    v8 = 0;
  }

  *(v7 + 16) = v8;
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  *(v7 + 40) = Mutable;
  if (!Mutable)
  {
    APSLogErrorAt(0);
    CFRelease(v7);
    return 4294960568;
  }

  *(v7 + 48) = a1;
  if (gLogCategory_APSCMSampleBufferMerger <= 30 && (gLogCategory_APSCMSampleBufferMerger != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  result = 0;
  *a3 = v7;
  return result;
}

CFIndex APSCMSampleBufferMergerGetCount(CFIndex result)
{
  if (result)
  {
    return CFArrayGetCount(*(result + 40));
  }

  return result;
}

uint64_t APSCMSampleBufferMergerFlush(uint64_t a1)
{
  if (a1)
  {
    if (gLogCategory_APSCMSampleBufferMerger <= 30 && (gLogCategory_APSCMSampleBufferMerger != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v2 = *(a1 + 32);
    if (v2)
    {
      CFRelease(v2);
      *(a1 + 32) = 0;
    }

    v3 = *(a1 + 24);
    if (v3)
    {
      CFRelease(v3);
      *(a1 + 24) = 0;
    }

    CFArrayRemoveAllValues(*(a1 + 40));
    return 0;
  }

  else
  {
    APSLogErrorAt(0);
    return 4294960591;
  }
}

uint64_t APSCMSampleBufferMergerTryMerge(uint64_t a1, opaqueCMSampleBuffer *a2)
{
  v2 = 0;
  if (!a1 || !a2)
  {
    return v2;
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    Count = CFArrayGetCount(v5);
  }

  else
  {
    Count = 0;
  }

  if (gLogCategory_APSCMSampleBufferMerger <= 30 && (gLogCategory_APSCMSampleBufferMerger != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (Count)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 40), Count - 1);
    if (sbufMerger_isSBufReTimed(ValueAtIndex))
    {
      if (gLogCategory_APSCMSampleBufferMerger > 50 || gLogCategory_APSCMSampleBufferMerger == -1 && !_LogCategory_Initialize())
      {
        return 0;
      }
    }

    else if (sbufMerger_isSBufReTimed(a2))
    {
      if (gLogCategory_APSCMSampleBufferMerger > 50 || gLogCategory_APSCMSampleBufferMerger == -1 && !_LogCategory_Initialize())
      {
        return 0;
      }
    }

    else if (CMSampleBufferGetNumSamples(ValueAtIndex) == 1)
    {
      if (CMSampleBufferGetNumSamples(a2) == 1)
      {
        CMSampleBufferGetPresentationTimeStamp(&lhs, ValueAtIndex);
        CMSampleBufferGetDuration(&rhs, ValueAtIndex);
        CMTimeAdd(&time1, &lhs, &rhs);
        CMSampleBufferGetPresentationTimeStamp(&lhs, a2);
        if (CMTimeCompare(&time1, &lhs))
        {
          if (gLogCategory_APSCMSampleBufferMerger > 50 || gLogCategory_APSCMSampleBufferMerger == -1 && !_LogCategory_Initialize())
          {
            return 0;
          }
        }

        else
        {
          FormatDescription = CMSampleBufferGetFormatDescription(ValueAtIndex);
          v9 = CMSampleBufferGetFormatDescription(a2);
          if (CMFormatDescriptionEqual(FormatDescription, v9))
          {
            FigSampleBufferGetDecryptor();
            FigSampleBufferGetDecryptor();
            if (FigCFEqual())
            {
              v10 = *MEMORY[0x277CBECE8];
              v11 = CMCopyDictionaryOfAttachments(*MEMORY[0x277CBECE8], a2, 0);
              if (!sbufMerger_areAttachmentsMergable(a1, *(a1 + 24), v11))
              {
                if (gLogCategory_APSCMSampleBufferMerger <= 50 && (gLogCategory_APSCMSampleBufferMerger != -1 || _LogCategory_Initialize()))
                {
                  goto LABEL_67;
                }

                goto LABEL_68;
              }

              if (v11)
              {
                CFRelease(v11);
              }

              v11 = CMCopyDictionaryOfAttachments(v10, a2, 1u);
              if (!sbufMerger_areAttachmentsMergable(a1, *(a1 + 32), v11))
              {
                if (gLogCategory_APSCMSampleBufferMerger <= 50 && (gLogCategory_APSCMSampleBufferMerger != -1 || _LogCategory_Initialize()))
                {
                  goto LABEL_67;
                }

                goto LABEL_68;
              }

              v12 = *MEMORY[0x277CC0760];
              v13 = CMGetAttachment(a2, *MEMORY[0x277CC0760], 0);
              CMTimeMakeFromDictionary(&time1, v13);
              if (*(a1 + 48) && (time1.flags & 1) != 0)
              {
                CMSampleBufferGetDuration(&time1, ValueAtIndex);
                v14 = CMGetAttachment(ValueAtIndex, v12, 0);
                CMTimeMakeFromDictionary(&lhs, v14);
                if (CMTimeCompare(&time1, &lhs))
                {
                  if (gLogCategory_APSCMSampleBufferMerger <= 50 && (gLogCategory_APSCMSampleBufferMerger != -1 || _LogCategory_Initialize()))
                  {
                    goto LABEL_67;
                  }

                  goto LABEL_68;
                }

                CMSampleBufferGetOutputDuration(&time1, ValueAtIndex);
                lhs = **&MEMORY[0x277CC08F0];
                if (CMTimeCompare(&time1, &lhs))
                {
                  if (gLogCategory_APSCMSampleBufferMerger <= 50 && (gLogCategory_APSCMSampleBufferMerger != -1 || _LogCategory_Initialize()))
                  {
LABEL_67:
                    LogPrintF();
                  }

LABEL_68:
                  v2 = 0;
                  if (!v11)
                  {
                    return v2;
                  }

                  goto LABEL_35;
                }
              }

              goto LABEL_30;
            }

            if (gLogCategory_APSCMSampleBufferMerger > 50 || gLogCategory_APSCMSampleBufferMerger == -1 && !_LogCategory_Initialize())
            {
              return 0;
            }
          }

          else if (gLogCategory_APSCMSampleBufferMerger > 50 || gLogCategory_APSCMSampleBufferMerger == -1 && !_LogCategory_Initialize())
          {
            return 0;
          }
        }
      }

      else if (gLogCategory_APSCMSampleBufferMerger > 50 || gLogCategory_APSCMSampleBufferMerger == -1 && !_LogCategory_Initialize())
      {
        return 0;
      }
    }

    else if (gLogCategory_APSCMSampleBufferMerger > 50 || gLogCategory_APSCMSampleBufferMerger == -1 && !_LogCategory_Initialize())
    {
      return 0;
    }

    LogPrintF();
    return 0;
  }

  v15 = *MEMORY[0x277CBECE8];
  *(a1 + 24) = CMCopyDictionaryOfAttachments(*MEMORY[0x277CBECE8], a2, 0);
  v16 = CMCopyDictionaryOfAttachments(v15, a2, 1u);
  v11 = 0;
  *(a1 + 32) = v16;
LABEL_30:
  if (gLogCategory_APSCMSampleBufferMerger <= 30 && (gLogCategory_APSCMSampleBufferMerger != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  CFArrayAppendValue(*(a1 + 40), a2);
  v2 = 1;
  if (v11)
  {
LABEL_35:
    CFRelease(v11);
  }

  return v2;
}

BOOL sbufMerger_isSBufReTimed(void *a1)
{
  v2 = CMGetAttachment(a1, *MEMORY[0x277CC0760], 0);
  v7 = **&MEMORY[0x277CC0898];
  if (v2)
  {
    CMTimeMakeFromDictionary(&v7, v2);
  }

  else
  {
    v7 = **&MEMORY[0x277CC08F0];
  }

  CMSampleBufferGetPresentationTimeStamp(&lhs, a1);
  v4 = v7;
  CMTimeAdd(&time1, &lhs, &v4);
  CMSampleBufferGetOutputPresentationTimeStamp(&lhs, a1);
  return CMTimeCompare(&time1, &lhs) != 0;
}

BOOL sbufMerger_areAttachmentsMergable(uint64_t a1, const __CFDictionary *a2, const __CFDictionary *a3)
{
  v6 = *(a1 + 16);
  if (v6)
  {
    Count = CFArrayGetCount(v6);
  }

  else
  {
    Count = 0;
  }

  v8 = FigCFDictionaryGetCount();
  v9 = FigCFDictionaryGetCount();
  if (Count >= 1)
  {
    v10 = 0;
    while (v8 | v9)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 16), v10);
      if (v8)
      {
        v8 -= CFDictionaryContainsKey(a2, ValueAtIndex) != 0;
      }

      if (v9)
      {
        v9 -= CFDictionaryContainsKey(a3, ValueAtIndex) != 0;
      }

      if (Count == ++v10)
      {
        goto LABEL_14;
      }
    }

    v8 = 0;
    v9 = 0;
  }

LABEL_14:
  if (!(v8 | v9))
  {
    return 1;
  }

  if (a2)
  {
    if (*(a1 + 48))
    {
      v12 = *MEMORY[0x277CC0760];
      if (CFDictionaryContainsKey(a2, *MEMORY[0x277CC0760]))
      {
        if (!a3 || !CFDictionaryContainsKey(a3, v12))
        {
          --v8;
        }
      }
    }
  }

  if (v8 != v9)
  {
    return 0;
  }

  v13 = *MEMORY[0x277CC0750];
  v14 = v9 + -APSCFDictionaryPairIsKeyPresentAndEqual();
  v15 = *MEMORY[0x277CC1AA8];
  v16 = v14 + -APSCFDictionaryPairIsKeyPresentAndEqual();
  v17 = *MEMORY[0x277CC0620];
  v18 = v16 + -APSCFDictionaryPairIsKeyPresentAndEqual();
  v19 = *MEMORY[0x277CC06A0];
  v20 = v18 + -APSCFDictionaryPairIsKeyPresentAndEqual();
  if (a2)
  {
    if (*(a1 + 48))
    {
      v21 = *MEMORY[0x277CC0760];
      v22 = CFDictionaryContainsKey(a2, *MEMORY[0x277CC0760]);
      if (a3)
      {
        if (v22)
        {
          v20 -= CFDictionaryContainsKey(a3, v21) != 0;
        }
      }
    }
  }

  return v20 == 0;
}

uint64_t APSCMSampleBufferMergerCopyMergedSBuf(uint64_t a1, CFTypeRef *a2)
{
  sampleBufferOut = 0;
  blockBufferOut = 0;
  v44 = **&MEMORY[0x277CC08F0];
  if (!a1 || !a2)
  {
    APSLogErrorAt(0);
    v34 = 4294960591;
    goto LABEL_38;
  }

  Count = CFArrayGetCount(*(a1 + 40));
  if (Count)
  {
    v5 = Count;
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 40), 0);
    v7 = ValueAtIndex;
    if (v5 > 1)
    {
      v8 = malloc_type_calloc(v5, 0x48uLL, 0x1000040FF89C88EuLL);
      if (v8)
      {
        v9 = v8;
        sampleSizeArray = malloc_type_calloc(v5, 8uLL, 0x100004000313F17uLL);
        if (sampleSizeArray)
        {
          allocator = *MEMORY[0x277CBECE8];
          v10 = CMBlockBufferCreateEmpty(*MEMORY[0x277CBECE8], v5, 0, &blockBufferOut);
          if (v10)
          {
            v34 = v10;
          }

          else
          {
            v36 = a2;
            sbuf = v7;
            v11 = 0;
            v12 = 0;
            v13 = 0;
            v14 = *MEMORY[0x277CC0760];
            v38 = v9;
            p_presentationTimeStamp = &v9->presentationTimeStamp;
            v41 = *MEMORY[0x277CC0898];
            v16 = *(MEMORY[0x277CC0898] + 16);
            do
            {
              v17 = CFArrayGetValueAtIndex(*(a1 + 40), v12);
              DataBuffer = CMSampleBufferGetDataBuffer(v17);
              CMSampleBufferGetPresentationTimeStamp(&time1, v17);
              v19 = *&time1.value;
              p_presentationTimeStamp->epoch = time1.epoch;
              *&p_presentationTimeStamp->value = v19;
              CMSampleBufferGetDuration(&time1, v17);
              v20 = *&time1.value;
              p_presentationTimeStamp[-1].epoch = time1.epoch;
              *&p_presentationTimeStamp[-1].value = v20;
              *&p_presentationTimeStamp[1].value = v41;
              p_presentationTimeStamp[1].epoch = v16;
              if (DataBuffer)
              {
                if (!CMBlockBufferIsEmpty(DataBuffer))
                {
                  sampleSizeArray[v12] = CMBlockBufferGetDataLength(DataBuffer);
                  appended = CMBlockBufferAppendBufferReference(blockBufferOut, DataBuffer, 0, 0, 0);
                  if (appended)
                  {
                    v34 = appended;
                    APSLogErrorAt(appended);
                    v32 = 0;
                    v9 = v38;
                    goto LABEL_36;
                  }
                }
              }

              CMSampleBufferGetOutputPresentationTimeStamp(&time1, v17);
              CMSampleBufferGetPresentationTimeStamp(&time2, v17);
              if (CMTimeCompare(&time1, &time2))
              {
                v22 = CMGetAttachment(v17, v14, 0);
                if (v22)
                {
                  CMTimeMakeFromDictionary(&time1, v22);
                  time2 = v44;
                  CMTimeAdd(&v44, &time1, &time2);
                  v11 = 1;
                }
              }

              v13 |= CMSampleBufferGetSampleAttachmentsArray(v17, 0) != 0;
              ++v12;
              p_presentationTimeStamp += 3;
            }

            while (v5 != v12);
            v23 = blockBufferOut;
            FormatDescription = CMSampleBufferGetFormatDescription(sbuf);
            v9 = v38;
            v10 = CMSampleBufferCreateReady(allocator, v23, FormatDescription, v5, v5, v38, v5, sampleSizeArray, &sampleBufferOut);
            if (!v10)
            {
              FigSampleBufferGetDecryptor();
              FigSampleBufferSetDecryptor();
              v25 = *(a1 + 24);
              if (v25)
              {
                CMSetAttachments(sampleBufferOut, v25, 0);
              }

              v26 = *(a1 + 32);
              if (v26)
              {
                CMSetAttachments(sampleBufferOut, v26, 1u);
              }

              if (v13)
              {
                SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(sampleBufferOut, 1u);
                for (i = 0; i != v5; ++i)
                {
                  v29 = CFArrayGetValueAtIndex(*(a1 + 40), i);
                  v30 = CMSampleBufferGetSampleAttachmentsArray(v29, 0);
                  if (v30)
                  {
                    v31 = v30;
                    if (CFArrayGetCount(v30) >= 1)
                    {
                      CFArrayGetValueAtIndex(v31, 0);
                      CFArrayGetValueAtIndex(SampleAttachmentsArray, i);
                      FigCFDictionaryAddEntriesToDictionaryWithRecursion();
                    }
                  }
                }
              }

              v32 = 0;
              if (*(a1 + 48))
              {
                v33 = v36;
                if (v11)
                {
                  time1 = v44;
                  v32 = CMTimeCopyAsDictionary(&time1, allocator);
                  CMSetAttachment(sampleBufferOut, v14, v32, 1u);
                }
              }

              else
              {
                v33 = v36;
              }

              if (gLogCategory_APSCMSampleBufferMerger <= 30 && (gLogCategory_APSCMSampleBufferMerger != -1 || _LogCategory_Initialize()))
              {
                LogPrintF();
              }

              v34 = 0;
              *v33 = CFRetain(sampleBufferOut);
              goto LABEL_36;
            }

            v34 = v10;
          }

          APSLogErrorAt(v10);
          v32 = 0;
LABEL_36:
          free(v9);
          free(sampleSizeArray);
          if (v32)
          {
            CFRelease(v32);
          }

          goto LABEL_38;
        }

        APSLogErrorAt(0);
        free(v9);
      }

      else
      {
        APSLogErrorAt(0);
      }

      v34 = 4294960568;
      goto LABEL_38;
    }

    *a2 = CFRetain(ValueAtIndex);
    if (gLogCategory_APSCMSampleBufferMerger <= 30 && (gLogCategory_APSCMSampleBufferMerger != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v34 = 0;
  }

  else
  {
    APSLogErrorAt(0);
    if (gLogCategory_APSCMSampleBufferMerger <= 30 && (gLogCategory_APSCMSampleBufferMerger != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v34 = 4294960578;
  }

LABEL_38:
  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  if (sampleBufferOut)
  {
    CFRelease(sampleBufferOut);
  }

  return v34;
}

uint64_t APSAudioProtocolDriverSenderAPATCreate(const __CFAllocator *a1, const void *a2, const void *a3, CFTypeRef *a4)
{
  cf = 0;
  if (!a4)
  {
    v12 = 4294894825;
    APSLogErrorAt(0);
    return v12;
  }

  if (a3)
  {
    if (gLogCategory_APSAudioProtocolDriverSenderAPAT <= 30 && (gLogCategory_APSAudioProtocolDriverSenderAPAT != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    if (APSAudioProtocolDriverSenderGetClassID_sRegisterOnce != -1)
    {
      dispatch_once_f(&APSAudioProtocolDriverSenderGetClassID_sRegisterOnce, &APSAudioProtocolDriverSenderGetClassID_sClassID, audioProtocolDriverSender_registerBaseClass);
    }

    v8 = CMDerivedObjectCreate();
    if (v8)
    {
      v12 = v8;
    }

    else
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      v10 = FigSimpleMutexCreate();
      *(DerivedStorage + 64) = v10;
      if (!v10)
      {
        APSLogErrorAt(0);
        v12 = 4294894826;
        goto LABEL_28;
      }

      *(DerivedStorage + 128) = 0;
      *(DerivedStorage + 136) = 0;
      v11 = *MEMORY[0x277CBECE8];
      v14.version = 0;
      v14.retain = protocolDriverSenderAPAT_txBufferItemRetain;
      v14.copyDescription = 0;
      v14.equal = 0;
      v14.release = protocolDriverSenderAPAT_txBufferItemRelease;
      v8 = APSRTPSeqNumDictionaryCreateMutable(v11, &v14, (DerivedStorage + 80));
      if (v8)
      {
        v12 = v8;
      }

      else
      {
        v8 = RandomBytes();
        if (!v8)
        {
          *(DerivedStorage + 120) = APSSettingsGetIntWithOverrideAndDefault(@"protocolDriverAPATMaxPacketSize", 0, 1440);
          *(DerivedStorage + 72) = CFDictionaryCreateMutable(a1, 0, 0, &protocolDriverSenderAPAT_hoseDescriptorDictionaryCallbacks);
          *(DerivedStorage + 4) = 0;
          *(DerivedStorage + 40) = CUObfuscatedPtr();
          RandomBytes();
          *DerivedStorage = APSSettingsGetIntWithOverrideAndDefault(@"protocolDriverAPATTickIntervalMS", 0, 100);
          if (a2)
          {
            *(DerivedStorage + 48) = CFRetain(a2);
          }

          *(DerivedStorage + 56) = CFRetain(a3);
          if (gLogCategory_APSAudioProtocolDriverSenderAPAT <= 50 && (gLogCategory_APSAudioProtocolDriverSenderAPAT != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          v12 = 0;
          *a4 = cf;
          return v12;
        }

        v12 = v8;
      }
    }
  }

  else
  {
    v12 = 4294894825;
    v8 = 0;
  }

  APSLogErrorAt(v8);
LABEL_28:
  if (cf)
  {
    CFRelease(cf);
  }

  return v12;
}

void protocolDriverSenderAPAT_hoseDescriptorDictionaryRelease(int a1, CFTypeRef *a2)
{
  if (a2)
  {
    if (*a2)
    {
      CFRelease(*a2);
    }

    v4 = a2[1];
    if (v4)
    {
      CFRelease(v4);
    }

    v5 = a2[2];
    if (v5)
    {
      CFRelease(v5);
    }

    free(a2);
  }

  else
  {

    APSLogErrorAt(0);
  }
}

void *protocolDriverSenderAPAT_hoseDescriptorDictionaryRetain(uint64_t a1, __int128 *a2)
{
  if (a2)
  {
    v3 = malloc_type_calloc(1uLL, 0x18uLL, 0x60040A44E5E0CuLL);
    v4 = *a2;
    v3[2] = *(a2 + 2);
    *v3 = v4;
    v5 = *(a2 + 1);
    if (v5)
    {
      v5 = CFRetain(v5);
    }

    v3[1] = v5;
    v6 = *a2;
    if (*a2)
    {
      v6 = CFRetain(v6);
    }

    *v3 = v6;
    v7 = *(a2 + 2);
    if (v7)
    {
      v7 = CFRetain(v7);
    }

    v3[2] = v7;
  }

  else
  {
    APSLogErrorAt(0);
    return 0;
  }

  return v3;
}

void protocolDriverSenderAPAT_txBufferItemRelease(CFAllocatorRef allocator, CFTypeRef *ptr)
{
  if (*ptr)
  {
    CFRelease(*ptr);
  }

  CFAllocatorDeallocate(allocator, ptr);
}

uint64_t protocolDriverSenderAPAT_txBufferItemRetain(uint64_t a1, _OWORD *a2)
{
  v3 = MEMORY[0x223DB3470](a1, 32, 0x1020040B07D1DCCLL, 0);
  v4 = a2[1];
  *v3 = *a2;
  *(v3 + 16) = v4;
  if (*v3)
  {
    CFRetain(*v3);
  }

  return v3;
}

uint64_t protocolDriverSenderAPAT_GetFirstValidBufferTimestamp(uint64_t a1, CMTime *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v13 = **&MEMORY[0x277CC0898];
  v5 = *(DerivedStorage + 64);
  FigSimpleMutexLock();
  if (a1)
  {
    if (!a2)
    {
      v10 = 4294894825;
      APSLogErrorAt(0);
      goto LABEL_7;
    }

    v6 = CMBaseObjectGetDerivedStorage();
    TxBufferTotalItemCountInternal = protocolDriverSenderAPAT_getTxBufferTotalItemCountInternal();
    v14 = 0;
    v8 = *(v6 + 64);
    FigSimpleMutexCheckIsLockedOnThisThread();
    if (TxBufferTotalItemCountInternal)
    {
      TxBufferEndItemInternal = protocolDriverSenderAPAT_getTxBufferEndItemInternal(a1, 1, &v15, &v14);
      v10 = TxBufferEndItemInternal;
      if (TxBufferEndItemInternal)
      {
        APSLogErrorAt(TxBufferEndItemInternal);
      }

      else
      {
        CMTimeMake(&v13, *(v14 + 8), *(v14 + 16));
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 4294894825;
    APSLogErrorAt(0);
    if (!a2)
    {
      goto LABEL_7;
    }
  }

  *a2 = v13;
LABEL_7:
  v11 = *(DerivedStorage + 64);
  FigSimpleMutexUnlock();
  return v10;
}

uint64_t protocolDriverSenderAPAT_getTxBufferTotalItemCountInternal()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 64);
  FigSimpleMutexCheckIsLockedOnThisThread();
  v2 = *(DerivedStorage + 80);
  if (v2)
  {
    LOWORD(result) = CFDictionaryGetCount(*(v2 + 24));
  }

  else
  {
    LOWORD(result) = 0;
  }

  return result;
}

uint64_t protocolDriverSenderAPAT_getTxBufferEndItemInternal(uint64_t a1, int a2, _WORD *a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  LOWORD(key) = 0;
  v8 = *(DerivedStorage + 64);
  FigSimpleMutexCheckIsLockedOnThisThread();
  v9 = *(DerivedStorage + 80);
  if (!a2)
  {
    if (v9)
    {
      LastSeqNum = APSRTPSeqNumRangeSetGetLastSeqNum(*(v9 + 16), &key);
      if (!LastSeqNum)
      {
        goto LABEL_6;
      }

      v11 = LastSeqNum;
    }

    else
    {
      v11 = 4294960591;
    }

    FirstSeqNum = v11;
    goto LABEL_13;
  }

  FirstSeqNum = APSRTPSeqNumDictionaryGetFirstSeqNum(v9, &key);
  if (FirstSeqNum)
  {
    v11 = FirstSeqNum;
LABEL_13:
    APSLogErrorAt(FirstSeqNum);
    return v11;
  }

LABEL_6:
  v13 = *(DerivedStorage + 80);
  if (v13)
  {
    Value = CFDictionaryGetValue(*(v13 + 24), key);
  }

  else
  {
    Value = 0;
  }

  v11 = 0;
  *a3 = key;
  *a4 = Value;
  return v11;
}

uint64_t protocolDriverSenderAPAT_GetLastDeliveredMediaTimeForHose(uint64_t a1, uint64_t a2, CMTime *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  LOWORD(key) = 0;
  v21 = 0;
  v20 = **&MEMORY[0x277CC0898];
  v7 = DerivedStorage[8];
  FigSimpleMutexLock();
  if (!a1)
  {
    v17 = 4294894825;
    PayloadType = 0;
    goto LABEL_22;
  }

  if (!a2)
  {
    v17 = 4294894825;
    PayloadType = 0;
LABEL_22:
    APSLogErrorAt(PayloadType);
    if (a3)
    {
      goto LABEL_18;
    }

    goto LABEL_19;
  }

  if (!a3)
  {
    v17 = 4294894825;
    APSLogErrorAt(0);
    goto LABEL_19;
  }

  v8 = DerivedStorage[9];
  Value = FigCFDictionaryGetValue();
  if (!Value)
  {
    APSLogErrorAt(0);
    v17 = 4294960569;
    goto LABEL_18;
  }

  v10 = APSAudioProtocolDriverSenderHoseControllerAPATGetLastDeliveredSeqNum(*(Value + 16), &key);
  if (v10)
  {
    v17 = v10;
    if (v10 == -6727)
    {
      v17 = 0;
    }

    else
    {
      APSLogErrorAt(v10);
    }

    goto LABEL_18;
  }

  do
  {
    while (1)
    {
      v11 = DerivedStorage[10];
      v12 = key;
      if (!v11)
      {
        v16 = 0;
        goto LABEL_14;
      }

      v13 = CFDictionaryGetValue(*(v11 + 24), key);
      if (!v13)
      {
        break;
      }

      v14 = v13;
      PayloadType = APSRTPBBufGetPayloadType(*v13, &v21);
      if (PayloadType)
      {
        v17 = PayloadType;
        goto LABEL_22;
      }

      if (v21 == 115 || v21 == 112)
      {
        CMTimeMake(&v20, v14[1], *(v14 + 4));
        v17 = 0;
        LOWORD(key) = key - 1;
        goto LABEL_18;
      }

      LOWORD(key) = key - 1;
    }

    v16 = DerivedStorage[10];
    v12 = key;
LABEL_14:
    PayloadType = APSRTPSeqNumDictionaryGetSeqNumBeforeSeqNum(v16, v12, &key);
  }

  while (!PayloadType);
  v17 = PayloadType;
  if (PayloadType != -6750)
  {
    goto LABEL_22;
  }

  v17 = 0;
LABEL_18:
  *a3 = v20;
LABEL_19:
  v18 = DerivedStorage[8];
  FigSimpleMutexUnlock();
  return v17;
}

uint64_t protocolDriverSenderAPAT_NotifyFlushCompleteForHose(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 64);
  FigSimpleMutexLock();
  Value = CFDictionaryGetValue(*(DerivedStorage + 72), a2);
  if (Value)
  {
    v6 = Value[2];
    v7 = *(v6 + 104);
    FigSimpleMutexLock();
    --*(v6 + 120);
    v8 = *(v6 + 104);
    FigSimpleMutexUnlock();
    v9 = 0;
  }

  else
  {
    APSLogErrorAt(0);
    v9 = 4294894825;
  }

  v10 = *(DerivedStorage + 64);
  FigSimpleMutexUnlock();
  return v9;
}

uint64_t protocolDriverSenderAPAT_NotifyPendingFlushForHose(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 64);
  FigSimpleMutexLock();
  Value = CFDictionaryGetValue(*(DerivedStorage + 72), a2);
  if (Value)
  {
    v6 = Value[2];
    v7 = *(v6 + 104);
    FigSimpleMutexLock();
    ++*(v6 + 120);
    v8 = *(v6 + 104);
    FigSimpleMutexUnlock();
    v9 = 0;
  }

  else
  {
    APSLogErrorAt(0);
    v9 = 4294894825;
  }

  v10 = *(DerivedStorage + 64);
  FigSimpleMutexUnlock();
  return v9;
}

uint64_t protocolDriverSenderAPAT_CancelAllForcedDataTransmissions()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 64);
  FigSimpleMutexLock();
  v2 = MEMORY[0x277CC0898];
  *(DerivedStorage + 92) = *MEMORY[0x277CC0898];
  *(DerivedStorage + 108) = *(v2 + 16);
  v3 = *(DerivedStorage + 72);
  CFDictionaryApplyBlock();
  v4 = *(DerivedStorage + 64);
  FigSimpleMutexUnlock();
  return 0;
}

uint64_t protocolDriverSenderAPAT_ForceTransmitDataAtMediaTime(uint64_t a1, __int128 *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 64);
  FigSimpleMutexLock();
  v5 = *a2;
  *(DerivedStorage + 108) = *(a2 + 2);
  *(DerivedStorage + 92) = v5;
  v6 = *(DerivedStorage + 72);
  v9 = *a2;
  v10 = *(a2 + 2);
  CFDictionaryApplyBlock();
  v7 = *(DerivedStorage + 64);
  FigSimpleMutexUnlock();
  return 0;
}

uint64_t protocolDriverSenderAPAT_TriggerBurst()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 64);
  FigSimpleMutexLock();
  v2 = *(DerivedStorage + 72);
  CFDictionaryApplyBlock();
  v3 = *(DerivedStorage + 64);
  FigSimpleMutexUnlock();
  return 0;
}

uint64_t protocolDriverSenderAPAT_SendAudioData(uint64_t a1, OpaqueCMBlockBuffer *a2, uint64_t a3)
{
  v57 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v50 = **&MEMORY[0x277CC0898];
  theArray = 0;
  destinationBuffer = 0;
  v47 = v50;
  v6 = *(DerivedStorage + 64);
  FigSimpleMutexLock();
  if (!a2 || (*(a3 + 12) & 1) == 0)
  {
    APSLogErrorAt(0);
    v12 = 4294894825;
    goto LABEL_37;
  }

  v7 = CMBaseObjectGetDerivedStorage();
  v8 = *(v7 + 64);
  FigSimpleMutexCheckIsLockedOnThisThread();
  v9 = *(v7 + 80);
  if (v9)
  {
    v10 = APSRTPSeqNumRangeSetGetSpan(*(v9 + 16)) >> 16;
    if (v10 == 0x8000)
    {
      goto LABEL_48;
    }
  }

  else
  {
    LOWORD(v10) = 0;
  }

  *&sourceBytes.value = a2;
  v11 = APSAPAPDecodeHeader(_APSAPAPBBufDecodeReadCallback, &sourceBytes, &v50, 0);
  v12 = v11;
  if (!v11 && *&sourceBytes.timescale != 15)
  {
    v12 = 4294960587;
    goto LABEL_57;
  }

  if (v11)
  {
LABEL_57:
    v14 = v12;
LABEL_47:
    APSLogErrorAt(v14);
    if (v12 != -72472)
    {
      goto LABEL_37;
    }

    goto LABEL_48;
  }

  v13 = *MEMORY[0x277CBECE8];
  v14 = APSAPAPRTPBBufCreateWithAPAPBBuf(*MEMORY[0x277CBECE8], a2, &destinationBuffer);
  if (v14)
  {
    v12 = v14;
    goto LABEL_47;
  }

  LODWORD(sourceBytes.value) = bswap32(*(DerivedStorage + 40)) >> 16;
  if (!destinationBuffer)
  {
    v12 = 4294960591;
LABEL_52:
    v14 = v12;
    goto LABEL_47;
  }

  v15 = CMBlockBufferReplaceDataBytes(&sourceBytes, destinationBuffer, 8uLL, 4uLL);
  if (v15)
  {
    v12 = v15;
    goto LABEL_52;
  }

  APAPRTPFragmentCount = APSAPAPRTPBBufGetAPAPRTPFragmentCount(destinationBuffer, (*(DerivedStorage + 120) - *(DerivedStorage + 124)));
  if (APAPRTPFragmentCount > (0x8000 - v10))
  {
LABEL_48:
    v12 = 4294894824;
    ++*(DerivedStorage + 136);
    goto LABEL_37;
  }

  v17 = APAPRTPFragmentCount;
  v14 = APSAPAPRTPBBufCopyAPAPRTPFragmentBBufs(destinationBuffer, v13, (*(DerivedStorage + 120) - *(DerivedStorage + 124)), &theArray);
  if (v14)
  {
    v12 = v14;
    goto LABEL_47;
  }

  if (CFArrayGetCount(theArray) != v17)
  {
    APSLogErrorAt(0);
    v12 = 4294960548;
    goto LABEL_37;
  }

  if (v17 < 1)
  {
    goto LABEL_36;
  }

  v18 = 0;
  for (i = 0; i != v17; ++i)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
    v18 += CMBlockBufferGetDataLength(ValueAtIndex);
  }

  if (v18 >> 31)
  {
    APSLogErrorAt(0);
    v12 = 4294960553;
    goto LABEL_37;
  }

  target = a2;
  v45 = DerivedStorage;
  v21 = 0;
  do
  {
    v22 = v17;
    v23 = CFArrayGetValueAtIndex(theArray, v21);
    DataLength = CMBlockBufferGetDataLength(v23);
    sourceBytes = *a3;
    v25 = a3;
    CMTimeMultiplyByRatio(&v47, &sourceBytes, DataLength, v18);
    value = v50.value;
    timescale = v50.timescale;
    v55 = *(&v50 | 0xC);
    v56 = *((&v50 | 0xC) + 8);
    v46 = v47;
    v28 = CMBaseObjectGetDerivedStorage();
    v54 = 0;
    v29 = *(v28 + 64);
    FigSimpleMutexCheckIsLockedOnThisThread();
    LOWORD(time.value) = bswap32(*(v28 + 88)) >> 16;
    if (!v23)
    {
      v12 = 4294960591;
LABEL_43:
      SeqNumBeforeSeqNum = v12;
LABEL_46:
      APSLogErrorAt(SeqNumBeforeSeqNum);
      DerivedStorage = v45;
      v14 = v12;
      goto LABEL_47;
    }

    v30 = CMBlockBufferReplaceDataBytes(&time, v23, 2uLL, 2uLL);
    if (v30)
    {
      v12 = v30;
      goto LABEL_43;
    }

    v31 = *(v28 + 80);
    if (v31 && CFDictionaryGetCount(*(v31 + 24)))
    {
      SeqNumBeforeSeqNum = APSRTPSeqNumDictionaryGetSeqNumBeforeSeqNum(*(v28 + 80), *(v28 + 88), &v54);
      if (SeqNumBeforeSeqNum)
      {
        v12 = SeqNumBeforeSeqNum;
        goto LABEL_46;
      }

      v33 = *(CFDictionaryGetValue(*(*(v28 + 80) + 24), v54) + 3);
    }

    else
    {
      v33 = 0;
    }

    v34 = *(v28 + 48);
    v35 = CMBlockBufferGetDataLength(v23);
    time = v46;
    APSAudioHoseMetricCollectorUpdatePacketSize(v34, v35, &time);
    v36 = CMBlockBufferGetDataLength(v23) + v33;
    sourceBytes.value = v23;
    *&sourceBytes.timescale = value;
    LODWORD(sourceBytes.epoch) = timescale;
    time = v46;
    Seconds = CMTimeGetSeconds(&time);
    *(&sourceBytes.epoch + 1) = Seconds;
    v53 = v36;
    SeqNumBeforeSeqNum = APSRTPSeqNumDictionarySetValue(*(v28 + 80), *(v28 + 88), &sourceBytes);
    if (SeqNumBeforeSeqNum)
    {
      v12 = SeqNumBeforeSeqNum;
      goto LABEL_46;
    }

    if (gLogCategory_APSAudioProtocolDriverSenderAPAT <= 10 && (gLogCategory_APSAudioProtocolDriverSenderAPAT != -1 || _LogCategory_Initialize()))
    {
      v38 = *(v28 + 88);
      time.value = value;
      time.timescale = timescale;
      *&time.flags = v55;
      HIDWORD(time.epoch) = v56;
      CMTimeGetSeconds(&time);
      LogPrintF();
    }

    ++*(v28 + 88);
    ++v21;
    v17 = v22;
    a3 = v25;
  }

  while (v22 != v21);
  CMGetAttachment(target, @"startWaterMark", 0);
  v39 = *MEMORY[0x277CBED28];
  DerivedStorage = v45;
  if (FigCFEqual())
  {
    CMSetAttachment(v23, @"startWaterMark", v39, 1u);
  }

LABEL_36:
  v40 = *(DerivedStorage + 72);
  CFDictionaryApplyBlock();
  v12 = 0;
LABEL_37:
  v41 = *(DerivedStorage + 64);
  FigSimpleMutexUnlock();
  if (destinationBuffer)
  {
    CFRelease(destinationBuffer);
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  v42 = *MEMORY[0x277D85DE8];
  return v12;
}

uint64_t protocolDriverSenderAPAT_IsHoseRegistered(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 64);
  FigSimpleMutexLock();
  v5 = CFDictionaryContainsKey(*(DerivedStorage + 72), a2);
  v6 = *(DerivedStorage + 64);
  FigSimpleMutexUnlock();
  return v5;
}

uint64_t protocolDriverSenderAPAT_DeregisterHose(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 64);
  FigSimpleMutexLock();
  if (gLogCategory_APSAudioProtocolDriverSenderAPAT <= 50 && (gLogCategory_APSAudioProtocolDriverSenderAPAT != -1 || _LogCategory_Initialize()))
  {
    CFDictionaryGetCount(*(DerivedStorage + 72));
    LogPrintF();
  }

  v5 = CMBaseObjectGetDerivedStorage();
  v6 = *(v5 + 64);
  FigSimpleMutexCheckIsLockedOnThisThread();
  v7 = CFDictionaryContainsKey(*(v5 + 72), a2);
  if (v7)
  {
    CFDictionaryRemoveValue(*(v5 + 72), a2);
    if (gLogCategory_APSAudioProtocolDriverSenderAPAT <= 50 && (gLogCategory_APSAudioProtocolDriverSenderAPAT != -1 || _LogCategory_Initialize()))
    {
      CFDictionaryGetCount(*(DerivedStorage + 72));
      LogPrintF();
    }

    v8 = 0;
  }

  else
  {
    v8 = 4294894825;
    APSLogErrorAt(v7);
    APSSignalErrorAt(4294894825);
    APSLogErrorAt(4294894825);
  }

  v9 = *(DerivedStorage + 64);
  FigSimpleMutexUnlock();
  return v8;
}

uint64_t protocolDriverSenderAPAT_RegisterHose(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 64);
  FigSimpleMutexLock();
  if (gLogCategory_APSAudioProtocolDriverSenderAPAT <= 50 && (gLogCategory_APSAudioProtocolDriverSenderAPAT != -1 || _LogCategory_Initialize()))
  {
    CFDictionaryGetCount(*(DerivedStorage + 72));
    LogPrintF();
  }

  v5 = CMBaseObjectGetDerivedStorage();
  value[1] = 0;
  v23 = 0;
  cf = 0;
  v20 = 0;
  v6 = *(v5 + 64);
  FigSimpleMutexCheckIsLockedOnThisThread();
  if (CFDictionaryContainsKey(*(v5 + 72), a2))
  {
    v8 = 4294894825;
    APSLogErrorAt(0);
    APSSignalErrorAt(4294894825);
    goto LABEL_26;
  }

  value[0] = a2;
  if (protocolDriverSenderAPAT_getTxBufferTotalItemCountInternal())
  {
    FirstSeqNum = APSRTPSeqNumDictionaryGetFirstSeqNum(*(v5 + 80), &v20);
    if (FirstSeqNum)
    {
      v8 = FirstSeqNum;
      APSLogErrorAt(FirstSeqNum);
LABEL_26:
      APSLogErrorAt(v8);
      goto LABEL_23;
    }
  }

  else
  {
    v20 = *(v5 + 88);
  }

  v9 = FigCFWeakReferenceHolderCreateWithReferencedObject();
  if (!v9)
  {
    APSLogErrorAt(0);
    v8 = 4294960568;
    goto LABEL_26;
  }

  v10 = v9;
  v11 = *(v5 + 40);
  *&v18 = protocolDriverSenderAPAT_CopyMessageAtOrNextValidSequenceNumber;
  *(&v18 + 1) = protocolDriverSenderAPAT_CopyMessagesSessionStart;
  v19 = protocolDriverSenderAPAT_CopyMessagesSessionEnd;
  v12 = APSAudioProtocolDriverSenderHoseControllerAPATCreate(a2, v20, v11, &v18, v9, *(v5 + 44), *(v5 + 48), *(v5 + 56), &cf);
  v8 = v12;
  if (v12)
  {
    APSLogErrorAt(v12);
  }

  else
  {
    if (*(v5 + 104))
    {
      v13 = cf;
      v18 = *(v5 + 92);
      v19 = *(v5 + 108);
      v14 = *(cf + 13);
      FigSimpleMutexLock();
      *(v13 + 148) = v18;
      *(v13 + 164) = v19;
      v15 = *(v13 + 13);
      FigSimpleMutexUnlock();
    }

    v23 = cf;
    CFDictionaryAddValue(*(v5 + 72), a2, value);
  }

  CFRelease(v10);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v8)
  {
    goto LABEL_26;
  }

  if (gLogCategory_APSAudioProtocolDriverSenderAPAT <= 50 && (gLogCategory_APSAudioProtocolDriverSenderAPAT != -1 || _LogCategory_Initialize()))
  {
    CFDictionaryGetCount(*(DerivedStorage + 72));
    LogPrintF();
  }

  v8 = 0;
LABEL_23:
  v16 = *(DerivedStorage + 64);
  FigSimpleMutexUnlock();
  return v8;
}

uint64_t protocolDriverSenderAPAT_CopyMessagesSessionEnd()
{
  v0 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v0)
  {
    v1 = v0;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v3 = *(DerivedStorage + 64);
    FigSimpleMutexCheckIsLockedOnThisThread();
    v4 = *(DerivedStorage + 64);
    FigSimpleMutexUnlock();
    CFRelease(v1);
  }

  return 0;
}

uint64_t protocolDriverSenderAPAT_CopyMessagesSessionStart()
{
  v0 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v0)
  {
    v1 = v0;
    v2 = *(CMBaseObjectGetDerivedStorage() + 64);
    FigSimpleMutexLock();
    CFRelease(v1);
  }

  return 0;
}

uint64_t protocolDriverSenderAPAT_CopyMessageAtOrNextValidSequenceNumber(uint64_t a1, unsigned int a2, _WORD *a3, void *a4, CMTime *a5, double *a6, _WORD *a7, void *a8)
{
  *&key[6] = 0;
  *key = a2;
  v42 = **&MEMORY[0x277CC0898];
  v15 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (!v15)
  {
    return 0;
  }

  v16 = v15;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v18 = *(DerivedStorage + 64);
  FigSimpleMutexCheckIsLockedOnThisThread();
  v19 = *(DerivedStorage + 80);
  if (!v19 || !CFDictionaryGetCount(*(v19 + 24)))
  {
    if (gLogCategory_APSAudioProtocolDriverSenderAPAT <= 30 && (gLogCategory_APSAudioProtocolDriverSenderAPAT != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v24 = 0;
    goto LABEL_21;
  }

  v20 = *(DerivedStorage + 80);
  if (v20)
  {
    Value = CFDictionaryGetValue(*(v20 + 24), a2);
    if (Value)
    {
      goto LABEL_14;
    }

    v22 = *(DerivedStorage + 80);
  }

  else
  {
    v22 = 0;
  }

  SeqNumAfterSeqNum = APSRTPSeqNumDictionaryGetSeqNumAfterSeqNum(v22, a2, key);
  if (SeqNumAfterSeqNum != -6750)
  {
    v24 = SeqNumAfterSeqNum;
    if (SeqNumAfterSeqNum)
    {
      goto LABEL_30;
    }

    v25 = *(DerivedStorage + 80);
    if (v25)
    {
      Value = CFDictionaryGetValue(*(v25 + 24), *key);
    }

    else
    {
      Value = 0;
    }

LABEL_14:
    SeqNumAfterSeqNum = protocolDriverSenderAPAT_getTxBufferEndItemInternal(v16, 1, &key[4], &key[6]);
    if (!SeqNumAfterSeqNum)
    {
      v26 = a7;
      v27 = a4;
      v40 = a8;
      v41 = v16;
      v28 = a6;
      v39 = v26;
      v29 = *&key[6];
      DataLength = CMBlockBufferGetDataLength(**&key[6]);
      v31 = *(Value + 3);
      v32 = *(v29 + 24);
      CMTimeMake(&v42, *(Value + 1), *(Value + 4));
      v33 = *(DerivedStorage + 80);
      if (v33)
      {
        v34 = *(Value + 5);
        LastSeqNum = APSRTPSeqNumRangeSetGetLastSeqNum(*(v33 + 16), &key[2]);
        if (!LastSeqNum)
        {
          v36 = *&key[2] - *key;
          *a3 = *key;
          *v27 = v31 + DataLength - v32;
          *a5 = v42;
          *v28 = v34;
          *v39 = v36;
          v37 = *Value;
          if (*Value)
          {
            v37 = CFRetain(v37);
          }

          v24 = 0;
          *v40 = v37;
          goto LABEL_20;
        }

        v24 = LastSeqNum;
      }

      else
      {
        v24 = 4294960591;
      }

      APSLogErrorAt(v24);
LABEL_20:
      v16 = v41;
      goto LABEL_21;
    }

    v24 = SeqNumAfterSeqNum;
LABEL_30:
    APSLogErrorAt(SeqNumAfterSeqNum);
    goto LABEL_21;
  }

  v24 = 0;
  *a8 = 0;
LABEL_21:
  CFRelease(v16);
  return v24;
}

uint64_t protocolDriverSenderAPAT_FlushFromTime(uint64_t a1, __int128 *a2, _WORD *a3, _WORD *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = *(DerivedStorage + 88);
  v10 = *(DerivedStorage + 64);
  FigSimpleMutexLock();
  if (!protocolDriverSenderAPAT_getTxBufferTotalItemCountInternal())
  {
    goto LABEL_25;
  }

  *&v30.value = *a2;
  v30.epoch = *(a2 + 2);
  v11 = CMBaseObjectGetDerivedStorage();
  v47 = 0;
  v46 = **&MEMORY[0x277CC0898];
  v45 = 0;
  *&v42 = 0;
  *(&v42 + 1) = &v42;
  v43 = 0x2000000000;
  v44 = 0;
  v38 = 0;
  v39 = &v38;
  v40 = 0x2000000000;
  v41 = 0;
  TxBufferTotalItemCountInternal = protocolDriverSenderAPAT_getTxBufferTotalItemCountInternal();
  v13 = *(v11 + 64);
  FigSimpleMutexCheckIsLockedOnThisThread();
  if (!TxBufferTotalItemCountInternal)
  {
    goto LABEL_20;
  }

  TxBufferEndItemInternal = protocolDriverSenderAPAT_getTxBufferEndItemInternal(a1, 1, &v37, &v47);
  if (!TxBufferEndItemInternal)
  {
    CMTimeMake(&v46, *(v47 + 8), *(v47 + 16));
    time1 = v46;
    time2 = v30;
    v15 = CMTimeCompare(&time1, &time2);
    v16 = *(v11 + 80);
    if ((v15 & 0x80000000) == 0)
    {
      if (v16)
      {
        Span = APSRTPSeqNumRangeSetGetSpan(*(v16 + 16));
        v16 = *(v11 + 80);
      }

      else
      {
        Span = 0;
      }

      APSRTPSeqNumDictionaryRemoveAllValues(v16);
      v18 = 0;
      goto LABEL_22;
    }

    time1.value = MEMORY[0x277D85DD0];
    *&time1.timescale = 0x40000000;
    time1.epoch = __protcolDriverSenderAPAT_pruneTXBufferFromTimeInternal_block_invoke;
    v32 = &unk_2784A42E0;
    v34 = *&v30.value;
    epoch = v30.epoch;
    *&v33 = &v38;
    *(&v33 + 1) = &v42;
    TxBufferEndItemInternal = APSRTPSeqNumDictionaryApplyBlock(v16, 1u, &time1);
    if (TxBufferEndItemInternal != -6723)
    {
      v18 = TxBufferEndItemInternal;
      if (TxBufferEndItemInternal)
      {
        goto LABEL_19;
      }
    }

    if (*(*(&v42 + 1) + 24))
    {
      v19 = *(v11 + 80);
      if (v19)
      {
        LastSeqNum = APSRTPSeqNumRangeSetGetLastSeqNum(*(v19 + 16), &v45);
        if (!LastSeqNum)
        {
          v21 = *(v39 + 12);
          v22 = (v45 - v21);
          v23 = (v21 | ((v45 - v21) << 16)) + 0x10000;
          if (v22 < -1)
          {
            Span = -1;
          }

          else
          {
            Span = v23;
          }

          v24 = APSRTPSeqNumDictionaryRemoveValuesWithinSeqNumRange(*(v11 + 80), Span);
          v18 = v24;
          if (v24)
          {
            APSLogErrorAt(v24);
          }

          goto LABEL_22;
        }

        v18 = LastSeqNum;
      }

      else
      {
        v18 = 4294960591;
      }

      TxBufferEndItemInternal = v18;
      goto LABEL_19;
    }

LABEL_20:
    v18 = 0;
    goto LABEL_21;
  }

  v18 = TxBufferEndItemInternal;
LABEL_19:
  APSLogErrorAt(TxBufferEndItemInternal);
LABEL_21:
  Span = -1;
LABEL_22:
  _Block_object_dispose(&v38, 8);
  _Block_object_dispose(&v42, 8);
  if (v18)
  {
    APSLogErrorAt(v18);
    goto LABEL_29;
  }

  protocolDriverSenderAPAT_pruneHoseControllersWithPacketRange();
  v42 = *a2;
  v43 = *(a2 + 2);
  v25 = CMBaseObjectGetDerivedStorage();
  v26 = *(v25 + 64);
  FigSimpleMutexCheckIsLockedOnThisThread();
  v27 = *(v25 + 72);
  time1.value = MEMORY[0x277D85DD0];
  *&time1.timescale = 0x40000000;
  time1.epoch = __protocolDriverSenderAPAT_flushHoseControllersFromTime_block_invoke;
  v32 = &__block_descriptor_tmp_20_3335;
  v33 = v42;
  *&v34 = v43;
  CFDictionaryApplyBlock();
  if (Span < 0x80010000)
  {
    v9 = Span;
  }

LABEL_25:
  if (a3)
  {
    *a3 = v9;
  }

  v18 = 0;
  if (a4)
  {
    *a4 = *(DerivedStorage + 88);
  }

LABEL_29:
  v28 = *(DerivedStorage + 64);
  FigSimpleMutexUnlock();
  return v18;
}

uint64_t __protcolDriverSenderAPAT_pruneTXBufferFromTimeInternal_block_invoke(uint64_t a1, __int16 a2, uint64_t a3)
{
  memset(&v8, 0, sizeof(v8));
  CMTimeMake(&v8, *(a3 + 8), *(a3 + 16));
  time1 = v8;
  time2 = *(a1 + 48);
  if (CMTimeCompare(&time1, &time2) < 0)
  {
    return 4294960573;
  }

  if (gLogCategory_APSAudioProtocolDriverSenderAPAT <= 50 && (gLogCategory_APSAudioProtocolDriverSenderAPAT != -1 || _LogCategory_Initialize()))
  {
    time1 = v8;
    CMTimeGetSeconds(&time1);
    LogPrintF();
  }

  result = 0;
  *(*(*(a1 + 32) + 8) + 24) = a2;
  *(*(*(a1 + 40) + 8) + 24) = 1;
  return result;
}

uint64_t protocolDriverSenderAPAT_pruneHoseControllersWithPacketRange()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 64);
  FigSimpleMutexCheckIsLockedOnThisThread();
  v2 = *(DerivedStorage + 72);
  return CFDictionaryApplyBlock();
}

uint64_t __protocolDriverSenderAPAT_flushHoseControllersFromTime_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v5 = *(a1 + 32);
  return APSAudioProtocolDriverSenderHoseControllerAPATFlushFromTime(v3, &v5);
}

uint64_t __protocolDriverSenderAPAT_pruneHoseControllersWithPacketRange_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (v4 <= 0x8000FFFF)
  {
    APSAudioProtocolDriverSenderHoseControllerAPATPrunePacketsWithinRange(*(a3 + 16), v4);
  }

  v5 = *(a3 + 16);

  return APSAudioProtocolDriverSenderHoseControllerAPATTick(v5);
}

uint64_t protocolDriverSenderAPAT_Flush(uint64_t a1, _WORD *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 64);
  FigSimpleMutexLock();
  if (!protocolDriverSenderAPAT_getTxBufferTotalItemCountInternal())
  {
    goto LABEL_5;
  }

  v5 = *(DerivedStorage + 80);
  if (v5)
  {
    APSRTPSeqNumRangeSetGetSpan(*(v5 + 16));
  }

  protocolDriverSenderAPAT_pruneHoseControllersWithPacketRange();
  v6 = CMBaseObjectGetDerivedStorage();
  v7 = *(v6 + 64);
  FigSimpleMutexCheckIsLockedOnThisThread();
  v8 = *(v6 + 72);
  CFDictionaryApplyBlock();
  v9 = APSRTPSeqNumDictionaryRemoveAllValues(*(DerivedStorage + 80));
  if (v9)
  {
    v10 = v9;
    APSLogErrorAt(v9);
  }

  else
  {
LABEL_5:
    v10 = 0;
    if (a2)
    {
      *a2 = *(DerivedStorage + 88);
    }
  }

  v11 = *(DerivedStorage + 64);
  FigSimpleMutexUnlock();
  return v10;
}

uint64_t protocolDriverSenderAPAT_Tick(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if ((*(a2 + 12) & 1) == 0)
  {
    APSLogErrorAt(0);
    return 4294894825;
  }

  v5 = DerivedStorage;
  v6 = *(DerivedStorage + 64);
  FigSimpleMutexLock();
  *&v25.value = *a2;
  v25.epoch = *(a2 + 16);
  v7 = CMBaseObjectGetDerivedStorage();
  *&v28.value = *MEMORY[0x277CC0898];
  v8 = *(MEMORY[0x277CC0898] + 16);
  v28.epoch = v8;
  v24 = *&v28.value;
  *&v27.value = *&v28.value;
  v27.epoch = v8;
  v9 = *(v7 + 64);
  FigSimpleMutexCheckIsLockedOnThisThread();
  CMTimeMake(&v28, *(v7 + 116), 1000);
  lhs = v25;
  rhs = v28;
  CMTimeAdd(&v27, &lhs, &rhs);
  if (gLogCategory_APSAudioProtocolDriverSenderAPAT <= 30 && (gLogCategory_APSAudioProtocolDriverSenderAPAT != -1 || _LogCategory_Initialize()))
  {
    lhs = v27;
    CMTimeGetSeconds(&lhs);
    LogPrintF();
  }

  v26 = v27;
  v10 = CMBaseObjectGetDerivedStorage();
  v43.epoch = v8;
  v44 = 0;
  *&v43.value = v24;
  v42 = 0;
  rhs.value = 0;
  *&rhs.timescale = &rhs;
  rhs.epoch = 0x2000000000;
  v41 = 0;
  v36 = 0;
  v37 = &v36;
  v38 = 0x2000000000;
  v39 = 0;
  TxBufferTotalItemCountInternal = protocolDriverSenderAPAT_getTxBufferTotalItemCountInternal();
  v12 = *(v10 + 64);
  FigSimpleMutexCheckIsLockedOnThisThread();
  if (TxBufferTotalItemCountInternal)
  {
    TxBufferEndItemInternal = protocolDriverSenderAPAT_getTxBufferEndItemInternal(a1, 0, &v35, &v44);
    if (TxBufferEndItemInternal)
    {
      TxBufferTotalItemCountInternal = TxBufferEndItemInternal;
    }

    else
    {
      CMTimeMake(&v43, *(v44 + 8), *(v44 + 16));
      lhs = v43;
      time2 = v26;
      v14 = CMTimeCompare(&lhs, &time2);
      v15 = *(v10 + 80);
      if (v14 < 0)
      {
        if (v15)
        {
          APSRTPSeqNumRangeSetGetSpan(*(v15 + 16));
          v15 = *(v10 + 80);
        }

        APSRTPSeqNumDictionaryRemoveAllValues(v15);
        TxBufferTotalItemCountInternal = 0;
        goto LABEL_24;
      }

      lhs.value = MEMORY[0x277D85DD0];
      *&lhs.timescale = 0x40000000;
      lhs.epoch = __protocolDriverSenderAPAT_pruneTxBufferUntilTimeInternal_block_invoke;
      v30 = &unk_2784A4278;
      v33 = v26;
      v31 = &v36;
      p_rhs = &rhs;
      TxBufferEndItemInternal = APSRTPSeqNumDictionaryApplyBlock(v15, 0, &lhs);
      if (TxBufferEndItemInternal == -6723 || (TxBufferTotalItemCountInternal = TxBufferEndItemInternal, !TxBufferEndItemInternal))
      {
        if (!*(*&rhs.timescale + 24))
        {
          TxBufferTotalItemCountInternal = 0;
          goto LABEL_24;
        }

        TxBufferEndItemInternal = APSRTPSeqNumDictionaryGetFirstSeqNum(*(v10 + 80), &v42);
        if (TxBufferEndItemInternal)
        {
          TxBufferTotalItemCountInternal = TxBufferEndItemInternal;
        }

        else
        {
          if ((*(v37 + 12) - v42) < -1)
          {
            v16 = -1;
          }

          else
          {
            v16 = (v42 | ((*(v37 + 12) - v42) << 16)) + 0x10000;
          }

          TxBufferEndItemInternal = APSRTPSeqNumDictionaryRemoveValuesWithinSeqNumRange(*(v10 + 80), v16);
          TxBufferTotalItemCountInternal = TxBufferEndItemInternal;
          if (!TxBufferEndItemInternal)
          {
            goto LABEL_24;
          }
        }
      }
    }

    APSLogErrorAt(TxBufferEndItemInternal);
  }

LABEL_24:
  _Block_object_dispose(&v36, 8);
  _Block_object_dispose(&rhs, 8);
  if (TxBufferTotalItemCountInternal)
  {
    APSLogErrorAt(TxBufferTotalItemCountInternal);
    APSLogErrorAt(TxBufferTotalItemCountInternal);
  }

  else
  {
    protocolDriverSenderAPAT_pruneHoseControllersWithPacketRange();
    v17 = CMBaseObjectGetDerivedStorage();
    v18 = v17[8];
    FigSimpleMutexCheckIsLockedOnThisThread();
    mach_absolute_time();
    if ((UpTicksToMilliseconds() - v17[16]) >= 0x3E9)
    {
      if (gLogCategory_APSAudioProtocolDriverSenderAPAT <= 50 && (gLogCategory_APSAudioProtocolDriverSenderAPAT != -1 || _LogCategory_Initialize()))
      {
        v19 = v17[10];
        if (v19)
        {
          v20 = *(v19 + 16);
        }

        v23 = v17[17];
        LogPrintF();
      }

      mach_absolute_time();
      v17[16] = UpTicksToMilliseconds();
      v17[17] = 0;
    }
  }

  v21 = *(v5 + 64);
  FigSimpleMutexUnlock();
  return TxBufferTotalItemCountInternal;
}

uint64_t __protocolDriverSenderAPAT_pruneTxBufferUntilTimeInternal_block_invoke(uint64_t a1, __int16 a2, uint64_t a3)
{
  memset(&v8, 0, sizeof(v8));
  CMTimeMake(&v8, *(a3 + 8), *(a3 + 16));
  time1 = v8;
  time2 = *(a1 + 48);
  if ((CMTimeCompare(&time1, &time2) & 0x80000000) == 0)
  {
    return 4294960573;
  }

  if (gLogCategory_APSAudioProtocolDriverSenderAPAT <= 10 && (gLogCategory_APSAudioProtocolDriverSenderAPAT != -1 || _LogCategory_Initialize()))
  {
    time1 = v8;
    CMTimeGetSeconds(&time1);
    LogPrintF();
  }

  result = 0;
  *(*(*(a1 + 32) + 8) + 24) = a2;
  *(*(*(a1 + 40) + 8) + 24) = 1;
  return result;
}

uint64_t protocolDriverSenderAPAT_SetProperty(uint64_t a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    v14 = 4294894825;
    goto LABEL_24;
  }

  if (!a3)
  {
    v14 = 4294894825;
    goto LABEL_24;
  }

  v6 = DerivedStorage;
  if (CFEqual(a2, @"kAPSAudioProtocolDriverSenderProperty_PruneMarginMs"))
  {
    v7 = CFGetTypeID(a3);
    if (v7 == CFNumberGetTypeID())
    {
      v8 = *(v6 + 64);
      FigSimpleMutexLock();
      CFNumberGetValue(a3, kCFNumberSInt32Type, (v6 + 116));
LABEL_12:
      v13 = *(v6 + 64);
      FigSimpleMutexUnlock();
      return 0;
    }

    v14 = 4294894825;
    goto LABEL_24;
  }

  if (CFEqual(a2, @"kAPSAudioProtocolDriverSenderProperty_MaxPacketSize"))
  {
    v9 = CFGetTypeID(a3);
    if (v9 == CFNumberGetTypeID())
    {
      v10 = *(v6 + 64);
      FigSimpleMutexLock();
      *(v6 + 120) = FigCFNumberGetUInt32();
      goto LABEL_12;
    }

    v14 = 4294894825;
LABEL_24:
    APSLogErrorAt(0);
    return v14;
  }

  if (CFEqual(a2, @"kAPSAudioProtocolDriverSenderProperty_OutputCryptorOverhead"))
  {
    v11 = CFGetTypeID(a3);
    if (v11 == CFNumberGetTypeID())
    {
      v12 = *(v6 + 64);
      FigSimpleMutexLock();
      *(v6 + 124) = FigCFNumberGetUInt32();
      goto LABEL_12;
    }

    v14 = 4294894825;
    goto LABEL_24;
  }

  if (gLogCategory_APSAudioProtocolDriverSenderAPAT <= 30 && (gLogCategory_APSAudioProtocolDriverSenderAPAT != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  return 4294954509;
}

uint64_t protocolDriverSenderAPAT_CopyProperty(uint64_t a1, const void *a2, uint64_t a3, uint64_t *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2 || !a4)
  {
    APSLogErrorAt(0);
    return 4294894825;
  }

  v8 = DerivedStorage;
  if (CFEqual(a2, @"kAPSAudioProtocolDriverSenderProperty_BufferFullnessCount"))
  {
    v9 = *(v8 + 8);
    FigSimpleMutexLock();
    protocolDriverSenderAPAT_getTxBufferTotalItemCountInternal();
    *a4 = CFNumberCreateInt64();
    v10 = *(v8 + 8);
    FigSimpleMutexUnlock();
    if (*a4)
    {
      return 0;
    }

    v11 = 4294894826;
    Int64 = 0;
LABEL_40:
    APSLogErrorAt(Int64);
    return v11;
  }

  if (CFEqual(a2, @"kAPSAudioProtocolDriverSenderProperty_BufferFullnessBytes"))
  {
    v12 = *(v8 + 8);
    FigSimpleMutexLock();
    v13 = CMBaseObjectGetDerivedStorage();
    TxBufferTotalItemCountInternal = protocolDriverSenderAPAT_getTxBufferTotalItemCountInternal();
    v41 = 0;
    v39 = 0;
    v15 = *(v13 + 64);
    FigSimpleMutexCheckIsLockedOnThisThread();
    if (!TxBufferTotalItemCountInternal)
    {
      goto LABEL_12;
    }

    TxBufferEndItemInternal = protocolDriverSenderAPAT_getTxBufferEndItemInternal(a1, 1, &v42, &v41);
    if (TxBufferEndItemInternal)
    {
      v11 = TxBufferEndItemInternal;
    }

    else
    {
      v17 = v41;
      DataLength = CMBlockBufferGetDataLength(*v41);
      if (TxBufferTotalItemCountInternal == 1)
      {
LABEL_12:
        v20 = *(v8 + 8);
        FigSimpleMutexUnlock();
        v11 = 0;
        *a4 = CFNumberCreateInt64();
        return v11;
      }

      TxBufferEndItemInternal = protocolDriverSenderAPAT_getTxBufferEndItemInternal(a1, 0, &v40, &v39);
      if (!TxBufferEndItemInternal)
      {
        v19 = *(v39 + 24) + DataLength - v17[3];
        goto LABEL_12;
      }

      v11 = TxBufferEndItemInternal;
    }

    APSLogErrorAt(TxBufferEndItemInternal);
    v38 = *(v8 + 8);
    FigSimpleMutexUnlock();
    Int64 = v11;
    goto LABEL_40;
  }

  if (CFEqual(a2, @"kAPSAudioProtocolDriverSenderProperty_PruneMarginMs"))
  {
    v22 = *(v8 + 8);
    FigSimpleMutexLock();
    v23 = v8[29];
    *a4 = CFNumberCreateInt64();
    v24 = *(v8 + 8);
    FigSimpleMutexUnlock();
    if (*a4)
    {
      return 0;
    }

    v11 = 4294894826;
    Int64 = 0;
    goto LABEL_40;
  }

  if (CFEqual(a2, @"kAPSAudioProtocolDriverSenderProperty_PreferedTickIntervalMs"))
  {
    v26 = *v8;
    Int64 = CFNumberCreateInt64();
    *a4 = Int64;
    if (Int64)
    {
      return 0;
    }

    v11 = 4294894826;
    goto LABEL_40;
  }

  if (CFEqual(a2, @"kAPSAudioProtocolDriverSenderProperty_MaxPacketSize"))
  {
    v27 = *(v8 + 8);
    FigSimpleMutexLock();
    v28 = *MEMORY[0x277CBECE8];
    v29 = v8[30];
    *a4 = FigCFNumberCreateUInt32();
    v30 = *(v8 + 8);
    FigSimpleMutexUnlock();
    if (*a4)
    {
      return 0;
    }

    v11 = 4294894826;
    Int64 = 0;
    goto LABEL_40;
  }

  if (CFEqual(a2, @"kAPSAudioProtocolDriverSenderProperty_NextSequenceNumber"))
  {
    v31 = *(v8 + 8);
    FigSimpleMutexLock();
    v32 = *(v8 + 44);
    *a4 = CFNumberCreateInt64();
    v33 = *(v8 + 8);
    FigSimpleMutexUnlock();
    if (*a4)
    {
      return 0;
    }

    v11 = 4294894826;
    Int64 = 0;
    goto LABEL_40;
  }

  if (CFEqual(a2, @"kAPSAudioProtocolDriverSenderProperty_OutputCryptorOverhead"))
  {
    v34 = *(v8 + 8);
    FigSimpleMutexLock();
    v35 = *MEMORY[0x277CBECE8];
    v36 = v8[31];
    *a4 = FigCFNumberCreateUInt32();
    v37 = *(v8 + 8);
    FigSimpleMutexUnlock();
    if (*a4)
    {
      return 0;
    }

    v11 = 4294894826;
    Int64 = 0;
    goto LABEL_40;
  }

  if (gLogCategory_APSAudioProtocolDriverSenderAPAT <= 30 && (gLogCategory_APSAudioProtocolDriverSenderAPAT != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  return 4294954509;
}

__CFString *protocolDriverSenderAPAT_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"<APSAudioProtocolDriverSenderAPAT %p>", a1);
  return Mutable;
}

uint64_t protocolDriverSenderAPAT_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(CMBaseObjectGetDerivedStorage() + 72);
  FigCFDictionaryRemoveAllValues();
  v2 = DerivedStorage[10];
  if (v2)
  {
    CFRelease(v2);
    DerivedStorage[10] = 0;
  }

  v3 = DerivedStorage[9];
  if (v3)
  {
    CFRelease(v3);
    DerivedStorage[9] = 0;
  }

  v4 = DerivedStorage[6];
  if (v4)
  {
    CFRelease(v4);
    DerivedStorage[6] = 0;
  }

  v5 = DerivedStorage[7];
  if (v5)
  {
    CFRelease(v5);
    DerivedStorage[7] = 0;
  }

  v6 = DerivedStorage[8];

  return FigSimpleMutexDestroy();
}

uint64_t APSAudioProtocolDriverSenderGetClassID()
{
  if (APSAudioProtocolDriverSenderGetClassID_sRegisterOnce != -1)
  {
    dispatch_once_f(&APSAudioProtocolDriverSenderGetClassID_sRegisterOnce, &APSAudioProtocolDriverSenderGetClassID_sClassID, audioProtocolDriverSender_registerBaseClass);
  }

  return APSAudioProtocolDriverSenderGetClassID_sClassID;
}

uint64_t audioProtocolDriverSender_registerBaseClass(uint64_t a1)
{
  ClassID = CMBaseGetClassID();

  return MEMORY[0x282112448](&audioProtocolDriverSender_registerBaseClass_sClassDesc, ClassID, 1, a1);
}

uint64_t APSAudioProtocolDriverSenderGetTypeID()
{
  if (APSAudioProtocolDriverSenderGetClassID_sRegisterOnce != -1)
  {
    dispatch_once_f(&APSAudioProtocolDriverSenderGetClassID_sRegisterOnce, &APSAudioProtocolDriverSenderGetClassID_sClassID, audioProtocolDriverSender_registerBaseClass);
  }

  v1 = APSAudioProtocolDriverSenderGetClassID_sClassID;

  return MEMORY[0x282111A98](v1);
}

uint64_t APSAudioFormatDescriptionGetTypeID()
{
  if (APSAudioFormatDescriptionGetTypeID_sInitOnce != -1)
  {
    dispatch_once_f(&APSAudioFormatDescriptionGetTypeID_sInitOnce, &APSAudioFormatDescriptionGetTypeID_sTypeID, audioFormat_getTypeID);
  }

  return APSAudioFormatDescriptionGetTypeID_sTypeID;
}

uint64_t audioFormat_getTypeID(uint64_t *a1)
{
  result = _CFRuntimeRegisterClass();
  *a1 = result;
  return result;
}

__CFString *audioFormat_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  v3 = Mutable;
  if (Mutable)
  {
    v4 = *(a1 + 64);
    v5 = "PCM/24000/16/1";
    switch(v4)
    {
      case 2:
        v5 = "PCM/8000/16/1";
        break;
      case 3:
        v5 = "PCM/8000/16/2";
        break;
      case 4:
        v5 = "PCM/16000/16/1";
        break;
      case 5:
        v5 = "PCM/16000/16/2";
        break;
      case 6:
        break;
      case 7:
        v5 = "PCM/24000/16/2";
        break;
      case 8:
        v5 = "PCM/32000/16/1";
        break;
      case 9:
        v5 = "PCM/32000/16/2";
        break;
      case 10:
        v5 = "PCM/44100/16/1";
        break;
      case 11:
        v5 = "PCM/44100/16/2";
        break;
      case 12:
        v5 = "PCM/44100/24/1";
        break;
      case 13:
        v5 = "PCM/44100/24/2";
        break;
      case 14:
        v5 = "PCM/48000/16/1";
        break;
      case 15:
        v5 = "PCM/48000/16/2";
        break;
      case 16:
        v5 = "PCM/48000/24/1";
        break;
      case 17:
        v5 = "PCM/48000/24/2";
        break;
      case 18:
        v5 = "ALAC/44100/16/2";
        break;
      case 19:
        v5 = "ALAC/44100/24/2";
        break;
      case 20:
        v5 = "ALAC/48000/16/2";
        break;
      case 21:
        v5 = "ALAC/48000/24/2";
        break;
      case 22:
        v5 = "AAC-LC/44100/2";
        break;
      case 23:
        v5 = "AAC-LC/48000/2";
        break;
      case 24:
        v5 = "AAC-ELD/44100/2";
        break;
      case 25:
        v5 = "AAC-ELD/48000/2";
        break;
      case 26:
        v5 = "AAC-ELD/16000/1";
        break;
      case 27:
        v5 = "AAC-ELD/24000/1";
        break;
      case 28:
        v5 = "OPUS/16000/1";
        break;
      case 29:
        v5 = "OPUS/24000/1";
        break;
      case 30:
        v5 = "OPUS/48000/1";
        break;
      case 31:
        v5 = "AAC-ELD/44100/1";
        break;
      case 32:
        v5 = "AAC-ELD/48000/1";
        break;
      case 38:
        v5 = "PCM/48000/16/5.1.2";
        break;
      case 39:
        v5 = "AAC_LC/48000/5.1";
        break;
      case 40:
        v5 = "AAC_LC/48000/5.1.2";
        break;
      case 41:
        v5 = "AAC_ELD/48000/5.1";
        break;
      case 42:
        v5 = "AAC_ELD/48000/5.1.2";
        break;
      case 43:
        v5 = "AAC-ELD/32000/1";
        break;
      case 44:
        v5 = "PCM/48000/16/5.1";
        break;
      case 45:
        v5 = "PCM/48000/32f/1";
        break;
      case 46:
        v5 = "PCM/48000/32f/2";
        break;
      case 47:
        v5 = "PCM/48000/32f/5.1";
        break;
      case 48:
        v5 = "PCM/48000/32f/5.1.2";
        break;
      case 49:
        v5 = "DDPLUS/48000/2";
        break;
      case 50:
        v5 = "DDPLUS/48000/5.1";
        break;
      case 51:
        v5 = "DDPLUS/48000/5.1.2";
        break;
      case 52:
        v5 = "DDPLUS/48000/7.1.4";
        break;
      case 53:
        v5 = "DDPLUS/48000/9.1.6";
        break;
      case 54:
        v5 = "QAAC/48000/2";
        break;
      case 55:
        v5 = "QAAC/48000/5.1";
        break;
      case 56:
        v5 = "QAAC/48000/5.1.2";
        break;
      case 57:
        v5 = "QAACHE/48000/2";
        break;
      case 69:
        v5 = "PCM/48000/32f/7.1.4";
        break;
      case 78:
        v5 = "PCM/48000/16/7.1";
        break;
      case 79:
        v5 = "PCM/48000/32f/7.1";
        break;
      case 80:
        v5 = "PCM/48000/16/5.1.4";
        break;
      case 81:
        v5 = "PCM/48000/32f/5.1.4";
        break;
      case 82:
        v5 = "PCM/48000/16/7.1.2";
        break;
      case 83:
        v5 = "PCM/48000/32f/7.1.2";
        break;
      case 84:
        v5 = "PCM/48000/16/7.1.4";
        break;
      case 85:
        v5 = "ALAC/44100/20/2";
        break;
      case 86:
        v5 = "ALAC/48000/20/2";
        break;
      case 90:
        v5 = "AAC_LC/48000/7.1";
        break;
      case 93:
        v5 = "PCM/48000/16/9.1.6";
        break;
      case 94:
        v5 = "PCM/48000/32f/9.1.6";
        break;
      default:
        v6 = v4 - 33;
        if (v4 - 33) < 0x3C && ((0xDC01BEFFA000007uLL >> v6))
        {
          v5 = off_2784A4410[v6];
        }

        else
        {
          v5 = "";
          if (v4 == 75)
          {
            v5 = "MP3/48000/2";
          }
        }

        break;
    }

    CFStringAppendFormat(Mutable, 0, @"<APSAudioFormatDescription %p> Index %llu:%s", a1, *(a1 + 64), v5);
  }

  else
  {
    APSLogErrorAt(0);
  }

  return v3;
}

uint64_t audioFormat_Finalize(const void *a1)
{
  if (audioFormat_getCache_sOnce != -1)
  {
    dispatch_once_f(&audioFormat_getCache_sOnce, &audioFormat_getCache_sCache, audioFormat_initCache);
  }

  if (gLogCategory_APSAudioFormatDescription <= 30 && (gLogCategory_APSAudioFormatDescription != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  FigSimpleMutexLock();
  CFSetRemoveValue(qword_27D00C078, a1);

  return FigSimpleMutexUnlock();
}

CFMutableSetRef audioFormat_initCache(uint64_t *a1)
{
  *a1 = FigSimpleMutexCreate();
  v2 = *MEMORY[0x277CBECE8];
  memset(&v4, 0, 32);
  v4.equal = audioFormat_cacheEqual;
  v4.hash = audioFormat_Hash;
  result = CFSetCreateMutable(v2, 0, &v4);
  a1[1] = result;
  return result;
}

uint64_t APSAudioFormatDescriptionCreateWithAudioFormatIndex(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (audioFormat_getCache_sOnce != -1)
  {
    dispatch_once_f(&audioFormat_getCache_sOnce, &audioFormat_getCache_sCache, audioFormat_initCache);
  }

  v18 = 0u;
  v19 = 0u;
  value = 0u;
  v17 = 0u;
  if (!a4)
  {
    APSLogErrorAt(0);
    return 4294954516;
  }

  v20 = a2;
  v6 = APAudioFormatIndexToASBD(a2, &v17);
  if (v6)
  {
    v8 = v6;
    goto LABEL_25;
  }

  v7 = a2 - 2;
  if ((a2 - 2) >= 0x5D)
  {
    DWORD2(v19) = -65536;
    v8 = 4294960561;
    goto LABEL_24;
  }

  v8 = dword_22234D7DC[v7];
  DWORD2(v19) = dword_22234D950[v7];
  if (v8)
  {
LABEL_24:
    v6 = v8;
LABEL_25:
    APSLogErrorAt(v6);
    return v8;
  }

  FigCFDictionaryGetBooleanIfPresent();
  if (FigCFDictionaryGetInt32IfPresent())
  {
    LODWORD(v18) = 0;
  }

  if (FigCFDictionaryGetInt32IfPresent())
  {
    DWORD1(v18) = 0;
  }

  if (FigCFDictionaryGetInt32IfPresent())
  {
    DWORD2(v18) = 0;
  }

  if (FigCFDictionaryGetInt32IfPresent())
  {
    LODWORD(v19) = 0;
  }

  FigSimpleMutexLock();
  v9 = CFSetGetValue(qword_27D00C078, &value);
  if (!v9 || (v10 = CFRetain(v9)) == 0)
  {
    if (APSAudioFormatDescriptionGetTypeID_sInitOnce != -1)
    {
      dispatch_once_f(&APSAudioFormatDescriptionGetTypeID_sInitOnce, &APSAudioFormatDescriptionGetTypeID_sTypeID, audioFormat_getTypeID);
    }

    Instance = _CFRuntimeCreateInstance();
    if (!Instance)
    {
      APSLogErrorAt(0);
      v8 = FigSignalErrorAtGM();
      goto LABEL_22;
    }

    v10 = Instance;
    v12 = v17;
    v13 = v18;
    v14 = v19;
    *(Instance + 64) = v20;
    *(Instance + 32) = v13;
    *(Instance + 48) = v14;
    *(Instance + 16) = v12;
    CFSetAddValue(qword_27D00C078, Instance);
  }

  v8 = 0;
  *a4 = v10;
LABEL_22:
  FigSimpleMutexUnlock();
  return v8;
}

uint64_t APSAudioFormatDescriptionCreateWithASBD(const __CFAllocator *a1, _DWORD *a2, int a3, CFTypeRef *a4)
{
  v13 = 0;
  cf = 0;
  if (!a4)
  {
    APSLogErrorAt(0);
    return 4294954516;
  }

  v7 = ASBDToAPAudioFormatIndex(a2, a3, &v13);
  if (!v7)
  {
    Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (a2[4] && (v9 = FigCFDictionarySetInt32(), v9))
    {
      v11 = v9;
    }

    else if (a2[5] && (v9 = FigCFDictionarySetInt32(), v9))
    {
      v11 = v9;
    }

    else if (a2[6] && (v9 = FigCFDictionarySetInt32(), v9))
    {
      v11 = v9;
    }

    else
    {
      if (!a2[8] || (v9 = FigCFDictionarySetInt32(), !v9))
      {
        v10 = APSAudioFormatDescriptionCreateWithAudioFormatIndex(a1, v13, Mutable, &cf);
        v11 = v10;
        if (v10)
        {
          APSLogErrorAt(v10);
          if (cf)
          {
            CFRelease(cf);
          }
        }

        else
        {
          *a4 = cf;
          cf = 0;
        }

        goto LABEL_13;
      }

      v11 = v9;
    }

    APSLogErrorAt(v9);
LABEL_13:
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    return v11;
  }

  v11 = v7;
  APSLogErrorAt(v7);
  if (gLogCategory_APSAudioFormatDescription <= 50 && (gLogCategory_APSAudioFormatDescription != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  return v11;
}

uint64_t APSAudioFormatDescriptionCreateWithFigEndpointStreamAudioFormatDescription(const __CFAllocator *a1, uint64_t a2, CFTypeRef *a3)
{
  if (a2 && a3)
  {
    ASBD = FigEndpointStreamAudioFormatDescriptionGetASBD();
    ChannelLayoutTag = FigEndpointStreamAudioFormatDescriptionGetChannelLayoutTag();
    v7 = *ASBD;
    v8 = *(ASBD + 16);
    v13 = *(ASBD + 32);
    v12[0] = v7;
    v12[1] = v8;
    v9 = APSAudioFormatDescriptionCreateWithASBD(a1, v12, ChannelLayoutTag, a3);
    v10 = v9;
    if (v9)
    {
      APSLogErrorAt(v9);
    }
  }

  else
  {
    APSLogErrorAt(0);
    return 4294954516;
  }

  return v10;
}

uint64_t APSAudioFormatDescriptionCreateWithCMFormatDescription(const __CFAllocator *a1, CMAudioFormatDescriptionRef desc, void *a3)
{
  v17 = 0;
  sizeOut = 0;
  if (desc && a3)
  {
    RichestDecodableFormat = CMAudioFormatDescriptionGetRichestDecodableFormat(desc);
    if (!RichestDecodableFormat)
    {
      RichestDecodableFormat = CMAudioFormatDescriptionGetStreamBasicDescription(desc);
    }

    ChannelLayout = CMAudioFormatDescriptionGetChannelLayout(desc, &sizeOut);
    if (ChannelLayout)
    {
      mChannelLayoutTag = ChannelLayout->mChannelLayoutTag;
    }

    else
    {
      mChannelLayoutTag = -65536;
    }

    v9 = *&RichestDecodableFormat->mASBD.mSampleRate;
    v10 = *&RichestDecodableFormat->mASBD.mBytesPerPacket;
    v15 = *&RichestDecodableFormat->mASBD.mBitsPerChannel;
    v14[0] = v9;
    v14[1] = v10;
    v11 = APSAudioFormatDescriptionCreateWithASBD(a1, v14, mChannelLayoutTag, &v17);
    v12 = v11;
    if (v11)
    {
      APSLogErrorAt(v11);
      if (v17)
      {
        CFRelease(v17);
      }
    }

    else
    {
      *a3 = v17;
    }
  }

  else
  {
    APSLogErrorAt(0);
    return 4294954516;
  }

  return v12;
}

CFStringRef APSAudioFormatDescriptionCopyDebugString(uint64_t a1, CFStringRef *a2)
{
  if (a2 && a1)
  {
    v4 = *(a1 + 64);
    v5 = "PCM/24000/16/1";
    switch(v4)
    {
      case 2:
        v5 = "PCM/8000/16/1";
        break;
      case 3:
        v5 = "PCM/8000/16/2";
        break;
      case 4:
        v5 = "PCM/16000/16/1";
        break;
      case 5:
        v5 = "PCM/16000/16/2";
        break;
      case 6:
        break;
      case 7:
        v5 = "PCM/24000/16/2";
        break;
      case 8:
        v5 = "PCM/32000/16/1";
        break;
      case 9:
        v5 = "PCM/32000/16/2";
        break;
      case 10:
        v5 = "PCM/44100/16/1";
        break;
      case 11:
        v5 = "PCM/44100/16/2";
        break;
      case 12:
        v5 = "PCM/44100/24/1";
        break;
      case 13:
        v5 = "PCM/44100/24/2";
        break;
      case 14:
        v5 = "PCM/48000/16/1";
        break;
      case 15:
        v5 = "PCM/48000/16/2";
        break;
      case 16:
        v5 = "PCM/48000/24/1";
        break;
      case 17:
        v5 = "PCM/48000/24/2";
        break;
      case 18:
        v5 = "ALAC/44100/16/2";
        break;
      case 19:
        v5 = "ALAC/44100/24/2";
        break;
      case 20:
        v5 = "ALAC/48000/16/2";
        break;
      case 21:
        v5 = "ALAC/48000/24/2";
        break;
      case 22:
        v5 = "AAC-LC/44100/2";
        break;
      case 23:
        v5 = "AAC-LC/48000/2";
        break;
      case 24:
        v5 = "AAC-ELD/44100/2";
        break;
      case 25:
        v5 = "AAC-ELD/48000/2";
        break;
      case 26:
        v5 = "AAC-ELD/16000/1";
        break;
      case 27:
        v5 = "AAC-ELD/24000/1";
        break;
      case 28:
        v5 = "OPUS/16000/1";
        break;
      case 29:
        v5 = "OPUS/24000/1";
        break;
      case 30:
        v5 = "OPUS/48000/1";
        break;
      case 31:
        v5 = "AAC-ELD/44100/1";
        break;
      case 32:
        v5 = "AAC-ELD/48000/1";
        break;
      case 38:
        v5 = "PCM/48000/16/5.1.2";
        break;
      case 39:
        v5 = "AAC_LC/48000/5.1";
        break;
      case 40:
        v5 = "AAC_LC/48000/5.1.2";
        break;
      case 41:
        v5 = "AAC_ELD/48000/5.1";
        break;
      case 42:
        v5 = "AAC_ELD/48000/5.1.2";
        break;
      case 43:
        v5 = "AAC-ELD/32000/1";
        break;
      case 44:
        v5 = "PCM/48000/16/5.1";
        break;
      case 45:
        v5 = "PCM/48000/32f/1";
        break;
      case 46:
        v5 = "PCM/48000/32f/2";
        break;
      case 47:
        v5 = "PCM/48000/32f/5.1";
        break;
      case 48:
        v5 = "PCM/48000/32f/5.1.2";
        break;
      case 49:
        v5 = "DDPLUS/48000/2";
        break;
      case 50:
        v5 = "DDPLUS/48000/5.1";
        break;
      case 51:
        v5 = "DDPLUS/48000/5.1.2";
        break;
      case 52:
        v5 = "DDPLUS/48000/7.1.4";
        break;
      case 53:
        v5 = "DDPLUS/48000/9.1.6";
        break;
      case 54:
        v5 = "QAAC/48000/2";
        break;
      case 55:
        v5 = "QAAC/48000/5.1";
        break;
      case 56:
        v5 = "QAAC/48000/5.1.2";
        break;
      case 57:
        v5 = "QAACHE/48000/2";
        break;
      case 69:
        v5 = "PCM/48000/32f/7.1.4";
        break;
      case 78:
        v5 = "PCM/48000/16/7.1";
        break;
      case 79:
        v5 = "PCM/48000/32f/7.1";
        break;
      case 80:
        v5 = "PCM/48000/16/5.1.4";
        break;
      case 81:
        v5 = "PCM/48000/32f/5.1.4";
        break;
      case 82:
        v5 = "PCM/48000/16/7.1.2";
        break;
      case 83:
        v5 = "PCM/48000/32f/7.1.2";
        break;
      case 84:
        v5 = "PCM/48000/16/7.1.4";
        break;
      case 85:
        v5 = "ALAC/44100/20/2";
        break;
      case 86:
        v5 = "ALAC/48000/20/2";
        break;
      case 90:
        v5 = "AAC_LC/48000/7.1";
        break;
      case 93:
        v5 = "PCM/48000/16/9.1.6";
        break;
      case 94:
        v5 = "PCM/48000/32f/9.1.6";
        break;
      default:
        v6 = v4 - 33;
        if (v4 - 33) < 0x3C && ((0xDC01BEFFA000007uLL >> v6))
        {
          v5 = off_2784A4410[v6];
        }

        else if (v4 == 75)
        {
          v5 = "MP3/48000/2";
        }

        else
        {
          v5 = "";
        }

        break;
    }

    result = CFStringCreateWithCString(*MEMORY[0x277CBECE8], v5, 0x8000100u);
    *a2 = result;
  }

  else
  {

    return APSLogErrorAt(0);
  }

  return result;
}

uint64_t APSAudioFormatDescriptionGetASBD(uint64_t a1)
{
  if (a1)
  {
    return a1 + 16;
  }

  APSLogErrorAt(a1);
  return 0;
}

uint64_t APSAudioFormatDescriptionGetChannelLayoutTag(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 56);
  }

  APSLogErrorAt(a1);
  return 4294901760;
}

uint64_t APSAudioFormatDescriptionGetAudioFormatIndex(uint64_t result)
{
  if (result)
  {
    return *(result + 64);
  }

  return result;
}

uint64_t APSAudioFormatDescriptionGetLegacyFormatMask(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 64);
    if (v1 >= 0x40)
    {
      return 0;
    }

    else
    {
      return 1 << v1;
    }
  }

  else
  {
    APSLogErrorAt(a1);
    return 0;
  }
}

double APSAudioFormatDescriptionGetSampleRate(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 16);
  }

  APSLogErrorAt(a1);
  return 0.0;
}

uint64_t APSAudioFormatDescriptionGetCompressionType(uint64_t a1)
{
  if (!a1)
  {
    APSLogErrorAt(a1);
    return 0;
  }

  result = 0;
  v3 = *(a1 + 64);
  v4 = 1;
  if (v3 >= 0x40)
  {
    v5 = 0;
  }

  else
  {
    v5 = 1 << v3;
  }

  if (v5 > 0x7FFFFFFFFFLL)
  {
    if (v5 > 0x7FFFFFFFFFFFFLL)
    {
      if (v5 > 0xFFFFFFFFFFFFFFLL)
      {
        if (v5 <= 0xFFFFFFFFFFFFFFFLL)
        {
          if (v5 == 0x100000000000000)
          {
            return 1902207331;
          }

          if (v5 != 0x200000000000000 && v5 != 0x400000000000000)
          {
            return result;
          }

          return 1902207848;
        }

        if (v5 == 0x1000000000000000)
        {
          return 1902207848;
        }

        if (v5 == 0x2000000000000000)
        {
          return 1902928227;
        }

        v8 = 0x4000000000000000;
        goto LABEL_77;
      }

      if (v5 > 0x1FFFFFFFFFFFFFLL)
      {
        if (v5 != 0x20000000000000)
        {
          if (v5 != 0x40000000000000)
          {
            v6 = 0x80000000000000;
LABEL_48:
            if (v5 != v6)
            {
              return result;
            }

            return 1902207331;
          }

          return 1902207331;
        }

        return 128;
      }

      if (v5 == 0x8000000000000)
      {
        return 128;
      }

      v8 = 0x10000000000000;
LABEL_77:
      if (v5 != v8)
      {
        return result;
      }

      return 128;
    }

    if (v5 > 0x3FFFFFFFFFFFLL)
    {
      if (v5 > 0xFFFFFFFFFFFFLL)
      {
        if (v5 == 0x1000000000000)
        {
          return v4;
        }

        if (v5 == 0x2000000000000)
        {
          return 128;
        }

        v8 = 0x4000000000000;
        goto LABEL_77;
      }

      if (v5 == 0x400000000000)
      {
        return v4;
      }

      v7 = 0x800000000000;
    }

    else
    {
      if (v5 <= 0x1FFFFFFFFFFLL)
      {
        if (v5 == 0x8000000000 || v5 == 0x10000000000)
        {
          return 4;
        }

        return result;
      }

      if (v5 == 0x20000000000 || v5 == 0x40000000000)
      {
        return 8;
      }

      v7 = 0x200000000000;
    }

LABEL_70:
    if (v5 != v7)
    {
      return result;
    }

    return v4;
  }

  if (v5 < 0x80000)
  {
    if (v5 > 2047)
    {
      if (v5 >= 0x8000)
      {
        if (v5 == 0x8000 || v5 == 0x20000)
        {
          return v4;
        }

        if (v5 != 0x40000)
        {
          return result;
        }

        return 2;
      }

      if (v5 == 2048 || v5 == 0x2000)
      {
        return v4;
      }
    }

    else
    {
      if (v5 <= 31)
      {
        if (v5 != 0x8000000000000000)
        {
          if (v5 != 8)
          {
            return result;
          }

          return v4;
        }

        return 1902207331;
      }

      if (v5 == 32 || v5 == 128 || v5 == 512)
      {
        return v4;
      }
    }
  }

  else
  {
    if (v5 > 0xFFFFFF)
    {
      if (v5 <= 0x3FFFFFFFFLL)
      {
        if (v5 != 0x1000000 && v5 != 0x2000000)
        {
          v6 = 0x200000000;
          goto LABEL_48;
        }

        return 8;
      }

      if (v5 != 0x400000000 && v5 != 0x800000000)
      {
        v7 = 0x4000000000;
        goto LABEL_70;
      }

      return 1902207331;
    }

    if (v5 >= 0x200000)
    {
      if (v5 != 0x200000)
      {
        if (v5 != 0x400000 && v5 != 0x800000)
        {
          return result;
        }

        return 4;
      }

      return 2;
    }

    if (v5 == 0x80000 || v5 == 0x100000)
    {
      return 2;
    }
  }

  return result;
}
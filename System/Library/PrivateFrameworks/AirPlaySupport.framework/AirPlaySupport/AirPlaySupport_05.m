void rtDispatcher_signalFinalizer(const void *a1)
{
  v2 = 0;
  v3 = 0;
  while (APSAtomicMessageQueueReadMessage(a1, &v2))
  {
    v2(v3);
  }

  CFRelease(a1);
}

uint64_t rtDispatcher_signalHandler(uint64_t a1)
{
  v3 = 0;
  for (i = 0; ; v3(i))
  {
    result = APSAtomicMessageQueueReadMessage(a1, &v3);
    if (!result)
    {
      break;
    }
  }

  return result;
}

uint64_t APSRealTimeDispatcherAsync(uint64_t result, uint64_t a2, uint64_t a3)
{
  v6[0] = a2;
  v6[1] = a3;
  if (a2)
  {
    v3 = result;
    result = APSAtomicMessageQueueSendMessage(*(result + 24), v6);
    v4 = *(*(v3 + 32) + 16);
    v5 = 1;
    atomic_compare_exchange_strong_explicit(v4 + 10, &v5, 2u, memory_order_release, memory_order_relaxed);
    if (v5 == 1)
    {

      return caulk::concurrent::messenger::enqueue((v4 + 6), v4);
    }
  }

  return result;
}

uint64_t APSRTPPassThroughJitterBufferAcquireRelinquishedNode(uint64_t a1, void *a2)
{
  v2 = 4294895295;
  if (a1 && a2)
  {
    _X0 = 0;
    _X1 = 0;
    v2 = 4294895294;
    *a2 = 0;
    __asm { CASPAL          X0, X1, X0, X1, [X8] }

    while (1)
    {
      v12 = _X0;
      if (!_X0)
      {
        break;
      }

      _X2 = *_X0;
      _X1 = 0;
      __asm { CASPAL          X0, X1, X2, X3, [X9] }

      if (_X0 == v12)
      {
        v15 = v12;
        goto LABEL_15;
      }
    }

    while (1)
    {
      v16 = atomic_load((a1 + 116));
      if (!v16)
      {
        atomic_compare_exchange_strong((a1 + 116), &v16, 1u);
        if (!v16)
        {
          break;
        }
      }

      pthread_yield_np();
    }

    v17 = *(a1 + 200);
    v15 = *v17;
    if (*v17 != v17)
    {
      v19 = *v15;
      v18 = v15[1];
      *(v19 + 8) = v18;
      *v18 = v19;
      atomic_store(0, (a1 + 116));
      atomic_fetch_add((a1 + 112), 0xFFFFFFFF);
LABEL_15:
      v25 = v15 + 2;
      *(v15 + 13) = 0;
      *(v15 + 14) = 0;
      if (gLogCategory_APSRTPPassThroughJitterBuffer <= 30 && (gLogCategory_APSRTPPassThroughJitterBuffer != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v2 = 0;
      *a2 = v25;
      return v2;
    }

    _X2 = 0;
    atomic_store(0, (a1 + 116));
    _X3 = 0;
    __asm { CASPAL          X2, X3, X2, X3, [X8] }

    while (_X2)
    {
      v15 = _X2;
      _X4 = *_X2;
      _X3 = 0;
      __asm { CASPAL          X2, X3, X4, X5, [X9] }

      if (_X2 == v15)
      {
        goto LABEL_15;
      }
    }

    if (gLogCategory_APSRTPPassThroughJitterBuffer <= 30 && (gLogCategory_APSRTPPassThroughJitterBuffer != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

  return v2;
}

uint64_t APSRTPPassThroughJitterBufferRelinquishNode(uint64_t a1, uint64_t a2)
{
  result = 4294895295;
  if (a1 && a2)
  {
    if (gLogCategory_APSRTPPassThroughJitterBuffer <= 30 && (gLogCategory_APSRTPPassThroughJitterBuffer != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    _X0 = 0;
    _X1 = 0;
    _X2 = (a2 - 16);
    __asm { CASPAL          X0, X1, X0, X1, [X8] }

    *(a2 - 8) = 0;
    do
    {
      *_X2 = _X0;
      _X5 = 0;
      __asm { CASPAL          X4, X5, X2, X3, [X8] }

      _ZF = _X4 == _X0;
      _X0 = _X4;
    }

    while (!_ZF);
    return 0;
  }

  return result;
}

uint64_t APSRTPPassThroughJitterBufferInsertNode(uint64_t a1, uint64_t a2)
{
  result = 4294895295;
  if (a1 && a2)
  {
    if (gLogCategory_APSRTPPassThroughJitterBuffer <= 30 && (gLogCategory_APSRTPPassThroughJitterBuffer != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v5 = *(*a2 + 4);
    v6 = a1 + 224;
    v7 = atomic_load((a1 + 216));
    do
    {
      v8 = (v7 & 0x4000000000000000) >> 62;
      if ((v7 & 0x4000000000000000) != 0)
      {
        v9 = v7 >> 31;
      }

      else
      {
        LODWORD(v9) = v7;
      }

      if ((v7 & 0x4000000000000000) != 0)
      {
        LODWORD(v10) = v7;
      }

      else
      {
        v10 = v7 >> 31;
      }

      v11 = 31;
      v12 = v5;
      while (1)
      {
        v13 = v12 % 0x1F;
        if ((v9 & (1 << v13)) == 0)
        {
          break;
        }

        if (*(v6 + 124 * v8 + 4 * v13) == v5)
        {
LABEL_36:
          APSRTPPassThroughJitterBufferRelinquishNode(a1, a2);
          return 0;
        }

        v12 = v13 + 1;
        if (!--v11)
        {
          v13 = -1;
          break;
        }
      }

      v14 = 31;
      v15 = v5;
      do
      {
        v16 = v15 % 0x1F;
        if ((v10 & (1 << v16)) == 0)
        {
          break;
        }

        if (*(v6 + 124 * (v8 ^ 1) + 4 * v16) == v5)
        {
          goto LABEL_36;
        }

        v15 = v16 + 1;
        --v14;
      }

      while (v14);
      v17 = v7;
      if (v13 == -1)
      {
        if ((v7 & 0x4000000000000000) != 0)
        {
          v18 = 0xFFFFFFFF80000000;
        }

        else
        {
          v18 = 0xC00000007FFFFFFFLL;
        }

        v17 = (v7 & 0xBFFFFFFFFFFFFFFFLL | (((v8 ^ 1) & 1) << 62)) & v18;
        v13 = v5 % 0x1F;
        LODWORD(v8) = (v7 & 0x4000000000000000) == 0;
      }

      v19 = (1 << v13);
      if (v8)
      {
        v19 = (1 << v13) << 31;
      }

      v20 = v7;
      atomic_compare_exchange_strong((a1 + 216), &v20, v19 | v17);
      _ZF = v20 == v7;
      v7 = v20;
    }

    while (!_ZF);
    _X4 = 0;
    _X5 = 0;
    *(v6 + 124 * ((v17 >> 62) & 1) + 4 * v13) = v5;
    _X2 = (a2 - 16);
    __asm { CASPAL          X4, X5, X4, X5, [X8] }

    *(a2 - 8) = 0;
    do
    {
      result = 0;
      *_X2 = _X4;
      _X7 = 0;
      __asm { CASPAL          X6, X7, X2, X3, [X8] }

      _ZF = _X6 == _X4;
      _X4 = _X6;
    }

    while (!_ZF);
  }

  return result;
}

uint64_t APSRTPPassThroughJitterBufferAcquireLowestInsertedNode(uint64_t a1, uint64_t *a2)
{
  v4 = 4294895295;
  if (a1 && a2)
  {
    _X0 = 0;
    _X1 = 0;
    __asm { CASPAL          X0, X1, X0, X1, [X8] }

    if (_X0)
    {
      _X4 = 0;
      v13 = _X0;
      do
      {
        _X7 = 0;
        __asm { CASPAL          X6, X7, X4, X5, [X8] }

        v16 = _X6 == v13;
        if (_X6 != v13)
        {
          v13 = _X6;
        }
      }

      while (!v16 && v13);
      if (v13)
      {
        v17 = 0;
        do
        {
          v18 = v13;
          v13 = *v13;
          *v18 = v17;
          v17 = v18;
        }

        while (v13);
        do
        {
          while (1)
          {
            v19 = v18;
            v18 = *v18;
            v20 = (v19 + 2);
            *v19 = 0;
            v19[1] = 0;
            do
            {
              v21 = atomic_load((a1 + 208));
              if ((v21 & 0x8000000000000000) == 0)
              {
                break;
              }

              v22 = *(*v20 + 4);
              if (v22 - v21 < 0)
              {
                v28 = 1;
                goto LABEL_29;
              }

              if (v22 - ((HIDWORD(v21) & 0x7FFFFFFF) + v21) < 0)
              {
                break;
              }

              v23 = v21;
              atomic_compare_exchange_strong((a1 + 208), &v23, v21 & 0x7FFFFFFFFFFFFFFFLL);
            }

            while (v23 != v21);
            while (1)
            {
              v24 = atomic_load((a1 + 116));
              if (!v24)
              {
                atomic_compare_exchange_strong((a1 + 116), &v24, 1u);
                if (!v24)
                {
                  break;
                }
              }

              atomic_fetch_add((a1 + 120), 1u);
              pthread_yield_np();
            }

            v25 = *(a1 + 200);
            while (1)
            {
              v25 = v25[1];
              if (v25 == *(a1 + 200))
              {
                break;
              }

              v26 = *(v25[2] + 4);
              v27 = *(*v20 + 4);
              if (v26 - v27 <= 0)
              {
                if (v26 == v27)
                {
                  v28 = 1;
                  goto LABEL_27;
                }

                break;
              }
            }

            v28 = 0;
            v29 = *v25;
            *v19 = *v25;
            v19[1] = v25;
            *(v29 + 8) = v19;
            *v19[1] = v19;
LABEL_27:
            atomic_store(0, (a1 + 116));
LABEL_29:
            if (gLogCategory_APSRTPPassThroughJitterBuffer <= 30 && (gLogCategory_APSRTPPassThroughJitterBuffer != -1 || _LogCategory_Initialize()))
            {
              LogPrintF();
            }

            if ((v28 & 1) == 0)
            {
              break;
            }

            APSRTPPassThroughJitterBufferRelinquishNode(a1, v20);
            if (!v18)
            {
              goto LABEL_37;
            }
          }

          atomic_fetch_add((a1 + 112), 1u);
        }

        while (v18);
      }
    }

LABEL_37:
    while (1)
    {
      v30 = atomic_load((a1 + 116));
      if (!v30)
      {
        atomic_compare_exchange_strong((a1 + 116), &v30, 1u);
        if (!v30)
        {
          break;
        }
      }

      atomic_fetch_add((a1 + 120), 1u);
      pthread_yield_np();
    }

    v31 = atomic_load((a1 + 208));
    v32 = *(a1 + 200);
    v33 = *v32;
    if (*v32 == v32)
    {
LABEL_44:
      *a2 = 0;
      v4 = 4294895294;
    }

    else
    {
      while (1)
      {
        v35 = *v33;
        v34 = (v33 + 2);
        *v32 = v35;
        v35[1] = v32;
        *a2 = v34;
        atomic_fetch_add((a1 + 112), 0xFFFFFFFF);
        if ((v31 & 0x8000000000000000) == 0)
        {
          break;
        }

        v36 = *(*v34 + 4);
        if (v36 - v31 >= 0)
        {
          if (v36 - ((HIDWORD(v31) & 0x7FFFFFFF) + v31) >= 0)
          {
            v4 = 0;
            atomic_compare_exchange_strong((a1 + 208), &v37, v31 & 0x7FFFFFFFFFFFFFFFLL);
            goto LABEL_48;
          }

          break;
        }

        APSRTPPassThroughJitterBufferRelinquishNode(a1, v34);
        v31 = atomic_load((a1 + 208));
        v32 = *(a1 + 200);
        v33 = *v32;
        if (*v32 == v32)
        {
          goto LABEL_44;
        }
      }

      v4 = 0;
    }

LABEL_48:
    atomic_store(0, (a1 + 116));
  }

  if (gLogCategory_APSRTPPassThroughJitterBuffer <= 30 && (gLogCategory_APSRTPPassThroughJitterBuffer != -1 || _LogCategory_Initialize()))
  {
    if (a2)
    {
      v38 = *a2;
    }

    LogPrintF();
  }

  return v4;
}

uint64_t APSRTPPassThroughJitterBufferGetInsertedNodeCount(uint64_t result)
{
  if (result)
  {
    return atomic_load((result + 112));
  }

  return result;
}

uint64_t APSRTPPassThroughJitterBufferFlush(uint64_t a1, unsigned int a2, int a3)
{
  v3 = 4294895295;
  if (a1)
  {
    if ((a2 - a3) >= 1)
    {
      APSLogErrorAt(0);
    }

    else
    {
      if (gLogCategory_APSRTPPassThroughJitterBuffer <= 30 && (gLogCategory_APSRTPPassThroughJitterBuffer != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v3 = 0;
      atomic_store(a2 | (((a3 - a2) | 0x80000000) << 32), (a1 + 208));
    }
  }

  return v3;
}

unint64_t APSRTPPassThroughJitterBufferIsFlushing(unint64_t result)
{
  if (result)
  {
    v1 = atomic_load((result + 208));
    return v1 >> 63;
  }

  return result;
}

uint64_t APSRTPPassThroughJitterBufferCreate(uint64_t a1, int a2, uint64_t a3, const void *a4, uint64_t *a5)
{
  if (a2 <= 0)
  {
    v35 = 4294895295;
LABEL_33:
    APSLogErrorAt(0);
    return v35;
  }

  if (!a3)
  {
    v35 = 4294895295;
    goto LABEL_33;
  }

  if (!a5)
  {
    v35 = 4294895295;
    goto LABEL_33;
  }

  v8 = a2;
  if (APSRTPPassThroughJitterBufferGetTypeID_sRegisterAPSRTPPassThroughJitterBufferOnce != -1)
  {
    dispatch_once_f(&APSRTPPassThroughJitterBufferGetTypeID_sRegisterAPSRTPPassThroughJitterBufferOnce, 0, registerAPSRTPPassThroughJitterBuffer);
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    APSLogErrorAt(0);
    return 4294895296;
  }

  v10 = Instance;
  *(Instance + 16) = v8;
  *(Instance + 24) = a3;
  if (a4)
  {
    v11 = CFRetain(a4);
    v8 = *(v10 + 16);
  }

  else
  {
    v11 = 0;
  }

  *(v10 + 32) = v11;
  v12 = MEMORY[0x223DB3470](a4, 72 * v8, 0x107004068D07E41, 0);
  *(v10 + 40) = v12;
  if (!v12)
  {
    APSLogErrorAt(0);
    if (gLogCategory_APSRTPPassThroughJitterBuffer > 90 || gLogCategory_APSRTPPassThroughJitterBuffer == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_44;
    }

LABEL_40:
    LogPrintF();
LABEL_44:
    CFRelease(v10);
    return 4294895296;
  }

  v13 = MEMORY[0x223DB3470](a4, *(v10 + 24) * *(v10 + 16), 0x100004077774924, 0);
  *(v10 + 48) = v13;
  if (!v13)
  {
    APSLogErrorAt(0);
    if (gLogCategory_APSRTPPassThroughJitterBuffer > 90 || gLogCategory_APSRTPPassThroughJitterBuffer == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_44;
    }

    goto LABEL_40;
  }

  v14 = *(v10 + 16);
  _X2 = *(v10 + 40);
  if (v14 != 1)
  {
    v16 = *(v10 + 24);
    v17 = _X2 + 72;
    v18 = (v14 - 1);
    do
    {
      *(v17 - 32) = v13;
      *(v17 - 72) = v17;
      v13 += v16;
      v17 += 72;
      --v18;
    }

    while (v18);
  }

  _X4 = 0;
  v20 = (_X2 + 72 * (v14 - 1));
  v20[5] = v13;
  *v20 = 0;
  v21 = *(v10 + 96);
  do
  {
    _X7 = *(v10 + 104);
    __asm { CASPAL          X6, X7, X4, X5, [X9] }

    _ZF = _X6 == v21;
    v21 = _X6;
  }

  while (!_ZF);
  _X0 = 0;
  v29 = *(v10 + 80);
  do
  {
    _X7 = *(v10 + 88);
    __asm { CASPAL          X6, X7, X0, X1, [X9] }

    _ZF = _X6 == v29;
    v29 = _X6;
  }

  while (!_ZF);
  v32 = *(v10 + 64);
  do
  {
    _X5 = *(v10 + 72);
    __asm { CASPAL          X4, X5, X2, X3, [X9] }

    _ZF = _X4 == v32;
    v32 = _X4;
  }

  while (!_ZF);
  *(v10 + 128) = v10 + 128;
  *(v10 + 136) = v10 + 128;
  *(v10 + 200) = v10 + 128;
  atomic_store(0, (v10 + 112));
  if (gLogCategory_APSRTPPassThroughJitterBuffer > 50)
  {
    goto LABEL_28;
  }

  if (gLogCategory_APSRTPPassThroughJitterBuffer == -1)
  {
    if (!_LogCategory_Initialize())
    {
      goto LABEL_28;
    }

    v37 = *(v10 + 16);
  }

  v38 = *(v10 + 24);
  LogPrintF();
LABEL_28:
  v35 = 0;
  *a5 = v10;
  return v35;
}

uint64_t registerAPSRTPPassThroughJitterBuffer()
{
  sAPSRTPPassThroughJitterBufferClass = 0;
  unk_27D00BBF0 = "APSRTPPassThroughJitterBuffer";
  qword_27D00BBF8 = APSRTPPassThroughJitterBufferInit;
  unk_27D00BC00 = 0;
  qword_27D00BC08 = APSRTPPassThroughJitterBufferFinalize;
  unk_27D00BC10 = 0;
  qword_27D00BC18 = 0;
  unk_27D00BC20 = 0;
  qword_27D00BC28 = APSRTPPassThroughJitterBufferCopyDebugDesc;
  result = _CFRuntimeRegisterClass();
  sAPSRTPPassThroughJitterBufferID = result;
  return result;
}

__CFString *APSRTPPassThroughJitterBufferCopyDebugDesc(const void *a1)
{
  v1 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v1, 0);
  CFStringAppendFormat(Mutable, 0, @"APSRTPPassThroughJitterBuffer");
  return Mutable;
}

void APSRTPPassThroughJitterBufferFinalize(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    CFAllocatorDeallocate(*(a1 + 32), v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    CFAllocatorDeallocate(*(a1 + 32), v3);
  }

  v4 = *(a1 + 32);
  if (v4)
  {

    CFRelease(v4);
  }
}

double APSRTPPassThroughJitterBufferInit(_OWORD *a1)
{
  result = 0.0;
  a1[28] = 0u;
  a1[29] = 0u;
  a1[26] = 0u;
  a1[27] = 0u;
  a1[24] = 0u;
  a1[25] = 0u;
  a1[22] = 0u;
  a1[23] = 0u;
  a1[20] = 0u;
  a1[21] = 0u;
  a1[18] = 0u;
  a1[19] = 0u;
  a1[16] = 0u;
  a1[17] = 0u;
  a1[14] = 0u;
  a1[15] = 0u;
  a1[12] = 0u;
  a1[13] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t APSRTPPassThroughJitterBufferGetTypeID()
{
  if (APSRTPPassThroughJitterBufferGetTypeID_sRegisterAPSRTPPassThroughJitterBufferOnce != -1)
  {
    dispatch_once_f(&APSRTPPassThroughJitterBufferGetTypeID_sRegisterAPSRTPPassThroughJitterBufferOnce, 0, registerAPSRTPPassThroughJitterBuffer);
  }

  return sAPSRTPPassThroughJitterBufferID;
}

uint64_t APSClockDriftMonitorGetTypeID()
{
  if (gAPSClockDriftMonitorInitOnce != -1)
  {
    dispatch_once_f(&gAPSClockDriftMonitorInitOnce, 0, _APSClockDriftMonitorGetTypeID);
  }

  return gAPSClockDriftMonitorTypeID;
}

uint64_t _APSClockDriftMonitorGetTypeID()
{
  result = _CFRuntimeRegisterClass();
  gAPSClockDriftMonitorTypeID = result;
  return result;
}

void _APSClockDriftMonitorFinalize(uint64_t a1)
{
  if (gLogCategory_APSClockDriftMonitor <= 30 && (gLogCategory_APSClockDriftMonitor != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  APSClockDriftMonitorSuspend(a1);
  v2 = *(a1 + 32);
  FigSimpleMutexDestroy();
  v3 = *(a1 + 16);
  if (v3)
  {
    dispatch_source_cancel(*(a1 + 16));
    dispatch_release(v3);
    *(a1 + 16) = 0;
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 40) = 0;
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 48) = 0;
  }

  v6 = *(a1 + 24);
  if (v6)
  {
    dispatch_release(v6);
    *(a1 + 24) = 0;
  }
}

uint64_t APSClockDriftMonitorSuspend(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 32);
    FigSimpleMutexLock();
    if (*(a1 + 136))
    {
      v3 = MEMORY[0x277CC0898];
      v4 = *MEMORY[0x277CC0898];
      *(a1 + 56) = *MEMORY[0x277CC0898];
      v5 = *(v3 + 16);
      *(a1 + 72) = v5;
      *(a1 + 80) = v4;
      *(a1 + 96) = v5;
      CMTimebaseRemoveTimerDispatchSource(*(a1 + 40), *(a1 + 16));
      *(a1 + 136) = 0;
    }

    v6 = *(a1 + 32);
    FigSimpleMutexUnlock();
    return 0;
  }

  else
  {
    APSLogErrorAt(0);
    return 4294960591;
  }
}

uint64_t APSClockDriftMonitorCreate(void *a1, void *a2, int64_t a3, uint64_t a4, CFTypeRef *a5)
{
  if (!a1 || !a2 || !a3 || !a4 || !a5)
  {
    APSLogErrorAt(0);
    return 4294960591;
  }

  if (gAPSClockDriftMonitorInitOnce != -1)
  {
    dispatch_once_f(&gAPSClockDriftMonitorInitOnce, 0, _APSClockDriftMonitorGetTypeID);
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    APSLogErrorAt(0);
    return 4294960568;
  }

  v11 = Instance;
  Instance[7] = 0u;
  Instance[8] = 0u;
  Instance[5] = 0u;
  Instance[6] = 0u;
  Instance[3] = 0u;
  Instance[4] = 0u;
  Instance[1] = 0u;
  Instance[2] = 0u;
  v12 = FigDispatchQueueCreateWithPriority();
  *(v11 + 3) = v12;
  if (!v12 || (v13 = FigSimpleMutexCreate(), (*(v11 + 4) = v13) == 0))
  {
    APSLogErrorAt(0);
    v21 = 4294960568;
LABEL_47:
    v34 = v11;
    goto LABEL_48;
  }

  v14 = CFGetTypeID(a1);
  if (v14 == CMClockGetTypeID())
  {
    v15 = CFGetTypeID(a2);
    if (v15 == CMClockGetTypeID())
    {
      v16 = *MEMORY[0x277CBECE8];
      v17 = CMTimebaseCreateWithSourceClock(*MEMORY[0x277CBECE8], a1, v11 + 5);
      if (v17)
      {
        v21 = v17;
        goto LABEL_60;
      }

      v18 = *(v11 + 5);
      CMClockGetTime(&immediateSourceTime, a1);
      v36 = *MEMORY[0x277CC08F0];
      *&timebaseTime.value = *MEMORY[0x277CC08F0];
      v19 = *(MEMORY[0x277CC08F0] + 16);
      timebaseTime.epoch = v19;
      v17 = CMTimebaseSetRateAndAnchorTime(v18, 1.0, &timebaseTime, &immediateSourceTime);
      if (v17)
      {
        v21 = v17;
        goto LABEL_60;
      }

      v17 = CMTimebaseCreateWithSourceClock(v16, a2, v11 + 6);
      if (v17)
      {
        v21 = v17;
        goto LABEL_60;
      }

      v20 = *(v11 + 6);
      CMClockGetTime(&immediateSourceTime, a2);
      *&timebaseTime.value = v36;
      timebaseTime.epoch = v19;
      v17 = CMTimebaseSetRateAndAnchorTime(v20, 1.0, &timebaseTime, &immediateSourceTime);
      if (v17)
      {
        v21 = v17;
LABEL_60:
        APSLogErrorAt(v17);
        goto LABEL_47;
      }

      goto LABEL_31;
    }
  }

  v22 = CFGetTypeID(a1);
  if (v22 == CMTimebaseGetTypeID())
  {
    v23 = CFGetTypeID(a2);
    if (v23 == CMTimebaseGetTypeID())
    {
      *(v11 + 5) = CFRetain(a1);
LABEL_30:
      *(v11 + 6) = CFRetain(a2);
      goto LABEL_31;
    }
  }

  v24 = CFGetTypeID(a1);
  if (v24 != CMTimebaseGetTypeID() || (v25 = CFGetTypeID(a2), v25 != CMClockGetTypeID()))
  {
    v27 = CFGetTypeID(a1);
    if (v27 != CMClockGetTypeID() || (v28 = CFGetTypeID(a2), v28 != CMTimebaseGetTypeID()))
    {
      if (gLogCategory_APSClockDriftMonitor <= 90 && (gLogCategory_APSClockDriftMonitor != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v21 = 4294960591;
      goto LABEL_47;
    }

    v17 = CMTimebaseCreateWithSourceClock(*MEMORY[0x277CBECE8], a1, v11 + 5);
    if (v17)
    {
      v21 = v17;
      goto LABEL_60;
    }

    v29 = *(v11 + 5);
    CMClockGetTime(&immediateSourceTime, a1);
    timebaseTime = **&MEMORY[0x277CC08F0];
    v17 = CMTimebaseSetRateAndAnchorTime(v29, 1.0, &timebaseTime, &immediateSourceTime);
    if (v17)
    {
      v21 = v17;
      goto LABEL_60;
    }

    goto LABEL_30;
  }

  *(v11 + 5) = CFRetain(a1);
  v17 = CMTimebaseCreateWithSourceClock(*MEMORY[0x277CBECE8], a2, v11 + 6);
  if (v17)
  {
    v21 = v17;
    goto LABEL_60;
  }

  v26 = *(v11 + 6);
  CMClockGetTime(&immediateSourceTime, a2);
  timebaseTime = **&MEMORY[0x277CC08F0];
  v17 = CMTimebaseSetRateAndAnchorTime(v26, 1.0, &timebaseTime, &immediateSourceTime);
  if (v17)
  {
    v21 = v17;
    goto LABEL_60;
  }

LABEL_31:
  v30 = FigCFWeakReferenceHolderCreateWithReferencedObject();
  v31 = dispatch_source_create(MEMORY[0x277D85D38], 0, 1uLL, *(v11 + 3));
  *(v11 + 2) = v31;
  if (v31)
  {
    v32 = v31;
    if (v30)
    {
      v33 = CFRetain(v30);
    }

    else
    {
      v33 = 0;
    }

    dispatch_set_context(v32, v33);
    dispatch_source_set_event_handler_f(*(v11 + 2), clockDriftMonitor_periodicallyTimer);
    dispatch_source_set_cancel_handler_f(*(v11 + 2), FigCFRelease_1717);
    dispatch_resume(*(v11 + 2));
    CMTimeMake(&immediateSourceTime, a3, 1000);
    *(v11 + 104) = immediateSourceTime;
    *(v11 + 16) = a4;
    if (gLogCategory_APSClockDriftMonitor <= 50 && (gLogCategory_APSClockDriftMonitor != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v21 = 0;
    *a5 = CFRetain(v11);
  }

  else
  {
    APSLogErrorAt(0);
    v21 = 4294960568;
  }

  CFRelease(v11);
  if (v30)
  {
    v34 = v30;
LABEL_48:
    CFRelease(v34);
  }

  return v21;
}

void FigCFRelease_1717(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

void clockDriftMonitor_periodicallyTimer()
{
  v0 = FigCFWeakReferenceHolderCopyReferencedObject();
  memset(&v19, 0, sizeof(v19));
  memset(&v18, 0, sizeof(v18));
  memset(&v17, 0, sizeof(v17));
  memset(&v16, 0, sizeof(v16));
  memset(&v15, 0, sizeof(v15));
  if (v0)
  {
    v1 = v0;
    v2 = *(v0 + 32);
    FigSimpleMutexLock();
    if (*(v1 + 136))
    {
      HostTimeClock = CMClockGetHostTimeClock();
      CMClockGetTime(&v18, HostTimeClock);
      v4 = CMClockGetHostTimeClock();
      v5 = *(v1 + 40);
      v13 = v18;
      CMSyncConvertTime(&lhs, &v13, v4, v5);
      v13 = *(v1 + 56);
      CMTimeSubtract(&v17, &lhs, &v13);
      v6 = CMClockGetHostTimeClock();
      v7 = *(v1 + 48);
      v13 = v18;
      CMSyncConvertTime(&lhs, &v13, v6, v7);
      v13 = *(v1 + 80);
      CMTimeSubtract(&v16, &lhs, &v13);
      lhs = v17;
      v13 = v16;
      CMTimeSubtract(&v15, &lhs, &v13);
      v13 = v15;
      CMTimeAbsoluteValue(&lhs, &v13);
      v13 = *(v1 + 104);
      if (CMTimeCompare(&lhs, &v13) < 1)
      {
        v9 = 0;
      }

      else
      {
        v8 = *MEMORY[0x277CBECE8];
        lhs = v15;
        v9 = CMTimeCopyAsDictionary(&lhs, v8);
        CMNotificationCenterGetDefaultLocalCenter();
        CMNotificationCenterPostNotification();
      }

      CMTimebaseGetTime(&lhs, *(v1 + 40));
      CMTimeMake(&v13, *(v1 + 128), 1000);
      CMTimeAdd(&v19, &lhs, &v13);
      v10 = *(v1 + 40);
      v11 = *(v1 + 16);
      lhs = v19;
      CMTimebaseSetTimerDispatchSourceNextFireTime(v10, v11, &lhs, 0);
    }

    else
    {
      v9 = 0;
    }

    v12 = *(v1 + 32);
    FigSimpleMutexUnlock();
    CFRelease(v1);
    if (v9)
    {
      CFRelease(v9);
    }
  }
}

uint64_t APSClockDriftMonitorResume(uint64_t a1)
{
  v14 = **&MEMORY[0x277CC0898];
  if (!a1)
  {
    APSLogErrorAt(0);
    return 4294960591;
  }

  v2 = *(a1 + 32);
  FigSimpleMutexLock();
  if (*(a1 + 136) || CMTimebaseGetRate(*(a1 + 40)) <= 0.0 || CMTimebaseGetRate(*(a1 + 48)) <= 0.0)
  {
    APSLogErrorAt(0);
    v9 = 4294960587;
    APSSignalErrorAt(4294960587);
    goto LABEL_8;
  }

  HostTimeClock = CMClockGetHostTimeClock();
  CMClockGetTime(&v14, HostTimeClock);
  v4 = CMClockGetHostTimeClock();
  v5 = *(a1 + 40);
  v12 = v14;
  CMSyncConvertTime(&v13, &v12, v4, v5);
  *(a1 + 56) = v13;
  v6 = CMClockGetHostTimeClock();
  v7 = *(a1 + 48);
  v12 = v14;
  CMSyncConvertTime(&v13, &v12, v6, v7);
  *(a1 + 80) = v13;
  v8 = CMTimebaseAddTimerDispatchSource(*(a1 + 40), *(a1 + 16));
  if (v8)
  {
    v9 = v8;
    goto LABEL_13;
  }

  v8 = CMTimebaseSetTimerDispatchSourceToFireImmediately(*(a1 + 40), *(a1 + 16));
  v9 = v8;
  if (v8)
  {
LABEL_13:
    APSLogErrorAt(v8);
    goto LABEL_8;
  }

  *(a1 + 136) = 1;
LABEL_8:
  v10 = *(a1 + 32);
  FigSimpleMutexUnlock();
  return v9;
}

uint64_t APSAudioIOAssertionTimingControllerGetTypeID()
{
  if (gAPSAudioIOAssertionTimingControllerInitOnce != -1)
  {
    dispatch_once_f(&gAPSAudioIOAssertionTimingControllerInitOnce, 0, _APSAudioIOAssertionTimingControllerGetTypeID);
  }

  return gAPSAudioIOAssertionTimingControllerTypeID;
}

uint64_t _APSAudioIOAssertionTimingControllerGetTypeID()
{
  result = _CFRuntimeRegisterClass();
  gAPSAudioIOAssertionTimingControllerTypeID = result;
  return result;
}

void _APSAudioIOAssertionTimingControllerFinalize(uint64_t a1)
{
  if (gLogCategory_APSAudioIOAssertionTimingController <= 50 && (gLogCategory_APSAudioIOAssertionTimingController != -1 || _LogCategory_Initialize()))
  {
    v7 = *(a1 + 16);
    LogPrintF();
  }

  v2 = *(a1 + 32);
  if (v2)
  {
    dispatch_source_cancel(v2);
    dispatch_sync_f(*(a1 + 24), a1, audioIOAssertionTimingController_releaseAndClearAssertion);
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    dispatch_release(v4);
  }

  v5 = *(a1 + 16);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(a1 + 40);
  if (v6)
  {

    CFRelease(v6);
  }
}

void audioIOAssertionTimingController_releaseAndClearAssertion(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    if (gLogCategory_APSAudioIOAssertionTimingController > 50)
    {
LABEL_7:
      CFRelease(v2);
      *(a1 + 40) = 0;
      return;
    }

    if (gLogCategory_APSAudioIOAssertionTimingController == -1)
    {
      if (!_LogCategory_Initialize())
      {
LABEL_6:
        v2 = *(a1 + 40);
        if (!v2)
        {
          return;
        }

        goto LABEL_7;
      }

      v3 = *(a1 + 40);
    }

    v4 = *(a1 + 16);
    LogPrintF();
    goto LABEL_6;
  }
}

uint64_t APSAudioIOAssertionTimingControllerCreate(__CFString *a1, CFTypeRef *a2)
{
  if (a2)
  {
    if (gAPSAudioIOAssertionTimingControllerInitOnce != -1)
    {
      dispatch_once_f(&gAPSAudioIOAssertionTimingControllerInitOnce, 0, _APSAudioIOAssertionTimingControllerGetTypeID);
    }

    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v5 = Instance;
      *(Instance + 16) = 0u;
      *(Instance + 32) = 0u;
      if (a1)
      {
        v6 = a1;
      }

      else
      {
        v6 = &stru_28358B348;
      }

      *(v5 + 16) = CFRetain(v6);
      v7 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
      v8 = dispatch_queue_create("APSAudioIOAssertionTimingController", v7);
      *(v5 + 24) = v8;
      if (v8 && (v9 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v8), (*(v5 + 32) = v9) != 0))
      {
        dispatch_source_set_timer(v9, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
        dispatch_set_context(*(v5 + 32), v5);
        dispatch_source_set_event_handler_f(*(v5 + 32), audioIOAssertionTimingController_releaseAndClearAssertion);
        dispatch_resume(*(v5 + 32));
        if (gLogCategory_APSAudioIOAssertionTimingController <= 50 && (gLogCategory_APSAudioIOAssertionTimingController != -1 || _LogCategory_Initialize()))
        {
          v12 = *(v5 + 16);
          LogPrintF();
        }

        v10 = 0;
        *a2 = CFRetain(v5);
      }

      else
      {
        APSLogErrorAt(0);
        v10 = 4294960568;
      }

      CFRelease(v5);
    }

    else
    {
      APSLogErrorAt(0);
      return 4294960568;
    }
  }

  else
  {
    APSLogErrorAt(0);
    return 4294960591;
  }

  return v10;
}

uint64_t APSAudioIOAssertionTimingControllerAssertUntilTime(uint64_t a1, uint64_t a2)
{
  context[0] = a1;
  context[1] = a2;
  if (a1)
  {
    v4 = 0;
    dispatch_sync_f(*(a1 + 24), context, audioIOAssertionTimingController_assertUntilTimeInternal);
    return v4;
  }

  else
  {
    APSLogErrorAt(0);
    return 4294960591;
  }
}

uint64_t audioIOAssertionTimingController_assertUntilTimeInternal(dispatch_time_t *a1)
{
  v2 = *a1;
  v3 = *(*a1 + 40);
  if (!a1[1])
  {
    if (!v3)
    {
      goto LABEL_15;
    }

    if (gLogCategory_APSAudioIOAssertionTimingController <= 50)
    {
      if (gLogCategory_APSAudioIOAssertionTimingController != -1)
      {
LABEL_10:
        v11 = *(v2 + 16);
        LogPrintF();
        v2 = *a1;
        goto LABEL_12;
      }

      v5 = _LogCategory_Initialize();
      v2 = *a1;
      if (v5)
      {
        v8 = *(v2 + 40);
        goto LABEL_10;
      }
    }

LABEL_12:
    v6 = *(v2 + 40);
    if (v6)
    {
      CFRelease(v6);
      *(*a1 + 40) = 0;
    }

    goto LABEL_15;
  }

  if (v3)
  {
    goto LABEL_15;
  }

  result = APSAudioIOAssertionCreate(*(v2 + 16), (*a1 + 40));
  if (!result)
  {
    if (gLogCategory_APSAudioIOAssertionTimingController > 50)
    {
LABEL_19:
      dispatch_source_set_timer(*(*a1 + 32), a1[1], 0xFFFFFFFFFFFFFFFFLL, 0);
      result = 0;
      goto LABEL_20;
    }

    if (gLogCategory_APSAudioIOAssertionTimingController != -1 || _LogCategory_Initialize())
    {
      v10 = *(*a1 + 16);
      v14 = *(*a1 + 40);
      LogPrintF();
    }

LABEL_15:
    if (gLogCategory_APSAudioIOAssertionTimingController <= 30 && (gLogCategory_APSAudioIOAssertionTimingController != -1 || _LogCategory_Initialize()))
    {
      v9 = *a1;
      v12 = *(*a1 + 16);
      LogPrintF();
    }

    goto LABEL_19;
  }

  if (gLogCategory_APSAudioIOAssertionTimingController <= 90)
  {
    v7 = result;
    if (gLogCategory_APSAudioIOAssertionTimingController != -1 || _LogCategory_Initialize())
    {
      v13 = *(*a1 + 16);
      LogPrintF();
    }

    result = v7;
  }

LABEL_20:
  *(a1 + 4) = result;
  return result;
}

uint64_t APSStallMonitorActivityGetTypeID()
{
  if (gAPSStallMonitorActivityInitOnce != -1)
  {
    dispatch_once_f(&gAPSStallMonitorActivityInitOnce, 0, _APSStallMonitorActivityGetTypeID);
  }

  return gAPSStallMonitorActivityTypeID;
}

uint64_t _APSStallMonitorActivityGetTypeID()
{
  result = _CFRuntimeRegisterClass();
  gAPSStallMonitorActivityTypeID = result;
  return result;
}

void _APSStallMonitorActivityFinalize(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v4[0] = *(a1 + 40);
    v4[1] = a1;
    dispatch_sync_f(*v2, v4, stallMonitor_deregisterActivity);
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    CFRelease(v3);
  }
}

uint64_t APSStallMonitorActivityCreate(const void *a1, int a2, int a3, uint64_t *a4)
{
  if (a1 && a2)
  {
    if (gAPSStallMonitorActivityInitOnce != -1)
    {
      dispatch_once_f(&gAPSStallMonitorActivityInitOnce, 0, _APSStallMonitorActivityGetTypeID);
    }

    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v9 = Instance;
      *(Instance + 16) = 0u;
      *(Instance + 32) = 0u;
      *(Instance + 24) = CFRetain(a1);
      *(v9 + 32) = a2;
      *(v9 + 36) = a3;
      if (_APSStallMonitorGetInstance_sOnce != -1)
      {
        dispatch_once_f(&_APSStallMonitorGetInstance_sOnce, &_APSStallMonitorGetInstance_sInstance, stallMonitor_init);
      }

      v11[0] = &_APSStallMonitorGetInstance_sInstance;
      v11[1] = v9;
      dispatch_sync_f(_APSStallMonitorGetInstance_sInstance, v11, stallMonitor_registerActivity);
      result = 0;
      *(v9 + 40) = &_APSStallMonitorGetInstance_sInstance;
      *a4 = v9;
    }

    else
    {
      APSLogErrorAt(0);
      return 4294960568;
    }
  }

  else
  {
    APSLogErrorAt(0);
    return 4294960591;
  }

  return result;
}

void stallMonitor_init(uint64_t a1)
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
  *a1 = dispatch_queue_create("APSStallMonitor", v2);
  *(a1 + 8) = dispatch_queue_create("APSStallMonitor.notification", 0);
  *(a1 + 16) = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *a1);
  *(a1 + 24) = CFSetCreateMutable(*MEMORY[0x277CBECE8], 0, 0);
  *(a1 + 32) = 0;
  APSSettingsGetIntWithOverrideAndDefault(@"stallMonitorReportBackoffSecs", 0, 86400);
  *(a1 + 40) = SecondsToUpTicks();
  dispatch_set_context(*(a1 + 16), a1);
  dispatch_source_set_event_handler_f(*(a1 + 16), stallMonitor_timerFire);
  v3 = *(a1 + 16);
  v4 = dispatch_time(0, 1000000000);
  dispatch_source_set_timer(v3, v4, 0x3B9ACA00uLL, 0xF4240uLL);
  v5 = *(a1 + 16);

  dispatch_resume(v5);
}

uint64_t stallMonitor_activityApplier(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 16);
  while ((v4 & 1) != 0)
  {
    v5 = *(result + 32);
    if (v5 < v4 >> 1)
    {
      break;
    }

    v6 = v4 + 2;
    v7 = v4;
    atomic_compare_exchange_strong_explicit((result + 16), &v7, v4 + 2, memory_order_relaxed, memory_order_relaxed);
    v8 = v7 == v4;
    v4 = v7;
    if (v8)
    {
      if (v5 >= v6 >> 1)
      {
        return result;
      }

      if (gLogCategory_APSStallMonitor <= 90)
      {
        if (gLogCategory_APSStallMonitor != -1)
        {
          goto LABEL_9;
        }

        if (_LogCategory_Initialize())
        {
          v12 = *(v3 + 32);
LABEL_9:
          v16 = *(v3 + 36);
          v13 = *(v3 + 24);
          LogPrintF();
        }
      }

      v9 = *(*a2 + 8);
      CMNotificationCenterGetDefaultLocalCenter();
      FigDispatchAsyncPostNotification();
      if (*(a2 + 16) || (result = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0), (*(a2 + 16) = result) != 0))
      {
        if (*(a2 + 24))
        {
          goto LABEL_16;
        }

        result = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
        *(a2 + 24) = result;
        if (result)
        {
          v10 = *(a2 + 16);
LABEL_16:
          v14 = *(v3 + 24);
          v17 = *(v3 + 36);
          result = CFStringAppendF();
          if (!result)
          {
            v11 = *(a2 + 24);
            v18 = *(v3 + 36);
            v19 = *(v3 + 32);
            v15 = *(v3 + 24);
            result = CFStringAppendF();
            if (!result)
            {
              *(a2 + 32) |= *(v3 + 36);
              return result;
            }
          }
        }
      }

      return APSLogErrorAt(result);
    }
  }

  return result;
}

uint64_t APSStallMonitorActivityBegin(uint64_t a1)
{
  if (!a1)
  {
    return 4294960591;
  }

  v1 = 0;
  atomic_compare_exchange_strong_explicit((a1 + 16), &v1, 1u, memory_order_acquire, memory_order_acquire);
  if (v1)
  {
    return 4294960575;
  }

  else
  {
    return 0;
  }
}

uint64_t APSStallMonitorActivityEnd(uint64_t a1)
{
  if (!a1)
  {
    return 4294960591;
  }

  if (atomic_exchange_explicit((a1 + 16), 0, memory_order_release))
  {
    return 0;
  }

  return 4294960576;
}

uint64_t APSSystemGetUserVersion()
{
  if (APSSystemGetUserVersion_prefsOnce != -1)
  {
    dispatch_once(&APSSystemGetUserVersion_prefsOnce, &__block_literal_global_1773);
  }

  v0 = APSSystemGetUserVersion_prefsUserVersion;
  if (APSSystemGetUserVersion_prefsUserVersion >= 3)
  {
    if (senderSupportsAirPlay1080p_once != -1)
    {
      dispatch_once(&senderSupportsAirPlay1080p_once, &__block_literal_global_375);
    }

    v0 = senderSupportsAirPlay1080p_result;
  }

  if (gLogCategory_APSSystemUtils <= 30 && (gLogCategory_APSSystemUtils != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  return v0;
}

uint64_t __senderSupportsAirPlay1080p_block_invoke()
{
  v0 = 0;
  v1 = *MEMORY[0x277CD2898];
  for (i = 1; ; i = 0)
  {
    v3 = i;
    v4 = IOServiceMatching(senderSupportsAirPlay1080p_drivers[v0]);
    result = IOServiceGetMatchingService(v1, v4);
    if (result)
    {
      break;
    }

    v0 = 1;
    if ((v3 & 1) == 0)
    {
      return result;
    }
  }

  senderSupportsAirPlay1080p_result = 1;

  return IOObjectRelease(result);
}

uint64_t __APSSystemGetUserVersion_block_invoke()
{
  result = FigGetCFPreferenceNumberWithDefault();
  APSSystemGetUserVersion_prefsUserVersion = result;
  if (result <= 2 && gLogCategory_APSSystemUtils <= 50)
  {
    if (gLogCategory_APSSystemUtils != -1)
    {
      return LogPrintF();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF();
    }
  }

  return result;
}

uint64_t APSIsAPMSpeaker()
{
  if (APSIsAPMSpeaker_sCheckOnce != -1)
  {
    dispatch_once(&APSIsAPMSpeaker_sCheckOnce, &__block_literal_global_16_1786);
  }

  return APSIsAPMSpeaker_sIsAPMSpeaker;
}

uint64_t __APSIsAPMSpeaker_block_invoke()
{
  v0 = MGGetSInt32Answer();
  if (gLogCategory_APSSystemUtils <= 50 && (gLogCategory_APSSystemUtils != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  result = FigGetCFPreferenceNumberWithDefault();
  APSIsAPMSpeaker_sIsAPMSpeaker = result != 0;
  if ((v0 == 7) != (result != 0) && gLogCategory_APSSystemUtils <= 50)
  {
    if (gLogCategory_APSSystemUtils != -1)
    {
      return LogPrintF();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF();
    }
  }

  return result;
}

uint64_t APSIsIPhone()
{
  if (APSIsIPhone_onceToken != -1)
  {
    dispatch_once(&APSIsIPhone_onceToken, &__block_literal_global_28);
  }

  return APSIsIPhone_sIsiPhone;
}

uint64_t __APSIsIPhone_block_invoke()
{
  result = MGGetSInt32Answer();
  if (result == 1)
  {
    APSIsIPhone_sIsiPhone = 1;
  }

  return result;
}

uint64_t APSIsIPad()
{
  if (APSIsIPad_onceToken != -1)
  {
    dispatch_once(&APSIsIPad_onceToken, &__block_literal_global_30);
  }

  return APSIsIPad_sIsiPad;
}

uint64_t __APSIsIPad_block_invoke()
{
  result = MGGetSInt32Answer();
  if (result == 3)
  {
    APSIsIPad_sIsiPad = 1;
  }

  return result;
}

uint64_t APSIsEndpointClusteringEnabled()
{
  if (APSIsEndpointClusteringEnabled_sIsEndpointClusteringEnabledOnce != -1)
  {
    dispatch_once(&APSIsEndpointClusteringEnabled_sIsEndpointClusteringEnabledOnce, &__block_literal_global_32);
  }

  return APSIsEndpointClusteringEnabled_sIsEndpointClusteringEnabled;
}

uint64_t __APSIsEndpointClusteringEnabled_block_invoke()
{
  APSIsEndpointClusteringEnabled_sIsEndpointClusteringEnabled = 1;
  result = IsAppleInternalBuild();
  if (result)
  {
    result = APSSettingsGetIntWithOverrideAndDefault(@"enableClusterEndpoint", 0, APSIsEndpointClusteringEnabled_sIsEndpointClusteringEnabled);
    APSIsEndpointClusteringEnabled_sIsEndpointClusteringEnabled = result;
  }

  return result;
}

uint64_t APSIsPairingGroupEnabled()
{
  if (APSIsPairingGroupEnabled_sIsPairingGroupEnabledOnce != -1)
  {
    dispatch_once(&APSIsPairingGroupEnabled_sIsPairingGroupEnabledOnce, &__block_literal_global_37);
  }

  return APSIsPairingGroupEnabled_sIsPairingGroupEnabled;
}

uint64_t __APSIsPairingGroupEnabled_block_invoke()
{
  result = APSSettingsIsFeatureEnabled(@"PairingGroup");
  APSIsPairingGroupEnabled_sIsPairingGroupEnabled = result;
  return result;
}

uint64_t APSMultiPrimariesEnabled()
{
  if (APSMultiPrimariesEnabled_sMultiPrimariesEnabledOnce != -1)
  {
    dispatch_once(&APSMultiPrimariesEnabled_sMultiPrimariesEnabledOnce, &__block_literal_global_42);
  }

  return APSMultiPrimariesEnabled_sMultiPrimariesEnabled;
}

void __APSMultiPrimariesEnabled_block_invoke()
{
  if (APSIsAPMSpeaker_sCheckOnce != -1)
  {
    dispatch_once(&APSIsAPMSpeaker_sCheckOnce, &__block_literal_global_16_1786);
  }

  if (APSIsAPMSpeaker_sIsAPMSpeaker)
  {
    if (APSSettingsIsFeatureEnabledInDomain())
    {
      APSMultiPrimariesEnabled_sMultiPrimariesEnabled = 1;
    }
  }
}

uint64_t APSNowPlayingSessionDataSourceEnabled()
{
  if (APSNowPlayingSessionDataSourceEnabled_sNowPlayingSessionDataSourceEnabledOnce != -1)
  {
    dispatch_once(&APSNowPlayingSessionDataSourceEnabled_sNowPlayingSessionDataSourceEnabledOnce, &__block_literal_global_50);
  }

  return APSNowPlayingSessionDataSourceEnabled_sNowPlayingSessionDataSourceEnabled;
}

void __APSNowPlayingSessionDataSourceEnabled_block_invoke()
{
  if (APSIsAPMSpeaker_sCheckOnce != -1)
  {
    dispatch_once(&APSIsAPMSpeaker_sCheckOnce, &__block_literal_global_16_1786);
  }

  if (APSIsAPMSpeaker_sIsAPMSpeaker)
  {
    if (APSSettingsIsFeatureEnabledInDomain())
    {
      APSNowPlayingSessionDataSourceEnabled_sNowPlayingSessionDataSourceEnabled = 1;
    }
  }
}

uint64_t APSIsRemoteHALPluginLoadingEnabled()
{
  if (APSIsRemoteHALPluginLoadingEnabled_sOnce != -1)
  {
    dispatch_once(&APSIsRemoteHALPluginLoadingEnabled_sOnce, &__block_literal_global_55_1815);
  }

  return APSIsRemoteHALPluginLoadingEnabled_sRemoteHalPluginLoadingEnabled;
}

uint64_t __APSIsRemoteHALPluginLoadingEnabled_block_invoke()
{
  result = FigIsAirplaydEnabled();
  APSIsRemoteHALPluginLoadingEnabled_sRemoteHalPluginLoadingEnabled = result;
  return result;
}

uint64_t APSIsExplicitEndpointManagerInitializationEnabledInMX()
{
  if (APSIsExplicitEndpointManagerInitializationEnabledInMX_sOnce != -1)
  {
    dispatch_once(&APSIsExplicitEndpointManagerInitializationEnabledInMX_sOnce, &__block_literal_global_57);
  }

  return APSIsExplicitEndpointManagerInitializationEnabledInMX_sEnabled;
}

uint64_t __APSIsExplicitEndpointManagerInitializationEnabledInMX_block_invoke()
{
  result = APSSettingsIsFeatureEnabledInDomain();
  if (result)
  {
    APSIsExplicitEndpointManagerInitializationEnabledInMX_sEnabled = 1;
  }

  return result;
}

uint64_t APSIsSuntoryEnabled()
{
  if (APSIsSuntoryEnabled_sSuntoryEnabledOnce != -1)
  {
    dispatch_once(&APSIsSuntoryEnabled_sSuntoryEnabledOnce, &__block_literal_global_65);
  }

  return APSIsSuntoryEnabled_sSuntoryEnabled;
}

uint64_t __APSIsSuntoryEnabled_block_invoke()
{
  result = APSSettingsIsFeatureEnabledInDomain();
  if (result)
  {
    APSIsSuntoryEnabled_sSuntoryEnabled = 1;
  }

  return result;
}

uint64_t APSIsProximitySenderEnabled()
{
  if (APSIsProximitySenderEnabled_sOnce != -1)
  {
    dispatch_once(&APSIsProximitySenderEnabled_sOnce, &__block_literal_global_73_1831);
  }

  return APSIsProximitySenderEnabled_sProximitySenderEnabled;
}

uint64_t __APSIsProximitySenderEnabled_block_invoke()
{
  result = APSSettingsIsFeatureEnabled(@"ProximitySender");
  APSIsProximitySenderEnabled_sProximitySenderEnabled = result;
  return result;
}

uint64_t APSIsProximityReceiverEnabled()
{
  if (APSIsProximityReceiverEnabled_sOnce != -1)
  {
    dispatch_once(&APSIsProximityReceiverEnabled_sOnce, &__block_literal_global_78);
  }

  return APSIsProximityReceiverEnabled_sProximityReceiverEnabled;
}

uint64_t __APSIsProximityReceiverEnabled_block_invoke()
{
  result = APSSettingsIsFeatureEnabled(@"ProximityReceiver");
  APSIsProximityReceiverEnabled_sProximityReceiverEnabled = result;
  return result;
}

uint64_t APSIsPermanentSpeakerGroupingEnabled(uint64_t a1)
{
  if (a1)
  {
    return *MEMORY[0x277CBED28] == a1;
  }

  if (APSIsPermanentSpeakerGroupingEnabled_sOnce != -1)
  {
    dispatch_once(&APSIsPermanentSpeakerGroupingEnabled_sOnce, &__block_literal_global_83);
  }

  return APSIsPermanentSpeakerGroupingEnabled_sPSGEnabled;
}

uint64_t __APSIsPermanentSpeakerGroupingEnabled_block_invoke()
{
  result = APSSettingsIsFeatureEnabled(@"PermanentSpeakerGrouping");
  APSIsPermanentSpeakerGroupingEnabled_sPSGEnabled = result;
  return result;
}

uint64_t APSIsSetMRInfoCommandEnabled()
{
  if (APSIsSetMRInfoCommandEnabled_sOnce != -1)
  {
    dispatch_once(&APSIsSetMRInfoCommandEnabled_sOnce, &__block_literal_global_88);
  }

  return APSIsSetMRInfoCommandEnabled_sSetMREnabled;
}

uint64_t __APSIsSetMRInfoCommandEnabled_block_invoke()
{
  result = APSSettingsIsFeatureEnabled(@"SetMRInfo");
  if (result)
  {
    APSIsSetMRInfoCommandEnabled_sSetMREnabled = 1;
  }

  return result;
}

uint64_t APSIsOpenNANReceiverEnabled()
{
  if (APSIsOpenNANReceiverEnabled_sOnce != -1)
  {
    dispatch_once(&APSIsOpenNANReceiverEnabled_sOnce, &__block_literal_global_93);
  }

  return APSIsOpenNANReceiverEnabled_sOpenNANReceiverEnabled;
}

void __APSIsOpenNANReceiverEnabled_block_invoke()
{
  if (APSHasNANSupport_sHasNANSupportOnce != -1)
  {
    dispatch_once(&APSHasNANSupport_sHasNANSupportOnce, &__block_literal_global_219);
  }

  v0 = APSHasNANSupport_sHasNANSupport;
  if (APSHasNANSupport_sHasNANSupport)
  {
    v0 = APSSettingsIsFeatureEnabled(@"allowOpenNANReceiver") != 0;
  }

  APSIsOpenNANReceiverEnabled_sOpenNANReceiverEnabled = v0;
}

void __APSHasNANSupport_block_invoke()
{
  if (APSIsVirtualMachine_sCheckOnceForVM != -1)
  {
    dispatch_once(&APSIsVirtualMachine_sCheckOnceForVM, &__block_literal_global_342);
  }

  if (APSIsVirtualMachine_sIsVirtualMachine == 1)
  {
    if (gLogCategory_APSSystemUtils <= 50 && (gLogCategory_APSSystemUtils != -1 || _LogCategory_Initialize()))
    {

      LogPrintF();
    }
  }

  else
  {
    APSHasNANSupport_sHasNANSupport = MGGetBoolAnswer();
  }
}

uint64_t __APSIsVirtualMachine_block_invoke()
{
  v3 = 0;
  v2 = 4;
  result = sysctlbyname("kern.hv_vmm_present", &v3, &v2, 0, 0);
  if (result)
  {
    v1 = 1;
  }

  else
  {
    v1 = v3 == 0;
  }

  if (!v1)
  {
    APSIsVirtualMachine_sIsVirtualMachine = 1;
    result = APSSettingsGetInt64(@"useWiFiAndAWDLOnVirtualMachine", 0);
    if (result)
    {
      APSIsVirtualMachine_sIsVirtualMachine = 0;
    }

    if (gLogCategory_APSSystemUtils <= 50)
    {
      if (gLogCategory_APSSystemUtils != -1)
      {
        return LogPrintF();
      }

      result = _LogCategory_Initialize();
      if (result)
      {
        return LogPrintF();
      }
    }
  }

  return result;
}

uint64_t APSHasNANSupport()
{
  if (APSHasNANSupport_sHasNANSupportOnce != -1)
  {
    dispatch_once(&APSHasNANSupport_sHasNANSupportOnce, &__block_literal_global_219);
  }

  return APSHasNANSupport_sHasNANSupport;
}

uint64_t APSIsOpenNANSenderEnabled()
{
  if (APSIsOpenNANSenderEnabled_sOnce != -1)
  {
    dispatch_once(&APSIsOpenNANSenderEnabled_sOnce, &__block_literal_global_98);
  }

  return APSIsOpenNANSenderEnabled_sOpenNANSenderEnabled;
}

void __APSIsOpenNANSenderEnabled_block_invoke()
{
  if (APSHasNANSupport_sHasNANSupportOnce != -1)
  {
    dispatch_once(&APSHasNANSupport_sHasNANSupportOnce, &__block_literal_global_219);
  }

  if (APSHasNANSupport_sHasNANSupport)
  {
    if (APSSettingsIsFeatureEnabled(@"allowOpenNANSender"))
    {
      APSIsOpenNANSenderEnabled_sOpenNANSenderEnabled = 1;
      v0 = [objc_msgSend(objc_msgSend(MEMORY[0x277D7BA98] "currentDeviceCapabilities")];
      APSIsOpenNANSenderEnabled_sOpenNANSenderEnabled &= v0;
      if ((APSIsOpenNANSenderEnabled_sOpenNANSenderEnabled & 1) != 0 || gLogCategory_APSSystemUtils > 50 || gLogCategory_APSSystemUtils == -1 && !_LogCategory_Initialize())
      {
        return;
      }
    }

    else if (gLogCategory_APSSystemUtils > 50 || gLogCategory_APSSystemUtils == -1 && !_LogCategory_Initialize())
    {
      return;
    }
  }

  else if (gLogCategory_APSSystemUtils > 50 || gLogCategory_APSSystemUtils == -1 && !_LogCategory_Initialize())
  {
    return;
  }

  LogPrintF();
}

uint64_t APSIsWHAParallelSetupProcessingEnabled()
{
  if (APSIsWHAParallelSetupProcessingEnabled_sOnce != -1)
  {
    dispatch_once(&APSIsWHAParallelSetupProcessingEnabled_sOnce, &__block_literal_global_107);
  }

  return APSIsWHAParallelSetupProcessingEnabled_sWHAParallelSetupProcessingEnabled;
}

uint64_t __APSIsWHAParallelSetupProcessingEnabled_block_invoke()
{
  result = APSSettingsIsFeatureEnabled(@"WHAParallelSetupProcessing");
  if (result)
  {
    APSIsWHAParallelSetupProcessingEnabled_sWHAParallelSetupProcessingEnabled = 1;
  }

  return result;
}

uint64_t APSIsPortMatchingOverrideEnabled()
{
  if (APSIsPortMatchingOverrideEnabled_sOnce != -1)
  {
    dispatch_once(&APSIsPortMatchingOverrideEnabled_sOnce, &__block_literal_global_112);
  }

  return APSIsPortMatchingOverrideEnabled_sPortMatchingOverrideEnabled;
}

uint64_t __APSIsPortMatchingOverrideEnabled_block_invoke()
{
  result = APSSettingsGetIntWithOverrideAndDefault(@"ptpReenablePortMatchingOverride", 0, 1);
  APSIsPortMatchingOverrideEnabled_sPortMatchingOverrideEnabled = result != 0;
  return result;
}

__CFString *APSGetFabricatedMemberIDForHTGroup(uint64_t a1, int a2, int a3)
{
  if (a3)
  {
    v3 = 1;
  }

  else
  {
    v3 = a1 == 2;
  }

  v4 = @"2";
  if (v3)
  {
    v4 = @"1";
  }

  if (a2)
  {
    return @"0";
  }

  else
  {
    return v4;
  }
}

CFStringRef APSCreateGroupID(const void *a1, const __CFString *a2, const __CFString *a3)
{
  if (!a1)
  {
    return 0;
  }

  v6 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  if (!Mutable)
  {
    APSLogErrorAt(0);
    return 0;
  }

  v8 = Mutable;
  CFArrayAppendValue(Mutable, a1);
  if (a2)
  {
    if ((CFStringGetLength(a2) - 1) > 2)
    {
      if (gLogCategory_APSSystemUtils <= 90 && (gLogCategory_APSSystemUtils != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }
    }

    else
    {
      CFArrayAppendValue(v8, a2);
    }
  }

  if (a3)
  {
    if (CFStringGetLength(a3) < 4)
    {
      if (gLogCategory_APSSystemUtils <= 90 && (gLogCategory_APSSystemUtils != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }
    }

    else
    {
      CFArrayAppendValue(v8, a3);
    }
  }

  v9 = CFStringCreateByCombiningStrings(v6, v8, @"+");
  CFRelease(v8);
  return v9;
}

CFStringRef APSCreateGroupIDForLocalDeviceEx(const __CFString *a1)
{
  v11 = 0;
  cf = 0;
  v10 = 0;
  if (!FigCFDictionaryGetBooleanIfPresent())
  {
    if (APSMultiPrimariesEnabled_sMultiPrimariesEnabledOnce != -1)
    {
      dispatch_once(&APSMultiPrimariesEnabled_sMultiPrimariesEnabledOnce, &__block_literal_global_42);
    }

    v10 = APSMultiPrimariesEnabled_sMultiPrimariesEnabled;
  }

  if (FigCFDictionaryGetIntIfPresent())
  {
    DeviceClass = 0;
  }

  else
  {
    DeviceClass = GestaltGetDeviceClass();
  }

  v3 = DeviceClass == 7 || DeviceClass == 4;
  if (!v3 || (APSCopyClusterInfo(&cf, 0, 0, &v11, 0), (v4 = cf) == 0))
  {
    v5 = APSCopyBootUUID(&cf);
    if (v5)
    {
      APSLogErrorAt(v5);
      v8 = 0;
      goto LABEL_20;
    }

    v4 = cf;
  }

  if (v10)
  {
    v6 = v11;
    v7 = a1;
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v8 = APSCreateGroupID(v4, v6, v7);
LABEL_20:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  return v8;
}

uint64_t APSCopyPairingIdentity(int a1, void *a2)
{
  if (a1)
  {
    v2 = systemUtils_copyPairingIdentityWithDefault(&APSCopyPairingIdentity_sSystemPairingIdentityKeychain, a2, &__block_literal_global_236);
    v3 = v2;
    if (v2)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __APSCopyPairingIdentity_block_invoke_2;
    v5[3] = &__block_descriptor_33_e22_i16__0r_____CFString_8l;
    v6 = 0;
    v2 = systemUtils_copyPairingIdentityWithDefault(&APSCopyPairingIdentity_sPerAppParingIdentity, a2, v5);
    v3 = v2;
    if (v2)
    {
LABEL_6:
      APSLogErrorAt(v2);
    }
  }

  return v3;
}

uint64_t systemUtils_copyPairingIdentityWithDefault(unint64_t *a1, void *a2, uint64_t a3)
{
  v5 = atomic_load(a1);
  cf = v5;
  if (!v5)
  {
    v6 = (*(a3 + 16))(a3, &cf);
    if (v6)
    {
      v8 = v6;
      APSLogErrorAt(v6);
      return v8;
    }

    v7 = 0;
    atomic_compare_exchange_strong(a1, &v7, cf);
    v5 = cf;
    if (v7)
    {
      if (cf)
      {
        CFRelease(cf);
      }

      cf = v7;
      v5 = v7;
    }
  }

  if (v5)
  {
    v5 = CFRetain(v5);
  }

  v8 = 0;
  *a2 = v5;
  return v8;
}

uint64_t __APSCopyPairingIdentity_block_invoke_2(uint64_t a1, CFStringRef *a2)
{
  v3 = *(a1 + 32);
  v4 = PairingSessionCreate();
  if (v4)
  {
    v5 = v4;
LABEL_8:
    APSLogErrorAt(v4);
    return v5;
  }

  if (v3)
  {
    PairingSessionSetFlags();
  }

  PairingSessionSetKeychainInfo();
  v4 = PairingSessionCopyIdentity();
  v5 = v4;
  if (v4)
  {
    goto LABEL_8;
  }

  v6 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], 0, 0x8000100u);
  free(0);
  *a2 = v6;
  return v5;
}

uint64_t __APSCopyPairingIdentity_block_invoke(uint64_t a1, void *a2)
{
  v7 = 0;
  v3 = [MEMORY[0x277D028E0] copySystemPairingIdentifierWithFlags:0 error:&v7];
  v4 = NSErrorToOSStatus();
  v5 = v4;
  if (v4)
  {
    APSLogErrorAt(v4);
    if (v3)
    {
      CFRelease(v3);
    }
  }

  else
  {
    *a2 = v3;
  }

  return v5;
}

uint64_t APSGetPersistentGroupModel()
{
  CFPreferencesAppSynchronize(@"com.apple.airplay");
  CFPreferencesAppSynchronize(@"com.apple.coremedia");
  IntWithOverrideAndDefault = APSSettingsGetIntWithOverrideAndDefault(@"persistentGroupModel", 0, 0);

  return APSSettingsGetIntWithOverrideAndDefault(@"simulatePersistentGroupModel", 0, IntWithOverrideAndDefault);
}

uint64_t APSValidatePersistentGroupInfo(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!a1)
  {
    v10 = 4294960591;
    goto LABEL_18;
  }

  if (a3 > 1)
  {
    v10 = 4294960561;
    goto LABEL_18;
  }

  if (!a3 && !APSIsPermanentSpeakerGroupingEnabled(a6))
  {
    return 4294960561;
  }

  if (a2 < 2)
  {
    v10 = 4294960561;
    goto LABEL_18;
  }

  if (!a4)
  {
    v10 = 4294960561;
    goto LABEL_18;
  }

  if (a3 == 1)
  {
    if (a2 > 3)
    {
      v10 = 4294960561;
    }

    else
    {
      if (a5)
      {
        return 0;
      }

      v10 = 4294960561;
    }

LABEL_18:
    APSLogErrorAt(0);
    return v10;
  }

  return 0;
}

BOOL APSIsMemberOfHTGroup()
{
  cf = 0;
  v4 = 0;
  APSCopyPersistentGroupInfo(&cf, &v4, 0, 0, 0, 0, 0, 0);
  v0 = cf;
  v1 = v4;
  if (cf)
  {
    CFRelease(cf);
  }

  return v0 && v1 == 1;
}

BOOL APSIsMemberOfStereoPair()
{
  v4 = 0;
  cf = 0;
  v3 = 0;
  if (APSIsAPMSpeaker_sCheckOnce != -1)
  {
    dispatch_once(&APSIsAPMSpeaker_sCheckOnce, &__block_literal_global_16_1786);
  }

  if (!APSIsAPMSpeaker_sIsAPMSpeaker)
  {
    v0 = 0;
LABEL_8:
    v1 = v4;
    goto LABEL_9;
  }

  APSCopyPersistentGroupInfo(&v4, &v3, 0, 0, 0, 0, 0, 0);
  v0 = 0;
  v1 = v4;
  if (!v4 && !v3)
  {
    APSCopyTightSyncInfo(&cf, 0, 0, 0, 0);
    v0 = cf != 0;
    if (cf)
    {
      CFRelease(cf);
      v0 = 1;
    }

    goto LABEL_8;
  }

LABEL_9:
  if (v1)
  {
    CFRelease(v1);
  }

  return v0;
}

BOOL APSIsMemberOfPersistentGroup()
{
  cf = 0;
  APSCopyClusterInfo(&cf, 0, 0, 0, 0);
  v0 = cf;
  if (cf)
  {
    CFRelease(cf);
  }

  return v0 != 0;
}

uint64_t APSHasSamePersistentGroupUUID(uint64_t a1)
{
  v1 = a1;
  cf = 0;
  if (a1)
  {
    APSCopyClusterInfo(&cf, 0, 0, 0, 0);
    v1 = FigCFEqual();
    if (cf)
    {
      CFRelease(cf);
    }
  }

  return v1;
}

uint64_t APSIsAPValeriaScreenSender()
{
  if (APSIsAPValeriaScreenSender_once != -1)
  {
    dispatch_once(&APSIsAPValeriaScreenSender_once, &__block_literal_global_134);
  }

  return APSIsAPValeriaScreenSender_result;
}

uint64_t __APSIsAPValeriaScreenSender_block_invoke()
{
  v0 = IsAppleTV() != 0;
  result = FigGetCFPreferenceNumberWithDefault();
  APSIsAPValeriaScreenSender_result = result != 0;
  if (v0 != (result != 0) && gLogCategory_APSSystemUtils <= 50)
  {
    if (gLogCategory_APSSystemUtils != -1)
    {
      return LogPrintF();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF();
    }
  }

  return result;
}

uint64_t APSHasUDPMirroringSenderSupport()
{
  if (APSHasUDPMirroringSenderSupport_sCheckOnce != -1)
  {
    dispatch_once(&APSHasUDPMirroringSenderSupport_sCheckOnce, &__block_literal_global_140);
  }

  return APSHasUDPMirroringSenderSupport_sIsSupported;
}

uint64_t __APSHasUDPMirroringSenderSupport_block_invoke()
{
  v5 = *MEMORY[0x277D85DE8];
  if (APSIsAPMSpeaker_sCheckOnce != -1)
  {
    dispatch_once(&APSIsAPMSpeaker_sCheckOnce, &__block_literal_global_16_1786);
  }

  if (!APSIsAPMSpeaker_sIsAPMSpeaker && !IsAppleTV())
  {
    GetDeviceModelString();
    v2 = 0;
    while (strncmp(__s1, kAPSOverrideOptionKey_SupportsMultiPrimaries_block_invoke_unsupportedModels[v2], 0x40uLL))
    {
      if (++v2 == 27)
      {
        v0 = 1;
        goto LABEL_6;
      }
    }
  }

  v0 = 0;
LABEL_6:
  result = FigGetCFPreferenceNumberWithDefault();
  APSHasUDPMirroringSenderSupport_sIsSupported = result != 0;
  if (v0 != (result != 0) && gLogCategory_APSSystemUtils <= 50)
  {
    if (gLogCategory_APSSystemUtils != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF();
    }
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t APSHasUDPMirroringOutOfProcessSupport()
{
  if (APSHasUDPMirroringOutOfProcessSupport_sCheckOnce != -1)
  {
    dispatch_once(&APSHasUDPMirroringOutOfProcessSupport_sCheckOnce, &__block_literal_global_173);
  }

  return APSHasUDPMirroringOutOfProcessSupport_sIsSupported;
}

uint64_t __APSHasUDPMirroringOutOfProcessSupport_block_invoke()
{
  IsFeatureEnabledInDomain = APSSettingsIsFeatureEnabledInDomain();
  result = FigGetCFPreferenceNumberWithDefault();
  APSHasUDPMirroringOutOfProcessSupport_sIsSupported = result != 0;
  if (IsFeatureEnabledInDomain != (result != 0) && gLogCategory_APSSystemUtils <= 50)
  {
    if (gLogCategory_APSSystemUtils != -1)
    {
      return LogPrintF();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF();
    }
  }

  return result;
}

uint64_t APSHasUHDMirroringSupport()
{
  if (APSHasUDPMirroringSenderSupport_sCheckOnce != -1)
  {
    dispatch_once(&APSHasUDPMirroringSenderSupport_sCheckOnce, &__block_literal_global_140);
  }

  return APSHasUDPMirroringSenderSupport_sIsSupported;
}

uint64_t APSHasUDPMirroringReceiverSupport()
{
  if (APSHasUDPMirroringReceiverSupport_sCheckOnce != -1)
  {
    dispatch_once(&APSHasUDPMirroringReceiverSupport_sCheckOnce, &__block_literal_global_185);
  }

  return APSHasUDPMirroringReceiverSupport_sIsSupported;
}

uint64_t __APSHasUDPMirroringReceiverSupport_block_invoke()
{
  result = FigGetCFPreferenceNumberWithDefault();
  APSHasUDPMirroringReceiverSupport_sIsSupported = result != 0;
  if (result)
  {
    if (gLogCategory_APSSystemUtils <= 50)
    {
      if (gLogCategory_APSSystemUtils != -1)
      {
        return LogPrintF();
      }

      result = _LogCategory_Initialize();
      if (result)
      {
        return LogPrintF();
      }
    }
  }

  return result;
}

uint64_t APSHas4K60444SenderSupport()
{
  if (APSHas4K60444SenderSupport_sCheckOnce != -1)
  {
    dispatch_once(&APSHas4K60444SenderSupport_sCheckOnce, &__block_literal_global_190);
  }

  return APSHas4K60444SenderSupport_sIsSupported;
}

uint64_t __APSHas4K60444SenderSupport_block_invoke()
{
  result = APSSettingsGetIntWithOverrideAndDefault(@"senderSupports4k60444", 0, 0);
  APSHas4K60444SenderSupport_sIsSupported = result != 0;
  if (result)
  {
    if (gLogCategory_APSSystemUtils <= 50)
    {
      if (gLogCategory_APSSystemUtils != -1)
      {
        return LogPrintF();
      }

      result = _LogCategory_Initialize();
      if (result)
      {
        return LogPrintF();
      }
    }
  }

  return result;
}

uint64_t APSHasHDRSenderSupport()
{
  if (APSHasHDRSenderSupport_once != -1)
  {
    dispatch_once(&APSHasHDRSenderSupport_once, &__block_literal_global_196_1939);
  }

  return APSHasHDRSenderSupport_supported;
}

void __APSHasHDRSenderSupport_block_invoke()
{
  if (FVDUtilsHEVCEncoderSupports42010())
  {
    if (APSIsAPMSpeaker_sCheckOnce != -1)
    {
      dispatch_once(&APSIsAPMSpeaker_sCheckOnce, &__block_literal_global_16_1786);
    }

    if (!APSIsAPMSpeaker_sIsAPMSpeaker && !IsAppleTV())
    {
      v0 = *MEMORY[0x277CD2898];
      v1 = IOServiceMatching("AppleM2ScalerCSCDriver");
      MatchingService = IOServiceGetMatchingService(v0, v1);
      if (MatchingService)
      {
        v3 = MatchingService;
        v4 = IORegistryEntrySearchCFProperty(MatchingService, "IOService", @"IOSurfaceAcceleratorCapabilitiesDict", 0, 0);
        if (v4)
        {
          v5 = v4;
          APSHasHDRSenderSupport_supported = CFDictionaryGetInt64() != 0;
          if (gLogCategory_APSSystemUtils <= 50 && (gLogCategory_APSSystemUtils != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          CFRelease(v5);
        }

        IOObjectRelease(v3);
      }
    }
  }
}

uint64_t APSIsATVInHTGroup()
{
  result = IsAppleTV();
  if (result)
  {
    return APSIsMemberOfHTGroup();
  }

  return result;
}

unint64_t APSGetDeviceID(int a1, unsigned __int8 *a2, int *a3)
{
  PrimaryMACAddress = 0;
  v35 = *MEMORY[0x277D85DE8];
  v17 = 0;
  if (a1 <= 1)
  {
    if (!a1)
    {
      goto LABEL_9;
    }

    if (a1 == 1)
    {
      PrimaryMACAddress = GetPrimaryMACAddress();
    }
  }

  else
  {
    if (a1 == 2)
    {
      PrimaryMACAddress = systemUtils_generateRandomDeviceID(a2);
      goto LABEL_22;
    }

    if (a1 != 3)
    {
      if (a1 != 4)
      {
        goto LABEL_22;
      }

LABEL_9:
      theString = 0;
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v26 = 0u;
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      *buffer = 0u;
      PrimaryMACAddress = atomic_load(&systemUtils_getDeviceIDFromSystemPairingID_sScalarDeviceID);
      if (!PrimaryMACAddress)
      {
        v6 = APSCopyPairingIdentity(1, &theString);
        if (v6)
        {
          v15 = v6;
        }

        else
        {
          v7 = theString;
          CString = CFStringGetCString(theString, buffer, 256, 0x8000100u);
          if (!CString)
          {
            APSLogErrorAt(CString);
            PrimaryMACAddress = 0;
            v16 = -6762;
LABEL_16:
            v17 = v16;
            if (v7)
            {
              CFRelease(v7);
            }

            goto LABEL_22;
          }

          v6 = HexToData();
          if (!v6)
          {
            APSLogErrorAt(0);
            PrimaryMACAddress = 0;
            v16 = -6717;
LABEL_15:
            v7 = theString;
            goto LABEL_16;
          }

          v15 = v6;
        }

        APSLogErrorAt(v6);
        v16 = v15;
        PrimaryMACAddress = 0;
        goto LABEL_15;
      }

      v16 = 0;
      *a2 = BYTE5(PrimaryMACAddress);
      a2[1] = BYTE4(PrimaryMACAddress);
      a2[2] = BYTE3(PrimaryMACAddress);
      a2[3] = BYTE2(PrimaryMACAddress);
      a2[4] = BYTE1(PrimaryMACAddress);
      a2[5] = PrimaryMACAddress;
      goto LABEL_15;
    }

    if (!atomic_load(&systemUtils_getProcessStableRandomDeviceID_sScalarDeviceID))
    {
      RandomDeviceID = systemUtils_generateRandomDeviceID(a2);
      v11 = 0;
      atomic_compare_exchange_strong(&systemUtils_getProcessStableRandomDeviceID_sScalarDeviceID, &v11, RandomDeviceID);
    }

    v12 = atomic_load(&systemUtils_getProcessStableRandomDeviceID_sScalarDeviceID);
    *a2 = BYTE5(v12);
    a2[1] = BYTE4(v12);
    a2[2] = BYTE3(v12);
    a2[3] = BYTE2(v12);
    a2[4] = BYTE1(v12);
    a2[5] = v12;
    PrimaryMACAddress = atomic_load(&systemUtils_getProcessStableRandomDeviceID_sScalarDeviceID);
  }

LABEL_22:
  if (a3)
  {
    *a3 = v17;
  }

  if (v17)
  {
    result = 0;
  }

  else
  {
    result = PrimaryMACAddress;
  }

  v14 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t systemUtils_generateRandomDeviceID(unsigned __int8 *a1)
{
  arc4random_buf(a1, 6uLL);
  v2 = *a1 & 0xFC | 2;
  *a1 = v2;
  return (v2 << 40) | (a1[1] << 32) | (a1[2] << 24) | (a1[3] << 16) | (a1[4] << 8) | a1[5];
}

uint64_t APSScreenGetMediaPresentationParams(double a1, double a2, uint64_t a3, int a4, int a5, int a6, double *a7, int *a8)
{
  result = APSSettingsGetIntWithOverrideAndDefault(@"limit4KFPSBasedOnConnectionLatencyHint", 0, 1);
  v16 = result;
  if (!a5)
  {
    v17 = a2 * a1 > 8294400.0;
    if (a2 * a1 > 8294400.0)
    {
      a1 = 3840.0;
    }

    v18 = 2160.0;
    goto LABEL_9;
  }

  result = FigCFEqual();
  if (result)
  {
    v17 = a2 * a1 > 2073600.0;
    if (a2 * a1 > 2073600.0)
    {
      a1 = 1920.0;
    }

    v18 = 1080.0;
LABEL_9:
    if (v17)
    {
      a2 = v18;
    }

    v19 = a4 < 60;
    v20 = 60;
LABEL_12:
    if (v19)
    {
      v21 = a4;
    }

    else
    {
      v21 = v20;
    }

    goto LABEL_15;
  }

  result = FigCFEqual();
  if (a2 * a1 > 8294400.0)
  {
    a1 = 3840.0;
    a2 = 2160.0;
  }

  if (a4 >= 60)
  {
    v21 = 60;
  }

  else
  {
    v21 = a4;
  }

  if (result)
  {
    if (a1 * a2 <= 2073600.0)
    {
      goto LABEL_15;
    }

    v19 = a4 < 30;
    v20 = 30;
    goto LABEL_12;
  }

  if (a1 * a2 > 2073600.0)
  {
    if (senderSupports4K60HDR_once != -1)
    {
      dispatch_once(&senderSupports4K60HDR_once, &__block_literal_global_377);
    }

    result = APSSettingsGetIntWithOverrideAndDefault(@"senderSupports4k60HDR", 0, senderSupports4K60HDR_supported);
    v22 = result != 0;
    senderSupports4K60HDR_supported = result != 0;
    if (gLogCategory_APSSystemUtils <= 50)
    {
      if (gLogCategory_APSSystemUtils != -1 || (result = _LogCategory_Initialize(), v22 = senderSupports4K60HDR_supported, result))
      {
        result = LogPrintF();
        v22 = senderSupports4K60HDR_supported;
      }
    }

    if (v22)
    {
      v23 = 60;
    }

    else
    {
      v23 = 30;
    }

    if (v23 >= a4)
    {
      v21 = a4;
    }

    else
    {
      v21 = v23;
    }
  }

LABEL_15:
  if (a6 == 1 && v16 && a2 * a1 > 2073600.0)
  {
    if (v21 >= 30)
    {
      v21 = 30;
    }

    if (gLogCategory_APSSystemUtils <= 50)
    {
      if (gLogCategory_APSSystemUtils != -1 || (result = _LogCategory_Initialize(), result))
      {
        result = LogPrintF();
      }
    }
  }

  if (a7)
  {
    *a7 = a1;
    a7[1] = a2;
  }

  if (a8)
  {
    *a8 = v21;
  }

  return result;
}

void __senderSupports4K60HDR_block_invoke()
{
  v3 = *MEMORY[0x277D85DE8];
  if (APSHasHDRSenderSupport_once != -1)
  {
    dispatch_once(&APSHasHDRSenderSupport_once, &__block_literal_global_196_1939);
  }

  senderSupports4K60HDR_supported = APSHasHDRSenderSupport_supported;
  if (APSHasHDRSenderSupport_supported)
  {
    memset(v2, 0, sizeof(v2));
    GetDeviceModelString();
    v0 = 0;
    while (strncmp(v2, gUserVersionOverride_block_invoke_2_unsupportedModels[v0], 0x40uLL))
    {
      if (++v0 == 36)
      {
        goto LABEL_9;
      }
    }

    senderSupports4K60HDR_supported = 0;
  }

LABEL_9:
  v1 = *MEMORY[0x277D85DE8];
}

uint64_t APSIsVirtualMachine()
{
  if (APSIsVirtualMachine_sCheckOnceForVM != -1)
  {
    dispatch_once(&APSIsVirtualMachine_sCheckOnceForVM, &__block_literal_global_342);
  }

  return APSIsVirtualMachine_sIsVirtualMachine;
}

uint64_t APSCanSendToAltReceiver()
{
  if (APSCanSendToAltReceiver_sCanSendToAltReceiverOnce != -1)
  {
    dispatch_once(&APSCanSendToAltReceiver_sCanSendToAltReceiverOnce, &__block_literal_global_225);
  }

  return APSCanSendToAltReceiver_sCanSendToAltReceiver;
}

uint64_t __APSCanSendToAltReceiver_block_invoke()
{
  result = IsAppleInternalBuild();
  if (result)
  {
    v1 = 0;
    result = APSSettingsGetInt64IfPresent(@"canSendToAltReceiver", &v1);
    if (result)
    {
      APSCanSendToAltReceiver_sCanSendToAltReceiver = v1 != 0;
    }
  }

  if (gLogCategory_APSSystemUtils <= 50)
  {
    if (gLogCategory_APSSystemUtils != -1)
    {
      return LogPrintF();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF();
    }
  }

  return result;
}

void APSPreCacheSystemPairingIdentity()
{
  if (APSPreCacheSystemPairingIdentity_sPrewarmCacheOnce != -1)
  {
    dispatch_once(&APSPreCacheSystemPairingIdentity_sPrewarmCacheOnce, &__block_literal_global_231);
  }
}

void __APSPreCacheSystemPairingIdentity_block_invoke()
{
  global_queue = dispatch_get_global_queue(25, 0);

  dispatch_async(global_queue, &__block_literal_global_233);
}

void __APSPreCacheSystemPairingIdentity_block_invoke_2()
{
  cf = 0;
  APSCopyPairingIdentity(1, &cf);
  v0 = cf;
  if (cf)
  {

    CFRelease(v0);
  }
}

CFTypeRef APSCopyDeviceName()
{
  if (systemUtils_copyCachedDeviceName_sOnce != -1)
  {
    dispatch_once(&systemUtils_copyCachedDeviceName_sOnce, &__block_literal_global_420);
  }

  FigSimpleMutexLock();
  if (systemUtils_copyCachedDeviceName_sCachedDeviceName)
  {
    v0 = CFRetain(systemUtils_copyCachedDeviceName_sCachedDeviceName);
  }

  else
  {
    v0 = 0;
  }

  FigSimpleMutexUnlock();
  return v0;
}

void __systemUtils_copyCachedDeviceName_block_invoke()
{
  values = @"UserAssignedDeviceName";
  v0 = CFArrayCreate(*MEMORY[0x277CBECE8], &values, 1, MEMORY[0x277CBF128]);
  systemUtils_copyCachedDeviceName_sCachedDeviceNameMutex = FigSimpleMutexCreate();
  MGRegisterForUpdates();
  systemUtils_updateCachedDeviceName(systemUtils_copyCachedDeviceName_sCachedDeviceNameMutex);
  if (v0)
  {
    CFRelease(v0);
  }
}

void systemUtils_updateCachedDeviceName(uint64_t a1)
{
  if (a1)
  {
    FigSimpleMutexLock();
    v1 = MGCopyAnswer();
    if (gLogCategory_APSSystemUtils <= 30 && (gLogCategory_APSSystemUtils != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v2 = systemUtils_copyCachedDeviceName_sCachedDeviceName;
    systemUtils_copyCachedDeviceName_sCachedDeviceName = v1;
    if (v1)
    {
      CFRetain(v1);
    }

    if (v2)
    {
      CFRelease(v2);
    }

    FigSimpleMutexUnlock();
    if (v1)
    {

      CFRelease(v1);
    }
  }

  else
  {

    APSLogErrorAt(0);
  }
}

UInt8 *APSGetDeviceNameCString(UInt8 *a1, uint64_t a2)
{
  v2 = a1;
  usedBufLen = 0;
  if (a1)
  {
    v4 = APSCopyDeviceName();
    if (v4)
    {
      v5 = v4;
      Length = CFStringGetLength(v4);
      if (Length >= 1 && (v9.length = Length, v9.location = 0, CFStringGetBytes(v5, v9, 0x8000100u, 0, 0, v2, a2 - 1, &usedBufLen)))
      {
        v2[usedBufLen] = 0;
      }

      else
      {
        v2 = 0;
      }

      CFRelease(v5);
    }

    else
    {
      APSLogErrorAt(0);
      return 0;
    }
  }

  else
  {
    APSLogErrorAt(0);
  }

  return v2;
}

uint64_t APSPersistentGroupTypeToClusterType(int a1)
{
  if (a1)
  {
    v1 = 0;
  }

  else
  {
    v1 = 3;
  }

  if (a1 == 1)
  {
    return 2;
  }

  else
  {
    return v1;
  }
}

uint64_t APSSaveAirPlayNonSystemPeer()
{
  if (gLogCategory_APSSystemUtils <= 50 && (gLogCategory_APSSystemUtils != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v0 = PairingSessionCreate();
  if (v0)
  {
    v1 = v0;
    goto LABEL_9;
  }

  PairingSessionSetKeychainInfo();
  v0 = PairingSessionSavePeer();
  v1 = v0;
  if (v0)
  {
LABEL_9:
    APSLogErrorAt(v0);
  }

  return v1;
}

CFIndex APSGetAirPlayNonSystemPeersCount()
{
  v13 = *MEMORY[0x277CDC428];
  v14 = *MEMORY[0x277CDC430];
  v11 = *MEMORY[0x277CDC550];
  v12 = *MEMORY[0x277CBED28];
  v9 = *MEMORY[0x277CDC140];
  v10 = *MEMORY[0x277CDC148];
  v8 = *MEMORY[0x277CDBF20];
  v7 = *MEMORY[0x277CDC188];
  v6 = *MEMORY[0x277CDBEC8];
  v4 = *MEMORY[0x277CDC228];
  v5 = *MEMORY[0x277CDC238];
  v0 = KeychainCopyMatchingFormatted();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  Count = CFArrayGetCount(v0);
  CFRelease(v1);
  return Count;
}

const __CFArray *APSCopyAirPlayNonSystemPeers()
{
  v0 = PairingSessionCreate();
  if (v0)
  {
    APSLogErrorAt(v0);
    v1 = 0;
  }

  else
  {
    PairingSessionSetKeychainInfo();
    v1 = PairingSessionCopyPeers();
  }

  if (gLogCategory_APSSystemUtils <= 50 && (gLogCategory_APSSystemUtils != -1 || _LogCategory_Initialize()))
  {
    if (v1)
    {
      CFArrayGetCount(v1);
    }

    LogPrintF();
  }

  return v1;
}

uint64_t APSClearLegacyAirPlayPairingInfo()
{
  v7 = 0;
  if (gLogCategory_APSSystemUtils <= 50 && (gLogCategory_APSSystemUtils != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (!gQblcfSzZBQsYCCV(&v7, 0))
  {
    v0 = v7;
    PHDcW8(v7, 0);
    v5 = *MEMORY[0x277CDC188];
    v6 = v0[8];
    v4 = *MEMORY[0x277CDBEC8];
    v2 = *MEMORY[0x277CDC228];
    v3 = *MEMORY[0x277CDC238];
    KeychainDeleteFormatted();
    CFRelease(v0);
  }

  return APSRemoveAirPlayNonSystemPeers(0);
}

uint64_t APSRemoveAirPlayNonSystemPeers(uint64_t a1)
{
  if (a1)
  {
    v1 = PairingSessionCreate();
    if (v1)
    {
      v2 = v1;
      APSLogErrorAt(v1);
    }

    else
    {
      PairingSessionSetKeychainInfo();
      return PairingSessionDeletePeer();
    }
  }

  else
  {
    v8 = *MEMORY[0x277CDC140];
    v9 = *MEMORY[0x277CDC148];
    v7 = *MEMORY[0x277CDC188];
    v6 = *MEMORY[0x277CDBEC8];
    v4 = *MEMORY[0x277CDC228];
    v5 = *MEMORY[0x277CDC238];
    KeychainDeleteFormatted();
    return 0;
  }

  return v2;
}

uint64_t APSEnsureCanInitiatePlayback()
{
  if (APSEnsureCanInitiatePlayback_once != -1)
  {
    dispatch_once(&APSEnsureCanInitiatePlayback_once, &__block_literal_global_272);
  }

  v0 = APSEnsureCanInitiatePlayback_bundleID;
  if (APSEnsureCanInitiatePlayback_bundleID)
  {
    if (gLogCategory_APSSystemUtils <= 50)
    {
      if (gLogCategory_APSSystemUtils == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_8;
        }

        v0 = APSEnsureCanInitiatePlayback_bundleID;
      }

      v5 = v0;
      LogPrintF();
    }

LABEL_8:
    v1 = [MEMORY[0x277D26E58] sharedAVSystemController];
    result = [v1 allowAppsToInitiatePlayback:objc_msgSend(MEMORY[0x277CBEB98] clientType:"setWithObject:" isTemporary:{APSEnsureCanInitiatePlayback_bundleID), @"AirPlay", 1}];
    if (result)
    {
      if (gLogCategory_APSSystemUtils <= 90)
      {
        if (gLogCategory_APSSystemUtils != -1)
        {
          return LogPrintF();
        }

        v3 = result;
        v4 = _LogCategory_Initialize();
        result = v3;
        if (v4)
        {
          return LogPrintF();
        }
      }
    }

    return result;
  }

  return APSLogErrorAt(0);
}

id __APSEnsureCanInitiatePlayback_block_invoke()
{
  result = [objc_msgSend(MEMORY[0x277CCA8D8] "mainBundle")];
  APSEnsureCanInitiatePlayback_bundleID = result;
  return result;
}

uint64_t APSGetClusterModelForTightSyncGroupModel(int a1)
{
  if (a1 == 2)
  {
    return 2;
  }

  else
  {
    return a1 == 1;
  }
}

uint64_t APSGetClusterModelForPersistentGroupModel(int a1)
{
  if (a1 == 2)
  {
    return 2;
  }

  else
  {
    return a1 == 1;
  }
}

__CFString *APSGetClusterModelNameForClusterTypeAndModel(int a1, int a2)
{
  v2 = @"AppleTVHTCluster";
  if (a2 == 1)
  {
    v2 = @"AudioAccessory5,1-AppleTVHTCluster";
  }

  if (a2 == 2)
  {
    v2 = @"AudioAccessory6,1-AppleTVHTCluster";
  }

  v3 = @"AudioAccessory1,1-TightSyncCluster";
  if (a2 == 1)
  {
    v3 = @"AudioAccessory5,1-TightSyncCluster";
  }

  if (a2 == 2)
  {
    v3 = @"AudioAccessory6,1-TightSyncCluster";
  }

  if (a1 != 1)
  {
    v3 = 0;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1 == 3)
  {
    return @"GenericPersistentGroup";
  }

  else
  {
    return v2;
  }
}

__CFString *APSClusterTypeToDescriptionString(int a1)
{
  v1 = @"PSG";
  if (a1 == 2)
  {
    v1 = @"HT";
  }

  if (a1 == 1)
  {
    return @"Stereo Pair";
  }

  else
  {
    return v1;
  }
}

uint64_t APSClusterTypeToFigEndpointDescriptorClusterType(int a1)
{
  v1 = MEMORY[0x277D26FF0];
  v2 = MEMORY[0x277D26FE8];
  if (a1 != 2)
  {
    v2 = MEMORY[0x277D26FF8];
  }

  if (a1 != 1)
  {
    v1 = v2;
  }

  return *v1;
}

uint64_t APSIsDirectLinkInterface(uint64_t a1)
{
  if (!a1 || (v1 = *MEMORY[0x277CBECE8], (v2 = _SCNetworkInterfaceCreateWithBSDName()) == 0))
  {
    APSLogErrorAt(0);
    return 0;
  }

  v3 = v2;
  IsThunderbolt = _SCNetworkInterfaceIsThunderbolt();
  if (IsThunderbolt)
  {
    v5 = IsThunderbolt;
    if (gLogCategory_APSSystemUtils > 50 || gLogCategory_APSSystemUtils == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_18;
    }
  }

  else
  {
    InterfaceType = SCNetworkInterfaceGetInterfaceType(v3);
    if (CFStringCompare(InterfaceType, *MEMORY[0x277CE16D0], 0) || (_SCNetworkInterfaceGetFamilySubType(), CFGetInt64() != 1) || (_SCNetworkInterfaceGetIOPath(), !FigCFStringFind()))
    {
      v5 = 0;
      goto LABEL_18;
    }

    if (gLogCategory_APSSystemUtils > 50)
    {
      v5 = 1;
      goto LABEL_18;
    }

    if (gLogCategory_APSSystemUtils == -1)
    {
      v5 = 1;
      if (!_LogCategory_Initialize())
      {
        goto LABEL_18;
      }
    }

    else
    {
      v5 = 1;
    }
  }

  LogPrintF();
LABEL_18:
  CFRelease(v3);
  return v5;
}

uint64_t APSIsEthernetInterface(uint64_t a1)
{
  if (a1 && (v1 = *MEMORY[0x277CBECE8], (v2 = _SCNetworkInterfaceCreateWithBSDName()) != 0))
  {
    v3 = v2;
    IsPhysicalEthernet = _SCNetworkInterfaceIsPhysicalEthernet();
    CFRelease(v3);
    return IsPhysicalEthernet;
  }

  else
  {
    APSLogErrorAt(0);
    return 0;
  }
}

uint64_t APSShouldStartAdvertistingForAirPlaySourceBeacon(void *a1, int a2, int a3)
{
  v6 = [a1 airplaySourceFlags];
  v7 = v6;
  v8 = 1;
  if (a2 && (v6 & 4) == 0)
  {
    if (gLogCategory_APSSystemUtils <= 30 && (gLogCategory_APSSystemUtils != -1 || _LogCategory_Initialize()))
    {
      v10 = [a1 identifier];
      LogPrintF();
    }

    v8 = 0;
  }

  if (a3 && (v7 & 0x10) != 0)
  {
    if (([a1 deviceFlags] & 0x80) != 0)
    {
      if (gLogCategory_APSSystemUtils <= 30 && (gLogCategory_APSSystemUtils != -1 || _LogCategory_Initialize()))
      {
        [a1 accountID];
        LogPrintF();
      }
    }

    else
    {
      if (gLogCategory_APSSystemUtils <= 30 && (gLogCategory_APSSystemUtils != -1 || _LogCategory_Initialize()))
      {
        [a1 identifier];
        LogPrintF();
      }

      return 0;
    }
  }

  return v8;
}

uint64_t APSGetAccessControlConfig(unsigned int *a1, _DWORD *a2)
{
  v10 = 0;
  CFPreferencesAppSynchronize(@"com.apple.airplay");
  CFPreferencesAppSynchronize(@"com.apple.coremedia");
  v4 = 0;
  Int64 = APSSettingsGetInt64(@"accessControlType", &v10);
  v6 = v10;
  v10 = 0;
  v7 = Int64 != 1 && v6 == 0;
  if (v7 || (IntWithOverrideAndDefault = APSSettingsGetIntWithOverrideAndDefault(@"accessControlLevel", 0, 0), v4 = IntWithOverrideAndDefault, !v6))
  {
    if (!Int64 || Int64 == 2)
    {
      goto LABEL_12;
    }

    if (Int64 != 1)
    {
      goto LABEL_16;
    }
  }

  else if ((IntWithOverrideAndDefault - 1) >= 2)
  {
    Int64 = 2;
LABEL_12:
    if (a1)
    {
      *a1 = Int64;
    }

    if (a2)
    {
      *a2 = v4;
    }

    return v10;
  }

  Int64 = 1;
  if ((v4 - 3) > 0xFFFFFFFD)
  {
    goto LABEL_12;
  }

LABEL_16:
  if (gLogCategory_APSSystemUtils <= 90 && (gLogCategory_APSSystemUtils != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  return -6705;
}

BOOL APSGetP2PAllow()
{
  v4 = 0;
  v3 = 0;
  Int64 = APSSettingsGetInt64(@"p2pAllow", &v3);
  result = 0;
  if (v3)
  {
    v2 = 0;
  }

  else
  {
    v2 = Int64 == 0;
  }

  if (!v2)
  {
    APSCopyClusterInfo(0, 0, &v4, 0, 0);
    return (v4 & 0xFFFFFFFD) != 1;
  }

  return result;
}

uint64_t APSIsDemoModeEnabled()
{
  if (APSIsDemoModeEnabled_once != -1)
  {
    dispatch_once(&APSIsDemoModeEnabled_once, &__block_literal_global_336);
  }

  return APSIsDemoModeEnabled_enabled;
}

void __APSIsDemoModeEnabled_block_invoke()
{
  if (APSIsAPMSpeaker_sCheckOnce != -1)
  {
    dispatch_once(&APSIsAPMSpeaker_sCheckOnce, &__block_literal_global_16_1786);
  }

  if (!APSIsAPMSpeaker_sIsAPMSpeaker && !IsAppleTV())
  {
    Int64 = APSSettingsGetInt64(@"TetheredDemoMode", 0);
    APSIsDemoModeEnabled_enabled = Int64 != 0;
    if (Int64)
    {
      if (gLogCategory_APSSystemUtils <= 50 && (gLogCategory_APSSystemUtils != -1 || _LogCategory_Initialize()))
      {

        LogPrintF();
      }
    }
  }
}

double APSGetMaxSizePreservingAspectRatio(double result, double a2, double a3, double a4)
{
  if (result > a3 || a2 > a4)
  {
    v5 = a3 / result;
    v6 = a4 / a2;
    if (v5 >= v6)
    {
      v5 = v6;
    }

    return (result * v5 + 0.5);
  }

  return result;
}

uint64_t APSIsValidDeviceEnclosureColorString(CFStringRef str)
{
  v1 = str;
  if (!str)
  {
    return v1;
  }

  IntValue = CFStringGetIntValue(str);
  if ((IntValue & 0x80000000) != 0)
  {
    if (gLogCategory_APSSystemUtils > 60 || gLogCategory_APSSystemUtils == -1 && !_LogCategory_Initialize())
    {
      return 0;
    }

LABEL_14:
    LogPrintF();
    return 0;
  }

  if (IntValue >= 0x3E8)
  {
    if (gLogCategory_APSSystemUtils > 60 || gLogCategory_APSSystemUtils == -1 && !_LogCategory_Initialize())
    {
      return 0;
    }

    goto LABEL_14;
  }

  v3 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%d", IntValue);
  if (!v3)
  {
    APSLogErrorAt(0);
    return 0;
  }

  v4 = v3;
  if (CFEqual(v1, v3))
  {
    v1 = 1;
  }

  else
  {
    if (gLogCategory_APSSystemUtils <= 60 && (gLogCategory_APSSystemUtils != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v1 = 0;
  }

  CFRelease(v4);
  return v1;
}

uint64_t APSIsInAirPlaySenderSystemServer()
{
  if (APSIsInAirPlaySenderSystemServer_sOnceToken != -1)
  {
    dispatch_once(&APSIsInAirPlaySenderSystemServer_sOnceToken, &__block_literal_global_354);
  }

  return APSIsInAirPlaySenderSystemServer_sIsInAirPlaySenderSystemServer;
}

uint64_t __APSIsInAirPlaySenderSystemServer_block_invoke()
{
  if (FigIsAirplaydEnabled())
  {
    result = FigServer_IsAirplayd();
  }

  else
  {
    result = in_audio_mx_server_process();
  }

  APSIsInAirPlaySenderSystemServer_sIsInAirPlaySenderSystemServer = result;
  return result;
}

uint64_t APSIsInAudioSystemServer()
{
  if (APSIsInAudioSystemServer_sOnceToken != -1)
  {
    dispatch_once(&APSIsInAudioSystemServer_sOnceToken, &__block_literal_global_356);
  }

  return APSIsInAudioSystemServer_sIsInAudioSystemServer;
}

uint64_t __APSIsInAudioSystemServer_block_invoke()
{
  result = in_audio_mx_server_process();
  APSIsInAudioSystemServer_sIsInAudioSystemServer = result;
  return result;
}

uint64_t APSGetCPULoadAverage(void *a1)
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = 0.0;
  if (APSGetCPULoadAverage_sOnceToken != -1)
  {
    dispatch_once(&APSGetCPULoadAverage_sOnceToken, &__block_literal_global_358);
  }

  result = getloadavg(v4, 1);
  if (a1)
  {
    *a1 = APSGetCPULoadAverage_sProcessorCount;
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __APSGetCPULoadAverage_block_invoke()
{
  result = sysconf(58);
  APSGetCPULoadAverage_sProcessorCount = result;
  return result;
}

uint64_t APSGetAllowPersistentGroupsOnInfra()
{
  if (APSGetAllowPersistentGroupsOnInfra_sAllowPersistentGroupsOnInfraOnce != -1)
  {
    dispatch_once(&APSGetAllowPersistentGroupsOnInfra_sAllowPersistentGroupsOnInfraOnce, &__block_literal_global_360);
  }

  return APSGetAllowPersistentGroupsOnInfra_sAllowPersistentGroupsOnInfra;
}

uint64_t __APSGetAllowPersistentGroupsOnInfra_block_invoke()
{
  if (APSIsVirtualMachine_sCheckOnceForVM != -1)
  {
    dispatch_once(&APSIsVirtualMachine_sCheckOnceForVM, &__block_literal_global_342);
  }

  APSGetAllowPersistentGroupsOnInfra_sAllowPersistentGroupsOnInfra = APSIsVirtualMachine_sIsVirtualMachine;
  result = IsAppleInternalBuild();
  if (result)
  {
    result = APSSettingsGetIntWithOverrideAndDefault(@"allowPersistentGroupsOnInfra", 0, APSGetAllowPersistentGroupsOnInfra_sAllowPersistentGroupsOnInfra);
    APSGetAllowPersistentGroupsOnInfra_sAllowPersistentGroupsOnInfra = result;
  }

  return result;
}

uint64_t RunAsMobile()
{
  v0 = getpwnam("mobile");
  if (!v0)
  {
    v4 = 4294960587;
    v5 = 4294960587;
    goto LABEL_7;
  }

  v1 = v0;
  v2 = getuid();
  pw_uid = v1->pw_uid;
  if (v2 != pw_uid)
  {
    v5 = setuid(pw_uid);
    v4 = v5;
    if (!v5)
    {
      return v4;
    }

LABEL_7:
    APSLogErrorAt(v5);
    return v4;
  }

  return 0;
}

uint64_t APCUGetFairPlayHWInfoEx(_DWORD *a1, char *a2, size_t a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = MGCopyAnswer();
  if (v6)
  {
    v7 = v6;
    v8 = CFGetTypeID(v6);
    if (v8 == CFStringGetTypeID())
    {
      CString = CFStringGetCString(v7, buffer, 64, 0x600u);
      if (CString)
      {
        v10 = buffer[0];
        if (buffer[0])
        {
          v11 = a1 + 1;
          v12 = buffer;
          v13 = 4;
          while (1)
          {
            if (!v12[1])
            {
LABEL_10:
              v10 = v13 - 4;
              goto LABEL_11;
            }

            if (v13 == 24)
            {
              APSLogErrorAt(0);
              v15 = 4294960553;
              goto LABEL_14;
            }

            if (sscanf(v12, "%2hhx", v11) != 1)
            {
              break;
            }

            ++v13;
            v14 = v12[2];
            v12 += 2;
            v11 = (v11 + 1);
            if (!v14)
            {
              goto LABEL_10;
            }
          }

          APSLogErrorAt(0);
          v15 = 4294960554;
        }

        else
        {
LABEL_11:
          *a1 = v10;
          if (a2)
          {
            strlcpy(a2, buffer, a3);
          }

          v15 = 0;
        }
      }

      else
      {
        APSLogErrorAt(CString);
        v15 = 4294960596;
      }
    }

    else
    {
      APSLogErrorAt(0);
      v15 = 4294960540;
    }

LABEL_14:
    CFRelease(v7);
  }

  else
  {
    APSLogErrorAt(0);
    v15 = 4294960569;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

uint64_t APSDispatchSectionGetTypeID()
{
  if (gAPSDispatchSectionInitOnce != -1)
  {
    dispatch_once_f(&gAPSDispatchSectionInitOnce, 0, _APSDispatchSectionGetTypeID);
  }

  return gAPSDispatchSectionTypeID;
}

uint64_t _APSDispatchSectionGetTypeID()
{
  result = _CFRuntimeRegisterClass();
  gAPSDispatchSectionTypeID = result;
  return result;
}

uint64_t APSDispatchSectionCreate(void *a1)
{
  if (gAPSDispatchSectionInitOnce != -1)
  {
    dispatch_once_f(&gAPSDispatchSectionInitOnce, 0, _APSDispatchSectionGetTypeID);
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v3 = Instance;
    Instance[4] = 0;
    v4 = Instance + 4;
    Instance[2] = 0;
    Instance[3] = 0;
    Instance[5] = Instance + 4;
    v5 = FigSimpleMutexCreate();
    *(v4 - 2) = v5;
    if (v5)
    {
      result = 0;
      *a1 = v3;
      return result;
    }

    CFRelease(v3);
  }

  return 4294960568;
}

uint64_t APSDispatchSectionEnter(uint64_t a1, NSObject *a2, void (__cdecl *a3)(void *), void *a4)
{
  v8 = *(a1 + 16);
  FigSimpleMutexLock();
  v9 = 4294960591;
  if (a2 && a3)
  {
    if (*(a1 + 24))
    {
      v10 = malloc_type_malloc(0x30uLL, 0x10A0040C5FEEBA1uLL);
      if (v10)
      {
        v11 = v10;
        v10[1] = a2;
        v10[2] = 0;
        *(v10 + 6) = 0;
        v10[4] = a3;
        v10[5] = a4;
        dispatch_retain(a2);
        v9 = 0;
        *v11 = 0;
        **(a1 + 40) = v11;
        *(a1 + 40) = v11;
      }

      else
      {
        v9 = 4294960568;
      }
    }

    else
    {
      CFRetain(a1);
      *(a1 + 24) = 1;
      dispatch_async_f(a2, a4, a3);
      v9 = 0;
    }
  }

  v12 = *(a1 + 16);
  FigSimpleMutexUnlock();
  return v9;
}

uint64_t APSDispatchSectionEnterWithPriorityDispatcher(uint64_t a1, const void *a2, int a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a1 + 16);
  FigSimpleMutexLock();
  v11 = 4294960591;
  if (a2 && a4)
  {
    if (*(a1 + 24))
    {
      v12 = malloc_type_malloc(0x30uLL, 0x10A0040C5FEEBA1uLL);
      if (v12)
      {
        v13 = v12;
        v14 = CFRetain(a2);
        v11 = 0;
        v13[1] = 0;
        v13[2] = v14;
        *(v13 + 6) = a3;
        v13[4] = a4;
        v13[5] = a5;
        *v13 = 0;
        **(a1 + 40) = v13;
        *(a1 + 40) = v13;
      }

      else
      {
        v11 = 4294960568;
      }
    }

    else
    {
      v15 = priorityDispatcher_setPriority(a2, a3, 0);
      if (v15)
      {
        v11 = v15;
      }

      else
      {
        v11 = priorityDispatcher_dispatchFunction(a2, a4, a5, 1);
        if (!v11)
        {
          CFRetain(a1);
          *(a1 + 24) = 1;
        }
      }
    }
  }

  v16 = *(a1 + 16);
  FigSimpleMutexUnlock();
  return v11;
}

uint64_t APSDispatchSectionEnterWithBlock(uint64_t a1, NSObject *a2, void *aBlock)
{
  v3 = 4294960591;
  if (a2 && aBlock)
  {
    v6 = _Block_copy(aBlock);
    if (v6)
    {
      v7 = v6;
      v3 = APSDispatchSectionEnter(a1, a2, _APSDispatchSectionDidEnterWithBlock, v6);
      if (v3)
      {
        _Block_release(v7);
      }
    }

    else
    {
      return 4294960568;
    }
  }

  return v3;
}

void _APSDispatchSectionDidEnterWithBlock(void (**a1)(void))
{
  a1[2]();

  _Block_release(a1);
}

uint64_t APSDispatchSectionLeave(uint64_t a1)
{
  v2 = *(a1 + 16);
  FigSimpleMutexLock();
  if (!*(a1 + 24))
  {
    v7 = 4294960587;
    goto LABEL_12;
  }

  v3 = (a1 + 32);
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *v4;
    *v3 = *v4;
    if (!v5)
    {
      *(a1 + 40) = v3;
    }

    v6 = v4[1];
    if (v6)
    {
      dispatch_async_f(v6, v4[5], v4[4]);
      dispatch_release(v4[1]);
    }

    else
    {
      v9 = v4[2];
      if (v9)
      {
        priorityDispatcher_setPriority(v9, *(v4 + 6), 0);
        v7 = priorityDispatcher_dispatchFunction(v4[2], v4[4], v4[5], 1);
        CFRelease(v4[2]);
        goto LABEL_11;
      }
    }

    v7 = 0;
LABEL_11:
    free(v4);
LABEL_12:
    v10 = *(a1 + 16);
    FigSimpleMutexUnlock();
    return v7;
  }

  *(a1 + 24) = 0;
  v8 = *(a1 + 16);
  FigSimpleMutexUnlock();
  CFRelease(a1);
  return 0;
}

uint64_t APSW5LogCollect(__CFString *a1)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v11 = 0;
  v2 = objc_autoreleasePoolPush();
  v3 = [MEMORY[0x277D7BB78] requestWithItemID:83 configuration:0];
  if (v3)
  {
    v4 = v3;
    if (a1)
    {
      v5 = a1;
    }

    else
    {
      v5 = @"AirPlay Performance Issue";
    }

    v6 = [MEMORY[0x277D7BB68] sharedClient];
    v14[0] = v4;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
    v12[0] = @"Reason";
    v12[1] = @"Compress";
    v13[0] = v5;
    v13[1] = MEMORY[0x277CBEC38];
    if ([v6 collectLogs:v7 configuration:objc_msgSend(MEMORY[0x277CBEAC0] update:"dictionaryWithObjects:forKeys:count:" receipts:v13 error:{v12, 2), &__block_literal_global_2030, 0, &v11}])
    {
      v8 = 0;
    }

    else
    {
      APSLogErrorAt(0);
      if (NSErrorToOSStatus())
      {
        v8 = 0;
      }

      else
      {
        v8 = 4294960596;
      }

      if (gLogCategory_APSW5Log <= 50 && (gLogCategory_APSW5Log != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }
    }
  }

  else
  {
    APSLogErrorAt(0);
    v8 = 4294960568;
  }

  objc_autoreleasePoolPop(v2);
  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

void __APSW5LogCollect_block_invoke()
{
  if (gLogCategory_APSW5Log <= 40 && (gLogCategory_APSW5Log != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }
}

uint64_t APSCMBlockBufferCreateWithDispatchData(const __CFAllocator *a1, NSObject *a2, CFTypeRef *a3)
{
  buffer_ptr = 0;
  blockBufferOut = 0;
  size_ptr = 0;
  v3 = 4294960591;
  if (a2 && a3)
  {
    APSTimeProfilerTaskBegin(@"DispatchDataCreateMap");
    v7 = dispatch_data_create_map(a2, &buffer_ptr, &size_ptr);
    APSTimeProfilerTaskEnd(@"DispatchDataCreateMap");
    if (v7)
    {
      customBlockSource.version = 0;
      customBlockSource.AllocateBlock = 0;
      customBlockSource.FreeBlock = bbufUtils_freeDispatchDataBlock;
      customBlockSource.refCon = v7;
      v3 = CMBlockBufferCreateWithMemoryBlock(a1, buffer_ptr, size_ptr, *MEMORY[0x277CBED00], &customBlockSource, 0, size_ptr, 0, &blockBufferOut);
      if (!v3)
      {
        dispatch_retain(v7);
        *a3 = CFRetain(blockBufferOut);
      }

      dispatch_release(v7);
      if (blockBufferOut)
      {
        CFRelease(blockBufferOut);
      }
    }

    else
    {
      return 4294960568;
    }
  }

  return v3;
}

uint64_t APSCMBlockBufferCreateContiguousCopy(const __CFAllocator *a1, const __CFAllocator *a2, CMBlockBufferRef theBuffer, CFTypeRef *a4)
{
  dataPointerOut = 0;
  theBuffera = 0;
  v4 = 4294960591;
  if (theBuffer && a4)
  {
    DataLength = CMBlockBufferGetDataLength(theBuffer);
    if (DataLength)
    {
      v10 = DataLength;
      DataPointer = CMBlockBufferCreateWithMemoryBlock(a1, 0, v10, a2, 0, 0, v10, 1u, &theBuffera);
      if (!DataPointer)
      {
        DataPointer = CMBlockBufferGetDataPointer(theBuffera, 0, 0, 0, &dataPointerOut);
        if (!DataPointer)
        {
          DataPointer = CMBlockBufferCopyDataBytes(theBuffer, 0, v10, dataPointerOut);
          if (!DataPointer)
          {
            goto LABEL_7;
          }
        }
      }
    }

    else
    {
      DataPointer = CMBlockBufferCreateEmpty(a1, 0, 1u, &theBuffera);
      if (!DataPointer)
      {
LABEL_7:
        v4 = 0;
        *a4 = CFRetain(theBuffera);
        goto LABEL_10;
      }
    }

    v4 = DataPointer;
  }

LABEL_10:
  if (theBuffera)
  {
    CFRelease(theBuffera);
  }

  return v4;
}

uint64_t APSCMBlockBufferReplace(CMBlockBufferRef theBuffer, uint64_t a2, OpaqueCMBlockBuffer *a3, size_t a4, uint64_t a5)
{
  v15 = 0;
  lengthAtOffsetOut = 0;
  result = 4294960591;
  if (theBuffer)
  {
    if (a3)
    {
      DataLength = CMBlockBufferGetDataLength(theBuffer);
      v12 = CMBlockBufferGetDataLength(a3);
      result = 4294960591;
      if (a5 + a2 <= DataLength)
      {
        v13 = a5 + a4;
        if (v13 <= v12)
        {
          if (v13 <= a4)
          {
            return 0;
          }

          else
          {
            while (1)
            {
              result = CMBlockBufferGetDataPointer(a3, a4, &lengthAtOffsetOut, 0, &v15);
              if (result)
              {
                break;
              }

              v14 = lengthAtOffsetOut >= v13 - a4 ? v13 - a4 : lengthAtOffsetOut;
              result = CMBlockBufferReplaceDataBytes(v15, theBuffer, a4 + a2, v14);
              if (result)
              {
                break;
              }

              a4 += lengthAtOffsetOut;
              if (a4 >= v13)
              {
                return 0;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t APSCMBlockBufferCreateBigUIntWithUInt64(CFAllocatorRef structureAllocator, unint64_t a2, CMBlockBufferRef *blockBufferOut)
{
  if (a2)
  {
    v6 = ilog2_64();
    v7 = MEMORY[0x223DB3470](structureAllocator, 8, 0x100004000313F17, 0);
    if (!v7)
    {
      return 4294960568;
    }

    v8 = v7;
    *v7 = bswap64(a2);
    v9 = CMBlockBufferCreateWithMemoryBlock(structureAllocator, v7, 8uLL, structureAllocator, 0, 8 - ((v6 >> 3) + 1), (v6 >> 3) + 1, 0, blockBufferOut);
    if (v9)
    {
      CFAllocatorDeallocate(structureAllocator, v8);
    }

    return v9;
  }

  else
  {

    return CMBlockBufferCreateEmpty(structureAllocator, 0, 0, blockBufferOut);
  }
}

uint64_t APSCMBlockBufferGetBigUIntAsUInt64(OpaqueCMBlockBuffer *a1, unint64_t *a2)
{
  if (!a1)
  {
    return 4294960591;
  }

  DataLength = CMBlockBufferGetDataLength(a1);
  if (DataLength > 8)
  {
    return 4294960553;
  }

  if (!a2)
  {
    return 0;
  }

  if (DataLength)
  {
    result = CMBlockBufferCopyDataBytes(a1, 0, DataLength, a2 - DataLength + 8);
    if (result)
    {
      return result;
    }

    v6 = bswap64(*a2);
  }

  else
  {
    v6 = 0;
  }

  result = 0;
  *a2 = v6;
  return result;
}

uint64_t APSCMBlockBufferCreateWithUUID(const __CFUUID *a1, void *a2)
{
  if (!a2)
  {
    return 4294960591;
  }

  CFUUIDGetUUIDBytes(a1);
  v3 = *MEMORY[0x277CBECE8];
  BlockBufferCopyingMemoryBlock = FigCreateBlockBufferCopyingMemoryBlock();
  if (!BlockBufferCopyingMemoryBlock)
  {
    *a2 = 0;
  }

  return BlockBufferCopyingMemoryBlock;
}

uint64_t APSCMBlockBufferCopyAsUUID(OpaqueCMBlockBuffer *a1, CFTypeRef *a2)
{
  *&v6.byte0 = 0;
  *&v6.byte8 = 0;
  if (!a2)
  {
    return 4294960591;
  }

  if (CMBlockBufferGetDataLength(a1) != 16)
  {
    return 4294960553;
  }

  result = CMBlockBufferCopyDataBytes(a1, 0, 0x10uLL, &v6);
  if (!result)
  {
    result = CFUUIDCreateFromUUIDBytes(*MEMORY[0x277CBECE8], v6);
    if (result)
    {
      v5 = result;
      *a2 = CFRetain(result);
      CFRelease(v5);
      return 0;
    }

    else
    {
      *a2 = 0;
    }
  }

  return result;
}

uint64_t APSCMBlockBufferCreateWithString(const __CFAllocator *a1, __CFString *theString, CFStringEncoding encoding, int a4, CMBlockBufferRef *a5)
{
  v19 = 0;
  usedBufLen = 0;
  v5 = 4294960591;
  if (theString && a5)
  {
    if (!a4 || (CStringPtr = CFStringGetCStringPtr(theString, encoding)) == 0 || (v11 = CStringPtr, v12 = strlen(CStringPtr), v12 < 0x1D))
    {
      Length = CFStringGetLength(theString);
      v21.location = 0;
      v21.length = Length;
      if (CFStringGetBytes(theString, v21, encoding, 0, 1u, 0, 0, &usedBufLen) != Length)
      {
        return 4294960579;
      }

      if (usedBufLen < 1)
      {
        return CMBlockBufferCreateEmpty(a1, 0, 0, a5);
      }

      v15 = MEMORY[0x223DB3470](a1);
      if (!v15)
      {
        return 4294960568;
      }

      v16 = v15;
      v22.location = 0;
      v22.length = Length;
      if (CFStringGetBytes(theString, v22, encoding, 0, 1u, v15, usedBufLen, &v19) == Length)
      {
        if (v19 == usedBufLen)
        {
          v5 = CMBlockBufferCreateWithMemoryBlock(a1, v16, v19, a1, 0, 0, v19, 0, a5);
          if (!v5)
          {
            return v5;
          }
        }

        else
        {
          v5 = 4294960548;
        }
      }

      else
      {
        v5 = 4294960579;
      }

      CFAllocatorDeallocate(a1, v16);
      return v5;
    }

    v13 = *MEMORY[0x277CBED00];
    customBlockSource.version = 0;
    customBlockSource.AllocateBlock = 0;
    customBlockSource.FreeBlock = bbufUtils_freeStringBlock;
    customBlockSource.refCon = theString;
    v5 = CMBlockBufferCreateWithMemoryBlock(a1, v11, v12, v13, &customBlockSource, 0, v12, 0, a5);
    if (!v5)
    {
      CFRetain(theString);
    }
  }

  return v5;
}

uint64_t APSCMBlockBufferCopyAsString(const __CFAllocator *a1, CMBlockBufferRef theBuffer, CFStringEncoding a3, int a4, void *a5)
{
  dataPointerOut = 0;
  lengthAtOffsetOut = 0;
  contentsDeallocator = 0;
  v5 = 4294960591;
  if (!theBuffer || !a5)
  {
    return v5;
  }

  DataLength = CMBlockBufferGetDataLength(theBuffer);
  if (!DataLength)
  {
    v5 = 0;
    *a5 = CFRetain(&stru_28358B348);
    goto LABEL_21;
  }

  v12 = DataLength;
  DataPointer = CMBlockBufferGetDataPointer(theBuffer, 0, &lengthAtOffsetOut, 0, &dataPointerOut);
  if (DataPointer)
  {
LABEL_5:
    v5 = DataPointer;
    goto LABEL_21;
  }

  if (a4 && lengthAtOffsetOut == v12)
  {
    if (APSReferencingAllocatorGetOverheadBytes_sOnce != -1)
    {
      dispatch_once_f(&APSReferencingAllocatorGetOverheadBytes_sOnce, &APSReferencingAllocatorGetOverheadBytes_sOverheadBytes, refAllocator_calculateOverheadBytes);
    }

    if (v12 > APSReferencingAllocatorGetOverheadBytes_sOverheadBytes)
    {
      DataPointer = APSReferencingAllocatorCreate(a1, theBuffer, &contentsDeallocator);
      if (DataPointer)
      {
        goto LABEL_5;
      }

      v14 = 0;
      v15 = contentsDeallocator;
LABEL_19:
      v17 = CFStringCreateWithBytesNoCopy(a1, dataPointerOut, v12, a3, 1u, v15);
      *a5 = v17;
      if (v17)
      {
        v5 = 0;
        goto LABEL_21;
      }

      if (v14)
      {
        v5 = 4294960568;
        v15 = contentsDeallocator;
        goto LABEL_18;
      }

      goto LABEL_27;
    }
  }

  if (a1)
  {
    v15 = CFRetain(a1);
  }

  else
  {
    v15 = 0;
  }

  contentsDeallocator = v15;
  v16 = MEMORY[0x223DB3470](v15, v12, 1919546159, 0);
  if (v16)
  {
    v14 = v16;
    dataPointerOut = v16;
    v5 = CMBlockBufferCopyDataBytes(theBuffer, 0, v12, v16);
    if (v5)
    {
LABEL_18:
      CFAllocatorDeallocate(v15, v14);
      goto LABEL_21;
    }

    goto LABEL_19;
  }

LABEL_27:
  v5 = 4294960568;
LABEL_21:
  if (contentsDeallocator)
  {
    CFRelease(contentsDeallocator);
  }

  return v5;
}

uint64_t AirPlayDeviceSupportsAWDLSolo(_DWORD *a1)
{
  if (APSIsVirtualMachine_sCheckOnceForVM != -1)
  {
    dispatch_once(&APSIsVirtualMachine_sCheckOnceForVM, &__block_literal_global_342);
  }

  if (APSIsVirtualMachine_sIsVirtualMachine == 1)
  {
    if (gLogCategory_APSNetworkUtils <= 50 && (gLogCategory_APSNetworkUtils != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v4 = 0;
  }

  else
  {
    pthread_mutex_lock(&AirPlayDeviceSupportsAWDLSolo_soloQueryMutex);
    if ((AirPlayDeviceSupportsAWDLSolo_querySuccessful & 1) == 0)
    {
      v2 = *MEMORY[0x277D029B0];
      Int64 = WiFiManagerGetInt64();
      v4 = Int64 & 1;
      AirPlayDeviceSupportsAWDLSolo_supportsSolo = Int64 & 1;
      AirPlayDeviceSupportsAWDLSolo_querySuccessful = 1;
      if (gLogCategory_APSNetworkUtils > 40)
      {
        goto LABEL_13;
      }

      if (gLogCategory_APSNetworkUtils != -1 || _LogCategory_Initialize())
      {
        LogPrintF();
      }
    }

    v4 = AirPlayDeviceSupportsAWDLSolo_supportsSolo;
    if (gLogCategory_APSNetworkUtils <= 10 && (gLogCategory_APSNetworkUtils != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

LABEL_13:
  pthread_mutex_unlock(&AirPlayDeviceSupportsAWDLSolo_soloQueryMutex);
  if (a1)
  {
    *a1 = 0;
  }

  return v4;
}

char *AirPlayCreateAWDLChannelSequenceString(uint64_t a1, uint64_t a2, unsigned int a3, char **a4)
{
  v17 = *MEMORY[0x277D85DE8];
  if (a3 >= 0x10)
  {
    v4 = 16;
  }

  else
  {
    v4 = a3;
  }

  if (a3)
  {
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v7 += snprintf(&__s1[v7], 256 - v7, "%u", *(a1 + v8));
      if (v7 > 0xFF)
      {
        break;
      }

      if (*(a1 + v8))
      {
        v9 = *(a2 + 4 * v8);
        if ((v9 & 0x400) != 0)
        {
          v12 = snprintf(&__s1[v7], 256 - v7, "++");
          goto LABEL_13;
        }

        if ((v9 & 4) != 0)
        {
          v10 = 256 - v7;
          v11 = &__s1[v7];
          if ((v9 & 0x200) != 0)
          {
            v12 = snprintf(v11, v10, "+");
          }

          else
          {
            v12 = snprintf(v11, v10, "-");
          }

LABEL_13:
          v7 += v12;
          if (v7 > 0xFF)
          {
            break;
          }
        }
      }

      if (v8 >= (v4 - 1) || (v7 += snprintf(&__s1[v7], 256 - v7, ", "), v7 < 0x100))
      {
        if (v4 != ++v8)
        {
          continue;
        }
      }

      break;
    }
  }

  result = strdup(__s1);
  *a4 = result;
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t APSCopyNetworkInterfaceType(uint64_t a1, void *a2)
{
  if (a2)
  {
    if (!a1)
    {
      APSLogErrorAt(0);
      return 0;
    }

    v3 = *MEMORY[0x277CBECE8];
    v4 = _SCNetworkInterfaceCreateWithBSDName();
    if (v4)
    {
      v5 = v4;
      InterfaceType = SCNetworkInterfaceGetInterfaceType(v4);
      if (InterfaceType)
      {
        InterfaceType = CFRetain(InterfaceType);
      }

      *a2 = InterfaceType;
      CFRelease(v5);
      return 0;
    }

    APSLogErrorAt(0);
    return 4294960568;
  }

  else
  {
    APSLogErrorAt(0);
    return 4294960591;
  }
}

uint64_t APSNetworkCreateIPv6AddressWithScope(const __CFString *a1, uint64_t a2, uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  if (!a1 || !(a2 | a3))
  {
    goto LABEL_25;
  }

  location = CFStringFind(a1, @"%", 0).location;
  v5 = MEMORY[0x277CBECE8];
  if (location == -1)
  {
    v10 = CFRetain(a1);
LABEL_8:
    MutableCopy = v10;
    goto LABEL_9;
  }

  v6 = location;
  result.location = 0;
  result.length = 0;
  v16.length = CFStringGetLength(a1) - location;
  v16.location = v6;
  v7 = CFStringFindWithOptions(a1, @"]", v16, 0, &result);
  v8 = *v5;
  if (!v7)
  {
    v17.location = 0;
    v17.length = v6;
    v10 = CFStringCreateWithSubstring(v8, a1, v17);
    goto LABEL_8;
  }

  MutableCopy = CFStringCreateMutableCopy(v8, 0, a1);
  v15.length = result.location - v6;
  v15.location = v6;
  CFStringDelete(MutableCopy, v15);
LABEL_9:
  if (gLogCategory_APSNetworkUtils <= 30 && (gLogCategory_APSNetworkUtils != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (!CFStringGetCString(MutableCopy, &result, 128, 0x8000100u))
  {
    goto LABEL_23;
  }

  if (!StringToSockAddr())
  {
    if (gLogCategory_APSNetworkUtils <= 30 && (gLogCategory_APSNetworkUtils != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    if (gLogCategory_APSNetworkUtils > 40 || gLogCategory_APSNetworkUtils == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_23;
    }

    goto LABEL_21;
  }

  if (gLogCategory_APSNetworkUtils <= 60 && (gLogCategory_APSNetworkUtils != -1 || _LogCategory_Initialize()))
  {
LABEL_21:
    LogPrintF();
  }

LABEL_23:
  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

LABEL_25:
  v11 = *MEMORY[0x277D85DE8];
  return 0;
}

CFMutableArrayRef APSNetworkCopyConvertedLinkLocalIPv6Addresses(const __CFArray *a1, uint64_t a2, uint64_t a3)
{
  if (!a1 || CFArrayGetCount(a1) < 1 || !(a2 | a3))
  {
    return 0;
  }

  v6 = *MEMORY[0x277CBECE8];
  Count = CFArrayGetCount(a1);
  Mutable = CFArrayCreateMutable(v6, Count, MEMORY[0x277CBF128]);
  if (Mutable)
  {
    FigCFArrayApplyBlock();
  }

  return Mutable;
}

void __APSNetworkCopyConvertedLinkLocalIPv6Addresses_block_invoke(uint64_t a1, const __CFString *a2)
{
  IPv6AddressWithScope = APSNetworkCreateIPv6AddressWithScope(a2, *(a1 + 32), *(a1 + 40));
  if (IPv6AddressWithScope)
  {
    v5 = IPv6AddressWithScope;
    if (gLogCategory_APSNetworkUtils <= 30 && (gLogCategory_APSNetworkUtils != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    CFArrayAppendValue(*(a1 + 48), v5);

    CFRelease(v5);
  }

  else
  {
    v6 = *(a1 + 48);

    CFArrayAppendValue(v6, a2);
  }
}

uint64_t APSAudioIOAssertionGetTypeID()
{
  if (gAPSAudioIOAssertionInitOnce != -1)
  {
    dispatch_once_f(&gAPSAudioIOAssertionInitOnce, 0, _APSAudioIOAssertionGetTypeID);
  }

  return gAPSAudioIOAssertionTypeID;
}

uint64_t _APSAudioIOAssertionGetTypeID()
{
  result = _CFRuntimeRegisterClass();
  gAPSAudioIOAssertionTypeID = result;
  return result;
}

void _APSAudioIOAssertionFinalize(uint64_t a1)
{
  if (gLogCategory_APSAudioIOAssertion <= 50 && (gLogCategory_APSAudioIOAssertion != -1 || _LogCategory_Initialize()))
  {
    v8 = *(a1 + 16);
    LogPrintF();
  }

  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = *v2;
    FigSimpleMutexLock();
    v4 = *(a1 + 24);
    v5 = *(v4 + 16) - 1;
    *(v4 + 16) = v5;
    if (!v5)
    {
      audioIOAssertion_setAudioIOState(v4, 0);
      v4 = *(a1 + 24);
    }

    v6 = *v4;
    FigSimpleMutexUnlock();
  }

  v7 = *(a1 + 16);
  if (v7)
  {

    CFRelease(v7);
  }
}

uint64_t audioIOAssertion_setAudioIOState(uint64_t *a1, int a2)
{
  inPropertyData = a2 != 0;
  v3 = *a1;
  FigSimpleMutexCheckIsLockedOnThisThread();
  v4 = *(a1 + 5);
  if (v4)
  {
    if (v4 == 1836589345)
    {
      v6 = *(a1 + 6);
      getpid();
      CMSessionMgrSystemSoundActivateForPID();
      v4 = 0;
    }

    else if (v4 == 1667330849)
    {
      v5 = AudioServicesSetProperty(0x61637421u, 4u, a1 + 3, 4u, &inPropertyData);
      v4 = v5;
      if (v5)
      {
        APSLogErrorAt(v5);
      }
    }

    else
    {
      v4 = 4294960561;
    }
  }

  if (gLogCategory_APSAudioIOAssertion <= 110 && (gLogCategory_APSAudioIOAssertion != -1 || _LogCategory_Initialize()))
  {
    v7 = *(a1 + 6);
    v9 = *(a1 + 5);
    LogPrintF();
  }

  return v4;
}

uint64_t APSAudioIOAssertionCreate(__CFString *a1, CFTypeRef *a2)
{
  if (audioIOAssertion_getManager_sManagerOnce == -1)
  {
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_20:
    APSLogErrorAt(0);
    return 4294960591;
  }

  dispatch_once_f(&audioIOAssertion_getManager_sManagerOnce, &audioIOAssertion_getManager_sManager, audioIOAssertion_initManager);
  if (!a2)
  {
    goto LABEL_20;
  }

LABEL_3:
  if (gAPSAudioIOAssertionInitOnce != -1)
  {
    dispatch_once_f(&gAPSAudioIOAssertionInitOnce, 0, _APSAudioIOAssertionGetTypeID);
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    APSLogErrorAt(0);
    return 4294960568;
  }

  v5 = Instance;
  *(Instance + 16) = 0;
  *(Instance + 24) = 0;
  if (a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = &stru_28358B348;
  }

  v5[2] = CFRetain(v6);
  FigSimpleMutexLock();
  v7 = dword_27D00BDB0;
  if (dword_27D00BDB0)
  {
    goto LABEL_12;
  }

  v8 = audioIOAssertion_setAudioIOState(&audioIOAssertion_getManager_sManager, 1);
  if (!v8)
  {
    v7 = dword_27D00BDB0;
LABEL_12:
    dword_27D00BDB0 = v7 + 1;
    v5[3] = &audioIOAssertion_getManager_sManager;
    if (gLogCategory_APSAudioIOAssertion <= 50 && (gLogCategory_APSAudioIOAssertion != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v9 = 0;
    *a2 = CFRetain(v5);
    goto LABEL_17;
  }

  v9 = v8;
  APSLogErrorAt(v8);
LABEL_17:
  FigSimpleMutexUnlock();
  CFRelease(v5);
  return v9;
}

uint64_t audioIOAssertion_initManager(uint64_t a1)
{
  *a1 = FigSimpleMutexCreate();
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
  *(a1 + 8) = dispatch_queue_create("APSAudioIOAssertionManager.timer", v2);
  *(a1 + 16) = 0x6361732100000000;
  *(a1 + 24) = APSSettingsGetIntWithOverrideAndDefault(@"audioIOAssertionSSID", 0, 3100);
  result = in_audio_mx_server_process();
  if (result)
  {
    *(a1 + 20) = 1836589345;
  }

  return result;
}

uint64_t APSAudioIOAssertionUntilTime(__CFString *a1, dispatch_time_t a2)
{
  context = 0;
  v3 = APSAudioIOAssertionCreate(a1, &context);
  v4 = v3;
  if (v3)
  {
    APSLogErrorAt(v3);
  }

  else
  {
    dispatch_after_f(a2, *(*(context + 3) + 8), context, MEMORY[0x277CBE550]);
  }

  return v4;
}

uint64_t _APSAudioIOAssertionSetActivationMethod(int a1)
{
  if (audioIOAssertion_getManager_sManagerOnce != -1)
  {
    dispatch_once_f(&audioIOAssertion_getManager_sManagerOnce, &audioIOAssertion_getManager_sManager, audioIOAssertion_initManager);
  }

  FigSimpleMutexLock();
  dword_27D00BDB4 = a1;

  return FigSimpleMutexUnlock();
}

uint64_t _APSAudioIOAssertionGetActivationCount()
{
  if (audioIOAssertion_getManager_sManagerOnce != -1)
  {
    dispatch_once_f(&audioIOAssertion_getManager_sManagerOnce, &audioIOAssertion_getManager_sManager, audioIOAssertion_initManager);
  }

  FigSimpleMutexLock();
  v0 = dword_27D00BDB0;
  FigSimpleMutexUnlock();
  return v0;
}

uint64_t APSPairingAuthenticationCoreUtilsSignBytesForSelfIdentity(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = 0;
  v25 = &v24;
  v26 = 0x3052000000;
  v27 = __Block_byref_object_copy__2107;
  v28 = __Block_byref_object_dispose__2108;
  v29 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3052000000;
  v21 = __Block_byref_object_copy__2107;
  v22 = __Block_byref_object_dispose__2108;
  v23 = 0;
  v17 = 0;
  v6 = objc_alloc_init(MEMORY[0x277D44150]);
  if (!v6 || (v7 = dispatch_semaphore_create(0)) == 0)
  {
    APSLogErrorAt(0);
    v8 = 0;
    v10 = 4294960568;
    goto LABEL_20;
  }

  v8 = v7;
  if (gLogCategory_APSPairingAuthenticationCoreUtils <= 50 && (gLogCategory_APSPairingAuthenticationCoreUtils != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  dispatch_retain(v8);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __APSPairingAuthenticationCoreUtilsSignBytesForSelfIdentity_block_invoke;
  v16[3] = &unk_2784A3808;
  v16[5] = &v24;
  v16[6] = &v18;
  v16[4] = v8;
  [v6 getIdentitiesWithFlags:1 completion:v16];
  dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
  if (gLogCategory_APSPairingAuthenticationCoreUtils <= 50 && (gLogCategory_APSPairingAuthenticationCoreUtils != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v9 = [v19[5] code];
  v10 = v9;
  if (v9)
  {
    goto LABEL_27;
  }

  v11 = [v25[5] firstObject];
  v12 = v11;
  if (!v11)
  {
    goto LABEL_28;
  }

  v13 = [v11 signDataPtr:a1 dataLen:a2 signatureBytes:a3 error:&v17];
  v9 = [v17 code];
  if (v9)
  {
    v10 = v9;
LABEL_27:
    APSLogErrorAt(v9);
    goto LABEL_20;
  }

  if ((v13 & 1) == 0)
  {
LABEL_28:
    APSLogErrorAt(0);
    v10 = 4294960587;
    goto LABEL_20;
  }

  if (gLogCategory_APSPairingAuthenticationCoreUtils <= 30 && (gLogCategory_APSPairingAuthenticationCoreUtils != -1 || _LogCategory_Initialize()))
  {
    v15 = v12;
    LogPrintF();
  }

  v10 = 0;
LABEL_20:

  if (v8)
  {
    dispatch_release(v8);
  }

  [v6 invalidate];

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v24, 8);
  return v10;
}

void sub_222310A04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void __APSPairingAuthenticationCoreUtilsSignBytesForSelfIdentity_block_invoke(uint64_t a1, void *a2, void *a3)
{
  *(*(*(a1 + 40) + 8) + 40) = a2;
  *(*(*(a1 + 48) + 8) + 40) = a3;
  dispatch_semaphore_signal(*(a1 + 32));
  v5 = *(a1 + 32);

  dispatch_release(v5);
}

uint64_t APSPairingAuthenticationCoreUtilsVerifySignatureForSameAccount(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v43 = *MEMORY[0x277D85DE8];
  v36 = 0;
  v37 = &v36;
  v38 = 0x3052000000;
  v39 = __Block_byref_object_copy__2107;
  v40 = __Block_byref_object_dispose__2108;
  v41 = 0;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3052000000;
  v33 = __Block_byref_object_copy__2107;
  v34 = __Block_byref_object_dispose__2108;
  v35 = 0;
  v6 = objc_alloc_init(MEMORY[0x277D44150]);
  if (v6 && (v7 = dispatch_semaphore_create(0)) != 0)
  {
    v8 = v7;
    if (gLogCategory_APSPairingAuthenticationCoreUtils <= 50 && (gLogCategory_APSPairingAuthenticationCoreUtils != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    dispatch_retain(v8);
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __APSPairingAuthenticationCoreUtilsVerifySignatureForSameAccount_block_invoke;
    v29[3] = &unk_2784A3808;
    v29[5] = &v36;
    v29[6] = &v30;
    v29[4] = v8;
    [v6 getIdentitiesWithFlags:2 completion:v29];
    dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
    if (gLogCategory_APSPairingAuthenticationCoreUtils <= 50 && (gLogCategory_APSPairingAuthenticationCoreUtils != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v9 = [v31[5] code];
    v10 = v9;
    if (v9)
    {
      APSLogErrorAt(v9);
    }

    else if (v37[5])
    {
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v11 = v37[5];
      v12 = [v11 countByEnumeratingWithState:&v25 objects:v42 count:16];
      v23 = v6;
      if (v12)
      {
        v13 = *v26;
LABEL_15:
        v14 = 0;
        while (1)
        {
          if (*v26 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v25 + 1) + 8 * v14);
          v24 = 0;
          v16 = [v15 verifySignaturePtr:a3 signatureLen:64 dataPtr:a1 dataLen:a2 error:{&v24, v21, v22}];
          v17 = v24;
          if (((v24 == 0) & v16) != 0)
          {
            if (gLogCategory_APSPairingAuthenticationCoreUtils <= 30 && (gLogCategory_APSPairingAuthenticationCoreUtils != -1 || _LogCategory_Initialize()))
            {
              v21 = v15;
              LogPrintF();
            }

            v10 = 0;
            goto LABEL_33;
          }

          if (gLogCategory_APSPairingAuthenticationCoreUtils > 30)
          {
            goto LABEL_23;
          }

          if (gLogCategory_APSPairingAuthenticationCoreUtils == -1)
          {
            if (!_LogCategory_Initialize())
            {
              goto LABEL_23;
            }

            v17 = v24;
          }

          v21 = v15;
          v22 = v17;
          LogPrintF();
LABEL_23:
          if (v12 == ++v14)
          {
            v18 = [v11 countByEnumeratingWithState:&v25 objects:v42 count:16];
            v12 = v18;
            if (v18)
            {
              goto LABEL_15;
            }

            break;
          }
        }
      }

      APSLogErrorAt(0);
      v10 = 4294960580;
LABEL_33:
      v6 = v23;
    }

    else
    {
      APSLogErrorAt(0);
      v10 = 4294960587;
    }
  }

  else
  {
    APSLogErrorAt(0);
    v8 = 0;
    v10 = 4294960568;
  }

  if (v8)
  {
    dispatch_release(v8);
  }

  [v6 invalidate];

  _Block_object_dispose(&v30, 8);
  _Block_object_dispose(&v36, 8);
  v19 = *MEMORY[0x277D85DE8];
  return v10;
}

void sub_222310F40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a37, 8);
  _Unwind_Resume(a1);
}

void __APSPairingAuthenticationCoreUtilsVerifySignatureForSameAccount_block_invoke(uint64_t a1, void *a2, void *a3)
{
  *(*(*(a1 + 40) + 8) + 40) = a2;
  *(*(*(a1 + 48) + 8) + 40) = a3;
  dispatch_semaphore_signal(*(a1 + 32));
  v5 = *(a1 + 32);

  dispatch_release(v5);
}

uint64_t tGvVBtfGSsOH67XQ()
{
  if (TyZKBvs2dXtrLjcUCR != -1)
  {
    dispatch_once_f(&TyZKBvs2dXtrLjcUCR, 0, Ja1EGqpVx);
  }

  return ItH26wrAHoeKhrXaDR;
}

uint64_t Ja1EGqpVx()
{
  result = _CFRuntimeRegisterClass();
  ItH26wrAHoeKhrXaDR = result;
  return result;
}

uint64_t yItiyMt(uint64_t a1)
{
  result = NhB9kxUGdXXE(a1);
  if (*(a1 + 336))
  {
    result = AES_CTR_Final();
    *(a1 + 336) = 0;
  }

  for (i = 16; i != 448; ++i)
  {
    *(a1 + i) = 0;
  }

  return result;
}

uint64_t NhB9kxUGdXXE(uint64_t a1)
{
  *(a1 + 340) = 0;
  v2 = *(a1 + 344);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 344) = 0;
  }

  v3 = *(a1 + 352);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 352) = 0;
  }

  if (*(a1 + 360))
  {
    SRP_free();
    *(a1 + 360) = 0;
  }

  result = *(a1 + 368);
  if (result)
  {
    result = cstr_free();
    *(a1 + 368) = 0;
  }

  if (*(a1 + 424))
  {
    result = AES_GCM_Final();
    *(a1 + 424) = 0;
  }

  if (*(a1 + 425))
  {
    result = AES_GCM_Final();
    *(a1 + 425) = 0;
  }

  return result;
}

uint64_t gQblcfSzZBQsYCCV(uint64_t *a1, int a2)
{
  if (B0qLAG != -1)
  {
    dispatch_once_f(&B0qLAG, 0, _GlobalInitialize);
  }

  if (tHHVsHfAtS9mW)
  {
    if (TyZKBvs2dXtrLjcUCR != -1)
    {
      dispatch_once_f(&TyZKBvs2dXtrLjcUCR, 0, Ja1EGqpVx);
    }

    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      *(Instance + 20) = 0u;
      *(Instance + 404) = 0u;
      *(Instance + 420) = 0u;
      v5 = 1634747209;
      *(Instance + 372) = 0u;
      *(Instance + 388) = 0u;
      *(Instance + 340) = 0u;
      *(Instance + 356) = 0u;
      *(Instance + 308) = 0u;
      *(Instance + 324) = 0u;
      *(Instance + 276) = 0u;
      *(Instance + 292) = 0u;
      *(Instance + 244) = 0u;
      *(Instance + 260) = 0u;
      *(Instance + 212) = 0u;
      *(Instance + 228) = 0u;
      *(Instance + 180) = 0u;
      *(Instance + 196) = 0u;
      *(Instance + 148) = 0u;
      *(Instance + 164) = 0u;
      *(Instance + 116) = 0u;
      *(Instance + 132) = 0u;
      *(Instance + 84) = 0u;
      *(Instance + 100) = 0u;
      *(Instance + 52) = 0u;
      *(Instance + 68) = 0u;
      *(Instance + 36) = 0u;
      *(Instance + 432) = 0u;
      *(Instance + 16) = a2;
      if (a2)
      {
        v5 = 1634751305;
        v6 = 11;
        v7 = 1634751312;
        v8 = @"AirPlay Server Peer";
        v9 = @"AirPlay Server Identity";
      }

      else
      {
        v7 = 1634747216;
        v6 = 1;
        v8 = @"AirPlay Client Peer";
        v9 = @"AirPlay Client Identity";
      }

      v10 = 0;
      *(Instance + 24) = v9;
      *(Instance + 32) = v5;
      *(Instance + 40) = v8;
      *(Instance + 48) = v7;
      *(Instance + 52) = v6;
      *(Instance + 56) = v6;
      *a1 = Instance;
    }

    else
    {
      APSLogErrorAt(0);
      return 4294960568;
    }
  }

  else
  {
    APSLogErrorAt(0);
    return 4294960534;
  }

  return v10;
}

dispatch_semaphore_t _GlobalInitialize()
{
  result = dispatch_semaphore_create(1);
  tHHVsHfAtS9mW = result;
  return result;
}

uint64_t XoN3GgjZNCvkN1T8I3(uint64_t a1)
{
  result = NhB9kxUGdXXE(a1);
  if (*(a1 + 16))
  {
    v3 = 11;
  }

  else
  {
    v3 = 1;
  }

  *(a1 + 52) = v3;
  *(a1 + 56) = v3;
  if (*(a1 + 336))
  {
    result = AES_CTR_Final();
    *(a1 + 336) = 0;
  }

  return result;
}

__n128 aMoe8v8GNE9T(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 220);
  v3 = *(a1 + 236);
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

__n128 Dk7hjUuq(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 236) = *(a2 + 16);
  *(a1 + 220) = result;
  return result;
}

uint64_t PCFdAVst(uint64_t a1, const void *a2, CC_LONG a3, const void *a4, CC_LONG a5, _OWORD *a6, _OWORD *a7)
{
  v7 = *(a1 + 56);
  if (*(a1 + 16))
  {
    if (v7 != 14)
    {
      goto LABEL_6;
    }

LABEL_5:
    Mb6C1FLt7vW91ix(a1, a2, a3, a4, a5, a6, a7);
    return 0;
  }

  if (v7 == 5)
  {
    goto LABEL_5;
  }

LABEL_6:
  APSLogErrorAt(0);
  return 4294960587;
}

uint64_t Mb6C1FLt7vW91ix(uint64_t result, const void *a2, CC_LONG a3, const void *a4, CC_LONG a5, _OWORD *a6, _OWORD *a7)
{
  v10 = result;
  v17 = *MEMORY[0x277D85DE8];
  memset(&v15, 0, sizeof(v15));
  if (a6)
  {
    CC_SHA512_Init(&v15);
    CC_SHA512_Update(&v15, a2, a3);
    CC_SHA512_Update(&v15, (v10 + 252), 0x20u);
    result = CC_SHA512_Final(md, &v15);
    *a6 = *md;
  }

  if (a7)
  {
    CC_SHA512_Init(&v15);
    CC_SHA512_Update(&v15, a4, a5);
    CC_SHA512_Update(&v15, (v10 + 252), 0x20u);
    result = CC_SHA512_Final(md, &v15);
    *a7 = *md;
  }

  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t h4BvW7X(uint64_t a1, __int128 *a2, uint64_t a3, _OWORD *a4, unint64_t a5, void *a6, _BYTE *a7)
{
  v14 = *(a1 + 52);
  if (v14 > 10)
  {
    if ((v14 - 11) >= 2)
    {
      goto LABEL_15;
    }

    if (gLogCategory_AirPlayPairing <= 30 && (gLogCategory_AirPlayPairing != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    if (a3 == 32 && a5 > 0x1F)
    {
      v17 = i9kF3TCOFmU(a1, a2, 0);
      if (v17)
      {
        v16 = v17;
      }

      else
      {
        v17 = KUY675K4ryxHGzD5GVD(a1, 1, a4, 0);
        if (!v17)
        {
          *a6 = 32;
          *a7 = 1;
          *(a1 + 52) = 12;
          if (gLogCategory_AirPlayPairing > 40 || gLogCategory_AirPlayPairing == -1 && !_LogCategory_Initialize())
          {
            return 0;
          }

LABEL_41:
          LogPrintF();
          return 0;
        }

        v16 = v17;
      }

LABEL_65:
      APSLogErrorAt(v17);
      goto LABEL_46;
    }

LABEL_63:
    APSLogErrorAt(0);
    v16 = 4294960553;
    goto LABEL_46;
  }

  switch(v14)
  {
    case 1:
      goto LABEL_5;
    case 2:
      if (gLogCategory_AirPlayPairing <= 30 && (gLogCategory_AirPlayPairing != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      if (a3 == 32)
      {
        v18 = *a2;
        *(a1 + 236) = a2[1];
        *(a1 + 220) = v18;
        v17 = i9kF3TCOFmU(a1, a1 + 220, 0);
        if (!v17)
        {
          *a6 = 0;
          *a7 = 1;
          *(a1 + 52) = 3;
          if (gLogCategory_AirPlayPairing > 40 || gLogCategory_AirPlayPairing == -1 && !_LogCategory_Initialize())
          {
            return 0;
          }

          goto LABEL_41;
        }

        v16 = v17;
        goto LABEL_65;
      }

      goto LABEL_63;
    case 3:
LABEL_5:
      if (gLogCategory_AirPlayPairing <= 30 && (gLogCategory_AirPlayPairing != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      if (!a3)
      {
        if (a5 > 0x1F)
        {
          v17 = KUY675K4ryxHGzD5GVD(a1, 1, a4, 0);
          v16 = v17;
          if (!v17)
          {
            *a6 = 32;
            *a7 = 0;
            *(a1 + 52) = 2;
            return v16;
          }

          goto LABEL_65;
        }

        goto LABEL_63;
      }

      APSLogErrorAt(0);
      v16 = 4294960591;
LABEL_46:
      v20 = gLogCategory_AirPlayPairing;
      if (*(a1 + 16))
      {
        v21 = 11;
      }

      else
      {
        v21 = 1;
      }

      *(a1 + 52) = v21;
      if (v20 <= 60 && (v20 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      return v16;
  }

LABEL_15:
  if (gLogCategory_AirPlayPairing < 61)
  {
    if (gLogCategory_AirPlayPairing == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_45;
      }

      v22 = *(a1 + 52);
    }

    LogPrintF();
LABEL_45:
    v16 = 4294960587;
    goto LABEL_46;
  }

  if (*(a1 + 16))
  {
    v15 = 11;
  }

  else
  {
    v15 = 1;
  }

  *(a1 + 52) = v15;
  return 4294960587;
}

uint64_t KUY675K4ryxHGzD5GVD(uint64_t a1, int a2, _OWORD *a3, _OWORD *a4)
{
  v48 = *MEMORY[0x277D85DE8];
  dispatch_semaphore_wait(tHHVsHfAtS9mW, 0xFFFFFFFFFFFFFFFFLL);
  v6 = 0;
  v7 = 1;
  v42 = 1;
  v8 = *MEMORY[0x277CDC228];
  v9 = *MEMORY[0x277CDC238];
  v10 = *MEMORY[0x277CDBEC8];
  v11 = *MEMORY[0x277CDC188];
  v39 = *MEMORY[0x277CDC558];
  v37 = *MEMORY[0x277CDBF20];
  key = *MEMORY[0x277CDBED8];
  cf2 = *MEMORY[0x277CDBF10];
  v35 = *MEMORY[0x277CDBEF8];
  v36 = *MEMORY[0x277CDC5E8];
  v33 = *MEMORY[0x277CDC428];
  v31 = *MEMORY[0x277CDC080];
  v32 = *MEMORY[0x277CDC430];
  v12 = *MEMORY[0x277CDC120];
  v29 = *MEMORY[0x277CDC120];
  v30 = *MEMORY[0x277CDBFA0];
  v40 = *MEMORY[0x277CBED28];
  if (a4)
  {
    v13 = *MEMORY[0x277CBED28];
  }

  v27 = *MEMORY[0x277CDC550];
  while (1)
  {
    if (v6)
    {
      CFRelease(v6);
    }

    v22 = *(a1 + 32);
    v6 = KeychainCopyMatchingFormatted();
    if (!a2 || v42 == -25293)
    {
      goto LABEL_23;
    }

    v26 = v7;
    v23 = *(a1 + 32);
    KeychainDeleteFormatted();
    cced25519_make_key_pair_compat();
    DataToHexCStringEx();
    DataToHexCStringEx();
    v18 = *(a1 + 24);
    SNPrintF();
    strlen(__s);
    v25 = *(a1 + 24);
    v24 = *(a1 + 32);
    v42 = KeychainAddFormatted();
    if (!v42)
    {
      break;
    }

    if (gLogCategory_AirPlayPairing <= 40 && (gLogCategory_AirPlayPairing != -1 || _LogCategory_Initialize()))
    {
      v19 = *(a1 + 24);
      LogPrintF();
    }

    usleep(0x4E20u);
    ++v7;
    if (v26 == 10)
    {
      if (gLogCategory_AirPlayPairing <= 60 && (gLogCategory_AirPlayPairing != -1 || _LogCategory_Initialize()))
      {
        v21 = *(a1 + 24);
        goto LABEL_21;
      }

      goto LABEL_23;
    }
  }

  v14 = v47;
  *a3 = v46;
  a3[1] = v14;
  if (a4)
  {
    v15 = v45;
    *a4 = v44;
    a4[1] = v15;
  }

  if (gLogCategory_AirPlayPairing <= 50 && (gLogCategory_AirPlayPairing != -1 || _LogCategory_Initialize()))
  {
    v20 = *(a1 + 24);
LABEL_21:
    LogPrintF();
  }

LABEL_23:
  if (v6)
  {
    CFRelease(v6);
  }

  dispatch_semaphore_signal(tHHVsHfAtS9mW);
  result = v42;
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t i9kF3TCOFmU(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = *MEMORY[0x277D85DE8];
  DataToHexCStringEx();
  v5 = *MEMORY[0x277CDC228];
  v6 = *MEMORY[0x277CDC238];
  v7 = *MEMORY[0x277CDBEC8];
  v8 = *MEMORY[0x277CDC188];
  v9 = *MEMORY[0x277CDBF20];
  v19 = *(a1 + 48);
  v15 = *MEMORY[0x277CDC228];
  Formatted = CFPropertyListCreateFormatted();
  if (Formatted)
  {
    updated = Formatted;
    APSLogErrorAt(Formatted);
  }

  else
  {
    if (!a3)
    {
      v16 = *(a1 + 40);
      SNPrintF();
    }

    dispatch_semaphore_wait(tHHVsHfAtS9mW, 0xFFFFFFFFFFFFFFFFLL);
    v11 = *MEMORY[0x277CDC080];
    updated = KeychainUpdateFormatted();
    if (updated == -25300)
    {
      v23 = *MEMORY[0x277CDC120];
      v24 = *(a1 + 40);
      v22 = *MEMORY[0x277CDBFA0];
      v21 = *(a1 + 48);
      v18 = *MEMORY[0x277CDBED8];
      v20 = *MEMORY[0x277CDBEF8];
      updated = KeychainAddFormatted();
    }

    if (updated != -25293 && updated)
    {
      APSLogErrorAt(updated);
    }

    dispatch_semaphore_signal(tHHVsHfAtS9mW);
  }

  if (updated != -25293 && updated && gLogCategory_AirPlayPairing <= 60 && (gLogCategory_AirPlayPairing != -1 || _LogCategory_Initialize()))
  {
    v17 = *(a1 + 40);
    LogPrintF();
  }

  v13 = *MEMORY[0x277D85DE8];
  return updated;
}

uint64_t VBAEFt(uint64_t a1, __int128 *a2, unint64_t a3, uint64_t a4, unint64_t a5, void *a6, _BYTE *a7)
{
  v11 = a3;
  v12 = a2;
  v65 = *MEMORY[0x277D85DE8];
  v14 = *(a1 + 16);
  if (v14 == 1)
  {
    if (a3 <= 3)
    {
      goto LABEL_132;
    }

    if (*a2)
    {
      *(a1 + 56) = 11;
    }

    v12 = (a2 + 4);
    v11 = a3 - 4;
  }

  v15 = *(a1 + 56);
  if (v15 <= 4)
  {
    if (v15 == 1)
    {
      goto LABEL_22;
    }

    if (v15 != 2)
    {
      if (v15 != 4)
      {
        goto LABEL_25;
      }

      if (gLogCategory_AirPlayPairing <= 30 && (gLogCategory_AirPlayPairing != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      if (v11)
      {
        goto LABEL_132;
      }

      *a6 = 0;
      *a7 = 1;
      *(a1 + 56) = 5;
      if (gLogCategory_AirPlayPairing > 40 || gLogCategory_AirPlayPairing == -1 && !_LogCategory_Initialize())
      {
LABEL_95:
        v17 = 0;
        goto LABEL_103;
      }

LABEL_75:
      LogPrintF();
      goto LABEL_95;
    }

    if (gLogCategory_AirPlayPairing <= 30 && (gLogCategory_AirPlayPairing != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    if (v11 != 96)
    {
      goto LABEL_132;
    }

    v32 = *v12;
    *(a1 + 204) = v12[1];
    *(a1 + 188) = v32;
    v33 = v12[3];
    v61 = v12[2];
    v62 = v33;
    v34 = v12[5];
    v63 = v12[4];
    v64 = v34;
    cccurve25519();
    for (i = 92; i != 124; ++i)
    {
      *(a1 + i) = 0;
    }

    Mb6C1FLt7vW91ix(a1, "Pair-Verify-AES-Key", 0x13u, "Pair-Verify-AES-IV", 0x12u, v60, v59);
    if (*(a1 + 336))
    {
      AES_CTR_Final();
      *(a1 + 336) = 0;
    }

    v18 = AES_CTR_Init();
    v17 = v18;
    for (j = 0; j != 64; ++j)
    {
      *(v60 + j) = 0;
    }

    for (k = 0; k != 64; ++k)
    {
      *(v59 + k) = 0;
    }

    if (v18)
    {
      goto LABEL_133;
    }

    *(a1 + 336) = 1;
    v18 = AES_CTR_Update();
    if (v18)
    {
      v17 = v18;
      goto LABEL_133;
    }

    v45 = *(a1 + 188);
    v49 = *(a1 + 204);
    v53 = *(a1 + 60);
    v57 = *(a1 + 76);
    v38 = cced25519_verify_compat();
    v28 = gLogCategory_AirPlayPairing;
    if (!v38)
    {
      if (gLogCategory_AirPlayPairing <= 30 && (gLogCategory_AirPlayPairing != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      if (a5 > 0x43)
      {
        v46 = *(a1 + 60);
        v50 = *(a1 + 76);
        v54 = *(a1 + 188);
        v58 = *(a1 + 204);
        cced25519_sign_compat();
        for (m = 0; m != 32; ++m)
        {
          *(a1 + 156 + m) = 0;
        }

        *a4 = 0;
        v18 = AES_CTR_Update();
        v17 = v18;
        if (!v18)
        {
          *a6 = 68;
          *a7 = 0;
          v21 = 4;
          goto LABEL_102;
        }

        goto LABEL_133;
      }

      goto LABEL_132;
    }

    if (gLogCategory_AirPlayPairing <= 50)
    {
      if (gLogCategory_AirPlayPairing == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_140;
      }

LABEL_130:
      LogPrintF();
LABEL_140:
      v17 = 4294960580;
      goto LABEL_57;
    }

LABEL_131:
    v17 = 4294960580;
    goto LABEL_58;
  }

  if (v15 > 12)
  {
    if (v15 != 13)
    {
      if (v15 != 14)
      {
        goto LABEL_25;
      }

LABEL_19:
      if (gLogCategory_AirPlayPairing <= 30 && (gLogCategory_AirPlayPairing != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      if (v11 == 64 && a5 > 0x5F)
      {
        v22 = *v12;
        *(a1 + 204) = v12[1];
        *(a1 + 188) = v22;
        v23 = v12[2];
        *(a1 + 236) = v12[3];
        *(a1 + 220) = v23;
        if (!xOvZekdnwD6(a1))
        {
          v28 = gLogCategory_AirPlayPairing;
          if (gLogCategory_AirPlayPairing > 50)
          {
            v17 = 4294960551;
            goto LABEL_58;
          }

          if (gLogCategory_AirPlayPairing != -1 || _LogCategory_Initialize())
          {
            LogPrintF();
          }

          v17 = 4294960551;
LABEL_57:
          v28 = gLogCategory_AirPlayPairing;
LABEL_58:
          if (*(a1 + 16))
          {
            v29 = 11;
          }

          else
          {
            v29 = 1;
          }

          *(a1 + 56) = v29;
          if (v28 <= 60 && (v28 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          goto LABEL_103;
        }

        RandomBytes();
        cccurve25519_make_pub();
        cccurve25519();
        v18 = KUY675K4ryxHGzD5GVD(a1, 1, (a1 + 124), (a1 + 156));
        if (v18)
        {
          v17 = v18;
        }

        else
        {
          v43 = *(a1 + 60);
          v47 = *(a1 + 76);
          v51 = *(a1 + 188);
          v55 = *(a1 + 204);
          cced25519_sign_compat();
          for (n = 156; n != 188; ++n)
          {
            *(a1 + n) = 0;
          }

          Mb6C1FLt7vW91ix(a1, "Pair-Verify-AES-Key", 0x13u, "Pair-Verify-AES-IV", 0x12u, v60, v59);
          if (*(a1 + 336))
          {
            AES_CTR_Final();
            *(a1 + 336) = 0;
          }

          v18 = AES_CTR_Init();
          if (v18)
          {
            v17 = v18;
          }

          else
          {
            *(a1 + 336) = 1;
            v18 = AES_CTR_Update();
            v17 = v18;
            if (!v18)
            {
              v25 = *(a1 + 76);
              *a4 = *(a1 + 60);
              *(a4 + 16) = v25;
              v26 = v62;
              *(a4 + 32) = v61;
              *(a4 + 48) = v26;
              v27 = v64;
              *(a4 + 64) = v63;
              *(a4 + 80) = v27;
              *a6 = 96;
              *a7 = 0;
              v21 = 13;
              goto LABEL_102;
            }
          }
        }

        goto LABEL_133;
      }

      goto LABEL_132;
    }

    if (gLogCategory_AirPlayPairing <= 30 && (gLogCategory_AirPlayPairing != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    if (v11 != 64)
    {
      goto LABEL_132;
    }

    v30 = v12[1];
    v61 = *v12;
    v62 = v30;
    v31 = v12[3];
    v63 = v12[2];
    v64 = v31;
    v18 = AES_CTR_Update();
    if (v18)
    {
      v17 = v18;
      goto LABEL_133;
    }

    v44 = *(a1 + 188);
    v48 = *(a1 + 204);
    v52 = *(a1 + 60);
    v56 = *(a1 + 76);
    if (!cced25519_verify_compat())
    {
      *a6 = 0;
      *a7 = 1;
      *(a1 + 56) = 14;
      if (gLogCategory_AirPlayPairing > 30 || gLogCategory_AirPlayPairing == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_95;
      }

      goto LABEL_75;
    }

    v28 = gLogCategory_AirPlayPairing;
    if (gLogCategory_AirPlayPairing <= 50)
    {
      if (gLogCategory_AirPlayPairing == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_140;
      }

      goto LABEL_130;
    }

    goto LABEL_131;
  }

  if (v15 == 5)
  {
LABEL_22:
    if (gLogCategory_AirPlayPairing <= 30 && (gLogCategory_AirPlayPairing != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    if (!v11 && a5 > 0x43)
    {
      RandomBytes();
      cccurve25519_make_pub();
      v18 = KUY675K4ryxHGzD5GVD(a1, 1, (a1 + 124), (a1 + 156));
      v17 = v18;
      if (!v18)
      {
        *a4 = 1;
        v19 = *(a1 + 60);
        *(a4 + 20) = *(a1 + 76);
        *(a4 + 4) = v19;
        v20 = *(a1 + 124);
        *(a4 + 52) = *(a1 + 140);
        *(a4 + 36) = v20;
        *a6 = 68;
        *a7 = 0;
        v21 = 2;
LABEL_102:
        *(a1 + 56) = v21;
        goto LABEL_103;
      }

LABEL_133:
      APSLogErrorAt(v18);
      goto LABEL_57;
    }

LABEL_132:
    APSLogErrorAt(0);
    v17 = 4294960553;
    goto LABEL_57;
  }

  if (v15 == 11)
  {
    goto LABEL_19;
  }

LABEL_25:
  if (gLogCategory_AirPlayPairing < 61)
  {
    if (gLogCategory_AirPlayPairing == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_56;
      }

      v42 = *(a1 + 56);
    }

    LogPrintF();
LABEL_56:
    v17 = 4294960587;
    goto LABEL_57;
  }

  if (v14)
  {
    v16 = 11;
  }

  else
  {
    v16 = 1;
  }

  *(a1 + 56) = v16;
  v17 = 4294960587;
LABEL_103:
  v40 = *MEMORY[0x277D85DE8];
  return v17;
}

uint64_t xOvZekdnwD6(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CDC228];
  v3 = *MEMORY[0x277CDC238];
  v4 = *MEMORY[0x277CDBEC8];
  v5 = *MEMORY[0x277CDC188];
  v6 = *MEMORY[0x277CDBF20];
  v7 = *(a1 + 48);
  DataToHexCStringEx();
  v16 = *MEMORY[0x277CDC550];
  v17 = *MEMORY[0x277CBED28];
  result = KeychainCopyMatchingFormatted();
  if (result)
  {
    v9 = result;
    Value = CFDictionaryGetValue(result, *MEMORY[0x277CDBED8]);
    if (!Value || !CFEqual(Value, *MEMORY[0x277CDBF10]))
    {
      goto LABEL_10;
    }

    v15 = *(a1 + 48);
    Formatted = CFPropertyListCreateFormatted();
    if (!Formatted)
    {
      v14 = *MEMORY[0x277CDBEF8];
      updated = KeychainUpdateFormatted();
      CFRelease(0);
      if (!updated)
      {
        if (gLogCategory_AirPlayPairing > 50 || gLogCategory_AirPlayPairing == -1 && !_LogCategory_Initialize())
        {
          goto LABEL_10;
        }

        goto LABEL_8;
      }

      Formatted = updated;
    }

    APSLogErrorAt(Formatted);
    if (gLogCategory_AirPlayPairing > 50 || gLogCategory_AirPlayPairing == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_10;
    }

LABEL_8:
    LogPrintF();
LABEL_10:
    CFRelease(v9);
    result = 1;
  }

  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t rJPl3sdBfc0E3yB(uint64_t a1, CFTypeRef cf, uint64_t a3)
{
  if (*(a1 + 16))
  {
    APSLogErrorAt(0);
    return 4294960591;
  }

  else
  {
    if (a3)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (!Mutable)
      {
        APSLogErrorAt(0);
        return 4294960568;
      }

      v6 = Mutable;
      CFDictionarySetValue(Mutable, @"method", @"pin");
      CFDictionarySetValue(v6, @"user", cf);
      Bytes = CFPropertyListCreateBytes();
      CFRelease(v6);
      if (Bytes)
      {
        APSLogErrorAt(Bytes);
        return Bytes;
      }
    }

    v8 = *(a1 + 352);
    if (cf)
    {
      CFRetain(cf);
    }

    *(a1 + 352) = cf;
    if (v8)
    {
      CFRelease(v8);
    }

    Bytes = 0;
    *(a1 + 340) = 101;
  }

  return Bytes;
}

uint64_t o4IBrWf(uint64_t a1)
{
  v6 = 0;
  if (*(a1 + 16) == 1)
  {
    CFDictionaryGetTypeID();
    v2 = CFCreateWithPlistBytes();
    CFStringGetTypeID();
    TypedValue = CFDictionaryGetTypedValue();
    v4 = CFEqual(TypedValue, @"pin");
    if (v4)
    {
      CFStringGetTypeID();
      CFDictionaryGetTypedValue();
      *(a1 + 340) = 111;
    }

    else
    {
      APSLogErrorAt(v4);
      v6 = -6735;
    }

    if (v2)
    {
      CFRelease(v2);
    }
  }

  else
  {
    APSLogErrorAt(0);
    return -6705;
  }

  return v6;
}

uint64_t GvMGlTNs(uint64_t a1, CFTypeRef cf)
{
  v4 = *(a1 + 344);
  if (cf)
  {
    CFRetain(cf);
  }

  *(a1 + 344) = cf;
  if (v4)
  {
    CFRelease(v4);
  }

  return 0;
}

uint64_t SrtySZG0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, char *a6)
{
  v116 = *MEMORY[0x277D85DE8];
  v10 = *(a1 + 340);
  if (!v10)
  {
    if (*(a1 + 16))
    {
      v10 = 111;
    }

    else
    {
      v10 = 101;
    }

    *(a1 + 340) = v10;
  }

  v112 = 0;
  v110 = 0;
  Length = 0;
  memset(&c, 0, sizeof(c));
  if (v10 <= 105)
  {
    if (v10 != 101)
    {
      if (v10 != 102)
      {
        if (v10 != 104)
        {
          goto LABEL_42;
        }

        if (!a3)
        {
          goto LABEL_287;
        }

        if (!*(a1 + 360) || !*(a1 + 368))
        {
          goto LABEL_286;
        }

        CFDictionaryGetTypeID();
        v13 = CFCreateWithPlistBytes();
        v14 = gLogCategory_AirPlayPairing;
        if (gLogCategory_AirPlayPairing > 30)
        {
          goto LABEL_171;
        }

        if (gLogCategory_AirPlayPairing == -1)
        {
          if (!_LogCategory_Initialize())
          {
LABEL_171:
            CFDataGetTypeID();
            TypedValue = CFDictionaryGetTypedValue();
            v54 = *(a1 + 360);
            CFDataGetBytePtr(TypedValue);
            CFDataGetLength(TypedValue);
            if (!SRP_verify())
            {
              inited = KUY675K4ryxHGzD5GVD(a1, 1, v115, 0);
              v112 = inited;
              if (inited)
              {
                goto LABEL_313;
              }

              CC_SHA512_Init(&c);
              CC_SHA512_Update(&c, "Pair-Setup-AES-Key", 0x12u);
              CC_SHA512_Update(&c, **(a1 + 368), *(*(a1 + 368) + 8));
              CC_SHA512_Final(md, &c);
              CC_SHA512_Init(&c);
              CC_SHA512_Update(&c, "Pair-Setup-AES-IV", 0x11u);
              CC_SHA512_Update(&c, **(a1 + 368), *(*(a1 + 368) + 8));
              CC_SHA512_Final(v113, &c);
              if (*(a1 + 424))
              {
                AES_GCM_Final();
                *(a1 + 424) = 0;
              }

              if (*(a1 + 425))
              {
                AES_GCM_Final();
                *(a1 + 425) = 0;
              }

              inited = AES_GCM_InitEx();
              v112 = inited;
              if (inited || (inited = AES_GCM_InitEx(), (v112 = inited) != 0))
              {
                v55 = 0;
              }

              else
              {
                *(a1 + 427) = *v113;
                v55 = 1;
              }

                ;
              }

                ;
              }

              if ((v55 & 1) == 0)
              {
                goto LABEL_313;
              }

              v58 = 0;
              *(a1 + 424) = 257;
              v59 = a1 + 442;
              do
              {
                if (v58 == -16)
                {
                  break;
                }

                v60 = (*(v59 + v58--))++ + 1;
              }

              while ((v60 & 0x100) != 0);
              inited = AES_GCM_InitMessage();
              v112 = inited;
              if (inited)
              {
                goto LABEL_313;
              }

              inited = AES_GCM_Encrypt();
              v112 = inited;
              if (inited)
              {
                goto LABEL_313;
              }

              inited = AES_GCM_FinalizeMessage();
              v112 = inited;
              if (inited)
              {
                goto LABEL_313;
              }

              Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
              if (Mutable)
              {
                v17 = Mutable;
                CFDictionarySetData();
                CFDictionarySetData();
                Bytes = CFPropertyListCreateBytes();
                v112 = Bytes;
                if (Bytes)
                {
                  goto LABEL_329;
                }

                *(a1 + 340) = 106;
                v62 = gLogCategory_AirPlayPairing;
                if (gLogCategory_AirPlayPairing <= 30)
                {
                  if (gLogCategory_AirPlayPairing != -1)
                  {
                    goto LABEL_195;
                  }

                  if (_LogCategory_Initialize())
                  {
                    v62 = gLogCategory_AirPlayPairing;
LABEL_195:
                    if (v62 == -1)
                    {
                      _LogCategory_Initialize();
                    }

                    goto LABEL_256;
                  }
                }

LABEL_222:
                v85 = 0;
LABEL_258:
                *a6 = v85;
                v112 = 0;
LABEL_259:
                CFRelease(v17);
                goto LABEL_260;
              }

              goto LABEL_316;
            }

            v104 = -6754;
LABEL_317:
            v112 = v104;
            goto LABEL_260;
          }

          v14 = gLogCategory_AirPlayPairing;
        }

        if (v14 == -1)
        {
          _LogCategory_Initialize();
        }

        LogPrintF();
        goto LABEL_171;
      }

      if (!a3 || !*(a1 + 344) || !*(a1 + 352))
      {
        goto LABEL_287;
      }

      CFDictionaryGetTypeID();
      v13 = CFCreateWithPlistBytes();
      v22 = gLogCategory_AirPlayPairing;
      if (gLogCategory_AirPlayPairing <= 30)
      {
        if (gLogCategory_AirPlayPairing != -1)
        {
LABEL_62:
          if (v22 == -1)
          {
            _LogCategory_Initialize();
          }

          LogPrintF();
          goto LABEL_202;
        }

        if (_LogCategory_Initialize())
        {
          v22 = gLogCategory_AirPlayPairing;
          goto LABEL_62;
        }
      }

LABEL_202:
      if (*(a1 + 360))
      {
        SRP_free();
        *(a1 + 360) = 0;
      }

      SRP6a_client_method();
      v63 = SRP_new();
      *(a1 + 360) = v63;
      if (!v63)
      {
        goto LABEL_316;
      }

      v64 = *(a1 + 352);
      v65 = CFCopyCString();
      inited = v112;
      if (v112)
      {
LABEL_313:
        APSLogErrorAt(inited);
        goto LABEL_260;
      }

      v66 = *(a1 + 360);
      v112 = SRP_set_username();
      free(v65);
      v67 = v112;
      if (v112)
      {
        goto LABEL_312;
      }

      CFDataGetTypeID();
      v68 = CFDictionaryGetTypedValue();
      Length = CFDataGetLength(v68);
      if (Length <= 0xF)
      {
        APSLogErrorAt(0);
        v104 = -6743;
        goto LABEL_317;
      }

      v69 = *(a1 + 360);
      CFDataGetBytePtr(v68);
      v67 = SRP_set_params();
      v112 = v67;
      if (v67)
      {
LABEL_312:
        APSLogErrorAt(v67);
        v104 = -6705;
        goto LABEL_317;
      }

      v70 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (!v70)
      {
LABEL_316:
        APSLogErrorAt(0);
        v104 = -6728;
        goto LABEL_317;
      }

      v17 = v70;
      v110 = 0;
      v71 = *(a1 + 360);
      v72 = SRP_gen_pub();
      v112 = v72;
      if (v72)
      {
        goto LABEL_327;
      }

      v73 = *v110;
      v74 = v110[1];
      CFDictionarySetData();
      cstr_free();
      v75 = *(a1 + 344);
      v76 = CFCopyCString();
      v77 = *(a1 + 360);
      v112 = SRP_set_auth_password();
      free(v76);
      if (v112)
      {
        APSLogErrorAt(v112);
        v105 = -6705;
      }

      else
      {
        CFDataGetTypeID();
        v78 = CFDictionaryGetTypedValue();
        if (*(a1 + 368))
        {
          cstr_free();
          *(a1 + 368) = 0;
        }

        v79 = *(a1 + 360);
        CFDataGetBytePtr(v78);
        CFDataGetLength(v78);
        v80 = SRP_compute_key();
        v112 = v80;
        if (!v80)
        {
          v110 = 0;
          v81 = *(a1 + 360);
          v72 = SRP_respond();
          v112 = v72;
          if (!v72)
          {
            v82 = *v110;
            v83 = v110[1];
            CFDictionarySetData();
            cstr_free();
            Bytes = CFPropertyListCreateBytes();
            v112 = Bytes;
            if (Bytes)
            {
              goto LABEL_329;
            }

            *(a1 + 340) = 104;
            v84 = gLogCategory_AirPlayPairing;
            if (gLogCategory_AirPlayPairing > 30)
            {
              goto LABEL_222;
            }

            if (gLogCategory_AirPlayPairing == -1)
            {
              if (!_LogCategory_Initialize())
              {
                goto LABEL_222;
              }

              v84 = gLogCategory_AirPlayPairing;
            }

            if (v84 != -1)
            {
              goto LABEL_256;
            }

            goto LABEL_255;
          }

LABEL_327:
          APSLogErrorAt(v72);
          v105 = -6700;
          goto LABEL_328;
        }

        APSLogErrorAt(v80);
        v105 = -6737;
      }

LABEL_328:
      v112 = v105;
      goto LABEL_259;
    }

    if (a3 || !*(a1 + 352))
    {
      goto LABEL_287;
    }

    v16 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (!v16)
    {
      APSLogErrorAt(0);
      v26 = -6728;
      goto LABEL_79;
    }

    v17 = v16;
    CFDictionarySetValue(v16, @"method", @"pin");
    CFDictionarySetValue(v17, @"user", *(a1 + 352));
    v18 = CFPropertyListCreateBytes();
    v112 = v18;
    if (v18)
    {
      APSLogErrorAt(v18);
      v13 = 0;
      goto LABEL_259;
    }

    *(a1 + 340) = 102;
    v19 = gLogCategory_AirPlayPairing;
    if (gLogCategory_AirPlayPairing <= 30)
    {
      if (gLogCategory_AirPlayPairing != -1)
      {
LABEL_40:
        if (v19 == -1)
        {
          _LogCategory_Initialize();
        }

        LogPrintF();
        goto LABEL_168;
      }

      if (_LogCategory_Initialize())
      {
        v19 = gLogCategory_AirPlayPairing;
        goto LABEL_40;
      }
    }

LABEL_168:
    v13 = 0;
    goto LABEL_257;
  }

  if (v10 > 112)
  {
    if (v10 != 113)
    {
      if (v10 != 115)
      {
        goto LABEL_42;
      }

      if (!a3 || !*(a1 + 368))
      {
        goto LABEL_287;
      }

      CFDictionaryGetTypeID();
      v13 = CFCreateWithPlistBytes();
      v15 = gLogCategory_AirPlayPairing;
      if (gLogCategory_AirPlayPairing <= 30)
      {
        if (gLogCategory_AirPlayPairing == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_127;
          }

          v15 = gLogCategory_AirPlayPairing;
        }

        if (v15 == -1)
        {
          _LogCategory_Initialize();
        }

        LogPrintF();
      }

LABEL_127:
      CC_SHA512_Init(&c);
      CC_SHA512_Update(&c, "Pair-Setup-AES-Key", 0x12u);
      CC_SHA512_Update(&c, **(a1 + 368), *(*(a1 + 368) + 8));
      CC_SHA512_Final(md, &c);
      CC_SHA512_Init(&c);
      CC_SHA512_Update(&c, "Pair-Setup-AES-IV", 0x11u);
      CC_SHA512_Update(&c, **(a1 + 368), *(*(a1 + 368) + 8));
      CC_SHA512_Final(v113, &c);
      if (*(a1 + 424))
      {
        AES_GCM_Final();
        *(a1 + 424) = 0;
      }

      if (*(a1 + 425))
      {
        AES_GCM_Final();
        *(a1 + 425) = 0;
      }

      inited = AES_GCM_InitEx();
      v112 = inited;
      if (inited || (inited = AES_GCM_InitEx(), (v112 = inited) != 0))
      {
        v43 = 0;
      }

      else
      {
        *(a1 + 427) = *v113;
        v43 = 1;
      }

      for (k = 0; k != 64; ++k)
      {
        md[k] = 0;
      }

      for (m = 0; m != 64; ++m)
      {
        v113[m] = 0;
      }

      if ((v43 & 1) == 0)
      {
        goto LABEL_313;
      }

      *(a1 + 424) = 257;
      v46 = 442;
      do
      {
        if (v46 == 426)
        {
          break;
        }

        v47 = (*(a1 + v46--))++ + 1;
      }

      while ((v47 & 0x100) != 0);
      inited = AES_GCM_InitMessage();
      v112 = inited;
      if (inited)
      {
        goto LABEL_313;
      }

      CFDictionaryGetData();
      inited = v112;
      if (v112)
      {
        goto LABEL_313;
      }

      inited = AES_GCM_Decrypt();
      v112 = inited;
      if (inited)
      {
        goto LABEL_313;
      }

      CFDictionaryGetData();
      inited = v112;
      if (v112)
      {
        goto LABEL_313;
      }

      if (Length != 16)
      {
LABEL_307:
        APSLogErrorAt(0);
        v103 = -6743;
        goto LABEL_332;
      }

      v112 = AES_GCM_VerifyMessage();
      if (v112)
      {
        goto LABEL_260;
      }

      if (!*(a1 + 426))
      {
        inited = i9kF3TCOFmU(a1, v115, 0);
        v112 = inited;
        if (inited)
        {
          goto LABEL_313;
        }
      }

      inited = KUY675K4ryxHGzD5GVD(a1, 1, v115, 0);
      v112 = inited;
      if (inited)
      {
        goto LABEL_313;
      }

      v48 = 0;
      v49 = a1 + 442;
      do
      {
        if (v48 == -16)
        {
          break;
        }

        v50 = (*(v49 + v48--))++ + 1;
      }

      while ((v50 & 0x100) != 0);
      inited = AES_GCM_InitMessage();
      v112 = inited;
      if (inited)
      {
        goto LABEL_313;
      }

      inited = AES_GCM_Encrypt();
      v112 = inited;
      if (inited)
      {
        goto LABEL_313;
      }

      inited = AES_GCM_FinalizeMessage();
      v112 = inited;
      if (inited)
      {
        goto LABEL_313;
      }

      v51 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (!v51)
      {
LABEL_331:
        APSLogErrorAt(0);
        v103 = -6728;
        goto LABEL_332;
      }

      v17 = v51;
      CFDictionarySetData();
      CFDictionarySetData();
      Bytes = CFPropertyListCreateBytes();
      v112 = Bytes;
      if (Bytes)
      {
        goto LABEL_329;
      }

      *(a1 + 340) = 117;
      pthread_mutex_lock(&keNhHD7HkAhiLlu6y);
      R7q7ABg4QtpjFZAFcR = 0;
      RAQKrwbyvjlDG1nD = 0;
      h2UmgtdqR3Ht = 0;
      pthread_mutex_unlock(&keNhHD7HkAhiLlu6y);
      v52 = gLogCategory_AirPlayPairing;
      if (gLogCategory_AirPlayPairing > 30)
      {
        goto LABEL_231;
      }

      if (gLogCategory_AirPlayPairing == -1)
      {
        if (!_LogCategory_Initialize())
        {
LABEL_227:
          if (gLogCategory_AirPlayPairing <= 30 && (gLogCategory_AirPlayPairing != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

LABEL_231:
          v85 = 1;
          goto LABEL_258;
        }

        v52 = gLogCategory_AirPlayPairing;
      }

      if (v52 == -1)
      {
        _LogCategory_Initialize();
      }

      LogPrintF();
      goto LABEL_227;
    }

    if (!a3 || !*(a1 + 360))
    {
      goto LABEL_287;
    }

    CFDictionaryGetTypeID();
    v13 = CFCreateWithPlistBytes();
    v21 = gLogCategory_AirPlayPairing;
    if (gLogCategory_AirPlayPairing <= 30)
    {
      if (gLogCategory_AirPlayPairing == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_112;
        }

        v21 = gLogCategory_AirPlayPairing;
      }

      if (v21 == -1)
      {
        _LogCategory_Initialize();
      }

      LogPrintF();
    }

LABEL_112:
    CFDataGetTypeID();
    v31 = CFDictionaryGetTypedValue();
    if (*(a1 + 368))
    {
      cstr_free();
      *(a1 + 368) = 0;
    }

    v32 = *(a1 + 360);
    CFDataGetBytePtr(v31);
    CFDataGetLength(v31);
    v33 = SRP_compute_key();
    v112 = v33;
    if (v33)
    {
      APSLogErrorAt(v33);
      v103 = -6737;
    }

    else
    {
      CFDataGetTypeID();
      v34 = CFDictionaryGetTypedValue();
      v35 = *(a1 + 360);
      CFDataGetBytePtr(v34);
      CFDataGetLength(v34);
      v112 = SRP_verify();
      if (!v112)
      {
        v36 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        if (v36)
        {
          v17 = v36;
          v110 = 0;
          v37 = *(a1 + 360);
          v38 = SRP_respond();
          v112 = v38;
          if (!v38)
          {
            v39 = *v110;
            v40 = v110[1];
            CFDictionarySetData();
            cstr_free();
            Bytes = CFPropertyListCreateBytes();
            v112 = Bytes;
            if (!Bytes)
            {
              *(a1 + 340) = 115;
              v42 = gLogCategory_AirPlayPairing;
              if (gLogCategory_AirPlayPairing <= 30)
              {
                if (gLogCategory_AirPlayPairing == -1)
                {
                  if (!_LogCategory_Initialize())
                  {
                    goto LABEL_257;
                  }

                  v42 = gLogCategory_AirPlayPairing;
                }

                if (v42 != -1)
                {
                  goto LABEL_256;
                }

                goto LABEL_255;
              }

LABEL_257:
              v85 = 0;
              goto LABEL_258;
            }

LABEL_329:
            APSLogErrorAt(Bytes);
            goto LABEL_259;
          }

          goto LABEL_338;
        }

        goto LABEL_331;
      }

      v103 = -6754;
    }

    goto LABEL_332;
  }

  if (v10 != 106)
  {
    if (v10 == 111)
    {
      if (a3 && *(a1 + 344))
      {
        pthread_mutex_lock(&keNhHD7HkAhiLlu6y);
        v11 = mach_absolute_time();
        v12 = h2UmgtdqR3Ht;
        if (!h2UmgtdqR3Ht)
        {
          h2UmgtdqR3Ht = v11;
          v12 = v11;
        }

        if (R7q7ABg4QtpjFZAFcR <= 9)
        {
          ++R7q7ABg4QtpjFZAFcR;
          goto LABEL_73;
        }

        v23 = 2 * RAQKrwbyvjlDG1nD;
        if ((2 * RAQKrwbyvjlDG1nD) >= 0x2A30)
        {
          v23 = 10800;
        }

        if (RAQKrwbyvjlDG1nD)
        {
          v24 = v23;
        }

        else
        {
          v24 = 1;
        }

        RAQKrwbyvjlDG1nD = v24;
        if (v12 + UpTicksPerSecond() * v24 <= v11)
        {
LABEL_73:
          pthread_mutex_unlock(&keNhHD7HkAhiLlu6y);
          CFDictionaryGetTypeID();
          v13 = CFCreateWithPlistBytes();
          v25 = gLogCategory_AirPlayPairing;
          if (gLogCategory_AirPlayPairing <= 30)
          {
            if (gLogCategory_AirPlayPairing != -1)
            {
LABEL_75:
              if (v25 == -1)
              {
                _LogCategory_Initialize();
              }

              LogPrintF();
              goto LABEL_237;
            }

            if (_LogCategory_Initialize())
            {
              v25 = gLogCategory_AirPlayPairing;
              goto LABEL_75;
            }
          }

LABEL_237:
          CFStringGetTypeID();
          v86 = CFDictionaryGetTypedValue();
          v87 = CFEqual(v86, @"pin");
          if (v87)
          {
            v88 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
            if (v88)
            {
              v17 = v88;
              if (*(a1 + 360))
              {
                SRP_free();
                *(a1 + 360) = 0;
              }

              SRP6a_server_method();
              v89 = SRP_new();
              *(a1 + 360) = v89;
              if (v89)
              {
                v90 = CFDictionaryCopyCString();
                Bytes = v112;
                if (v112)
                {
                  goto LABEL_329;
                }

                v91 = *(a1 + 360);
                v112 = SRP_set_username();
                free(v90);
                v92 = v112;
                if (!v112)
                {
                  Bytes = RandomBytes();
                  v112 = Bytes;
                  if (Bytes)
                  {
                    goto LABEL_329;
                  }

                  CFDictionarySetData();
                  v93 = *(a1 + 360);
                  v92 = SRP_set_params();
                  v112 = v92;
                  if (!v92)
                  {
                    v94 = *(a1 + 344);
                    v95 = CFCopyCString();
                    v96 = *(a1 + 360);
                    v112 = SRP_set_auth_password();
                    free(v95);
                    v92 = v112;
                    if (!v112)
                    {
                      v110 = 0;
                      v97 = *(a1 + 360);
                      v38 = SRP_gen_pub();
                      v112 = v38;
                      if (!v38)
                      {
                        v98 = *v110;
                        v99 = v110[1];
                        CFDictionarySetData();
                        cstr_free();
                        Bytes = CFPropertyListCreateBytes();
                        v112 = Bytes;
                        if (!Bytes)
                        {
                          *(a1 + 340) = 113;
                          v100 = gLogCategory_AirPlayPairing;
                          if (gLogCategory_AirPlayPairing <= 30)
                          {
                            if (gLogCategory_AirPlayPairing != -1)
                            {
                              goto LABEL_251;
                            }

                            if (_LogCategory_Initialize())
                            {
                              v100 = gLogCategory_AirPlayPairing;
LABEL_251:
                              if (v100 != -1)
                              {
                                goto LABEL_256;
                              }

LABEL_255:
                              _LogCategory_Initialize();
LABEL_256:
                              LogPrintF();
                              goto LABEL_257;
                            }
                          }

                          goto LABEL_257;
                        }

                        goto LABEL_329;
                      }

LABEL_338:
                      APSLogErrorAt(v38);
                      v106 = -6700;
                      goto LABEL_339;
                    }
                  }
                }

                APSLogErrorAt(v92);
                v106 = -6705;
              }

              else
              {
                APSLogErrorAt(0);
                v106 = -6728;
              }

LABEL_339:
              v112 = v106;
              goto LABEL_259;
            }

            goto LABEL_331;
          }

          APSLogErrorAt(v87);
          v103 = -6735;
LABEL_332:
          v112 = v103;
          goto LABEL_260;
        }

        pthread_mutex_unlock(&keNhHD7HkAhiLlu6y);
        if (gLogCategory_AirPlayPairing <= 50 && (gLogCategory_AirPlayPairing != -1 || _LogCategory_Initialize()))
        {
          UpTicksPerSecond();
          LogPrintF();
        }

        v26 = -6760;
LABEL_79:
        v112 = v26;
        goto LABEL_263;
      }

LABEL_287:
      APSLogErrorAt(0);
      v26 = -6705;
      goto LABEL_79;
    }

LABEL_42:
    if (gLogCategory_AirPlayPairing <= 60)
    {
      if (gLogCategory_AirPlayPairing == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_78;
        }

        v107 = *(a1 + 340);
      }

      LogPrintF();
    }

LABEL_78:
    v26 = -6709;
    goto LABEL_79;
  }

  if (!a3)
  {
    goto LABEL_287;
  }

  if (!*(a1 + 425))
  {
LABEL_286:
    APSLogErrorAt(0);
    v26 = -6745;
    goto LABEL_79;
  }

  CFDictionaryGetTypeID();
  v13 = CFCreateWithPlistBytes();
  v20 = gLogCategory_AirPlayPairing;
  if (gLogCategory_AirPlayPairing <= 30)
  {
    if (gLogCategory_AirPlayPairing == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_96;
      }

      v20 = gLogCategory_AirPlayPairing;
    }

    if (v20 == -1)
    {
      _LogCategory_Initialize();
    }

    LogPrintF();
  }

LABEL_96:
  v27 = 442;
  do
  {
    if (v27 == 426)
    {
      break;
    }

    v28 = (*(a1 + v27--))++ + 1;
  }

  while ((v28 & 0x100) != 0);
  inited = AES_GCM_InitMessage();
  v112 = inited;
  if (inited)
  {
    goto LABEL_313;
  }

  CFDictionaryGetData();
  inited = AES_GCM_Decrypt();
  v112 = inited;
  if (inited)
  {
    goto LABEL_313;
  }

  CFDictionaryGetData();
  if (Length != 16)
  {
    goto LABEL_307;
  }

  v112 = AES_GCM_VerifyMessage();
  if (v112)
  {
    goto LABEL_260;
  }

  if (!*(a1 + 426))
  {
    inited = i9kF3TCOFmU(a1, v115, 0);
    v112 = inited;
    if (inited)
    {
      goto LABEL_313;
    }
  }

  v30 = v115[1];
  *(a1 + 220) = v115[0];
  *(a1 + 236) = v30;
  *(a1 + 340) = 107;
  *a4 = 0;
  *a5 = 0;
  if (gLogCategory_AirPlayPairing <= 30 && (gLogCategory_AirPlayPairing != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  *a6 = 1;
  v112 = 0;
LABEL_260:
  if (v13)
  {
    CFRelease(v13);
  }

  if (!v112)
  {
    result = 0;
    goto LABEL_269;
  }

LABEL_263:
  if (gLogCategory_AirPlayPairing <= 60 && (gLogCategory_AirPlayPairing != -1 || _LogCategory_Initialize()))
  {
    v108 = *(a1 + 340);
    LogPrintF();
  }

  NhB9kxUGdXXE(a1);
  result = v112;
LABEL_269:
  v102 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t G30ooIXBM(uint64_t a1)
{
  v5 = *MEMORY[0x277CDC188];
  v6 = *(a1 + 32);
  v4 = *MEMORY[0x277CDBEC8];
  v2 = *MEMORY[0x277CDC228];
  v3 = *MEMORY[0x277CDC238];
  return KeychainDeleteFormatted();
}

CFMutableArrayRef Fqbh1vZGfV6J(uint64_t a1, int *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  dispatch_semaphore_wait(tHHVsHfAtS9mW, 0xFFFFFFFFFFFFFFFFLL);
  v24 = *MEMORY[0x277CDC428];
  v25 = *MEMORY[0x277CDC430];
  v22 = *MEMORY[0x277CDC550];
  v23 = *MEMORY[0x277CBED28];
  v20 = *MEMORY[0x277CDC188];
  v21 = *(a1 + 48);
  v19 = *MEMORY[0x277CDBEC8];
  v17 = *MEMORY[0x277CDC228];
  v18 = *MEMORY[0x277CDC238];
  v4 = KeychainCopyMatchingFormatted();
  dispatch_semaphore_signal(tHHVsHfAtS9mW);
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  if (Mutable)
  {
    if (v4 && (Count = CFArrayGetCount(v4), Count >= 1))
    {
      v7 = Count;
      v8 = 0;
      v9 = MEMORY[0x277CBF138];
      v10 = MEMORY[0x277CBF150];
      v11 = *MEMORY[0x277CDBF20];
      v12 = *MEMORY[0x277CDC080];
      while (1)
      {
        CFArrayGetValueAtIndex(v4, v8);
        v13 = CFDictionaryCreateMutable(0, 0, v9, v10);
        if (!v13)
        {
          break;
        }

        v14 = v13;
        CFDictionaryGetData();
        CFRelease(v14);
        if (v7 == ++v8)
        {
          goto LABEL_7;
        }
      }

      APSLogErrorAt(0);
      v26 = -6728;
      CFRelease(Mutable);
      Mutable = 0;
    }

    else
    {
LABEL_7:
      v26 = 0;
    }
  }

  else
  {
    APSLogErrorAt(0);
    v26 = -6728;
  }

  if (v4)
  {
    CFRelease(v4);
  }

  if (a2)
  {
    *a2 = v26;
  }

  v15 = *MEMORY[0x277D85DE8];
  return Mutable;
}

uint64_t PHDcW8(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v24 = 0;
  v26[0] = 0;
  if (a2)
  {
    DataToHexCStringEx();
  }

  v22 = *MEMORY[0x277CDC428];
  v23 = *MEMORY[0x277CDC430];
  v20 = *MEMORY[0x277CDC560];
  v21 = *MEMORY[0x277CBED28];
  v19 = *MEMORY[0x277CDC550];
  v17 = *MEMORY[0x277CDC188];
  v18 = *(a1 + 48);
  v16 = *MEMORY[0x277CDBEC8];
  v14 = *MEMORY[0x277CDC228];
  v15 = *MEMORY[0x277CDC238];
  v3 = KeychainCopyMatchingFormatted();
  if (v3)
  {
    v4 = v3;
    Count = CFArrayGetCount(v3);
    if (Count >= 1)
    {
      v6 = Count;
      v7 = 0;
      v8 = *MEMORY[0x277CDBF20];
      v9 = *MEMORY[0x277CDC5F0];
      do
      {
        CFDictionaryGetTypeID();
        TypedValueAtIndex = CFArrayGetTypedValueAtIndex();
        if (TypedValueAtIndex)
        {
          v11 = TypedValueAtIndex;
          if (*(a1 + 48) == CFDictionaryGetInt64())
          {
            if (!v26[0] || (CFDictionaryGetCString(), !v24) && !strcasecmp(v25, v26))
            {
              if (CFDictionaryGetValue(v11, v9))
              {
                v24 = KeychainDeleteFormatted();
              }
            }
          }
        }

        ++v7;
      }

      while (v6 != v7);
    }

    CFRelease(v4);
  }

  v12 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t APAudioFormatIndexToASBD(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    switch(a1)
    {
      case 2:
        result = 0;
        v23 = 0x40BF400000000000;
        goto LABEL_61;
      case 3:
        result = 0;
        v16 = 0x40BF400000000000;
        goto LABEL_59;
      case 4:
        result = 0;
        v23 = 0x40CF400000000000;
        goto LABEL_61;
      case 5:
        result = 0;
        v16 = 0x40CF400000000000;
        goto LABEL_59;
      case 6:
        result = 0;
        v23 = 0x40D7700000000000;
        goto LABEL_61;
      case 7:
        result = 0;
        v16 = 0x40D7700000000000;
        goto LABEL_59;
      case 8:
        result = 0;
        v23 = 0x40DF400000000000;
        goto LABEL_61;
      case 9:
        result = 0;
        v16 = 0x40DF400000000000;
        goto LABEL_59;
      case 10:
        result = 0;
        v23 = 0x40E5888000000000;
        goto LABEL_61;
      case 11:
        result = 0;
        v16 = 0x40E5888000000000;
        goto LABEL_59;
      case 12:
        result = 0;
        v22 = 0x40E5888000000000;
        goto LABEL_73;
      case 13:
        result = 0;
        v25 = 0x40E5888000000000;
        goto LABEL_75;
      case 14:
        result = 0;
        v23 = 0x40E7700000000000;
LABEL_61:
        *a2 = v23;
        *(a2 + 8) = xmmword_22234D3F0;
        v4 = xmmword_22234D400;
        goto LABEL_110;
      case 15:
        result = 0;
        v16 = 0x40E7700000000000;
LABEL_59:
        *a2 = v16;
        *(a2 + 8) = xmmword_22234D3D0;
        v4 = xmmword_22234D3E0;
        goto LABEL_110;
      case 16:
        result = 0;
        v22 = 0x40E7700000000000;
LABEL_73:
        *a2 = v22;
        *(a2 + 8) = xmmword_22234D3B0;
        v4 = xmmword_22234D3C0;
        goto LABEL_110;
      case 17:
        result = 0;
        v25 = 0x40E7700000000000;
LABEL_75:
        *a2 = v25;
        *(a2 + 8) = xmmword_22234D390;
        v4 = xmmword_22234D3A0;
        goto LABEL_110;
      case 18:
        result = 0;
        v15 = 0x40E5888000000000;
        goto LABEL_83;
      case 19:
        result = 0;
        v24 = 0x40E5888000000000;
        goto LABEL_78;
      case 20:
        result = 0;
        v15 = 0x40E7700000000000;
LABEL_83:
        *a2 = v15;
        v7 = xmmword_22234D220;
        goto LABEL_104;
      case 21:
        result = 0;
        v24 = 0x40E7700000000000;
LABEL_78:
        *a2 = v24;
        v7 = xmmword_22234D200;
        goto LABEL_104;
      case 22:
        result = 0;
        v18 = 0x40E5888000000000;
        goto LABEL_89;
      case 23:
        result = 0;
        v18 = 0x40E7700000000000;
LABEL_89:
        *a2 = v18;
        v7 = xmmword_22234D1F0;
        goto LABEL_104;
      case 24:
        result = 0;
        v21 = 0x40E5888000000000;
        goto LABEL_50;
      case 25:
        result = 0;
        v21 = 0x40E7700000000000;
LABEL_50:
        *a2 = v21;
        v7 = xmmword_22234D1E0;
        goto LABEL_104;
      case 26:
        result = 0;
        v20 = 0x40CF400000000000;
        goto LABEL_69;
      case 27:
        result = 0;
        v20 = 0x40D7700000000000;
        goto LABEL_69;
      case 28:
        result = 0;
        *a2 = 0x40CF400000000000;
        v14 = xmmword_22234D1D0;
        goto LABEL_70;
      case 29:
        result = 0;
        *a2 = 0x40D7700000000000;
        v14 = xmmword_22234D1C0;
        goto LABEL_70;
      case 30:
        result = 0;
        *a2 = 0x40E7700000000000;
        v14 = xmmword_22234D1A0;
        goto LABEL_70;
      case 31:
        result = 0;
        v20 = 0x40E5888000000000;
        goto LABEL_69;
      case 32:
        result = 0;
        v20 = 0x40E7700000000000;
        goto LABEL_69;
      case 33:
        result = 0;
        *a2 = 0x40E7700000000000;
        v3 = xmmword_22234D140;
        goto LABEL_95;
      case 34:
        result = 0;
        *a2 = 0x40E7700000000000;
        v13 = xmmword_22234D140;
        goto LABEL_106;
      case 35:
        result = 0;
        *a2 = 0x40E7700000000000;
        v17 = xmmword_22234D140;
        goto LABEL_65;
      case 38:
      case 78:
        result = 0;
        *a2 = 0x40E7700000000000;
        *(a2 + 8) = xmmword_22234D350;
        v4 = xmmword_22234D360;
        goto LABEL_110;
      case 39:
        result = 0;
        *a2 = 0x40E7700000000000;
        v10 = xmmword_22234D1F0;
        goto LABEL_109;
      case 40:
      case 90:
        result = 0;
        *a2 = 0x40E7700000000000;
        v3 = xmmword_22234D1F0;
        goto LABEL_95;
      case 41:
        result = 0;
        *a2 = 0x40E7700000000000;
        v10 = xmmword_22234D1E0;
        goto LABEL_109;
      case 42:
        result = 0;
        *a2 = 0x40E7700000000000;
        v3 = xmmword_22234D1E0;
        goto LABEL_95;
      case 43:
        result = 0;
        v20 = 0x40DF400000000000;
LABEL_69:
        *a2 = v20;
        v14 = xmmword_22234D1E0;
LABEL_70:
        *(a2 + 8) = v14;
        v4 = xmmword_22234D1B0;
        goto LABEL_110;
      case 44:
        result = 0;
        *a2 = 0x40E7700000000000;
        *(a2 + 8) = xmmword_22234D370;
        v4 = xmmword_22234D380;
        goto LABEL_110;
      case 45:
        result = 0;
        *a2 = 0x40E7700000000000;
        *(a2 + 8) = xmmword_22234D300;
        v4 = xmmword_22234D310;
        goto LABEL_110;
      case 46:
        result = 0;
        *a2 = 0x40E7700000000000;
        *(a2 + 8) = xmmword_22234D2E0;
        v4 = xmmword_22234D2F0;
        goto LABEL_110;
      case 47:
        result = 0;
        *a2 = 0x40E7700000000000;
        *(a2 + 8) = xmmword_22234D2C0;
        v4 = xmmword_22234D2D0;
        goto LABEL_110;
      case 48:
      case 79:
        result = 0;
        *a2 = 0x40E7700000000000;
        *(a2 + 8) = xmmword_22234D2A0;
        v4 = xmmword_22234D2B0;
        goto LABEL_110;
      case 49:
        result = 0;
        *a2 = 0x40E7700000000000;
        v7 = xmmword_22234D230;
        goto LABEL_104;
      case 50:
        result = 0;
        *a2 = 0x40E7700000000000;
        v10 = xmmword_22234D230;
        goto LABEL_109;
      case 51:
        result = 0;
        *a2 = 0x40E7700000000000;
        v3 = xmmword_22234D230;
        goto LABEL_95;
      case 52:
        result = 0;
        *a2 = 0x40E7700000000000;
        v13 = xmmword_22234D230;
        goto LABEL_106;
      case 53:
        result = 0;
        *a2 = 0x40E7700000000000;
        v17 = xmmword_22234D230;
        goto LABEL_65;
      case 54:
        result = 0;
        v26 = 0x40E7700000000000;
        goto LABEL_101;
      case 55:
        result = 0;
        *a2 = 0x40E7700000000000;
        v10 = xmmword_22234D160;
        goto LABEL_109;
      case 56:
        result = 0;
        *a2 = 0x40E7700000000000;
        v3 = xmmword_22234D160;
        goto LABEL_95;
      case 57:
        result = 0;
        v11 = 0x40E7700000000000;
        goto LABEL_87;
      case 58:
        result = 0;
        *a2 = 0x40E7700000000000;
        v10 = xmmword_22234D150;
        goto LABEL_109;
      case 60:
        result = 0;
        *a2 = 0x40E7700000000000;
        v3 = xmmword_22234D150;
        goto LABEL_95;
      case 61:
        result = 0;
        v12 = 0x40E7700000000000;
        goto LABEL_92;
      case 62:
        result = 0;
        *a2 = 0x40E7700000000000;
        v7 = xmmword_22234D140;
        goto LABEL_104;
      case 63:
        result = 0;
        *a2 = 0x40E7700000000000;
        v10 = xmmword_22234D140;
        goto LABEL_109;
      case 64:
        result = 0;
        *a2 = 0x40E7700000000000;
        v7 = xmmword_22234D0B0;
        goto LABEL_104;
      case 65:
        result = 0;
        *a2 = 0x40E7700000000000;
        v10 = xmmword_22234D0B0;
        goto LABEL_109;
      case 66:
      case 67:
        result = 0;
        *a2 = 0x40E7700000000000;
        v3 = xmmword_22234D0B0;
        goto LABEL_95;
      case 68:
        result = 0;
        *a2 = 0x40E7700000000000;
        v13 = xmmword_22234D0B0;
LABEL_106:
        *(a2 + 8) = v13;
        v4 = xmmword_22234D0D0;
        goto LABEL_110;
      case 69:
        result = 0;
        *a2 = 0x40E7700000000000;
        v19 = xmmword_22234D260;
        goto LABEL_112;
      case 70:
        result = 0;
        v26 = 0x40E5888000000000;
LABEL_101:
        *a2 = v26;
        v7 = xmmword_22234D160;
        goto LABEL_104;
      case 71:
        result = 0;
        v11 = 0x40E5888000000000;
LABEL_87:
        *a2 = v11;
        v7 = xmmword_22234D150;
        goto LABEL_104;
      case 72:
        result = 0;
        *a2 = 0x40E5888000000000;
        v7 = xmmword_22234D190;
        goto LABEL_104;
      case 73:
        result = 0;
        v12 = 0x40E5888000000000;
LABEL_92:
        *a2 = v12;
        v7 = xmmword_22234D170;
        goto LABEL_104;
      case 74:
        result = 0;
        v8 = 0x40E5888000000000;
        goto LABEL_103;
      case 75:
        result = 0;
        v8 = 0x40E7700000000000;
LABEL_103:
        *a2 = v8;
        v7 = xmmword_22234D090;
        goto LABEL_104;
      case 76:
      case 77:
        result = 0;
        *a2 = 0x40E7700000000000;
        *(a2 + 8) = xmmword_22234D0B0;
        v4 = xmmword_22234D0E0;
        goto LABEL_110;
      case 80:
      case 82:
        result = 0;
        *a2 = 0x40E7700000000000;
        v5 = xmmword_22234D340;
        goto LABEL_10;
      case 81:
      case 83:
        result = 0;
        *a2 = 0x40E7700000000000;
        v5 = xmmword_22234D280;
LABEL_10:
        *(a2 + 8) = v5;
        v4 = xmmword_22234D290;
        goto LABEL_110;
      case 84:
        result = 0;
        *a2 = 0x40E7700000000000;
        v19 = xmmword_22234D330;
LABEL_112:
        *(a2 + 8) = v19;
        v4 = xmmword_22234D270;
        goto LABEL_110;
      case 85:
        result = 0;
        v6 = 0x40E5888000000000;
        goto LABEL_13;
      case 86:
        result = 0;
        v6 = 0x40E7700000000000;
LABEL_13:
        *a2 = v6;
        v7 = xmmword_22234D210;
        goto LABEL_104;
      case 87:
        result = 0;
        *a2 = 0x40E7700000000000;
        v10 = xmmword_22234D130;
        goto LABEL_109;
      case 88:
        result = 0;
        *a2 = 0x40E7700000000000;
        v3 = xmmword_22234D120;
LABEL_95:
        *(a2 + 8) = v3;
        v4 = xmmword_22234D0F0;
        goto LABEL_110;
      case 89:
        result = 0;
        *a2 = 0x40E5888000000000;
        v7 = xmmword_22234D180;
LABEL_104:
        *(a2 + 8) = v7;
        v4 = xmmword_22234D0A0;
        goto LABEL_110;
      case 91:
        result = 0;
        *a2 = 0x40E7700000000000;
        v10 = xmmword_22234D110;
LABEL_109:
        *(a2 + 8) = v10;
        v4 = xmmword_22234D100;
        goto LABEL_110;
      case 92:
        result = 0;
        *a2 = 0x40E7700000000000;
        v17 = xmmword_22234D0B0;
LABEL_65:
        *(a2 + 8) = v17;
        v4 = xmmword_22234D0C0;
        goto LABEL_110;
      case 93:
        result = 0;
        *a2 = 0x40E7700000000000;
        v9 = xmmword_22234D320;
        goto LABEL_80;
      case 94:
        result = 0;
        *a2 = 0x40E7700000000000;
        v9 = xmmword_22234D240;
LABEL_80:
        *(a2 + 8) = v9;
        v4 = xmmword_22234D250;
LABEL_110:
        *(a2 + 24) = v4;
        break;
      default:
        if (gLogCategory_APAudioFormat <= 90 && (gLogCategory_APAudioFormat != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        result = 4294960561;
        break;
    }
  }

  else
  {
    APSLogErrorAt(0);
    return 4294960591;
  }

  return result;
}

uint64_t APAudioFormatIndexGetBitsPerChannel(uint64_t a1)
{
  result = 16;
  if ((a1 - 18) > 0x3B || ((1 << (a1 - 18)) & 0xF77F5FF83E3FFF5) == 0)
  {
    v3 = a1 - 87;
    v4 = a1 - 85;
    v5 = a1 - 19;
    if (((1 << v5) & 0x40040000000005) != 0)
    {
      v6 = 24;
    }

    else
    {
      v6 = 0;
    }

    if (v5 <= 0x36)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    if (v4 < 2)
    {
      v7 = 20;
    }

    if (v3 >= 6)
    {
      return v7;
    }

    else
    {
      return 16;
    }
  }

  return result;
}

uint64_t APAudioFormatIndexToChannelLayoutTag(uint64_t a1, int *a2)
{
  if (a2)
  {
    v2 = a1 - 2;
    if ((a1 - 2) > 0x5C)
    {
      v4 = -65536;
      result = 4294960561;
    }

    else
    {
      result = dword_22234D7DC[v2];
      v4 = dword_22234D950[v2];
    }

    *a2 = v4;
  }

  else
  {
    APSLogErrorAt(0);
    return 4294960591;
  }

  return result;
}

uint64_t ASBDToAPAudioFormatIndex(uint64_t a1, int a2, uint64_t *a3)
{
  if (!a1 || !a3)
  {
    APSLogErrorAt(0);
    return 4294960591;
  }

  v5 = *(a1 + 8);
  if (v5 > 1869641074)
  {
    if (v5 <= 1902207855)
    {
      if (v5 <= 1902207330)
      {
        if (v5 == 1869641075)
        {
          if (*(a1 + 28) == 1)
          {
            v24 = *a1;
            switch(v24)
            {
              case 16000:
                v6 = 28;
                goto LABEL_187;
              case 48000:
                v6 = 30;
                goto LABEL_187;
              case 24000:
                v6 = 29;
                goto LABEL_187;
            }
          }

          return 4294960561;
        }

        if (v5 == 1885430115)
        {
          if (*a1 == 44100.0 && *(a1 + 28) == 2)
          {
            v6 = 89;
            goto LABEL_187;
          }

          return 4294960561;
        }
      }

      else
      {
        switch(v5)
        {
          case 1902207331:
            if (*a1 == 44100.0 && *(a1 + 28) == 2)
            {
              v6 = 70;
              goto LABEL_187;
            }

            if (*a1 == 48000.0)
            {
              v25 = *(a1 + 28);
              switch(v25)
              {
                case 2:
                  v6 = 54;
                  goto LABEL_187;
                case 8:
                  v6 = 56;
                  goto LABEL_187;
                case 6:
                  v6 = 55;
                  goto LABEL_187;
              }
            }

            return 4294960561;
          case 1902207795:
            if (*a1 == 48000.0 && *(a1 + 28) == 6)
            {
              v6 = 87;
              goto LABEL_187;
            }

            return 4294960561;
          case 1902207848:
            if (*a1 == 44100.0 && *(a1 + 28) == 2)
            {
              v6 = 71;
LABEL_187:
              result = 0;
              *a3 = v6;
              return result;
            }

            if (*a1 == 48000.0)
            {
              v26 = *(a1 + 28);
              switch(v26)
              {
                case 2:
                  v6 = 57;
                  goto LABEL_187;
                case 8:
                  v6 = 60;
                  goto LABEL_187;
                case 6:
                  v6 = 58;
                  goto LABEL_187;
              }
            }

            return 4294960561;
        }
      }

      goto LABEL_101;
    }

    if (v5 > 1902324530)
    {
      if (v5 != 1902324531)
      {
        if (v5 == 1902469939)
        {
          if (*a1 == 48000.0 && *(a1 + 28) == 8)
          {
            v6 = 88;
            goto LABEL_187;
          }

          return 4294960561;
        }

        if (v5 == 1902928227)
        {
          if (*(a1 + 12) == 3 && *(a1 + 28) == 2)
          {
            if (*a1 == 44100.0)
            {
              v6 = 73;
              goto LABEL_187;
            }

            if (*a1 == 48000.0)
            {
              v6 = 61;
              goto LABEL_187;
            }
          }

          return 4294960561;
        }

        goto LABEL_101;
      }

      if (*a1 != 48000.0)
      {
        return 4294960561;
      }

      HIDWORD(v23) = *(a1 + 28) - 2;
      LODWORD(v23) = HIDWORD(v23);
      v20 = v23 >> 1;
      if (v20 >= 8 || ((0xADu >> v20) & 1) == 0)
      {
        return 4294960561;
      }

      v22 = &unk_22234DB38;
LABEL_92:
      v6 = v22[v20];
      goto LABEL_187;
    }

    if (v5 == 1902207856)
    {
      if (*a1 == 44100.0 && *(a1 + 28) == 2)
      {
        v6 = 72;
        goto LABEL_187;
      }

      return 4294960561;
    }

    v13 = 1902211171;
    goto LABEL_53;
  }

  if (v5 <= 1634754914)
  {
    if (v5 <= 1633772388)
    {
      if (v5 == 778924083)
      {
        if (*(a1 + 28) == 2)
        {
          v17 = *a1;
          if (v17 == 44100)
          {
            v6 = 74;
            goto LABEL_187;
          }

          if (v17 == 48000)
          {
            v6 = 75;
            goto LABEL_187;
          }
        }

        return 4294960561;
      }

      if (v5 == 1633772320)
      {
        v9 = *(a1 + 28);
        switch(v9)
        {
          case 8:
            if (*a1 == 48000.0)
            {
              IsAudioChannelLayoutTag7_1 = APAudioFormatIsAudioChannelLayoutTag7_1(a2);
              v6 = 90;
              if (!IsAudioChannelLayoutTag7_1)
              {
                v6 = 40;
              }

              goto LABEL_187;
            }

            break;
          case 6:
            if (*a1 == 48000.0)
            {
              v6 = 39;
              goto LABEL_187;
            }

            break;
          case 2:
            v10 = *a1;
            if (v10 == 44100)
            {
              v6 = 22;
              goto LABEL_187;
            }

            if (v10 == 48000)
            {
              v6 = 23;
              goto LABEL_187;
            }

            break;
        }

        return 4294960561;
      }

      goto LABEL_101;
    }

    if (v5 != 1633772389)
    {
      if (v5 == 1634492771)
      {
        if (*a1 == 44100.0 && *(a1 + 28) == 2)
        {
          v11 = *(a1 + 12) - 1;
          if (v11 >= 3)
          {
            return 4294960561;
          }

          v12 = &unk_22234DAC8;
        }

        else
        {
          if (*a1 != 48000.0)
          {
            return 4294960561;
          }

          if (*(a1 + 28) != 2)
          {
            return 4294960561;
          }

          v11 = *(a1 + 12) - 1;
          if (v11 >= 3)
          {
            return 4294960561;
          }

          v12 = &unk_22234DAE0;
        }

        v6 = v12[v11];
        goto LABEL_187;
      }

      goto LABEL_101;
    }

    v18 = *(a1 + 28);
    result = 4294960561;
    if (v18 <= 5)
    {
      if (v18 == 1)
      {
        v29 = *a1;
        if (v29 <= 31999)
        {
          if (v29 == 16000)
          {
            v6 = 26;
          }

          else
          {
            if (v29 != 24000)
            {
              return result;
            }

            v6 = 27;
          }
        }

        else
        {
          switch(v29)
          {
            case 32000:
              v6 = 43;
              break;
            case 44100:
              v6 = 31;
              break;
            case 48000:
              v6 = 32;
              break;
            default:
              return result;
          }
        }
      }

      else
      {
        if (v18 != 2)
        {
          return result;
        }

        v19 = *a1;
        if (v19 == 44100)
        {
          v6 = 24;
        }

        else
        {
          if (v19 != 48000)
          {
            return result;
          }

          v6 = 25;
        }
      }

      goto LABEL_187;
    }

    if (v18 == 6)
    {
      if (*a1 != 48000.0)
      {
        return result;
      }

      v6 = 41;
      goto LABEL_187;
    }

    if (v18 == 8 && *a1 == 48000.0)
    {
      v6 = 42;
      goto LABEL_187;
    }
  }

  else
  {
    if (v5 <= 1700997938)
    {
      if (v5 == 1634754915)
      {
        goto LABEL_54;
      }

      v13 = 1667330147;
LABEL_53:
      if (v5 == v13)
      {
LABEL_54:
        if (*a1 == 48000.0)
        {
          v14 = *(a1 + 28);
          result = 4294960561;
          if (v14 > 9)
          {
            switch(v14)
            {
              case 10:
                v6 = 76;
                if (a2 == 12845066)
                {
                  v6 = 77;
                }

                break;
              case 12:
                v6 = 68;
                break;
              case 16:
                v6 = 92;
                break;
              default:
                return result;
            }
          }

          else
          {
            switch(v14)
            {
              case 2:
                v6 = 64;
                break;
              case 6:
                v6 = 65;
                break;
              case 8:
                v16 = APAudioFormatIsAudioChannelLayoutTag7_1(a2);
                v6 = 66;
                if (v16)
                {
                  v6 = 67;
                }

                break;
              default:
                return result;
            }
          }

          goto LABEL_187;
        }

        return 4294960561;
      }

LABEL_101:
      if (gLogCategory_APAudioFormat <= 50)
      {
        if (gLogCategory_APAudioFormat == -1)
        {
          if (!_LogCategory_Initialize())
          {
            return 4294960561;
          }

          v38 = *(a1 + 8);
        }

        LogPrintF();
      }

      return 4294960561;
    }

    if (v5 == 1700997939)
    {
      if (*a1 != 48000.0)
      {
        return 4294960561;
      }

      HIDWORD(v21) = *(a1 + 28) - 2;
      LODWORD(v21) = HIDWORD(v21);
      v20 = v21 >> 1;
      if (v20 >= 8 || ((0xADu >> v20) & 1) == 0)
      {
        return 4294960561;
      }

      v22 = &unk_22234DAF8;
      goto LABEL_92;
    }

    if (v5 == 1700998451)
    {
      if (*a1 == 48000.0 && *(a1 + 28) == 6)
      {
        v6 = 91;
        goto LABEL_187;
      }

      return 4294960561;
    }

    if (v5 != 1819304813)
    {
      goto LABEL_101;
    }

    v7 = *a1;
    if (*a1 == 8000.0)
    {
      v8 = *(a1 + 28);
      if (v8 == 1)
      {
        v6 = 2;
        goto LABEL_187;
      }

      if (v8 == 2)
      {
        v6 = 3;
        goto LABEL_187;
      }

      return 4294960561;
    }

    if (v7 == 16000.0)
    {
      v27 = *(a1 + 28);
      if (v27 == 1)
      {
        v6 = 4;
        goto LABEL_187;
      }

      if (v27 == 2)
      {
        v6 = 5;
        goto LABEL_187;
      }

      return 4294960561;
    }

    if (v7 == 24000.0)
    {
      v30 = *(a1 + 28);
      if (v30 == 1)
      {
        v6 = 6;
        goto LABEL_187;
      }

      if (v30 == 2)
      {
        v6 = 7;
        goto LABEL_187;
      }

      return 4294960561;
    }

    if (v7 == 32000.0)
    {
      v31 = *(a1 + 28);
      if (v31 == 1)
      {
        v6 = 8;
        goto LABEL_187;
      }

      if (v31 == 2)
      {
        v6 = 9;
        goto LABEL_187;
      }

      return 4294960561;
    }

    if (v7 == 44100.0)
    {
      v32 = *(a1 + 28);
      if (v32 == 2)
      {
        v36 = *(a1 + 32);
        if (v36 == 16)
        {
          v6 = 11;
          goto LABEL_187;
        }

        if (v36 == 24)
        {
          v6 = 13;
          goto LABEL_187;
        }
      }

      else if (v32 == 1)
      {
        v33 = *(a1 + 32);
        if (v33 == 16)
        {
          v6 = 10;
          goto LABEL_187;
        }

        if (v33 == 24)
        {
          v6 = 12;
          goto LABEL_187;
        }
      }

      return 4294960561;
    }

    if (v7 != 48000.0)
    {
      return 4294960561;
    }

    v34 = *(a1 + 28);
    result = 4294960561;
    if (v34 > 5)
    {
      if (v34 == 6)
      {
        if (*(a1 + 32) == 16)
        {
          v6 = 44;
          goto LABEL_187;
        }

        if (*(a1 + 12))
        {
          v6 = 47;
          goto LABEL_187;
        }
      }

      else if (v34 == 8)
      {
        if (*(a1 + 32) == 16)
        {
          v6 = 38;
          goto LABEL_187;
        }

        if (*(a1 + 12))
        {
          v6 = 48;
          goto LABEL_187;
        }
      }
    }

    else if (v34 == 1)
    {
      v37 = *(a1 + 32);
      if (v37 == 16)
      {
        v6 = 14;
        goto LABEL_187;
      }

      if (v37 == 24)
      {
        v6 = 16;
        goto LABEL_187;
      }

      if (*(a1 + 12))
      {
        v6 = 45;
        goto LABEL_187;
      }
    }

    else if (v34 == 2)
    {
      v35 = *(a1 + 32);
      if (v35 == 16)
      {
        v6 = 15;
        goto LABEL_187;
      }

      if (v35 == 24)
      {
        v6 = 17;
        goto LABEL_187;
      }

      if (*(a1 + 12))
      {
        v6 = 46;
        goto LABEL_187;
      }
    }
  }

  return result;
}

uint64_t APAudioFormatIsAudioChannelLayoutTag7_1(int a1)
{
  result = 0;
  if (a1 <= 10747911)
  {
    if (a1 <= 8519687)
    {
      if (a1 > 8388615)
      {
        if (a1 == 8388616)
        {
          return 1;
        }

        v3 = 8454152;
      }

      else
      {
        if (a1 == 8257544)
        {
          return 1;
        }

        v3 = 8323080;
      }
    }

    else if (a1 <= 10551303)
    {
      if (a1 == 8519688)
      {
        return 1;
      }

      v3 = 10485768;
    }

    else
    {
      if (a1 == 10551304 || a1 == 10616840)
      {
        return 1;
      }

      v3 = 10682376;
    }

LABEL_27:
    if (a1 != v3)
    {
      return result;
    }

    return 1;
  }

  if (a1 > 11993095)
  {
    if (a1 <= 12386311)
    {
      if (a1 == 11993096)
      {
        return 1;
      }

      v3 = 12058632;
    }

    else
    {
      if (a1 == 12386312 || a1 == 14090248)
      {
        return 1;
      }

      v3 = 13172744;
    }

    goto LABEL_27;
  }

  if (a1 <= 10878983)
  {
    if (a1 == 10747912)
    {
      return 1;
    }

    v3 = 10813448;
    goto LABEL_27;
  }

  if (a1 != 10878984 && a1 != 10944520)
  {
    v3 = 11599880;
    goto LABEL_27;
  }

  return 1;
}
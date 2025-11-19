void udpconnection_sendBatchInternal(uint64_t a1, const __CFArray *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Count = CFArrayGetCount(a2);
  if (*DerivedStorage)
  {
    APSLogErrorAt();

    APSSignalErrorAt();
  }

  else if (*(DerivedStorage + 144) == 5)
  {
    v6 = Count;
    v7 = Count - 1;
    if (Count < 1)
    {
LABEL_8:
      v11 = *(DerivedStorage + 196);
      v12 = -1;
      if (v11 == 1718776692)
      {
        v12 = 0;
      }

      v13 = *(DerivedStorage + 296);
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 0x40000000;
      v15[2] = __udpconnection_sendBatchInternal_block_invoke;
      v15[3] = &__block_descriptor_tmp_185;
      if (v11 == 1818325876)
      {
        v14 = v7;
      }

      else
      {
        v14 = v12;
      }

      v15[4] = v6;
      v15[5] = a1;
      v15[6] = a2;
      v15[7] = v14;
      nw_connection_batch(v13, v15);
    }

    else
    {
      v8 = 0;
      while (CFArrayGetValueAtIndex(a2, v8))
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a2, v8);
        v10 = CFGetTypeID(ValueAtIndex);
        if (v10 != APTransportPackageGetTypeID())
        {
          break;
        }

        if (v6 == ++v8)
        {
          goto LABEL_8;
        }
      }

      APSLogErrorAt();
    }
  }
}

uint64_t APTransportConnectionUDPNWCreate_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  APSLogErrorAt();
  result = OUTLINED_FUNCTION_5_4();
  *a1 = result;
  return result;
}

uint64_t APTransportConnectionUDPNWCreate_cold_6(uint64_t *a1)
{
  v2 = *a1;
  OUTLINED_FUNCTION_3_1();
  return LogPrintF();
}

uint64_t APTransportConnectionUDPNWCreate_cold_13(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  APSLogErrorAt();
  result = OUTLINED_FUNCTION_5_4();
  *a1 = result;
  return result;
}

uint64_t APTransportConnectionUDPNWCreate_cold_19(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  APSLogErrorAt();
  result = OUTLINED_FUNCTION_5_4();
  *a1 = result;
  return result;
}

uint64_t APTransportConnectionUDPNWCreate_cold_21(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  APSLogErrorAt();
  result = OUTLINED_FUNCTION_5_4();
  *a1 = result;
  return result;
}

uint64_t APTransportConnectionUDPNWCreate_cold_22(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  APSLogErrorAt();
  result = OUTLINED_FUNCTION_5_4();
  *a1 = result;
  return result;
}

uint64_t APTransportConnectionUDPNWCreate_cold_23(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  APSLogErrorAt();
  result = OUTLINED_FUNCTION_5_4();
  *a1 = result;
  return result;
}

uint64_t APTransportConnectionUDPNWCreate_cold_25(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  APSLogErrorAt();
  result = OUTLINED_FUNCTION_4_6();
  *a1 = result;
  return result;
}

uint64_t udpconnection_CopyProperty_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  APSLogErrorAt();
  result = OUTLINED_FUNCTION_14_2();
  *a1 = result;
  return result;
}

uint64_t udpconnection_CopyProperty_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  APSLogErrorAt();
  result = OUTLINED_FUNCTION_14_2();
  *a1 = result;
  return result;
}

uint64_t udpconnection_CopyProperty_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  APSLogErrorAt();
  result = OUTLINED_FUNCTION_4();
  *a1 = result;
  return result;
}

uint64_t udpconnection_CopyProperty_cold_5(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  APSLogErrorAt();
  result = OUTLINED_FUNCTION_4();
  *a1 = result;
  return result;
}

uint64_t udpconnection_CopyProperty_cold_6(int a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  result = APSLogErrorAt();
  if (gLogCategory_APTransportConnectionUDPNW <= 90)
  {
    if (gLogCategory_APTransportConnectionUDPNW != -1 || (result = OUTLINED_FUNCTION_9_0(), result))
    {
      result = OUTLINED_FUNCTION_15();
    }
  }

  *a4 = a1;
  return result;
}

uint64_t udpconnection_CopyProperty_cold_7(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  APSLogErrorAt();
  result = OUTLINED_FUNCTION_4();
  *a1 = result;
  return result;
}

void udpconnection_CopyProperty_cold_8(const void *a1, _DWORD *a2)
{
  APSLogErrorAt();
  *a2 = APSSignalErrorAt();
  CFRelease(a1);
}

uint64_t udpconnection_CopyProperty_cold_9(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  APSLogErrorAt();
  result = OUTLINED_FUNCTION_5_4();
  *a1 = result;
  return result;
}

uint64_t udpconnection_CopyProperty_cold_10(uint64_t *a1, uint64_t a2, _DWORD *a3)
{
  result = APSLogErrorAt();
  if (gLogCategory_APTransportConnectionUDPNW <= 90)
  {
    if (gLogCategory_APTransportConnectionUDPNW != -1 || (result = OUTLINED_FUNCTION_9_0(), result))
    {
      v6 = *a1;
      result = OUTLINED_FUNCTION_15();
    }
  }

  *a3 = -72322;
  return result;
}

uint64_t udpconnection_CopyProperty_cold_11(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  APSLogErrorAt();
  result = OUTLINED_FUNCTION_5_4();
  *a1 = result;
  return result;
}

uint64_t udpconnection_CopyProperty_cold_13(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  APSLogErrorAt();
  result = OUTLINED_FUNCTION_4();
  *a1 = result;
  return result;
}

uint64_t udpconnection_CopyProperty_cold_16(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  APSLogErrorAt();
  result = OUTLINED_FUNCTION_4();
  *a1 = result;
  return result;
}

uint64_t udpconnection_CopyProperty_cold_17(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  APSLogErrorAt();
  result = OUTLINED_FUNCTION_5_4();
  *a1 = result;
  return result;
}

uint64_t udpconnection_CopyProperty_cold_18(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  APSLogErrorAt();
  result = OUTLINED_FUNCTION_5_4();
  *a1 = result;
  return result;
}

uint64_t udpconnection_CopyProperty_cold_19(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  APSLogErrorAt();
  result = OUTLINED_FUNCTION_5_4();
  *a1 = result;
  return result;
}

uint64_t udpconnection_CopyProperty_cold_20(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  APSLogErrorAt();
  result = OUTLINED_FUNCTION_4_6();
  *a1 = result;
  return result;
}

uint64_t udpconnection_CopyProperty_cold_21(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  APSLogErrorAt();
  result = OUTLINED_FUNCTION_4_6();
  *a1 = result;
  return result;
}

uint64_t udpconnection_CopyProperty_cold_22(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  APSLogErrorAt();
  result = OUTLINED_FUNCTION_4();
  *a1 = result;
  return result;
}

uint64_t udpconnection_CopyProperty_cold_24(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  APSLogErrorAt();
  result = OUTLINED_FUNCTION_4();
  *a1 = result;
  return result;
}

uint64_t udpconnection_SetProperty_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  APSLogErrorAt();
  result = OUTLINED_FUNCTION_14_2();
  *a1 = result;
  return result;
}

uint64_t udpconnection_SetProperty_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  APSLogErrorAt();
  result = OUTLINED_FUNCTION_4_6();
  *a1 = result;
  return result;
}

uint64_t udpconnection_SetProperty_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  APSLogErrorAt();
  result = OUTLINED_FUNCTION_4_6();
  *a1 = result;
  return result;
}

uint64_t udpconnection_SetProperty_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  APSLogErrorAt();
  result = OUTLINED_FUNCTION_4_6();
  *a1 = result;
  return result;
}

uint64_t udpconnection_SetProperty_cold_5(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  APSLogErrorAt();
  result = OUTLINED_FUNCTION_4_6();
  *a1 = result;
  return result;
}

uint64_t udpconnection_SetProperty_cold_8(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  APSLogErrorAt();
  result = OUTLINED_FUNCTION_4_6();
  *a1 = result;
  return result;
}

uint64_t udpconnection_createUDPParameters_cold_1()
{
  result = APSLogErrorAt();
  if (gLogCategory_APTransportConnectionUDPNW <= 90)
  {
    if (gLogCategory_APTransportConnectionUDPNW != -1)
    {
      return OUTLINED_FUNCTION_15();
    }

    result = OUTLINED_FUNCTION_9_0();
    if (result)
    {
      return OUTLINED_FUNCTION_15();
    }
  }

  return result;
}

uint64_t udpconnection_createUDPParameters_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  APSLogErrorAt();
  result = OUTLINED_FUNCTION_5_4();
  *a1 = result;
  return result;
}

uint64_t udpconnection_createUDPParameters_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  APSLogErrorAt();
  result = OUTLINED_FUNCTION_5_4();
  *a1 = result;
  return result;
}

uint64_t udpconnection_createUDPParameters_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  APSLogErrorAt();
  result = OUTLINED_FUNCTION_5_4();
  *a1 = result;
  return result;
}

uint64_t udpconnection_createUDPParameters_cold_6(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  APSLogErrorAt();
  result = OUTLINED_FUNCTION_5_4();
  *a1 = result;
  return result;
}

uint64_t udpconnection_createUDPParameters_cold_7(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  APSLogErrorAt();
  result = OUTLINED_FUNCTION_5_4();
  *a1 = result;
  return result;
}

uint64_t udpconnection_createUDPParameters_cold_8(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  APSLogErrorAt();
  result = OUTLINED_FUNCTION_4_6();
  *a1 = result;
  return result;
}

uint64_t udpconnection_createRemoteEndpoint_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  APSLogErrorAt();
  result = OUTLINED_FUNCTION_5_4();
  *a1 = result;
  return result;
}

uint64_t udpconnection_Resume_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_15_1(a1);
  OUTLINED_FUNCTION_3_1();
  return LogPrintF();
}

uint64_t udpconnection_Resume_cold_5(uint64_t *a1)
{
  v2 = *a1;
  OUTLINED_FUNCTION_1();
  return LogPrintF();
}

uint64_t udpconnection_Resume_cold_6(uint64_t a1, void *a2, _DWORD *a3)
{
  result = APSLogErrorAt();
  if (gLogCategory_APTransportConnectionUDPNW <= 90)
  {
    if (gLogCategory_APTransportConnectionUDPNW != -1 || (result = OUTLINED_FUNCTION_9_0(), result))
    {
      result = OUTLINED_FUNCTION_15();
    }
  }

  *a3 = -6722;
  *a2 = 0;
  return result;
}

uint64_t udpconnection_Resume_cold_8(int a1, uint64_t a2, uint64_t a3, void *a4, _DWORD *a5)
{
  result = APSLogErrorAt();
  if (gLogCategory_APTransportConnectionUDPNW <= 90)
  {
    if (gLogCategory_APTransportConnectionUDPNW != -1 || (result = OUTLINED_FUNCTION_9_0(), result))
    {
      result = OUTLINED_FUNCTION_15();
    }
  }

  *a5 = a1;
  *a4 = a3;
  return result;
}

uint64_t udpconnection_Resume_cold_10(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  APSLogErrorAt();
  result = OUTLINED_FUNCTION_5_4();
  *a1 = result;
  return result;
}

uint64_t udpconnection_Resume_cold_11(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  APSLogErrorAt();
  result = OUTLINED_FUNCTION_5_4();
  *a1 = result;
  return result;
}

uint64_t udpconnection_Resume_cold_12(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  APSLogErrorAt();
  result = OUTLINED_FUNCTION_5_4();
  *a1 = result;
  return result;
}

uint64_t udpconnection_Resume_cold_16(_DWORD *a1)
{
  APSLogErrorAt();
  *a1 = -72322;

  return APSLogErrorAt();
}

uint64_t udpconnection_Resume_cold_17(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -72327;
  return result;
}

uint64_t udpconnection_Resume_cold_18(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -72327;
  return result;
}

BOOL udpconnection_AcquirePackage_cold_1()
{
  OUTLINED_FUNCTION_2();
  APSLogErrorAt();
  v0 = OUTLINED_FUNCTION_14_2();
  return OUTLINED_FUNCTION_16_0(v0);
}

BOOL udpconnection_AcquirePackageWithMessageSize_cold_1()
{
  OUTLINED_FUNCTION_2();
  APSLogErrorAt();
  v0 = OUTLINED_FUNCTION_14_2();
  return OUTLINED_FUNCTION_16_0(v0);
}

uint64_t udpconnection_setupNWConnection_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  APSLogErrorAt();
  result = OUTLINED_FUNCTION_5_4();
  *a1 = result;
  return result;
}

uint64_t __udpconnection_setupListenerNW_block_invoke_2_cold_3(uint64_t a1)
{
  nw_listener_get_port(*(a1 + 48));
  OUTLINED_FUNCTION_3_1();
  return LogPrintF();
}

uint64_t __udpconnection_setupListenerNW_block_invoke_2_cold_4(uint64_t a1)
{
  nw_listener_get_port(*(a1 + 48));
  OUTLINED_FUNCTION_3_1();
  return LogPrintF();
}

uint64_t udpconnection_handleNWConnectionStateChange_cold_1(uint64_t a1, const void *a2, const void *a3, CFNumberRef *a4)
{
  APTTrafficMetricsConnectionClosed(*(a1 + 408));
  v8 = *(a1 + 8);
  FigSimpleMutexLock();
  *(a1 + 144) = 6;
  v9 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, a2);
  *a4 = v9;
  udpconnection_callEventCallback(a3, *(a1 + 144), v9);
  v10 = *(a1 + 8);
  return FigSimpleMutexUnlock();
}

uint64_t _APTransportConnectionUDPNWReceiveLoopContextFinalize_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_15_1(a1);
  OUTLINED_FUNCTION_3_1();
  return LogPrintF();
}

uint64_t udpconnection_primaryDropLogger_cold_1(uint64_t *a1)
{
  v3 = *(a1 + 4);
  v4 = a1[2];
  v2 = *a1;
  return OUTLINED_FUNCTION_15();
}

uint64_t __udpconnection_sendPackageInternal_block_invoke_cold_1(const void **a1, uint64_t a2)
{
  result = udpconnection_callEventCallback(*a1, 8, *(a2 + 40));
  if (gLogCategory_APTransportConnectionUDPNW <= 50)
  {
    if (gLogCategory_APTransportConnectionUDPNW != -1 || (result = OUTLINED_FUNCTION_8(), result))
    {
      v4 = *a1;
      OUTLINED_FUNCTION_3_1();
      return LogPrintF();
    }
  }

  return result;
}

void __udpconnection_sendBatchInternal_block_invoke_cold_1(uint64_t a1, CFIndex *a2)
{
  v4 = 0;
  do
  {
    v5 = *(a1 + 40);
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 48), v4);
    udpconnection_sendPackageInternal_0(v5, ValueAtIndex, v4++ == *(a1 + 56));
  }

  while (v4 < *a2);
}

uint64_t _APTransportConnectionUDPNWInlineInactivityMonitorFinalize_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_15_1(a1);
  OUTLINED_FUNCTION_3_1();
  return LogPrintF();
}

void carBonjourBrowser_dispatchEvent(const void *a1, int a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = *(DerivedStorage + 128);
  if (v7)
  {
    v8 = DerivedStorage;
    v9 = *(DerivedStorage + 136);
    if (gLogCategory_APBrowserCarBonjour <= 20 && (gLogCategory_APBrowserCarBonjour != -1 || _LogCategory_Initialize()))
    {
      v10 = *(v8 + 16);
      APBrowserGetEventString(a2);
      LogPrintF();
    }

    if (a1)
    {
      CFRetain(a1);
    }

    if (a3)
    {
      CFRetain(a3);
    }

    v11 = *(v8 + 120);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __carBonjourBrowser_dispatchEvent_block_invoke;
    block[3] = &__block_descriptor_tmp_82;
    block[4] = v7;
    block[5] = a1;
    v13 = a2;
    block[6] = a3;
    block[7] = v9;
    dispatch_async(v11, block);
  }
}

uint64_t carBonjourBrowser_invalidate()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 24);
  if (v1)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __carBonjourBrowser_invalidate_block_invoke;
    block[3] = &__block_descriptor_tmp_17;
    block[4] = DerivedStorage;
    dispatch_sync(v1, block);
  }

  return 0;
}

void __carBonjourBrowser_setMode_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (*(v2 + 32))
  {
    APSLogErrorAt();
    OUTLINED_FUNCTION_8_1();
    v12 = -12785;
LABEL_33:
    *(v11 + 24) = v12;
    return;
  }

  if (!*(v2 + 128))
  {
    APSLogErrorAt();
    OUTLINED_FUNCTION_8_1();
    v12 = -72060;
    goto LABEL_33;
  }

  if (*(a1 + 48))
  {
    if (*(a1 + 48) == 3)
    {
      if (!*(v2 + 104))
      {
        if (gLogCategory_APBrowserCarBonjour <= 50)
        {
          if (gLogCategory_APBrowserCarBonjour != -1 || (v4 = _LogCategory_Initialize(), v2 = *(a1 + 40), v4))
          {
            OUTLINED_FUNCTION_5_8(v2);
            OUTLINED_FUNCTION_9();
            v2 = *(a1 + 40);
          }
        }

        if (*(v2 + 48))
        {
          APSPowerAssertionRaiseTemporary();
          v2 = *(a1 + 40);
        }

        v5 = *(v2 + 96);
        v6 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        if (v6)
        {
          v6(v5, 1);
        }

        *(*(a1 + 40) + 104) = 1;
      }

      return;
    }

    if (gLogCategory_APBrowserCarBonjour > 60)
    {
      goto LABEL_17;
    }

    if (gLogCategory_APBrowserCarBonjour == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_17;
      }

      v2 = *(a1 + 40);
      v13 = *(a1 + 48);
    }

    v14 = *(v2 + 16);
    LogPrintF();
LABEL_17:
    OUTLINED_FUNCTION_8_1();
    *(v3 + 24) = -72062;

    APSLogErrorAt();
    return;
  }

  if (*(v2 + 104))
  {
    if (gLogCategory_APBrowserCarBonjour <= 50)
    {
      if (gLogCategory_APBrowserCarBonjour != -1 || (v7 = _LogCategory_Initialize(), v2 = *(a1 + 40), v7))
      {
        OUTLINED_FUNCTION_5_8(v2);
        OUTLINED_FUNCTION_9();
        v2 = *(a1 + 40);
      }
    }

    v8 = *(v2 + 96);
    v9 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v9)
    {
      v9(v8, 0);
    }

    v10 = *(a1 + 40);
    ++*(v10 + 108);
    *(v10 + 104) = 0;
  }
}

uint64_t carBonjourBrowser_setMode_cold_1(uint64_t a1)
{
  result = APSLogErrorAt();
  *(*a1 + 24) = -72062;
  return result;
}

uint64_t carBonjourBrowser_getDNSForDeviceID_cold_1(uint64_t a1)
{
  result = APSLogErrorAt();
  *(*a1 + 24) = -12780;
  return result;
}

uint64_t carBonjourBrowser_getDNSForDeviceID_cold_2(uint64_t a1)
{
  result = APSLogErrorAt();
  *(*a1 + 24) = -12780;
  return result;
}

uint64_t __carBonjourBrowser_getDNSForDeviceID_block_invoke_cold_4(uint64_t *a1, uint64_t *a2, _BYTE **a3)
{
  if (*a3)
  {
    **a3;
  }

  v5 = *a2;
  v4 = *a1;
  return OUTLINED_FUNCTION_9();
}

uint64_t __carBonjourBrowser_getDNSForDeviceID_block_invoke_cold_5(uint64_t a1)
{
  result = APSLogErrorAt();
  *(*(*a1 + 8) + 24) = -12786;
  return result;
}

uint64_t __carBonjourBrowser_getDNSForDeviceID_block_invoke_cold_6(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  return OUTLINED_FUNCTION_9();
}

void __carBonjourBrowser_getDNSForDeviceID_block_invoke_cold_7()
{
  APSLogErrorAt();
  OUTLINED_FUNCTION_8_1();
  *(v0 + 24) = -6762;
}

void __carBonjourBrowser_getDNSForDeviceID_block_invoke_cold_8()
{
  APSLogErrorAt();
  OUTLINED_FUNCTION_8_1();
  *(v0 + 24) = -12786;
}

void __carBonjourBrowser_reconfirmDevice_block_invoke_cold_4()
{
  APSLogErrorAt();
  OUTLINED_FUNCTION_8_1();
  *(v0 + 24) = -12786;
}

uint64_t __carBonjourBrowser_handleBonjourEvent_block_invoke_cold_6(uint64_t a1, uint64_t a2)
{
  APSLogErrorAt();
  --*(a2 + 72);

  return APSLogErrorAt();
}

uint64_t __carBonjourBrowser_handleBonjourEvent_block_invoke_cold_13(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 16);
  v4 = *a2;
  return OUTLINED_FUNCTION_9();
}

void carBonjourBrowser_removeAllDevices_cold_2(const void *a1, uint64_t a2, _DWORD *a3)
{
  carBonjourBrowser_dispatchEvent(a1, 6, 0);
  if (*(a2 + 112))
  {
    v5 = os_transaction_copy_description();
    if (gLogCategory_APBrowserCarBonjour <= 50 && (gLogCategory_APBrowserCarBonjour != -1 || _LogCategory_Initialize()))
    {
      OUTLINED_FUNCTION_9();
    }

    free(v5);
    v6 = *(a2 + 112);
    if (v6)
    {
      os_release(v6);
      *(a2 + 112) = 0;
    }
  }

  *a3 = 0;
}

uint64_t __carBonjourBrowser_removeAllDevices_block_invoke_cold_2(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 16);
  v4 = *a2;
  return OUTLINED_FUNCTION_7_0();
}

uint64_t carPlayHelperWiFi_invalidate(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(DerivedStorage + 16);
  if (v3)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __carPlayHelperWiFi_invalidate_block_invoke;
    block[3] = &__block_descriptor_56_e5_v8__0l;
    block[4] = DerivedStorage;
    block[5] = a1;
    block[6] = a1;
    dispatch_sync(v3, block);
  }

  return 0;
}

void carPlayHelperWiFi_finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage[2])
  {
    OUTLINED_FUNCTION_1_2();
    v18 = 3221225472;
    v19 = __carPlayHelperWiFi_finalize_block_invoke;
    v20 = &__block_descriptor_40_e5_v8__0l;
    v21 = DerivedStorage;
    dispatch_sync(v3, block);
  }

  carPlayHelperWiFi_invalidate(a1);
  v4 = DerivedStorage[1];
  if (v4)
  {
    dispatch_semaphore_wait(v4, 0xFFFFFFFFFFFFFFFFLL);
    v5 = DerivedStorage[1];
    if (v5)
    {
      dispatch_release(v5);
      DerivedStorage[1] = 0;
    }
  }

  v6 = DerivedStorage[2];
  if (v6)
  {
    dispatch_sync(v6, &__block_literal_global_12);
    v7 = DerivedStorage[2];
    if (v7)
    {
      dispatch_release(v7);
      DerivedStorage[2] = 0;
    }
  }

  v8 = DerivedStorage[3];
  if (v8)
  {
    dispatch_sync(v8, &__block_literal_global_14);
    v9 = DerivedStorage[3];
    if (v9)
    {
      dispatch_release(v9);
      DerivedStorage[3] = 0;
    }
  }

  v10 = DerivedStorage[16];
  if (v10)
  {
    CFRelease(v10);
    DerivedStorage[16] = 0;
  }

  v11 = DerivedStorage[4];
  if (v11)
  {
    CFRelease(v11);
    DerivedStorage[4] = 0;
  }

  v12 = DerivedStorage[12];
  if (v12)
  {
    CFRelease(v12);
    DerivedStorage[12] = 0;
  }

  v13 = DerivedStorage[11];
  if (v13)
  {
    CFRelease(v13);
    DerivedStorage[11] = 0;
  }

  v14 = DerivedStorage[9];
  if (v14)
  {
    CFRelease(v14);
    DerivedStorage[9] = 0;
  }

  v15 = DerivedStorage[8];
  if (v15)
  {
    CFRelease(v15);
    DerivedStorage[8] = 0;
  }

  v16 = DerivedStorage[7];
  if (v16)
  {
    dispatch_release(v16);
    DerivedStorage[7] = 0;
  }
}

NSObject *__carPlayHelperWiFi_invalidate_block_invoke(NSObject *result)
{
  isa = result[4].isa;
  if (!*isa)
  {
    v2 = result;
    v3 = *(isa + 9);
    if (v3)
    {
      APConnectivityHelperRemoveAllRegistrations(v3, v2[5].isa);
    }

    v4 = v2[6].isa;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    carPlayHelperWiFi_dispatchEvent(v4, 3, 0);
    result = *(DerivedStorage + 8);
    if (result)
    {
      result = dispatch_semaphore_signal(result);
    }

    *v2[4].isa = 1;
  }

  return result;
}

void carPlayHelperWiFi_setInterfaceWatchingEnabled(const void *a1, char a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 16))
  {
    v5 = DerivedStorage;
    CFRetain(a1);
    v6 = *(v5 + 16);
    OUTLINED_FUNCTION_1_2();
    v9 = 3221225472;
    v10 = __carPlayHelperWiFi_setInterfaceWatchingEnabled_block_invoke;
    v11 = &__block_descriptor_49_e5_v8__0l;
    v14 = a2;
    v12 = v5;
    v13 = a1;
    dispatch_async(v7, block);
  }
}

void __carPlayHelperWiFi_setInterfaceWatchingEnabled_block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9A0] defaultCenter];
  v3 = *(a1 + 32);
  if (!*v3)
  {
    if (*(v3 + 80) == *(a1 + 48))
    {
      goto LABEL_12;
    }

    if (*(a1 + 48))
    {
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __carPlayHelperWiFi_setInterfaceWatchingEnabled_block_invoke_2;
      v9[3] = &__block_descriptor_48_e24_v16__0__NSNotification_8l;
      v4 = *(a1 + 40);
      v9[4] = v3;
      v9[5] = v4;
      v5 = [v2 addObserverForName:@"CRPairedVehiclesDidChangeNotification" object:0 queue:0 usingBlock:v9];
      v7 = *(a1 + 32);
      v6 = *(a1 + 40);
      *(v7 + 48) = v5;
      if (APConnectivityHelperRegisterForEvent(*(v7 + 72), v6, 3) || APConnectivityHelperRegisterForEvent(*(*(a1 + 32) + 72), *(a1 + 40), 9))
      {
LABEL_14:
        APSLogErrorAt();
        goto LABEL_15;
      }
    }

    else
    {
      if (*(v3 + 48))
      {
        [v2 removeObserver:?];
        v3 = *(a1 + 32);
        *(v3 + 48) = 0;
      }

      if (APConnectivityHelperDeregisterForEvent(*(v3 + 72), *(a1 + 40), 3) || APConnectivityHelperDeregisterForEvent(*(*(a1 + 32) + 72), *(a1 + 40), 9))
      {
        goto LABEL_14;
      }
    }

    *(*(a1 + 32) + 80) = *(a1 + 48);
    goto LABEL_12;
  }

LABEL_15:
  if (gLogCategory_APBrowserCarWiFiHelper <= 90 && (gLogCategory_APBrowserCarWiFiHelper != -1 || _LogCategory_Initialize()))
  {
    v8 = *(a1 + 40);
    *(a1 + 48);
    LogPrintF();
  }

LABEL_12:
  CFRelease(*(a1 + 40));
}

uint64_t __carPlayHelperWiFi_setInterfaceWatchingEnabled_block_invoke_3(uint64_t result)
{
  v1 = *(result + 32);
  if (!*v1)
  {
    if (v1[80])
    {
      return carPlayHelperWiFi_updateCarKitInCarStatus(*(result + 40));
    }
  }

  return result;
}

intptr_t __carPlayHelperWiFi_updateCarKitNetworkStatus_block_invoke(void *a1, char a2, void *a3)
{
  if (gLogCategory_APBrowserCarWiFiHelper <= 30 && (gLogCategory_APBrowserCarWiFiHelper != -1 || _LogCategory_Initialize()))
  {
    v8 = a1[5];
    LogPrintF();
  }

  if (!a3 || ![a3 code])
  {
    *(*(a1[4] + 8) + 24) = a2;
  }

  v6 = *(a1[6] + 56);

  return dispatch_semaphore_signal(v6);
}

void __carPlayHelperWiFi_registerForCarKitInCarNotification_block_invoke_2(uint64_t a1)
{
  if (*(a1 + 56) == *(*(a1 + 40) + 40))
  {
    if (gLogCategory_APBrowserCarWiFiHelper <= 30 && (gLogCategory_APBrowserCarWiFiHelper != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    *(*(*(a1 + 32) + 8) + 24) = carPlayHelperWiFi_updateCarKitInCarStatus(*(a1 + 48));
    if (*(*(*(a1 + 32) + 8) + 24))
    {
      APSLogErrorAt();
    }
  }

  v2 = *(a1 + 48);
  if (v2)
  {

    CFRelease(v2);
  }
}

void carPlayHelperWiFi_updateCarKitInCarStatus_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"void soft_CRBluetoothIndicatesInCar(void (^)(BOOL description:{NSString *, NSError *))"), @"APCarPlayHelperWiFi.m", 55, @"%s", dlerror()}];
  __break(1u);
}

void CarKitLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"void *CarKitLibrary(void)") description:{@"APCarPlayHelperWiFi.m", 46, @"%s", *a1}];
  __break(1u);
}

uint64_t carPlayHelperWiFi_networkChanged_cold_2()
{
  APSLogErrorAt();

  return APSLogErrorAt();
}

uint64_t stream_SetReadyToSendCallback()
{
  OUTLINED_FUNCTION_5_9();
  v51 = 0x2000000000;
  v52 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v13 = OUTLINED_FUNCTION_2_8(DerivedStorage, v6, v7, v8, v9, v10, v11, v12, v31, v32, v33, v34, v35, v36, v37, block, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48);
  v39 = 0x40000000;
  v40 = __stream_SetReadyToSendCallback_block_invoke;
  v41 = &unk_278BC7F10;
  v43 = v14;
  v44 = v3;
  v42 = v4;
  dispatch_sync(v13, &block);
  if (!v46[3])
  {
    goto LABEL_11;
  }

  v22 = OUTLINED_FUNCTION_3_7();
  v33 = __stream_SetReadyToSendCallback_block_invoke_2;
  v34 = &__block_descriptor_tmp_42;
  v35 = v1;
  v36 = v3;
  v37 = v2;
  dispatch_sync(v22, &v31);
  v23 = v46[3];
  v24 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (v1)
  {
    if (v24)
    {
      v25 = stream_readyToSendCallback;
      v26 = v23;
      v27 = v0;
LABEL_7:
      v28 = v24(v26, v25, v27);
      goto LABEL_9;
    }
  }

  else if (v24)
  {
    v26 = v23;
    v25 = 0;
    v27 = 0;
    goto LABEL_7;
  }

  v28 = -12782;
LABEL_9:
  *(v50 + 24) = v28;
  if (v28)
  {
    APSLogErrorAt();
  }

LABEL_11:
  v29 = v46[3];
  if (v29)
  {
    CFRelease(v29);
  }

  OUTLINED_FUNCTION_7_4(v29, v15, v16, v17, v18, v19, v20, v21, v31, v32, v33, v34, v35, v36);
  _Block_object_dispose(v49, 8);
  return v0;
}

uint64_t stream_SetReadyToSendBatchCallback()
{
  OUTLINED_FUNCTION_5_9();
  v51 = 0x2000000000;
  v52 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v13 = OUTLINED_FUNCTION_2_8(DerivedStorage, v6, v7, v8, v9, v10, v11, v12, v31, v32, v33, v34, v35, v36, v37, block, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48);
  v39 = 0x40000000;
  v40 = __stream_SetReadyToSendBatchCallback_block_invoke;
  v41 = &unk_278BC7FD0;
  v43 = v14;
  v44 = v3;
  v42 = v4;
  dispatch_sync(v13, &block);
  if (!v46[3])
  {
    goto LABEL_11;
  }

  v22 = OUTLINED_FUNCTION_3_7();
  v33 = __stream_SetReadyToSendBatchCallback_block_invoke_2;
  v34 = &__block_descriptor_tmp_48;
  v35 = v1;
  v36 = v3;
  v37 = v2;
  dispatch_sync(v22, &v31);
  v23 = v46[3];
  v24 = *(*(CMBaseObjectGetVTable() + 16) + 104);
  if (v1)
  {
    if (v24)
    {
      v25 = stream_readyToSendBatchCallback;
      v26 = v23;
      v27 = v0;
LABEL_7:
      v28 = v24(v26, v25, v27);
      goto LABEL_9;
    }
  }

  else if (v24)
  {
    v26 = v23;
    v25 = 0;
    v27 = 0;
    goto LABEL_7;
  }

  v28 = -12782;
LABEL_9:
  *(v50 + 24) = v28;
  if (v28)
  {
    APSLogErrorAt();
  }

LABEL_11:
  v29 = v46[3];
  if (v29)
  {
    CFRelease(v29);
  }

  OUTLINED_FUNCTION_7_4(v29, v15, v16, v17, v18, v19, v20, v21, v31, v32, v33, v34, v35, v36);
  _Block_object_dispose(v49, 8);
  return v0;
}

uint64_t stream_CopyProperty_cold_1(uint64_t a1)
{
  result = APSLogErrorAt();
  *(*a1 + 24) = -16617;
  return result;
}

uint64_t stream_CopyProperty_cold_2(uint64_t a1)
{
  result = APSLogErrorAt();
  *(*a1 + 24) = -16611;
  return result;
}

void __stream_handleEventFromSendConnection_block_invoke_cold_1(const void *a1, const void *a2, int *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v7)
  {
    v8 = v7(a2);
  }

  else
  {
    v8 = 0;
  }

  v9 = *(*(CMBaseObjectGetVTable() + 16) + 96);
  if (v9)
  {
    v10 = v9(a2);
  }

  else
  {
    v10 = 1634957678;
  }

  if (*(DerivedStorage + 24))
  {
    v13 = -16617;
  }

  else
  {
    if (v10 == 1634957678)
    {
      CFRetain(a1);
      if (a2)
      {
        CFRetain(a2);
      }

      if (v8)
      {
        CFRetain(v8);
      }

      v11 = *(DerivedStorage + 104);
      OUTLINED_FUNCTION_4_8();
      v15 = 0x40000000;
      v16 = __stream_packageReceived_block_invoke;
      v17 = &__block_descriptor_tmp_36;
      v18 = DerivedStorage;
      v19 = a1;
      v20 = a2;
      v21 = v8;
      dispatch_async(v12, block);
    }

    else if (gLogCategory_APTransportStreamUnbuffered < 61 && (gLogCategory_APTransportStreamUnbuffered != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v13 = 0;
  }

  *a3 = v13;
  if (v8)
  {
    CFRelease(v8);
  }
}

uint64_t stream_readyToSendBatchCallback_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  APSLogErrorAt();
  result = APSSignalErrorAt();
  *a1 = result;
  return result;
}

uint64_t stream_readyToSendBatchCallback_cold_5(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  APSLogErrorAt();
  result = APSSignalErrorAt();
  *a1 = result;
  return result;
}

uint64_t stream_readyToSendBatchCallback_cold_6(uint64_t a1)
{
  OUTLINED_FUNCTION_2();
  APSLogErrorAt();
  result = APSSignalErrorAt();
  *(*a1 + 24) = result;
  return result;
}

uint64_t stream_readyToSendBatchCallback_cold_7(uint64_t a1)
{
  OUTLINED_FUNCTION_2();
  APSLogErrorAt();
  result = APSSignalErrorAt();
  *(*a1 + 24) = result;
  return result;
}

void __APBrowserRapportManagerInvalidate_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (*(v2 + 51))
  {
    v3 = -72284;
  }

  else
  {
    APBrowserRapportManager_stop(*(a1 + 40));
    APBrowserRapportManager_dispatchEvent(v2, 4, 0);
    *(v2 + 51) = 1;
    if (*(v2 + 40))
    {
      if (_MergedGlobals_5 != -1)
      {
        dispatch_once(&_MergedGlobals_5, &__block_literal_global_20);
      }

      FigCFWeakReferenceTableRemoveValue();
      v3 = 0;
      *(v2 + 40) = 0;
    }

    else
    {
      v3 = 0;
    }
  }

  *(*(*(a1 + 32) + 8) + 24) = v3;
}

uint64_t __APBrowserRapportManagerGetMode_block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  v2 = *(v1 + 51);
  if (*(v1 + 51))
  {
    v2 = -72284;
  }

  else
  {
    **(result + 48) = *(v1 + 48);
  }

  *(*(*(result + 32) + 8) + 24) = v2;
  return result;
}

uint64_t __APBrowserRapportManagerSetEventHandler_block_invoke(uint64_t result)
{
  v1 = result;
  v2 = -72284;
  v3 = *(result + 40);
  if (!*(v3 + 51))
  {
    if (*(v3 + 48))
    {
      result = APSLogErrorAt();
      v2 = -72283;
    }

    else
    {
      v2 = 0;
      *(v3 + 56) = *(result + 48);
    }
  }

  *(*(*(v1 + 32) + 8) + 24) = v2;
  return result;
}

uint64_t __APBrowserRapportManagerCopyShowInfo_block_invoke(uint64_t result)
{
  v1 = result;
  v2 = -72284;
  v3 = *(result + 40);
  if (!*(v3 + 51))
  {
    v4 = *(result + 48);
    v5 = APBrowserRapportManager_ensurePreferencesUpdated(*(result + 40), 0);
    if (v5)
    {
      v9 = v5;
      result = APSLogErrorAt();
      v2 = v9;
    }

    else
    {
      Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
      if (Mutable)
      {
        v7 = Mutable;
        CFStringAppendF();
        CFStringAppendF();
        *(v3 + 50);
        CFStringAppendF();
        if (*(v3 + 48) && *(v3 + 48) != 1 && gLogCategory_APBrowserRapportManager <= 60 && (gLogCategory_APBrowserRapportManager != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        CFStringAppendF();
        *(v3 + 72);
        CFStringAppendF();
        Count = CFDictionaryGetCount(*(v3 + 80));
        CFStringAppendF();
        result = CFStringAppendF();
        if (Count)
        {
          CFStringAppendF();
          v8 = *(v3 + 80);
          OUTLINED_FUNCTION_1_2();
          OUTLINED_FUNCTION_4_0();
          result = CFDictionaryApplyBlock();
        }

        v2 = 0;
        *v4 = v7;
      }

      else
      {
        result = APSLogErrorAt();
        v2 = -72280;
      }
    }
  }

  *(*(*(v1 + 32) + 8) + 24) = v2;
  return result;
}

uint64_t APBrowserRapportManager_stop(uint64_t a1)
{
  if (!*(a1 + 48))
  {
    return 0;
  }

  if (gLogCategory_APBrowserRapportManager <= 40 && (gLogCategory_APBrowserRapportManager != -1 || OUTLINED_FUNCTION_7()))
  {
    OUTLINED_FUNCTION_5();
    LogPrintF();
  }

  *(a1 + 48) = 0;
  v2 = APBrowserRapportManager_update(a1);
  if (v2)
  {
    APSLogErrorAt();
  }

  else
  {
    APBrowserRapportManager_dispatchEvent(a1, 3, 0);
  }

  return v2;
}

uint64_t APBrowserRapportManager_tryNextEffectiveID(uint64_t result, const void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v2 = result;
    if (!*(result + 48))
    {
LABEL_21:
      v13 = *MEMORY[0x277D85DE8];
      return result;
    }

    v4 = *(result + 80);
    CFDictionaryGetTypeID();
    if (OUTLINED_FUNCTION_6_8())
    {
      CFSetGetTypeID();
      TypedValue = CFDictionaryGetTypedValue();
      if (TypedValue)
      {
        v6 = TypedValue;
        v19 = 0u;
        v20 = 0u;
        v17 = 0u;
        v18 = 0u;
        v7 = [*(v2 + 72) activeDevices];
        result = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (result)
        {
          v8 = result;
          v9 = *v18;
LABEL_7:
          v10 = 0;
          while (1)
          {
            if (*v18 != v9)
            {
              objc_enumerationMutation(v7);
            }

            v11 = *(*(&v17 + 1) + 8 * v10);
            if ([v11 idsDeviceIdentifier] == a2 || objc_msgSend(v11, "idsDeviceIdentifier") && CFEqual(a2, objc_msgSend(v11, "idsDeviceIdentifier")))
            {
              v12 = [v11 effectiveIdentifier];
              if (!CFSetContainsValue(v6, v12))
              {
                if (gLogCategory_APBrowserRapportManager <= 40 && (gLogCategory_APBrowserRapportManager != -1 || OUTLINED_FUNCTION_7()))
                {
                  v15 = a2;
                  v16 = v12;
                  OUTLINED_FUNCTION_5();
                  LogPrintF();
                }

                result = APBrowserRapportManager_sendGetInfo(v2, v11, a2, v12);
                if (!result)
                {
                  break;
                }
              }
            }

            if (v8 == ++v10)
            {
              result = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
              v8 = result;
              if (result)
              {
                goto LABEL_7;
              }

              goto LABEL_21;
            }
          }
        }

        goto LABEL_21;
      }
    }
  }

  v14 = *MEMORY[0x277D85DE8];

  return APSLogErrorAt();
}

uint64_t APBrowserRapportManager_sendDeviceEvent_cold_1()
{
  APSLogErrorAt();

  return APSLogErrorAt();
}

void __APConnectivityHelperCreateWithWiFiInterfaceClass_block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  if (qword_281309B90 != -1)
  {
    dispatch_once(&qword_281309B90, &__block_literal_global_85);
  }

  v4 = FigCFWeakReferenceTableCopyValue();
  if (v4)
  {
    v5 = v4;
    CFRetain(v4);
    v6 = a2;
    v7 = v5[2];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = ___APConnectivityHelperHandleCWFEventExternal_block_invoke;
    v8[3] = &unk_278BC72B0;
    v8[4] = a2;
    v8[5] = v5;
    dispatch_async(v7, v8);
    CFRelease(v5);
  }
}

void _APConnectivityHelperStartListeningToEvent(_DWORD *a1)
{
  v3 = *a1;
  if (*(*a1 + 232))
  {
    APSLogErrorAt();
    started = -72203;
  }

  else
  {
    v4 = a1[2];
    if (v4)
    {
      if (gLogCategory_APConnectivityHelper <= 50)
      {
        OUTLINED_FUNCTION_2_9();
        if (!v5 || _LogCategory_Initialize())
        {
          APConnectivityHelperGetEventString(v4);
          LogPrintF();
        }
      }

      switch(v4)
      {
        case 1:
          *(v3 + 87) = 1;
          started = _APConnectivityHelperEnsureWiFiDeviceAvailabilityCheckStarted(v3);
          if (started)
          {
            APSLogErrorAt();
            *(v3 + 87) = 0;
          }

          break;
        case 2:
          if (*(v3 + 85) || *(v3 + 86))
          {
            goto LABEL_85;
          }

          if (*(v3 + 56))
          {
            started = _APConnectivityHelperStartWiFiPowerListener(v3);
            if (started)
            {
              goto LABEL_73;
            }
          }

          else
          {
            *(v3 + 86) = 1;
            started = _APConnectivityHelperEnsureWiFiDeviceAvailabilityCheckStarted(v3);
            if (started)
            {
              goto LABEL_73;
            }
          }

          break;
        case 3:
          if (*(v3 + 81) || *(v3 + 82))
          {
            goto LABEL_85;
          }

          if (*(v3 + 56))
          {
            started = _APConnectivityHelperStartWiFiNetworkListener(v3);
            if (started)
            {
              goto LABEL_73;
            }
          }

          else
          {
            *(v3 + 82) = 1;
            started = _APConnectivityHelperEnsureWiFiDeviceAvailabilityCheckStarted(v3);
            if (started)
            {
              goto LABEL_73;
            }
          }

          break;
        case 4:
          if (*(v3 + 120))
          {
            goto LABEL_85;
          }

          *(v3 + 120) = 1;
          v12 = _APConnectivityHelperStartListeningToDynamicStoreNetworkEntity(v3, *MEMORY[0x277CE16A0], _APConnectivityHelperHandleUSBNetworkChangedEvent);
          if (v12)
          {
            started = v12;
            APSLogErrorAt();
            *(v3 + 120) = 0;
            _APConnectivityHelperStopUSBInterfaceListener(v3);
            APSLogErrorAt();
            goto LABEL_89;
          }

          OUTLINED_FUNCTION_11_4();
          if (!(v7 ^ v8 | v5) || v13 == -1 && !OUTLINED_FUNCTION_7())
          {
            goto LABEL_85;
          }

          goto LABEL_62;
        case 5:
          goto LABEL_21;
        case 6:
          if (*(v3 + 176))
          {
            goto LABEL_85;
          }

          *(v3 + 176) = 1;
          v10 = _APConnectivityHelperStartListeningToDynamicStoreNetworkEntity(v3, *MEMORY[0x277CE1690], _APConnectivityHelperHandleIPv6ChangedEvent);
          if (v10)
          {
            started = v10;
            APSLogErrorAt();
            *(v3 + 176) = 0;
            _APConnectivityHelperStopIPv6AddressListener(v3);
            APSLogErrorAt();
            goto LABEL_89;
          }

          OUTLINED_FUNCTION_11_4();
          if (v7 ^ v8 | v5 && (v11 != -1 || OUTLINED_FUNCTION_7()))
          {
            goto LABEL_62;
          }

          goto LABEL_85;
        case 7:
          *(v3 + 208) = 1;
          started = _APConnectivityHelperEnsureAWDLDevicePresentListenerStarted(v3);
          if (started)
          {
            APSLogErrorAt();
            *(v3 + 208) = 0;
          }

          break;
        case 8:
          if (!*(v3 + 153))
          {
            if (!*(v3 + 154))
            {
              OUTLINED_FUNCTION_11_4();
              if (v7 ^ v8 | v5 && (v16 != -1 || OUTLINED_FUNCTION_7()))
              {
                OUTLINED_FUNCTION_11();
              }

              v17 = objc_opt_new();
              *(v3 + 144) = v17;
              if (v17)
              {
                v18[0] = MEMORY[0x277D85DD0];
                v18[1] = 3221225472;
                v18[2] = ___APConnectivityHelperStartAWDLSoloSupportListener_block_invoke;
                v18[3] = &unk_278BC8380;
                v18[4] = v3;
                [v17 setStateUpdatedHandler:v18];
                [*(v3 + 144) beginMonitoring];
                *(v3 + 154) = 1;
              }

              else
              {
                APSLogErrorAt();
              }
            }

            goto LABEL_85;
          }

          started = _APConnectivityHelperSendAWDLSoloSupportEvent(v3);
          if (!started)
          {
            break;
          }

          goto LABEL_89;
        case 9:
          if (*(v3 + 83) || *(v3 + 84))
          {
            goto LABEL_85;
          }

          if (*(v3 + 56))
          {
            started = _APConnectivityHelperStartLinkDebounceFailedListener(v3);
            if (!started)
            {
              break;
            }
          }

          else
          {
            *(v3 + 84) = 1;
            started = _APConnectivityHelperEnsureWiFiDeviceAvailabilityCheckStarted(v3);
            if (!started)
            {
              break;
            }
          }

LABEL_73:
          APSLogErrorAt();
          goto LABEL_89;
        case 10:
          if (*(v3 + 192))
          {
            goto LABEL_85;
          }

          *(v3 + 192) = 1;
          v14 = _APConnectivityHelperStartListeningToDynamicStoreNetworkEntity(v3, *MEMORY[0x277CE1688], _APConnectivityHelperHandleIPv4ChangedEvent);
          if (v14)
          {
            started = v14;
            APSLogErrorAt();
            *(v3 + 192) = 0;
            _APConnectivityHelperStopIPv4AddressListener(v3);
            APSLogErrorAt();
            goto LABEL_89;
          }

          OUTLINED_FUNCTION_11_4();
          if (v7 ^ v8 | v5 && (v15 != -1 || OUTLINED_FUNCTION_7()))
          {
LABEL_62:
            OUTLINED_FUNCTION_11();
          }

LABEL_85:
          started = 0;
          break;
        default:
          v5 = (v4 - 100) > 9 || ((1 << (v4 - 100)) & 0x39F) == 0;
          if (v5)
          {
LABEL_21:
            OUTLINED_FUNCTION_9_4();
            if (v7 ^ v8 | v5 && (v9 != -1 || _LogCategory_Initialize()))
            {
              goto LABEL_18;
            }
          }

          else
          {
            OUTLINED_FUNCTION_9_4();
            if (v7 ^ v8 | v5 && (v6 != -1 || _LogCategory_Initialize()))
            {
              APConnectivityHelperGetEventString(v4);
LABEL_18:
              LogPrintF();
              break;
            }
          }

          break;
      }
    }

    else
    {
      started = -72201;
LABEL_89:
      APSLogErrorAt();
    }
  }

  a1[3] = started;
}

uint64_t _APConnectivityHelperDeregisterForEvent(uint64_t a1, const void *a2, void *key)
{
  v13 = a1;
  v14 = key;
  v15 = 0;
  if (a2)
  {
    v3 = key;
    v6 = key;
    Value = CFDictionaryGetValue(*(a1 + 248), key);
    if (!Value)
    {
      return 0;
    }

    v8 = Value;
    if (!CFSetContainsValue(Value, a2))
    {
      return 0;
    }

    CFSetRemoveValue(v8, a2);
    if (gLogCategory_APConnectivityHelper <= 50 && (gLogCategory_APConnectivityHelper != -1 || _LogCategory_Initialize()))
    {
      APConnectivityHelperGetEventString(v3);
      CFSetGetCount(v8);
      LogPrintF();
    }

    v9 = v3 - 1;
    if (v3 - 1) <= 9 && ((0x3EFu >> v9))
    {
      v10 = dword_23D383828[v9];
      if (gLogCategory_APConnectivityHelper <= 30 && (gLogCategory_APConnectivityHelper != -1 || _LogCategory_Initialize()))
      {
        APConnectivityHelperGetEventString(v10);
        OUTLINED_FUNCTION_7_0();
      }

      _APConnectivityHelperDispatchEventToClient(a1, a2, v10, 0);
    }

    if (!CFSetGetCount(v8))
    {
      CFDictionaryRemoveValue(*(a1 + 248), v6);
      _APConnectivityHelperStopListeningToEvent(&v13);
      v11 = v15;
      if (v15)
      {
        APSLogErrorAt();
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    APSLogErrorAt();
    return 4294960591;
  }

  return v11;
}

uint64_t _APConnectivityHelperDeregisterActivity(uint64_t a1, const void *a2, void *key)
{
  if (!a2)
  {
    APSLogErrorAt();
    return 4294960591;
  }

  v3 = key;
  v6 = key;
  Value = CFDictionaryGetValue(*(a1 + 256), key);
  if (Value)
  {
    v8 = Value;
    if (CFSetContainsValue(Value, a2))
    {
      CFSetRemoveValue(v8, a2);
      if (gLogCategory_APConnectivityHelper <= 50 && (gLogCategory_APConnectivityHelper != -1 || _LogCategory_Initialize()))
      {
        CFSetGetCount(v8);
        OUTLINED_FUNCTION_9();
      }

      if (!CFSetGetCount(v8))
      {
        CFDictionaryRemoveValue(*(a1 + 256), v6);
        if (v3)
        {
          v9 = 4294960561;
          APSLogErrorAt();
          APSLogErrorAt();
          return v9;
        }

        _APConnectivityHelperStopWakeOnWireless(a1);
      }
    }
  }

  return 0;
}

void __APConnectivityHelperRemoveAllRegistrations_block_invoke_4(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_12_1(a1);
  _APConnectivityHelperDeregisterActivity(v1, v2, v3);
  OUTLINED_FUNCTION_8_1();
  *(v5 + 24) = v4;
  OUTLINED_FUNCTION_8_1();
  *(v6 + 24) = 0;
}

void __APConnectivityHelperRemoveAllRegistrations_block_invoke_5(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_12_1(a1);
  _APConnectivityHelperDeregisterForEvent(v1, v2, v3);
  OUTLINED_FUNCTION_8_1();
  *(v5 + 24) = v4;
  OUTLINED_FUNCTION_8_1();
  *(v6 + 24) = 0;
}

uint64_t _APConnectivityHelperInvalidate(uint64_t a1)
{
  v2 = *a1;
  if (*(*a1 + 232))
  {
    result = 4294895093;
  }

  else
  {
    _APConnectivityHelperEnsureWiFiDeviceAvailabilityCheckStopped(*a1);
    _APConnectivityHelperEnsureWiFiPowerListenerStopped(v2);
    _APConnectivityHelperEnsureWiFiNetworkListenerStopped(v2);
    _APConnectivityHelperEnsureUSBInterfaceListenerStopped(v2);
    _APConnectivityHelperEnsureIPv6AddressesListenerStopped(v2);
    _APConnectivityHelperEnsureIPv4AddressesListenerStopped(v2);
    _APConnectivityHelperEnsureAWDLDevicePresentListenerStopped(v2);
    _APConnectivityHelperEnsureAWDLSoloSupportListenerStopped(v2);
    _APConnectivityHelperStopWakeOnWireless(v2);
    if (*(v2 + 40))
    {
      if (qword_281309B90 != -1)
      {
        dispatch_once(&qword_281309B90, &__block_literal_global_85);
      }

      FigCFWeakReferenceTableRemoveValue();
      *(v2 + 40) = 0;
    }

    [*(v2 + 48) invalidate];
    result = _APConnectivityHelperDispatchEvent(v2, 0x64, 0);
    *(v2 + 232) = 1;
  }

  *(a1 + 8) = result;
  return result;
}

void _APConnectivityHelperStopWakeOnWireless(uint64_t a1)
{
  if (*(a1 + 72))
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    v4 = ___APConnectivityHelperStopWakeOnWireless_block_invoke;
    v5 = &__block_descriptor_40_e5_v8__0l;
    v6 = a1;
    qos_class = dispatch_queue_get_qos_class(*(a1 + 24), 0);
    if (qos_class_self() >= qos_class)
    {
      v4(block);
    }

    else
    {
      dispatch_async_and_wait(*(a1 + 24), block);
    }

    *(a1 + 72) = 0;
  }
}

uint64_t _APConnectivityHelperHandleWiFiLinkChangedInternal(_BYTE *cf, void *a2)
{
  v9 = cf;
  if (!cf[81])
  {
    return 0;
  }

  if (gLogCategory_APConnectivityHelper <= 40 && (gLogCategory_APConnectivityHelper != -1 || OUTLINED_FUNCTION_7()))
  {
    OUTLINED_FUNCTION_11();
  }

  v4 = CFGetAllocator(cf);
  theDict = CFDictionaryCreateMutable(v4, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (theDict)
  {
    v11 = 0;
    _APConnectivityHelperPopulateCurrentWiFiNetworkInfo(&v9);
    if (v11)
    {
      APSLogErrorAt();
      v7 = 0;
      v6 = theDict;
    }

    else
    {
      if (a2)
      {
        v5 = [a2 objectForKeyedSubscript:*MEMORY[0x277D02A88]];
        if (v5)
        {
          if ([v5 isLinkDownDebounceInProgress])
          {
            CFDictionarySetValue(theDict, @"wifiNetworkIsLinkDownDebounceInProgress", *MEMORY[0x277CBED28]);
          }
        }
      }

      v6 = theDict;
      v7 = _APConnectivityHelperDispatchEvent(cf, 3, theDict);
      if (v7)
      {
        APSLogErrorAt();
      }
    }

    if (v6)
    {
      CFRelease(v6);
    }
  }

  else
  {
    APSLogErrorAt();
    return 4294895096;
  }

  return v7;
}

uint64_t _APConnectivityHelperEnsureAWDLDevicePresentListenerStopped(uint64_t a1)
{
  if (!*(a1 + 209) && !*(a1 + 210))
  {
    return 0;
  }

  if (gLogCategory_APConnectivityHelper <= 40 && (gLogCategory_APConnectivityHelper != -1 || OUTLINED_FUNCTION_7()))
  {
    OUTLINED_FUNCTION_11();
  }

  *(a1 + 209) = 0;
  _APConnectivityHelperUpdateInterfaceAddedListener(a1);
  if (!*(a1 + 216))
  {
    return 0;
  }

  v2 = _APConnectivityHelperDispatchEvent(a1, 0x6B, 0);
  if (v2)
  {
    APSLogErrorAt();
    APSLogErrorAt();
  }

  return v2;
}

void _APConnectivityHelperStopInterfaceAddedRetryTimer(uint64_t a1)
{
  v1 = *(a1 + 96);
  if (v1)
  {
    if (gLogCategory_APConnectivityHelper > 30)
    {
      goto LABEL_7;
    }

    if (gLogCategory_APConnectivityHelper != -1 || _LogCategory_Initialize())
    {
      OUTLINED_FUNCTION_7_0();
    }

    v1 = *(a1 + 96);
    if (v1)
    {
LABEL_7:
      dispatch_source_cancel(v1);
      dispatch_release(v1);
      *(a1 + 96) = 0;
    }
  }
}

uint64_t _APConnectivityHelperEnsureUSBInterfaceListenerStopped(uint64_t a1)
{
  if (!*(a1 + 120))
  {
    return 0;
  }

  v1 = _APConnectivityHelperStopUSBInterfaceListener(a1);
  if (v1)
  {
    APSLogErrorAt();
  }

  return v1;
}

uint64_t _APConnectivityHelperEnsureIPv6AddressesListenerStopped(uint64_t a1)
{
  if (!*(a1 + 176))
  {
    return 0;
  }

  v1 = _APConnectivityHelperStopIPv6AddressListener(a1);
  if (v1)
  {
    APSLogErrorAt();
  }

  return v1;
}

uint64_t _APConnectivityHelperEnsureIPv4AddressesListenerStopped(uint64_t a1)
{
  if (!*(a1 + 192))
  {
    return 0;
  }

  v1 = _APConnectivityHelperStopIPv4AddressListener(a1);
  if (v1)
  {
    APSLogErrorAt();
  }

  return v1;
}

uint64_t _APConnectivityHelperEnsureAWDLSoloSupportListenerStopped(uint64_t a1)
{
  if (!*(a1 + 154))
  {
    return 0;
  }

  if (gLogCategory_APConnectivityHelper <= 40 && (gLogCategory_APConnectivityHelper != -1 || OUTLINED_FUNCTION_7()))
  {
    v4 = a1;
    OUTLINED_FUNCTION_11();
  }

  [*(a1 + 144) endMonitoring];

  *(a1 + 144) = 0;
  *(a1 + 154) = 0;
  if (!*(a1 + 216))
  {
    return 0;
  }

  v2 = _APConnectivityHelperDispatchEvent(a1, 0x6C, 0);
  if (v2)
  {
    APSLogErrorAt();
    APSLogErrorAt();
  }

  return v2;
}

uint64_t _APConnectivityHelperStopUSBInterfaceListener(uint64_t a1)
{
  if (!*(a1 + 120))
  {
    return 0;
  }

  _APConnectivityHelperStopListeningToDynamicStoreNetworkEntity(a1, *MEMORY[0x277CE16A0]);
  if (gLogCategory_APConnectivityHelper <= 40 && (gLogCategory_APConnectivityHelper != -1 || OUTLINED_FUNCTION_7()))
  {
    OUTLINED_FUNCTION_11();
  }

  CFDictionaryRemoveAllValues(*(a1 + 112));
  *(a1 + 120) = 0;
  if (!*(a1 + 216))
  {
    return 0;
  }

  v2 = _APConnectivityHelperDispatchEvent(a1, 0x68, 0);
  if (v2)
  {
    APSLogErrorAt();
  }

  return v2;
}

uint64_t _APConnectivityHelperStopIPv6AddressListener(uint64_t a1)
{
  if (!*(a1 + 176))
  {
    return 0;
  }

  _APConnectivityHelperStopListeningToDynamicStoreNetworkEntity(a1, *MEMORY[0x277CE1690]);
  if (gLogCategory_APConnectivityHelper <= 40 && (gLogCategory_APConnectivityHelper != -1 || OUTLINED_FUNCTION_7()))
  {
    OUTLINED_FUNCTION_11();
  }

  CFDictionaryRemoveAllValues(*(a1 + 128));
  *(a1 + 176) = 0;
  if (!*(a1 + 216))
  {
    return 0;
  }

  v2 = _APConnectivityHelperDispatchEvent(a1, 0x6A, 0);
  if (v2)
  {
    APSLogErrorAt();
  }

  return v2;
}

uint64_t _APConnectivityHelperStopIPv4AddressListener(uint64_t a1)
{
  if (!*(a1 + 192))
  {
    return 0;
  }

  _APConnectivityHelperStopListeningToDynamicStoreNetworkEntity(a1, *MEMORY[0x277CE1688]);
  if (gLogCategory_APConnectivityHelper <= 40 && (gLogCategory_APConnectivityHelper != -1 || OUTLINED_FUNCTION_7()))
  {
    OUTLINED_FUNCTION_11();
  }

  CFDictionaryRemoveAllValues(*(a1 + 136));
  *(a1 + 192) = 0;
  if (!*(a1 + 216))
  {
    return 0;
  }

  v2 = _APConnectivityHelperDispatchEvent(a1, 0x6E, 0);
  if (v2)
  {
    APSLogErrorAt();
  }

  return v2;
}

uint64_t _APConnectivityHelperStopListeningToEvent_cold_4()
{
  APSLogErrorAt();

  return APSLogErrorAt();
}

uint64_t __APConnectivityHelperRegisterForEvent_block_invoke_cold_1(uint64_t *a1, uint64_t *a2, int *a3, const __CFSet *a4)
{
  v5 = *a1;
  v6 = *a2;
  APConnectivityHelperGetEventString(*a3);
  CFSetGetCount(a4);
  return OUTLINED_FUNCTION_9();
}

BOOL __APConnectivityHelperRegisterForEvent_block_invoke_cold_4()
{
  APSLogErrorAt();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_8_1();
  return *(v0 + 24) == 0;
}

uint64_t __APConnectivityHelperRegisterActivity_block_invoke_cold_1(uint64_t *a1, uint64_t a2, _DWORD *a3, CFSetRef theSet)
{
  v4 = *a1;
  v5 = *(a2 + 48);
  *a3;
  CFSetGetCount(theSet);
  return OUTLINED_FUNCTION_9();
}

uint64_t __APConnectivityHelperRegisterActivity_block_invoke_cold_5(uint64_t *a1, uint64_t a2, _DWORD *a3, CFSetRef theSet)
{
  v4 = *a1;
  v5 = *(a2 + 48);
  *a3;
  if (theSet)
  {
    CFSetGetCount(theSet);
  }

  return LogPrintF();
}

uint64_t __APConnectivityHelperRemoveAllRegistrations_block_invoke_cold_1(uint64_t *a1, CFSetRef theSet, uint64_t *a3)
{
  v4 = *a1;
  CFSetGetCount(theSet);
  v6 = *a3;
  return OUTLINED_FUNCTION_7_0();
}

uint64_t __APConnectivityHelperRemoveAllRegistrations_block_invoke_cold_2(uint64_t *a1, CFSetRef theSet, uint64_t *a3)
{
  v4 = *a1;
  CFSetGetCount(theSet);
  v6 = *a3;
  return OUTLINED_FUNCTION_7_0();
}

uint64_t __APConnectivityHelperRegisterEventHandler_block_invoke_cold_1(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  return OUTLINED_FUNCTION_9();
}

uint64_t __APConnectivityHelperDeregisterEventHandler_block_invoke_cold_1(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  return OUTLINED_FUNCTION_9();
}

void APConnectivityHelperCopyCurrentWiFiNetworkInfo_cold_1(uint64_t a1, CFTypeRef *a2)
{
  APSLogErrorAt();
  if (*a2)
  {
    CFRelease(*a2);
  }
}

uint64_t _APConnectivityHelperDispatchEventToClient_cold_1(uint64_t result, int a2)
{
  if (result <= 90)
  {
    if (result != -1 || (result = _LogCategory_Initialize(), result))
    {
      APConnectivityHelperGetEventString(a2);
      return LogPrintF();
    }
  }

  return result;
}

uint64_t _APConnectivityHelperEnsureAWDLDevicePresentListenerStarted_cold_2(uint64_t a1, uint64_t a2)
{
  APSLogErrorAt();
  _APConnectivityHelperEnsureAWDLDevicePresentListenerStopped(a2);

  return APSLogErrorAt();
}

uint64_t _APConnectivityHelperEnsureWiFiDeviceAvailabilityCheckStarted_cold_2(uint64_t a1, uint64_t a2)
{
  APSLogErrorAt();
  _APConnectivityHelperStopWiFiDeviceAttachmentListener(a2);
  APSLogErrorAt();

  return _APConnectivityHelperEnsureWiFiDeviceAvailabilityCheckStopped(a2);
}

void _APConnectivityHelperUpdateInterfaceAddedListener_cold_1(dispatch_object_t *a1, void *a2, uint64_t a3, void *a4)
{
  v7 = *a1;
  *a2 = MEMORY[0x277D85DD0];
  a2[1] = 3221225472;
  a2[2] = ___APConnectivityHelperStartInterfaceAddedRetryTimer_block_invoke;
  a2[3] = &__block_descriptor_40_e5_v8__0l;
  a2[4] = a3;
  dispatch_source_set_event_handler(v7, a2);
  v8 = *a1;
  *a4 = MEMORY[0x277D85DD0];
  a4[1] = 3221225472;
  a4[2] = ___APConnectivityHelperStartInterfaceAddedRetryTimer_block_invoke_2;
  a4[3] = &__block_descriptor_40_e5_v8__0l;
  a4[4] = a3;
  dispatch_source_set_cancel_handler(v8, a4);
  v9 = *a1;
  v10 = dispatch_time(0, 5000000000);
  dispatch_source_set_timer(v9, v10, 0x77359400uLL, 0x3B9ACA00uLL);
  dispatch_resume(*a1);
}

uint64_t _APConnectivityHelperEnsureWiFiPowerListenerStopped_cold_2(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v4 = _APConnectivityHelperDispatchEvent(a1, 0x66, 0);
  *a3 = v4;
  if (!v4)
  {
    return 1;
  }

  APSLogErrorAt();
  APSLogErrorAt();
  return 0;
}

void _APConnectivityHelperSendAWDLSoloSupportEvent_cold_2(char a1, CFMutableDictionaryRef theDict, uint64_t a3, _DWORD *a4)
{
  v7 = MEMORY[0x277CBED28];
  if (!a1)
  {
    v7 = MEMORY[0x277CBED10];
  }

  CFDictionarySetValue(theDict, @"isAWDLSoloSupported", *v7);
  v8 = _APConnectivityHelperDispatchEvent(a3, 8, theDict);
  *a4 = v8;
  if (v8)
  {
    APSLogErrorAt();
  }

  CFRelease(theDict);
}

uint64_t _APConnectivityHelperSendAWDLSoloSupportEvent_cold_3()
{
  APSLogErrorAt();

  return APSLogErrorAt();
}

uint64_t _APConnectivityHelperHandleUSBInterfaceChange_cold_2()
{
  APSLogErrorAt();

  return APSLogErrorAt();
}

void _APConnectivityHelperHandleIPv4ChangedEvent_cold_2()
{
  OUTLINED_FUNCTION_10_5();
  CFDictionarySetValue(v4, @"networkInterfaceName", v2);
  CFDictionarySetValue(v0, @"IPv4Addresses", v3);
  Count = CFArrayGetCount(v3);
  v6 = *(v1 + 136);
  if (Count)
  {
    CFDictionarySetValue(v6, v2, v0);
  }

  else
  {
    CFDictionaryRemoveValue(v6, v2);
  }

  if (_APConnectivityHelperDispatchEvent(v1, 0xA, v0))
  {
    APSLogErrorAt();
  }

  CFRelease(v0);
}

uint64_t APTPacingControllerSetMaxPacingRate(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  FigSimpleMutexLock();
  if (a2)
  {
    if (*(a1 + 72) != a2)
    {
      *(a1 + 72) = a2;
      if (gLogCategory_APTPacingController <= 30 && (gLogCategory_APTPacingController != -1 || _LogCategory_Initialize()))
      {
        OUTLINED_FUNCTION_7_0();
      }

      if (*(a1 + 80))
      {
        CFRetain(a1);
        dispatch_async_f(*(a1 + 40), a1, pacingController_updateYieldTimerIfNeededAsync);
      }
    }

    v5 = 0;
  }

  else
  {
    APSLogErrorAt();
    v5 = 4294960591;
  }

  v6 = *(a1 + 32);
  FigSimpleMutexUnlock();
  return v5;
}

void APTPacingControllerYieldOnQueueWithContinuationBlock_cold_1(uint64_t a1, const void *a2)
{
  APSLogErrorAt();

  _Block_release(a2);
}

uint64_t pacingController_updateYieldTimerIfNeededAsync_cold_1(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 64);
  return OUTLINED_FUNCTION_7_0();
}

uint64_t APTNANDataSessionIssueReportCreate(const void *a1, const void *a2, CFTypeRef *a3)
{
  if (a1)
  {
    v6 = CFGetTypeID(a1);
    TypeID = CFNumberGetTypeID();
    v8 = 0;
    v9 = 4294960591;
    if (a2 && v6 == TypeID)
    {
      v10 = CFGetTypeID(a2);
      if (v10 == CFNumberGetTypeID())
      {
        v11 = objc_alloc_init(MEMORY[0x277D7BA80]);
        v8 = v11;
        if (v11)
        {
          [v11 setRtpSequenceNumber:a1];
          [v8 setRtpStartTime:a2];
          v9 = 0;
          *a3 = CFRetain(v8);
        }

        else
        {
          v9 = 4294960568;
        }
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 0;
    v9 = 4294960591;
  }

  return v9;
}

uint64_t APTransportPackageTCPGetHeaderSize_cold_1(_DWORD *a1)
{
  APSLogErrorAt();
  result = OUTLINED_FUNCTION_1_13();
  *a1 = result;
  return result;
}

uint64_t APTransportPackageTCPGetPayloadSize_cold_3(_DWORD *a1)
{
  APSLogErrorAt();
  result = OUTLINED_FUNCTION_1_13();
  *a1 = result;
  return result;
}

uint64_t APTransportPackageTCPGetPayloadSize_cold_4(_DWORD *a1)
{
  APSLogErrorAt();
  result = OUTLINED_FUNCTION_1_13();
  *a1 = result;
  return result;
}

void connectionlistener_resumeInternal(_DWORD *a1)
{
  v2 = *a1;
  if (*(*a1 + 89))
  {
    v6 = -71862;
  }

  else if (*(v2 + 88))
  {
    v6 = 0;
  }

  else
  {
    v3 = *(v2 + 24);
    v4 = *(v2 + 28);
    v5 = ServerSocketPairOpen();
    if (v5)
    {
      v7 = v5;
      APSLogErrorAt();
      v6 = v7;
    }

    else
    {
      if (gLogCategory_APTConnectionListener <= 50 && (gLogCategory_APTConnectionListener != -1 || _LogCategory_Initialize()))
      {
        v8 = *(v2 + 24);
        LogPrintF();
      }

      v6 = 0;
    }

    free(0);
    free(0);
    if (v6)
    {
      APSLogErrorAt();
    }

    else
    {
      *(v2 + 88) = 1;
    }
  }

  a1[2] = v6;
}

_DWORD *connectionlistener_getListeningPortInternal(_DWORD *result)
{
  v1 = result;
  v2 = -71863;
  v3 = *result;
  if (*(*result + 89))
  {
    v2 = -71862;
  }

  else if (*(v3 + 88))
  {
    v2 = 0;
    result[2] = *(v3 + 24);
  }

  else
  {
    result = APSLogErrorAt();
  }

  v1[3] = v2;
  return result;
}

void connectionlistener_invalidateInternal(uint64_t a1)
{
  v2 = *a1;
  if (*(*a1 + 89))
  {
    v4 = -71862;
  }

  else
  {
    connectionlistener_cleanUp(*a1);
    *(v2 + 89) = 1;
    if (*(v2 + 48))
    {
      v5 = *(v2 + 48);
      v6 = *(v2 + 56);
      CFRetain(v2);
      v3 = *(v2 + 64);
      APSDispatchAsyncFHelper();
    }

    v4 = 0;
  }

  *(a1 + 8) = v4;
}

void APTConnectionListenerCreate_cold_2(const void *a1, _DWORD *a2)
{
  APSLogErrorAt();
  *a2 = OUTLINED_FUNCTION_4_9();
  CFRelease(a1);
}

uint64_t APTConnectionListenerCreate_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  APSLogErrorAt();
  result = OUTLINED_FUNCTION_3_8();
  *a1 = result;
  return result;
}

uint64_t APTConnectionListenerCreate_cold_5(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  APSLogErrorAt();
  result = OUTLINED_FUNCTION_3_8();
  *a1 = result;
  return result;
}

uint64_t APTConnectionListenerCreate_cold_6(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  APSLogErrorAt();
  result = OUTLINED_FUNCTION_3_8();
  *a1 = result;
  return result;
}

uint64_t APTConnectionListenerGetListeningPort_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  APSLogErrorAt();
  result = OUTLINED_FUNCTION_3_8();
  *a1 = result;
  return result;
}

uint64_t connectionlistener_listenerSocketEventHandler_cold_1()
{
  result = APSLogErrorAt();
  if (gLogCategory_APTConnectionListener <= 90)
  {
    if (gLogCategory_APTConnectionListener != -1)
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

int *connectionlistener_listenerSocketEventHandler_cold_4(unsigned int *a1)
{
  result = *a1;
  if ((result & 0x80000000) == 0)
  {
    result = close(result);
    if (result)
    {
      result = __error();
      if (*result)
      {
        return __error();
      }
    }
  }

  return result;
}

void __getHMMutableHomeManagerConfigurationClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"Class getHMMutableHomeManagerConfigurationClass(void)_block_invoke") description:{@"APHomeKitDeviceMonitor.m", 34, @"Unable to find class %s", "HMMutableHomeManagerConfiguration"}];
  __break(1u);
}

void HomeKitLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"void *HomeKitLibrary(void)") description:{@"APHomeKitDeviceMonitor.m", 28, @"%s", *a1}];
  __break(1u);
}

void __getHMHomeManagerClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"Class getHMHomeManagerClass(void)_block_invoke") description:{@"APHomeKitDeviceMonitor.m", 31, @"Unable to find class %s", "HMHomeManager"}];
  __break(1u);
}

uint64_t unbufnw_CopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = *DerivedStorage;
  v8 = *(*DerivedStorage + 72);
  FigSimpleMutexLock();
  if (CFEqual(a2, @"LastDeliveredPackage"))
  {
    if (*(v7 + 38))
    {
      unbufnwGuts_updatePackageTrackingInternal(v7);
      v9 = *(v7 + 304);
      if (v9)
      {
        v9 = CFRetain(v9);
      }

      a2 = 0;
      *a4 = v9;
      goto LABEL_23;
    }

LABEL_30:
    a2 = 4294954509;
    goto LABEL_23;
  }

  if (CFEqual(a2, @"MaxPackageSize"))
  {
    *bytes = 0;
    v10 = *(v7 + 208);
    if (!v10)
    {
      APSLogErrorAt();
      goto LABEL_30;
    }

    v11 = v10(bytes);
    if (v11)
    {
      a2 = v11;
      goto LABEL_39;
    }

    Int64 = CFNumberCreateInt64();
    *a4 = Int64;
    if (!Int64)
    {
LABEL_10:
      OUTLINED_FUNCTION_22_0();
LABEL_39:
      APSLogErrorAt();
      goto LABEL_23;
    }

LABEL_22:
    a2 = 0;
    goto LABEL_23;
  }

  if (CFEqual(a2, @"LocalNetworkIPAddress"))
  {
    *bytes = 0;
    v24 = 0;
    v26 = 0;
    v25 = 0;
    if (!*(v7 + 36))
    {
      if (*(v7 + 248))
      {
        if (*(v7 + 312) != 5)
        {
          APSLogErrorAt();
          OUTLINED_FUNCTION_21_0();
          a2 = (v19 + 3);
          goto LABEL_23;
        }

        v13 = nw_connection_copy_connected_local_endpoint();
        if (v13)
        {
          a2 = v13;
          nw_endpoint_get_address(v13);
          SockAddrCopy();
          nw_release(a2);
          v14 = CFDataCreate(*MEMORY[0x277CBECE8], bytes, 28);
          *a4 = v14;
          if (!v14)
          {
            goto LABEL_10;
          }

          goto LABEL_22;
        }

LABEL_38:
        OUTLINED_FUNCTION_22_0();
        goto LABEL_39;
      }

      goto LABEL_37;
    }

    goto LABEL_36;
  }

  if (CFEqual(a2, @"LocalNetworkPort"))
  {
    if (*(v7 + 36))
    {
      v15 = *(v7 + 232);
      if (v15)
      {
        nw_listener_get_port(v15);
        v16 = CFNumberCreateInt64();
        *a4 = v16;
        if (v16)
        {
          goto LABEL_22;
        }

        goto LABEL_38;
      }

LABEL_37:
      APSLogErrorAt();
      OUTLINED_FUNCTION_21_0();
      a2 = (v21 - 5);
      goto LABEL_23;
    }

LABEL_36:
    APSLogErrorAt();
    OUTLINED_FUNCTION_21_0();
    a2 = v20 | 2u;
    goto LABEL_23;
  }

  if (gLogCategory_APTransportConnectionUnbufferedNW <= 30 && (gLogCategory_APTransportConnectionUnbufferedNW != -1 || OUTLINED_FUNCTION_8_0()))
  {
    v22 = *(v7 + 16);
    OUTLINED_FUNCTION_7_0();
  }

  a2 = 4294954512;
LABEL_23:
  v17 = *(v7 + 72);
  FigSimpleMutexUnlock();
  return a2;
}

uint64_t unbufnw_SetProperty(uint64_t a1, const void *a2, const void *a3)
{
  v63 = *MEMORY[0x277D85DE8];
  v61 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = *DerivedStorage;
  v7 = *(*DerivedStorage + 72);
  FigSimpleMutexLock();
  if (gLogCategory_APTransportConnectionUnbufferedNW <= 30 && (gLogCategory_APTransportConnectionUnbufferedNW != -1 || OUTLINED_FUNCTION_8_0()))
  {
    v49 = *(v6 + 16);
    OUTLINED_FUNCTION_7_0();
  }

  if (!CFEqual(a2, @"PackageType"))
  {
    if (CFEqual(a2, @"RemoteNetworkIPAddress"))
    {
      if (*(v6 + 80))
      {
        goto LABEL_130;
      }

      if (a3)
      {
        v8 = CFGetTypeID(a3);
        if (v8 == APSNetworkAddressGetTypeID())
        {
          APSNetworkAddressGetSocketAddr();
          *(v6 + 88) = v59[0];
          *(v6 + 100) = *(v59 + 12);
          v9 = *(v6 + 116);
LABEL_23:
          SockAddrSetPort();
          goto LABEL_34;
        }
      }

      goto LABEL_134;
    }

    if (CFEqual(a2, @"RemoteNetworkPort"))
    {
      if (*(v6 + 80))
      {
        goto LABEL_130;
      }

      if (a3)
      {
        v12 = CFGetTypeID(a3);
        if (v12 == CFNumberGetTypeID())
        {
          *(v6 + 116) = OUTLINED_FUNCTION_23();
          goto LABEL_23;
        }
      }

      goto LABEL_134;
    }

    if (CFEqual(a2, @"BoundInterfaceIndex"))
    {
      if (*(v6 + 80))
      {
        goto LABEL_130;
      }

      if (a3)
      {
        v21 = CFGetTypeID(a3);
        if (v21 == CFNumberGetTypeID())
        {
          OUTLINED_FUNCTION_17_2();
          *(v6 + 120) = CFGetInt64Ranged();
          goto LABEL_34;
        }
      }

      goto LABEL_134;
    }

    if (CFEqual(a2, @"BoundLocalNetworkIPAddress"))
    {
      v22 = *(v6 + 32);
      OUTLINED_FUNCTION_10_6();
      if (v15 && *(v6 + 36))
      {
        if (*(v6 + 80))
        {
          goto LABEL_130;
        }

        if (a3)
        {
          v23 = CFGetTypeID(a3);
          if (v23 == APSNetworkAddressGetTypeID())
          {
            APSNetworkAddressGetSocketAddr();
            v24 = BYTE1(v59[0]);
            v25 = WORD1(v59[0]);
            v26 = BYTE4(v59[0]);
            v57 = *(v59 + 5);
            v58 = BYTE7(v59[0]);
            v27 = BYTE8(v59[0]);
            *v62 = *(v59 + 9);
            *&v62[15] = DWORD2(v59[1]);
            if (BYTE1(v59[0]) == 2)
            {
              if ((BYTE4(v59[0]) & 0xF0) != 0xE0)
              {
                goto LABEL_134;
              }
            }

            else if (BYTE1(v59[0]) != 30 || BYTE8(v59[0]) != 255)
            {
              goto LABEL_134;
            }

            *(v6 + 128) = v59[0];
            *(v6 + 129) = v24;
            *(v6 + 130) = v25;
            *(v6 + 132) = v26;
            *(v6 + 133) = v57;
            *(v6 + 135) = v58;
            *(v6 + 136) = v27;
            *(v6 + 137) = *v62;
            *(v6 + 152) = *&v62[15];
            v29 = *(v6 + 124);
            goto LABEL_23;
          }
        }
      }

LABEL_134:
      APSLogErrorAt();
      v48 = -72322;
      goto LABEL_135;
    }

    if (CFEqual(a2, @"BoundLocalNetworkPort"))
    {
      if (*(v6 + 36))
      {
        if (*(v6 + 80))
        {
          goto LABEL_130;
        }

        if (a3)
        {
          v28 = CFGetTypeID(a3);
          if (v28 == CFNumberGetTypeID())
          {
            OUTLINED_FUNCTION_17_2();
            *(v6 + 124) = CFGetInt64Ranged();
            goto LABEL_23;
          }
        }
      }

      goto LABEL_134;
    }

    if (CFEqual(a2, @"HopLimit"))
    {
      if (*(v6 + 80))
      {
LABEL_130:
        APSLogErrorAt();
        v48 = -72342;
LABEL_135:
        v61 = v48;
        goto LABEL_34;
      }

      if (!a3)
      {
        goto LABEL_134;
      }

      v30 = CFGetTypeID(a3);
      if (v30 != CFNumberGetTypeID())
      {
        goto LABEL_134;
      }

      OUTLINED_FUNCTION_17_2();
      CFGetInt64Ranged();
      v31 = *(v6 + 160);
      *(v6 + 160) = a3;
    }

    else
    {
      if (CFEqual(a2, @"QualityOfService"))
      {
        if (a3)
        {
          v32 = CFGetTypeID(a3);
          if (v32 == CFNumberGetTypeID())
          {
            v33 = OUTLINED_FUNCTION_23();
            if (*(v6 + 272) != v33)
            {
              *(v6 + 272) = v33;
              TrafficClassForSocketQoS = APTransportConnectionGetTrafficClassForSocketQoS(v33);
              if (gLogCategory_APTransportConnectionUnbufferedNW <= 50 && (gLogCategory_APTransportConnectionUnbufferedNW != -1 || _LogCategory_Initialize()))
              {
                v50 = *(v6 + 16);
                LogPrintF();
              }

              if (TrafficClassForSocketQoS != *(v6 + 276))
              {
                *(v6 + 276) = TrafficClassForSocketQoS;
                if (*(v6 + 248))
                {
                  nw_connection_reset_traffic_class();
                }
              }
            }

            goto LABEL_34;
          }
        }

        goto LABEL_134;
      }

      if (!CFEqual(a2, @"BBufBackingAllocator"))
      {
        if (CFEqual(a2, @"ShouldReceivePackages"))
        {
          if (a3)
          {
            v36 = CFGetTypeID(a3);
            if (v36 == CFBooleanGetTypeID())
            {
              Value = CFBooleanGetValue(a3);
              if (!atomic_exchange((v6 + 436), Value) && Value)
              {
                CFRetain(v6);
                v38 = *(v6 + 400);
                OUTLINED_FUNCTION_3_9();
                v53 = 0x40000000;
                v54 = __unbufnw_SetProperty_block_invoke;
                v55 = &__block_descriptor_tmp_27_0;
                v56 = v6;
                dispatch_async(v39, block);
              }

              goto LABEL_34;
            }
          }
        }

        else
        {
          if (!CFEqual(a2, @"DataPacer"))
          {
            if (gLogCategory_APTransportConnectionUnbufferedNW <= 30 && (gLogCategory_APTransportConnectionUnbufferedNW != -1 || OUTLINED_FUNCTION_8_0()))
            {
              v51 = *(v6 + 16);
              OUTLINED_FUNCTION_7_0();
            }

            goto LABEL_34;
          }

          if (!a3 || (v41 = CFGetTypeID(a3), v41 == APSDataPacerGetTypeID()))
          {
            OUTLINED_FUNCTION_12_2();
            if (!v42 && !*(v6 + 40))
            {
              v43 = *(v6 + 280);
              if (v43 != a3)
              {
                v44 = MEMORY[0x277CEA058];
                if (v43)
                {
                  CMNotificationCenterGetDefaultLocalCenter();
                  v46 = *v44;
                  OUTLINED_FUNCTION_2_11();
                  FigNotificationCenterRemoveWeakListener();
                  v45 = *(v6 + 280);
                }

                else
                {
                  v45 = 0;
                }

                *(v6 + 280) = a3;
                if (a3)
                {
                  CFRetain(a3);
                }

                if (v45)
                {
                  CFRelease(v45);
                }

                if (*(v6 + 280))
                {
                  CMNotificationCenterGetDefaultLocalCenter();
                  v47 = *v44;
                  OUTLINED_FUNCTION_2_11();
                  FigNotificationCenterAddWeakListener();
                }

                unbufnwGuts_updateDataPacingInternal(v6);
              }
            }

            goto LABEL_34;
          }
        }

        goto LABEL_134;
      }

      if (!a3)
      {
        goto LABEL_134;
      }

      v35 = CFGetTypeID(a3);
      if (v35 != CFAllocatorGetTypeID())
      {
        goto LABEL_134;
      }

      if (*(v6 + 80))
      {
        goto LABEL_130;
      }

      v31 = *(v6 + 216);
      *(v6 + 216) = a3;
    }

    CFRetain(a3);
    if (v31)
    {
      CFRelease(v31);
    }

    goto LABEL_34;
  }

  v60 = 0;
  memset(v59, 0, sizeof(v59));
  if (*(v6 + 80))
  {
    goto LABEL_130;
  }

  if (!a3)
  {
    v40 = -72322;
    goto LABEL_107;
  }

  if (CFEqual(a3, @"Datagram"))
  {
    LODWORD(v59[0]) = 0;
    *(&v59[0] + 1) = APTransportPackageDatagramCreate;
    *(&v59[1] + 1) = 0;
    v60 = 0;
    *&v59[1] = APTransportPackageDatagramCreateWithBBuf;
  }

  else
  {
    if (CFEqual(a3, @"RTPBuffered"))
    {
      HeaderSize = APTPackageRTPBufferedGetHeaderSize(v59);
      if (HeaderSize)
      {
        v40 = HeaderSize;
        goto LABEL_107;
      }

      *(&v59[0] + 1) = APTPackageRTPBufferedCreate;
      *&v59[1] = APTPackageRTPBufferedCreateWithBBuf;
      *(&v59[1] + 1) = APTPackageRTPBufferedGetPayloadSize;
      v11 = APTPackageRTPBufferedGetMaxPayloadSize;
    }

    else
    {
      if (!CFEqual(a3, @"BufferedAPAP"))
      {
        v40 = -72322;
LABEL_41:
        v61 = v40;
        APSLogErrorAt();
        goto LABEL_34;
      }

      v13 = APTransportPackageBufferedAPAPGetHeaderSize(v59);
      if (v13)
      {
        v40 = v13;
        goto LABEL_107;
      }

      *(&v59[0] + 1) = APTransportPackageBufferedAPAPCreate;
      *&v59[1] = APTransportPackageBufferedAPAPCreateWithBBuf;
      *(&v59[1] + 1) = APTransportPackageBufferedAPAPGetPayloadSize;
      v11 = APTransportPackageBufferedAPAPGetMaxPayloadSize;
    }

    v60 = v11;
  }

  if (!LODWORD(v59[0]))
  {
    v14 = *(v6 + 32);
    OUTLINED_FUNCTION_10_6();
    if (!v15)
    {
      v40 = -72322;
LABEL_107:
      APSLogErrorAt();
      goto LABEL_41;
    }
  }

  v61 = 0;
  v16 = *(v6 + 168);
  *(v6 + 168) = a3;
  CFRetain(a3);
  if (v16)
  {
    CFRelease(v16);
  }

  v17 = v59[1];
  *(v6 + 176) = v59[0];
  *(v6 + 192) = v17;
  *(v6 + 208) = v60;
LABEL_34:
  v18 = *(v6 + 72);
  FigSimpleMutexUnlock();
  result = v61;
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

void unbufnwGuts_invalidateInternal(uint64_t a1)
{
  if (!atomic_exchange((a1 + 28), 1u))
  {
    if (gLogCategory_APTransportConnectionUnbufferedNW <= 50 && (gLogCategory_APTransportConnectionUnbufferedNW != -1 || OUTLINED_FUNCTION_8()))
    {
      OUTLINED_FUNCTION_14_3();
      OUTLINED_FUNCTION_3_1();
      LogPrintF();
    }

    if (*(a1 + 280))
    {
      CMNotificationCenterGetDefaultLocalCenter();
      v2 = *MEMORY[0x277CEA058];
      OUTLINED_FUNCTION_2_11();
      FigNotificationCenterRemoveWeakListener();
    }

    if ((*(a1 + 312) | 2) != 6)
    {

      unbufnwGuts_updateStatusInternal(a1, 6u, 0);
    }
  }
}

void unbufnwGuts_updateStatusInternal(uint64_t a1, unsigned int a2, int a3)
{
  v4 = *(a1 + 312);
  if (v4 == a2)
  {
    return;
  }

  if (v4 == 4 || v4 == 6)
  {

    APSLogErrorAt();
    return;
  }

  if (a3)
  {
    v7 = 90;
  }

  else
  {
    v7 = 50;
  }

  if (v7 >= gLogCategory_APTransportConnectionUnbufferedNW)
  {
    if (gLogCategory_APTransportConnectionUnbufferedNW == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_12;
      }

      v4 = *(a1 + 312);
    }

    v8 = *(a1 + 16);
    APTransportConnectionGetStatusString(v4);
    APTransportConnectionGetStatusString(a2);
    LogPrintF();
  }

LABEL_12:
  *(a1 + 312) = a2;
  if (a2 != 5)
  {
    v9 = *(a1 + 248);
    if (!v9)
    {
      v10 = *(a1 + 240);
      if (v10)
      {
        nw_connection_group_cancel(v10);
      }

      v11 = *(a1 + 232);
      if (v11)
      {
        nw_listener_cancel(v11);
      }

      if (!a3)
      {
        goto LABEL_19;
      }

LABEL_21:
      Int64 = CFNumberCreateInt64();
      goto LABEL_22;
    }

    nw_connection_cancel(v9);
    if (a3)
    {
      goto LABEL_21;
    }
  }

LABEL_19:
  Int64 = 0;
LABEL_22:
  if (unbufnwGuts_callEventCallbackInternal(a1))
  {
    APSLogErrorAt();
    if (!Int64)
    {
      return;
    }
  }

  else if (!Int64)
  {
    return;
  }

  CFRelease(Int64);
}

uint64_t unbufnwGuts_updateDataPacingInternal(uint64_t a1)
{
  v10 = -1;
  result = OUTLINED_FUNCTION_13_4(a1);
  if (!v2)
  {
    v3 = result;
    if (*(result + 312) == 5 && (*(result + 440) || *(result + 264)))
    {
      v4 = *(result + 40);
      if (v4)
      {
        v10 = *(result + 40);
      }

      else
      {
        v5 = *(result + 280);
        if (v5)
        {
          v6 = *(result + 280);
          v7 = *(*(CMBaseObjectGetVTable() + 16) + 8);
          if (!v7 || v7(v5, &v10))
          {
            return APSLogErrorAt();
          }
        }

        v4 = v10;
      }

      if (v4 == -1)
      {
        if (gLogCategory_APTransportConnectionUnbufferedNW > 50 || gLogCategory_APTransportConnectionUnbufferedNW == -1 && !OUTLINED_FUNCTION_8())
        {
          goto LABEL_23;
        }

        OUTLINED_FUNCTION_14_3();
      }

      else
      {
        if (gLogCategory_APTransportConnectionUnbufferedNW > 50 || gLogCategory_APTransportConnectionUnbufferedNW == -1 && !OUTLINED_FUNCTION_8())
        {
          goto LABEL_23;
        }

        v9 = v3[2];
      }

      OUTLINED_FUNCTION_3_1();
      LogPrintF();
LABEL_23:
      v8 = v3[55];
      if (v8)
      {
        return APTPacingControllerSetMaxPacingRate(v8, v10);
      }

      else
      {
        result = v3[33];
        if (result)
        {
          return nw_tcp_set_max_pacing_rate();
        }
      }
    }
  }

  return result;
}

uint64_t unbufnwGuts_callEventCallbackInternal(uint64_t a1)
{
  values[2] = *MEMORY[0x277D85DE8];
  v1 = OUTLINED_FUNCTION_13_4(a1);
  if (v3 || (v4 = v1, !*(v1 + 360)))
  {
    v12 = 0;
  }

  else
  {
    v5 = v2;
    Int64 = CFNumberCreateInt64();
    if (Int64)
    {
      v7 = Int64;
      v8 = *MEMORY[0x277CBECE8];
      values[0] = v7;
      values[1] = v5;
      if (v5)
      {
        v9 = 2;
      }

      else
      {
        v9 = 1;
      }

      v10 = CFArrayCreate(v8, values, v9, MEMORY[0x277CBF128]);
      if (v10)
      {
        v11 = v10;
        v12 = CFArrayEnsureCreatedAndAppend();
        if (v12)
        {
          APSLogErrorAt();
        }

        else
        {
          unbufnwGuts_drainEventQueueAsyncOnCallbackQueue(v4, v4[47]);
        }

        CFRelease(v7);
        v13 = v11;
      }

      else
      {
        v12 = 4294894973;
        APSLogErrorAt();
        v13 = v7;
      }

      CFRelease(v13);
    }

    else
    {
      v12 = 4294894973;
      APSLogErrorAt();
    }
  }

  v14 = *MEMORY[0x277D85DE8];
  return v12;
}

void __unbufnwGuts_drainEventQueueAsyncOnCallbackQueue_block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 320);
  FigSimpleMutexLock();
  v3 = atomic_load((*(a1 + 32) + 28));
  v4 = *(a1 + 32);
  if (!v3)
  {
    if (*(v4 + 384))
    {
      if (*(v4 + 376) == *(a1 + 40))
      {
        CFArrayGetCount(*(v4 + 384));
        OUTLINED_FUNCTION_1_2();
        v7 = *(a1 + 32);
        CFArrayApplyBlock();
        v4 = *(a1 + 32);
        v5 = *(v4 + 384);
        if (v5)
        {
          CFRelease(v5);
          *(*(a1 + 32) + 384) = 0;
          v4 = *(a1 + 32);
        }
      }
    }
  }

  v6 = *(v4 + 320);
  FigSimpleMutexUnlock();
  dispatch_release(*(a1 + 40));
  CFRelease(*(a1 + 32));
}

uint64_t unbufnwGuts_updatePackageTrackingInternal(uint64_t a1)
{
  result = OUTLINED_FUNCTION_13_4(a1);
  if (!v4)
  {
    v5 = result;
    if (*(result + 312) == 5)
    {
      if (v2)
      {
        v6 = v3;
        v13 = *(result + 296);
        v7 = *(result + 288);
        APSFlatQueueEnqueue();
        *(v5 + 296) += v6;
      }

      v8 = *(v5 + 288);
      result = APSFlatQueueIsEmpty();
      if (!result)
      {
        v9 = *(v5 + 296) - nw_tcp_get_available_send_buffer(*(v5 + 264));
        if (gLogCategory_APTransportConnectionUnbufferedNW <= 30)
        {
          if (gLogCategory_APTransportConnectionUnbufferedNW == -1)
          {
            if (!OUTLINED_FUNCTION_8_0())
            {
              goto LABEL_10;
            }

            v11 = *(v5 + 296);
          }

          v12 = *(v5 + 16);
          OUTLINED_FUNCTION_7_0();
        }

LABEL_10:
        v10 = *(v5 + 288);
        OUTLINED_FUNCTION_3_9();
        return APSFlatQueueDequeueWhileB();
      }
    }
  }

  return result;
}

uint64_t __unbufnwGuts_updatePackageTrackingInternal_block_invoke(uint64_t a1, uint64_t a2)
{
  if (*a2 - *(a1 + 40) > 0)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = *(v2 + 304);
  v4 = *(a2 + 8);
  *(v2 + 304) = v4;
  if (v4)
  {
    CFRetain(v4);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  return 1;
}

void unbufnwGuts_connectionReceivePackages(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_13_4(a1);
  if (!v2)
  {
    v3 = v1;
    if (*(v1 + 412) == 3)
    {
      if (atomic_load((v1 + 436)))
      {
        if (!*(v1 + 437))
        {
          *(v1 + 437) = 1;
          *(v1 + 472) = 0;
          CFRetain(v1);
          APTTrafficMetricsMessageReadStarted(*(v3 + 448));
          v5 = *(v3 + 32);
          v6 = *(v3 + 248);
          OUTLINED_FUNCTION_10_6();
          if (v8)
          {
            nw_connection_receive_multiple();
          }

          else
          {
            v9 = *(v3 + 176);
            v10[0] = MEMORY[0x277D85DD0];
            v10[1] = 0x40000000;
            v10[2] = __unbufnwGuts_connectionReceivePackages_block_invoke_2;
            v10[3] = &__block_descriptor_tmp_31;
            v10[4] = v3;
            nw_connection_receive(v7, v9, v9, v10);
          }
        }
      }
    }
  }
}

BOOL unbufnwGuts_connectionHandlePotentialDisconnect(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_13_4(a1);
  if (v5)
  {
    return 1;
  }

  v6 = v4;
  v7 = v1;
  if (*(v1 + 412) != 3 && *(v1 + 408) != 2)
  {
    return 1;
  }

  if (v4)
  {
    error_code = nw_error_get_error_code(v4);
    v10 = nw_error_copy_cf_error(v6);
    if (gLogCategory_APTransportConnectionUnbufferedNW <= 90 && (gLogCategory_APTransportConnectionUnbufferedNW != -1 || _LogCategory_Initialize()))
    {
      v11 = *(v7 + 16);
      LogPrintF();
    }

    unbufnwGuts_updateStatus(v7, error_code);
    if (v10)
    {
      CFRelease(v10);
    }

    return 1;
  }

  result = 0;
  if (v2)
  {
    if (v3)
    {
      result = nw_content_context_get_is_final(v2);
      if (result)
      {
        if (gLogCategory_APTransportConnectionUnbufferedNW <= 50 && (gLogCategory_APTransportConnectionUnbufferedNW != -1 || OUTLINED_FUNCTION_8()))
        {
          OUTLINED_FUNCTION_14_3();
          OUTLINED_FUNCTION_3_1();
          LogPrintF();
        }

        unbufnwGuts_updateStatus(v7, 0);
        return 1;
      }
    }
  }

  return result;
}

void unbufnwGuts_connectionHandlePackagePayload(uint64_t a1, NSObject *a2, NSObject *a3, uint64_t a4, int a5)
{
  cf = 0;
  blockBufferOut = 0;
  if (!unbufnwGuts_connectionHandlePotentialDisconnect(a1))
  {
    if (a2)
    {
      size = dispatch_data_get_size(a2);
      v10 = *(a1 + 176);
      v11 = MEMORY[0x23EEDC950](*(a1 + 216), size + v10, 2348728618, 0);
      if (!v11)
      {
        APSLogErrorAt();
        v28 = -72323;
LABEL_32:
        unbufnwGuts_updateStatus(a1, v28);
LABEL_35:
        v20 = 0;
        goto LABEL_15;
      }

      v12 = v11;
      v13 = *(a1 + 176);
      if (v13)
      {
        v14 = CMBlockBufferCopyDataBytes(*(a1 + 256), 0, v13, v11);
        if (v14)
        {
          v29 = v14;
          goto LABEL_34;
        }

        v15 = *(a1 + 176);
      }

      v16 = APSDispatchDataCopyBytes();
      if (v16)
      {
        v29 = v16;
      }

      else
      {
        v17 = *MEMORY[0x277CBECE8];
        v18 = CMBlockBufferCreateWithMemoryBlock(*MEMORY[0x277CBECE8], v12, size + v10, *(a1 + 216), 0, 0, size + v10, 0, &blockBufferOut);
        if (!v18)
        {
          v19 = (*(a1 + 192))(v17, blockBufferOut, &cf);
          if (!v19)
          {
            if (*(a1 + 39))
            {
              v20 = 0;
              if (a3)
              {
                if (*(a1 + 472))
                {
                  v25 = nw_content_context_copy_protocol_metadata(a3, *(a1 + 64));
                  v20 = v25;
                  if (v25)
                  {
                    if (nw_ip_metadata_get_receive_time(v25))
                    {
                      v26 = cf;
                      v27 = NanosecondsToUpTicks();
                      APTransportPackageSetArrivalTicks(v26, v27 - *(a1 + 464) + *(a1 + 456));
                    }
                  }
                }
              }
            }

            else
            {
              v20 = 0;
            }

            v21 = *(a1 + 320);
            FigSimpleMutexLock();
            unbufnwGuts_callEventCallbackInternal(a1);
            v22 = *(a1 + 320);
            FigSimpleMutexUnlock();
            goto LABEL_13;
          }

          v28 = v19;
          APSLogErrorAt();
          goto LABEL_32;
        }

        v29 = v18;
      }

LABEL_34:
      APSLogErrorAt();
      unbufnwGuts_updateStatus(a1, v29);
      CFAllocatorDeallocate(*(a1 + 216), v12);
      goto LABEL_35;
    }

    if (gLogCategory_APTransportConnectionUnbufferedNW <= 60 && (gLogCategory_APTransportConnectionUnbufferedNW != -1 || _LogCategory_Initialize()))
    {
      OUTLINED_FUNCTION_14_3();
      LogPrintF();
    }
  }

  v20 = 0;
LABEL_13:
  APTTrafficMetricsMessageProcessed(*(a1 + 448));
  if (a5)
  {
    CFRetain(a1);
    v23 = *(a1 + 400);
    OUTLINED_FUNCTION_1_2();
    v31 = 0x40000000;
    v32 = __unbufnwGuts_connectionHandlePackagePayload_block_invoke;
    v33 = &__block_descriptor_tmp_37;
    v34 = a1;
    dispatch_async(v24, block);
  }

LABEL_15:
  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  nw_release(v20);
}

void __unbufnwGuts_connectionHandlePackageHeader_block_invoke(uint64_t a1, dispatch_data_t data, NSObject *a3, uint64_t a4)
{
  v8 = *(*(a1 + 32) + 448);
  if (data)
  {
    dispatch_data_get_size(data);
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    nw_error_get_error_code(v9);
  }

  APTTrafficMetricsMessageReadFinished(v8);
  unbufnwGuts_connectionHandlePackagePayload(*(a1 + 32), data, a3, a4, *(a1 + 48));
  v10 = *(a1 + 32);

  CFRelease(v10);
}

uint64_t unbufnwGuts_updateStatus(uint64_t a1, int a2)
{
  v4 = *(a1 + 320);
  FigSimpleMutexLock();
  v5 = *(a1 + 72);
  FigSimpleMutexLock();
  unbufnwGuts_updateStatusInternal(a1, 6u, a2);
  v6 = *(a1 + 72);
  FigSimpleMutexUnlock();
  v7 = *(a1 + 320);

  return FigSimpleMutexUnlock();
}

void __unbufnwGuts_connectionHandlePackagePayload_block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 437) = 0;
  unbufnwGuts_connectionReceivePackages();
  v2 = *(a1 + 32);

  CFRelease(v2);
}

uint64_t unbufnw_Resume(NSObject *a1)
{
  v72 = *MEMORY[0x277D85DE8];
  v67 = 0;
  v68 = &v67;
  v69 = 0x2000000000;
  v70 = 0;
  v8 = *CMBaseObjectGetDerivedStorage();
  v61 = 0;
  v62 = &v61;
  v63 = 0x3000000000;
  v65 = 0;
  v66 = 0;
  v64 = 0;
  v9 = *(v8 + 320);
  FigSimpleMutexLock();
  v10 = *(v8 + 72);
  FigSimpleMutexLock();
  v11 = &OBJC_IVAR___APBonjourCacheManager__removedItems;
  if (*(v8 + 80))
  {
    goto LABEL_99;
  }

  if (gLogCategory_APTransportConnectionUnbufferedNW <= 50 && (gLogCategory_APTransportConnectionUnbufferedNW != -1 || OUTLINED_FUNCTION_8()))
  {
    OUTLINED_FUNCTION_14_3();
    OUTLINED_FUNCTION_3_1();
    LogPrintF();
  }

  OUTLINED_FUNCTION_12_2();
  if (v12)
  {
    APSLogErrorAt();
    OUTLINED_FUNCTION_0_6();
    obj = 0;
    v15 = 0;
    OUTLINED_FUNCTION_9_5();
    v21 = v46 - 3;
    goto LABEL_29;
  }

  if (!*(v8 + 168))
  {
    APSLogErrorAt();
    OUTLINED_FUNCTION_0_6();
    obj = 0;
    v15 = 0;
    OUTLINED_FUNCTION_9_5();
    v21 = v47 - 4;
    goto LABEL_29;
  }

  v13 = *(v8 + 176);
  if (v13)
  {
    v14 = CMBlockBufferCreateWithMemoryBlock(*MEMORY[0x277CBECE8], 0, v13, *MEMORY[0x277CBECF0], 0, 0, v13, 1u, (v8 + 256));
    if (OUTLINED_FUNCTION_20_1(v14))
    {
      APSLogErrorAt();
LABEL_99:
      OUTLINED_FUNCTION_0_6();
      obj = 0;
LABEL_112:
      v15 = 0;
      goto LABEL_82;
    }
  }

  if (*(v8 + 120))
  {
    v15 = nw_interface_create_with_index();
    if (!v15)
    {
      APSLogErrorAt();
      OUTLINED_FUNCTION_0_6();
      obj = 0;
LABEL_125:
      OUTLINED_FUNCTION_9_5();
      goto LABEL_29;
    }
  }

  else
  {
    v15 = 0;
  }

  v16 = *(v8 + 32);
  v5 = "ing.\n";
  obj = v15;
  switch(v16)
  {
    case 1903520099:
      configure_quic[0] = MEMORY[0x277D85DD0];
      configure_quic[1] = 0x40000000;
      configure_quic[2] = __unbufnw_Resume_block_invoke_2;
      configure_quic[3] = &unk_278BC8568;
      configure_quic[4] = &v67;
      configure_quic[5] = v8;
      quic = nw_parameters_create_quic(configure_quic);
      if (!quic)
      {
LABEL_108:
        APSLogErrorAt();
        OUTLINED_FUNCTION_5_11();
        v2 = 0;
        goto LABEL_109;
      }

      if (*(v68 + 6))
      {
        APSLogErrorAt();
        OUTLINED_FUNCTION_5_11();
        v2 = 0;
        v3 = 0;
LABEL_111:
        OUTLINED_FUNCTION_4_10();
        goto LABEL_112;
      }

      break;
    case 1601528944:
      quic = nw_parameters_create_secure_udp(*MEMORY[0x277CD9238], *MEMORY[0x277CD9230]);
      if (!quic)
      {
        goto LABEL_108;
      }

      break;
    case 1601463152:
      quic = nw_parameters_create_secure_tcp(*MEMORY[0x277CD9238], &__block_literal_global_8);
      if (!quic)
      {
        goto LABEL_108;
      }

      break;
    default:
      OUTLINED_FUNCTION_0_6();
LABEL_28:
      v15 = 0;
      OUTLINED_FUNCTION_9_5();
      v21 = v20 + 1;
LABEL_29:
      *(v19 + 6) = v21;
      goto LABEL_82;
  }

  v17 = *(v8 + 392);
  nw_parameters_set_context();
  v18 = *(v8 + 24);
  nw_parameters_set_use_p2p();
  nw_parameters_require_interface(quic, v15);
  if ((*(v8 + 24) & 0x20) != 0)
  {
    if (gLogCategory_APTransportConnectionUnbufferedNW <= 30 && (gLogCategory_APTransportConnectionUnbufferedNW != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    nw_parameters_prohibit_interface_type(quic, nw_interface_type_cellular);
  }

  v22 = nw_parameters_copy_default_protocol_stack(quic);
  v2 = v22;
  if (!v22)
  {
    APSLogErrorAt();
    OUTLINED_FUNCTION_5_11();
LABEL_109:
    v3 = 0;
    goto LABEL_122;
  }

  v3 = nw_protocol_stack_copy_internet_protocol(v22);
  if (!v3)
  {
    APSLogErrorAt();
    OUTLINED_FUNCTION_5_11();
LABEL_122:
    v5 = 0;
    goto LABEL_123;
  }

  v23 = *(v8 + 32);
  OUTLINED_FUNCTION_10_6();
  if (v24)
  {
    nw_ip_options_set_disable_fragmentation(v3, 0);
  }

  if (*(v8 + 39))
  {
    MEMORY[0x23EEDE850](v3, 1);
  }

  if (*(v8 + 160))
  {
    v25 = CFGetInt64Ranged();
    MEMORY[0x23EEDE870](v3, v25);
  }

  if (*(v8 + 36))
  {
    v26 = *(v8 + 129);
    if (v26 == 30)
    {
      if (*(v8 + 136) == 255)
      {
LABEL_45:
        if (*(v8 + 124))
        {
          v4 = (v8 + 128);
          nw_parameters_set_reuse_local_address(quic, 1);
          address = nw_endpoint_create_address((v8 + 128));
          v5 = address;
          if (!address)
          {
            APSLogErrorAt();
            OUTLINED_FUNCTION_5_11();
LABEL_123:
            multicast = 0;
            goto LABEL_124;
          }

          multicast = nw_group_descriptor_create_multicast(address);
          if (!multicast)
          {
            APSLogErrorAt();
            OUTLINED_FUNCTION_5_11();
LABEL_124:
            a1 = 0;
            v15 = 0;
            goto LABEL_125;
          }

          if (!*(v8 + 89))
          {
            v15 = 0;
            goto LABEL_74;
          }

          if (*(v8 + 89) == *(v8 + 129))
          {
            v15 = nw_endpoint_create_address((v8 + 88));
            if (v15)
            {
              nw_multicast_group_descriptor_set_specific_source(multicast, v15);
LABEL_74:
              nw_multicast_group_descriptor_set_disable_unicast_traffic(multicast, 1);
              a1 = nw_connection_group_create(multicast, quic);
              if (!a1)
              {
                APSLogErrorAt();
                OUTLINED_FUNCTION_5_11();
                goto LABEL_125;
              }

              v36 = unbufnwGuts_handleNewConnectionGroupInternal(v8, a1);
              if (!OUTLINED_FUNCTION_20_1(v36))
              {
                if (gLogCategory_APTransportConnectionUnbufferedNW <= 50 && (gLogCategory_APTransportConnectionUnbufferedNW != -1 || OUTLINED_FUNCTION_8()))
                {
                  blockBufferOut = *(v8 + 16);
                  OUTLINED_FUNCTION_3_1();
                  LogPrintF();
                }

                OUTLINED_FUNCTION_5_11();
                goto LABEL_81;
              }

              APSLogErrorAt();
              OUTLINED_FUNCTION_5_11();
              goto LABEL_82;
            }

            APSLogErrorAt();
            OUTLINED_FUNCTION_5_11();
LABEL_106:
            a1 = 0;
            goto LABEL_125;
          }

          APSLogErrorAt();
          OUTLINED_FUNCTION_5_11();
        }

        else
        {
          APSLogErrorAt();
          OUTLINED_FUNCTION_5_11();
          v5 = 0;
          multicast = 0;
        }

        a1 = 0;
        goto LABEL_28;
      }
    }

    else if (v26 == 2 && (*(v8 + 132) & 0xF0) == 0xE0)
    {
      goto LABEL_45;
    }

    v30 = *(v8 + 124);
    if (*(v8 + 124))
    {
      *__str = 0;
      if (snprintf(__str, 8uLL, "%u", v30) < 1)
      {
        v51 = -6762;
      }

      else
      {
        v31 = nw_listener_create_with_port(__str, quic);
        if (v31)
        {
          v4 = v31;
LABEL_62:
          v32 = CFRetain(v8);
          v62[3] = v32;
          v33 = dispatch_semaphore_create(0);
          v34 = v62;
          v62[5] = v33;
          if (v33)
          {
            CFRetain(v34[3]);
            dispatch_retain(v62[5]);
            nw_listener_set_queue(v4, *(v8 + 400));
            v59[0] = MEMORY[0x277D85DD0];
            v59[1] = 0x40000000;
            v59[2] = __unbufnw_Resume_block_invoke_3;
            v59[3] = &unk_278BC8590;
            v59[4] = &v61;
            MEMORY[0x23EEDE8D0](v4, v59);
            nw_listener_set_new_connection_limit(v4, 0);
            if (*(v8 + 32) == 1903520099)
            {
              handler[0] = MEMORY[0x277D85DD0];
              handler[1] = 0x40000000;
              handler[2] = __unbufnw_Resume_block_invoke_4;
              handler[3] = &__block_descriptor_tmp_51_1;
              handler[4] = v8;
              nw_listener_set_new_connection_group_handler(v4, handler);
            }

            else
            {
              OUTLINED_FUNCTION_3_9();
              v54 = 0x40000000;
              v55 = __unbufnw_Resume_block_invoke_5;
              v56 = &__block_descriptor_tmp_53;
              v57 = v8;
              nw_listener_set_new_connection_handler(v4, v53);
            }

            nw_listener_start(v4);
            a1 = v62[5];
            v35 = dispatch_time(0, 10000000000);
            if (dispatch_semaphore_wait(a1, v35))
            {
              APSLogErrorAt();
              nw_listener_cancel(v4);
              v11 = 0;
              OUTLINED_FUNCTION_4_10();
              v15 = 0;
              v19 = v68;
              v21 = -6722;
              goto LABEL_29;
            }

            if (!OUTLINED_FUNCTION_20_1(*(v62 + 9)))
            {
              if (gLogCategory_APTransportConnectionUnbufferedNW <= 50 && (gLogCategory_APTransportConnectionUnbufferedNW != -1 || OUTLINED_FUNCTION_8()))
              {
                a1 = *(v8 + 16);
                nw_listener_get_port(v4);
                OUTLINED_FUNCTION_3_1();
                LogPrintF();
              }

              *(v8 + 232) = nw_retain(v4);
              nw_listener_set_new_connection_limit(v4, 1u);
              v11 = 0;
              OUTLINED_FUNCTION_4_10();
              v15 = 0;
              goto LABEL_81;
            }

            APSLogErrorAt();
            nw_listener_cancel(v4);
            v11 = 0;
            goto LABEL_111;
          }

LABEL_121:
          APSLogErrorAt();
          v11 = 0;
          goto LABEL_122;
        }

        OUTLINED_FUNCTION_21_0();
        v51 = v48;
      }

      APSLogErrorAt();
      OUTLINED_FUNCTION_5_11();
      OUTLINED_FUNCTION_4_10();
      v15 = 0;
      v19 = v68;
      v21 = v51;
      goto LABEL_29;
    }

    v4 = nw_listener_create(quic);
    if (!v4)
    {
      goto LABEL_121;
    }

    goto LABEL_62;
  }

  v28 = nw_endpoint_create_address((v8 + 88));
  v15 = v28;
  if (!v28)
  {
    APSLogErrorAt();
    v11 = 0;
LABEL_105:
    v4 = 0;
    v5 = 0;
    multicast = 0;
    goto LABEL_106;
  }

  v11 = nw_connection_create(v28, quic);
  if (!v11)
  {
    APSLogErrorAt();
    goto LABEL_105;
  }

  v29 = unbufnwGuts_handleNewConnectionInternal(v8, v11);
  if (!OUTLINED_FUNCTION_20_1(v29))
  {
    v4 = 0;
    OUTLINED_FUNCTION_4_10();
LABEL_81:
    *(v8 + 80) = 1;
    goto LABEL_82;
  }

  APSLogErrorAt();
  v4 = 0;
  OUTLINED_FUNCTION_4_10();
LABEL_82:
  if (!*(v68 + 6))
  {
    goto LABEL_83;
  }

  if (gLogCategory_APTransportConnectionUnbufferedNW <= 90)
  {
    if (gLogCategory_APTransportConnectionUnbufferedNW != -1)
    {
LABEL_92:
      blockBufferOuta = *(v8 + 16);
      LogPrintF();
      goto LABEL_93;
    }

    if (_LogCategory_Initialize())
    {
      v45 = *(v68 + 6);
      goto LABEL_92;
    }
  }

LABEL_93:
  unbufnwGuts_invalidateInternal(v8);
LABEL_83:
  v37 = *(v8 + 72);
  FigSimpleMutexUnlock();
  v38 = *(v8 + 320);
  FigSimpleMutexUnlock();
  nw_release(v15);
  nw_release(obj);
  nw_release(quic);
  nw_release(v11);
  nw_release(v4);
  nw_release(v2);
  nw_release(v3);
  nw_release(v5);
  nw_release(multicast);
  nw_release(a1);
  v39 = v62;
  v40 = v62[3];
  if (v40)
  {
    CFRelease(v40);
    v39 = v62;
  }

  v41 = v39[5];
  if (v41)
  {
    dispatch_release(v41);
  }

  v42 = *(v68 + 6);
  _Block_object_dispose(&v61, 8);
  _Block_object_dispose(&v67, 8);
  v43 = *MEMORY[0x277D85DE8];
  return v42;
}

void __unbufnwGuts_handleNewConnectionInternal_block_invoke(uint64_t a1, int a2, nw_error_t error)
{
  v4 = *(a1 + 32);
  if (error)
  {
    error_code = nw_error_get_error_code(error);
  }

  else
  {
    error_code = 0;
  }

  v33 = 0;
  v34 = &v33;
  v35 = 0x2000000000;
  v36 = 0;
  *(v4 + 412) = a2;
  if (error_code)
  {
    v6 = 90;
  }

  else
  {
    v6 = 50;
  }

  if (v6 >= gLogCategory_APTransportConnectionUnbufferedNW && (gLogCategory_APTransportConnectionUnbufferedNW != -1 || _LogCategory_Initialize()))
  {
    v31 = *(v4 + 16);
    nw_connection_state_to_string();
    LogPrintF();
  }

  v7 = 0;
  v8 = a2 - 1;
  v9 = 0;
  v10 = 0;
  switch(v8)
  {
    case 0:
      if (!error_code)
      {
        goto LABEL_29;
      }

      goto LABEL_13;
    case 2:
      OUTLINED_FUNCTION_12_2();
      if (v18)
      {
        goto LABEL_29;
      }

      APTTrafficMetricsConnectionFormed(*(v4 + 448));
      v19 = *(v4 + 320);
      FigSimpleMutexLock();
      v20 = *(v4 + 72);
      FigSimpleMutexLock();
      if (*(v4 + 32) == 1601463152)
      {
        *(v4 + 264) = nw_connection_copy_protocol_metadata(*(v4 + 248), *(v4 + 56));
      }

      v21 = *(v4 + 248);
      v22 = *(v4 + 276);
      nw_connection_reset_traffic_class();
      v23 = *(v4 + 248);
      v7 = nw_connection_copy_connected_path();
      v10 = nw_path_copy_effective_local_endpoint(v7);
      v9 = nw_path_copy_effective_remote_endpoint(v7);
      enumerate_block[0] = MEMORY[0x277D85DD0];
      enumerate_block[1] = 0x40000000;
      enumerate_block[2] = __unbufnwGuts_connectionStateChangedHandler_block_invoke;
      enumerate_block[3] = &unk_278BC8618;
      enumerate_block[4] = &v33;
      nw_path_enumerate_interfaces(v7, enumerate_block);
      if (gLogCategory_APTransportConnectionUnbufferedNW <= 50 && (gLogCategory_APTransportConnectionUnbufferedNW != -1 || OUTLINED_FUNCTION_8()))
      {
        v24 = *(v4 + 16);
        *(v4 + 36);
        nw_endpoint_get_address(v9);
        *(v4 + 36);
        nw_endpoint_get_address(v10);
        v25 = v34[3];
        if (v25)
        {
          nw_interface_get_name(v25);
        }

        mach_absolute_time();
        v28 = *(v4 + 224);
        UpTicksToSecondsF();
        OUTLINED_FUNCTION_3_1();
        LogPrintF();
      }

      unbufnwGuts_updateStatusInternal(v4, 5u, 0);
      unbufnwGuts_updateDataPacingInternal(v4);
      v29 = *(v4 + 72);
      FigSimpleMutexUnlock();
      v30 = *(v4 + 320);
      FigSimpleMutexUnlock();
      unbufnwGuts_connectionSendPackages(v4);
      unbufnwGuts_connectionReceivePackages(v4);
      break;
    case 3:
LABEL_13:
      OUTLINED_FUNCTION_12_2();
      if (v11)
      {
        goto LABEL_29;
      }

      v12 = *(v4 + 320);
      FigSimpleMutexLock();
      v13 = *(v4 + 72);
      FigSimpleMutexLock();
      v14 = *(v4 + 312);
      if (v14 == 5 || v14 == 0)
      {
        v9 = nw_connection_copy_endpoint(*(v4 + 248));
        if (gLogCategory_APTransportConnectionUnbufferedNW <= 90 && (gLogCategory_APTransportConnectionUnbufferedNW != -1 || _LogCategory_Initialize()))
        {
          v26 = *(v4 + 16);
          *(v4 + 312);
          nw_endpoint_get_address(v9);
          LogPrintF();
        }

        if (*(v4 + 312))
        {
          v27 = 6;
        }

        else
        {
          v27 = 4;
        }

        unbufnwGuts_updateStatusInternal(v4, v27, error_code);
      }

      else
      {
        v9 = 0;
      }

      v16 = *(v4 + 72);
      FigSimpleMutexUnlock();
      v17 = *(v4 + 320);
      FigSimpleMutexUnlock();
      v7 = 0;
      goto LABEL_30;
    case 4:
      APTTrafficMetricsConnectionClosed(*(v4 + 448));
      CFRelease(v4);
LABEL_29:
      v7 = 0;
      v9 = 0;
LABEL_30:
      v10 = 0;
      break;
    default:
      break;
  }

  nw_release(v7);
  nw_release(v10);
  nw_release(v9);
  nw_release(v34[3]);
  _Block_object_dispose(&v33, 8);
}

void unbufnwGuts_connectionSendPackages(uint64_t a1)
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x2000000000;
  v24 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2000000000;
  v20 = 0;
  OUTLINED_FUNCTION_13_4(a1);
  if (v2 || (v3 = *(a1 + 424), !APSFlatQueueIsEmpty()) || *(a1 + 418) || *(a1 + 412) != 3 || !*(a1 + 416))
  {
    v7 = 0;
    goto LABEL_15;
  }

  v4 = *(a1 + 320);
  FigSimpleMutexLock();
  OUTLINED_FUNCTION_12_2();
  if (v5)
  {
    goto LABEL_10;
  }

  if (!*(a1 + 344))
  {
LABEL_13:
    v7 = 1;
    goto LABEL_14;
  }

  v6 = *(a1 + 248);
  batch_block[0] = MEMORY[0x277D85DD0];
  batch_block[1] = 0x40000000;
  batch_block[2] = __unbufnwGuts_connectionSendPackages_block_invoke;
  batch_block[3] = &unk_278BC8660;
  batch_block[4] = &v17;
  batch_block[5] = &v21;
  batch_block[6] = a1;
  nw_connection_batch(v6, batch_block);
  if (*(v22 + 6))
  {
    APSLogErrorAt();
    goto LABEL_10;
  }

  if (!v18[3])
  {
    APTTrafficMetricsConsumedAllData(*(a1 + 448));
    v8 = *(a1 + 440);
    if (v8)
    {
      APTPacingControllerReset(v8);
    }

    goto LABEL_13;
  }

LABEL_10:
  v7 = 0;
LABEL_14:
  v9 = *(a1 + 320);
  FigSimpleMutexUnlock();
LABEL_15:
  v10 = v22;
  v11 = *(v22 + 6);
  if ((v7 & 1) != 0 || v11)
  {
    if (v11)
    {
      v12 = 90;
    }

    else
    {
      v12 = 30;
    }

    if (v12 < gLogCategory_APTransportConnectionUnbufferedNW)
    {
      goto LABEL_24;
    }

    if (gLogCategory_APTransportConnectionUnbufferedNW == -1)
    {
      v13 = _LogCategory_Initialize();
      v10 = v22;
      if (!v13)
      {
        goto LABEL_24;
      }

      v14 = *(v22 + 6);
    }

    v15 = *(a1 + 16);
    LogPrintF();
    v10 = v22;
LABEL_24:
    *(a1 + 416) = 0;
    v11 = *(v10 + 6);
  }

  *(a1 + 432) = v11;
  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);
}

void __unbufnwGuts_connectionSendPackages_block_invoke(uint64_t a1)
{
  content = 0;
  theArray = 0;
  APTTrafficMetricsRequestDataStarted(*(*(a1 + 48) + 448));
  v2 = *(*(a1 + 48) + 48);
  APSStallMonitorActivityBegin();
  (*(*(a1 + 48) + 344))(*(*(a1 + 48) + 352), *(*(a1 + 48) + 432), *(*(a1 + 48) + 184), &theArray);
  v3 = *(*(a1 + 48) + 48);
  APSStallMonitorActivityEnd();
  APTTrafficMetricsRequestDataFinished(*(*(a1 + 48) + 448));
  if (theArray)
  {
    CFArrayGetCount(theArray);
  }

  OUTLINED_FUNCTION_8_1();
  *(v5 + 24) = v4;
  OUTLINED_FUNCTION_8_1();
  if (*(v6 + 24) < 1 || (v7 = *(*(a1 + 48) + 440)) != 0 && (APTPacingControllerAddBytesSent(v7, 0), OUTLINED_FUNCTION_8_1(), *(v8 + 24) < 1))
  {
LABEL_28:
    v16 = 0;
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v11 = *MEMORY[0x277CBED00];
    v12 = *MEMORY[0x277CD9218];
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v9);
      v14 = *(*(CMBaseObjectGetVTable() + 16) + 64);
      if (!v14 || (v15 = v14(ValueAtIndex)) == 0)
      {
        APSLogErrorAt();
        v16 = 0;
        OUTLINED_FUNCTION_6_10(*(a1 + 40));
LABEL_30:
        *(v34 + 24) = v35;
        goto LABEL_31;
      }

      v16 = v15;
      APSDispatchDataCreateWithBlockBuffer();
      OUTLINED_FUNCTION_15_2();
      *(v18 + 24) = v17;
      OUTLINED_FUNCTION_15_2();
      if (*(v19 + 24))
      {
        break;
      }

      DataLength = CMBlockBufferGetDataLength(v16);
      if (HIDWORD(DataLength))
      {
        APSLogErrorAt();
        OUTLINED_FUNCTION_6_10(*(a1 + 40));
        v35 = v36 + 1;
        goto LABEL_30;
      }

      v21 = DataLength;
      v22 = *(*(a1 + 48) + 424);
      v39 = v21;
      APSFlatQueueEnqueue();
      OUTLINED_FUNCTION_15_2();
      *(v24 + 24) = v23;
      OUTLINED_FUNCTION_15_2();
      if (*(v25 + 24))
      {
        break;
      }

      if (*(*(a1 + 48) + 37))
      {
        v26 = *(*(CMBaseObjectGetVTable() + 16) + 136);
        if (v26)
        {
          v27 = v26(ValueAtIndex) == 0;
        }

        else
        {
          v27 = 1;
        }
      }

      else
      {
        v27 = 0;
      }

      v28 = *(a1 + 48);
      if (*(v28 + 417) != v27)
      {
        if (gLogCategory_APTransportConnectionUnbufferedNW <= 50)
        {
          if (gLogCategory_APTransportConnectionUnbufferedNW != -1 || (v29 = OUTLINED_FUNCTION_8(), v28 = *(a1 + 48), v29))
          {
            v37 = *(v28 + 16);
            OUTLINED_FUNCTION_3_1();
            LogPrintF();
            v28 = *(a1 + 48);
          }
        }

        v30 = *(v28 + 264);
        nw_tcp_set_no_push();
        v28 = *(a1 + 48);
        *(v28 + 417) = v27;
      }

      if (!v9)
      {
        APTTrafficMetricsSendStarted(*(v28 + 448));
        v28 = *(a1 + 48);
      }

      v10 += v21;
      CFRetain(v28);
      CFRetain(ValueAtIndex);
      v31 = *(a1 + 48);
      v32 = *(v31 + 248);
      completion[0] = MEMORY[0x277D85DD0];
      completion[1] = 0x40000000;
      completion[2] = __unbufnwGuts_connectionSendPackages_block_invoke_2;
      completion[3] = &__block_descriptor_tmp_75;
      completion[4] = v31;
      completion[5] = ValueAtIndex;
      completion[6] = v21;
      completion[7] = v10;
      nw_connection_send(v32, content, v12, 1, completion);
      CFRelease(v16);
      if (content)
      {
        dispatch_release(content);
        content = 0;
      }

      ++v9;
      OUTLINED_FUNCTION_8_1();
      if (v9 >= *(v33 + 24))
      {
        goto LABEL_28;
      }
    }

    APSLogErrorAt();
  }

LABEL_31:
  if (theArray)
  {
    CFRelease(theArray);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (content)
  {
    dispatch_release(content);
  }
}

void __unbufnwGuts_connectionSendPackages_block_invoke_2(uint64_t a1, nw_error_t error)
{
  if (!atomic_load((*(a1 + 32) + 28)))
  {
    v4 = *(a1 + 32);
    if (*(v4 + 412) == 3)
    {
      if (error)
      {
        error_code = nw_error_get_error_code(error);
        v4 = *(a1 + 32);
      }

      else
      {
        error_code = 0;
      }

      *(v4 + 432) = error_code;
      v6 = *(v4 + 424);
      APSFlatQueueDequeue();
      v7 = *(a1 + 32);
      if (!*(v7 + 432))
      {
        if (*(v7 + 38))
        {
          v8 = *(v7 + 72);
          FigSimpleMutexLock();
          v9 = *(a1 + 40);
          v10 = *(a1 + 48);
          unbufnwGuts_updatePackageTrackingInternal(*(a1 + 32));
          v11 = *(*(a1 + 32) + 72);
          FigSimpleMutexUnlock();
        }

        goto LABEL_13;
      }

      if (gLogCategory_APTransportConnectionUnbufferedNW <= 90)
      {
        if (gLogCategory_APTransportConnectionUnbufferedNW != -1)
        {
LABEL_9:
          v20 = *(v7 + 16);
          LogPrintF();
          goto LABEL_13;
        }

        if (_LogCategory_Initialize())
        {
          v7 = *(a1 + 32);
          v19 = *(v7 + 432);
          goto LABEL_9;
        }
      }

LABEL_13:
      v12 = *(a1 + 32);
      v13 = *(v12 + 432);
      v14 = *(a1 + 48);
      APTTrafficMetricsSendFinished(*(v12 + 448));
      v15 = *(*(a1 + 32) + 424);
      if (APSFlatQueueIsEmpty())
      {
        v17 = *(a1 + 32);
        if (*(v17 + 440))
        {
          *(v17 + 418) = 1;
          CFRetain(v17);
          APTPacingControllerAddBytesSent(*(*(a1 + 32) + 440), *(a1 + 56));
          APTPacingControllerYieldOnQueueWithContinuationFunction(*(*(a1 + 32) + 440), unbufnwGuts_connectionSendPackagesYieldContinuation, *(a1 + 32));
        }

        else
        {
          unbufnwGuts_connectionSendPackages(v17, v16);
        }
      }

      else
      {
        v18 = *(*(a1 + 32) + 424);
        APSFlatQueuePeek();
        APTTrafficMetricsSendStarted(*(*(a1 + 32) + 448));
      }
    }
  }

  CFRelease(*(a1 + 32));
  CFRelease(*(a1 + 40));
}

void unbufnwGuts_connectionSendPackagesYieldContinuation(_BYTE *a1)
{
  a1[418] = 0;
  unbufnwGuts_connectionSendPackages();

  CFRelease(a1);
}

void __unbufnwGuts_handleNewConnectionGroupInternal_block_invoke_3(uint64_t a1, int a2, nw_error_t error)
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (error)
  {
    error_code = nw_error_get_error_code(error);
  }

  else
  {
    error_code = 0;
  }

  memset(v35, 0, sizeof(v35));
  v34 = 0u;
  v33 = 0u;
  v32 = 0u;
  v31 = 0u;
  v30 = 0u;
  v29 = 0u;
  qmemcpy(v28, "any", sizeof(v28));
  *(v4 + 408) = a2;
  if (error_code)
  {
    v7 = 90;
  }

  else
  {
    v7 = 50;
  }

  if (v7 >= gLogCategory_APTransportConnectionUnbufferedNW && (gLogCategory_APTransportConnectionUnbufferedNW != -1 || _LogCategory_Initialize()))
  {
    v27 = *(v4 + 16);
    nw_connection_group_state_to_string();
    LogPrintF();
  }

  switch(a2)
  {
    case 1:
      if (!error_code)
      {
        goto LABEL_26;
      }

      goto LABEL_13;
    case 2:
      OUTLINED_FUNCTION_12_2();
      if (v14)
      {
        goto LABEL_26;
      }

      APTTrafficMetricsConnectionFormed(*(v4 + 448));
      v15 = *(v4 + 320);
      FigSimpleMutexLock();
      v16 = *(v4 + 72);
      FigSimpleMutexLock();
      v17 = nw_connection_group_copy_parameters(v5);
      v18 = nw_parameters_copy_required_interface(v17);
      if (*(v4 + 89))
      {
        SockAddrToString();
      }

      if (gLogCategory_APTransportConnectionUnbufferedNW <= 50 && (gLogCategory_APTransportConnectionUnbufferedNW != -1 || OUTLINED_FUNCTION_8()))
      {
        v19 = *(v4 + 16);
        if (v18)
        {
          nw_interface_get_name(v18);
        }

        mach_absolute_time();
        v24 = *(v4 + 224);
        UpTicksToSecondsF();
        OUTLINED_FUNCTION_3_1();
        LogPrintF();
      }

      unbufnwGuts_updateStatusInternal(v4, 5u, 0);
      unbufnwGuts_updateDataPacingInternal(v4);
      v25 = *(v4 + 72);
      FigSimpleMutexUnlock();
      v26 = *(v4 + 320);
      FigSimpleMutexUnlock();
      *(v4 + 437) = 1;
      APTTrafficMetricsMessageReadStarted(*(v4 + 448));
      break;
    case 3:
LABEL_13:
      OUTLINED_FUNCTION_12_2();
      if (!v8)
      {
        v9 = *(v4 + 320);
        FigSimpleMutexLock();
        v10 = *(v4 + 72);
        FigSimpleMutexLock();
        v11 = *(v4 + 312);
        if (v11 == 5 || !v11)
        {
          if (gLogCategory_APTransportConnectionUnbufferedNW <= 90)
          {
            if (gLogCategory_APTransportConnectionUnbufferedNW != -1 || (v21 = _LogCategory_Initialize(), v11 = *(v4 + 312), v21))
            {
              v22 = *(v4 + 16);
              LogPrintF();
              v11 = *(v4 + 312);
            }
          }

          if (v11)
          {
            v23 = 6;
          }

          else
          {
            v23 = 4;
          }

          unbufnwGuts_updateStatusInternal(v4, v23, error_code);
        }

        v12 = *(v4 + 72);
        FigSimpleMutexUnlock();
        v13 = *(v4 + 320);
        FigSimpleMutexUnlock();
      }

      goto LABEL_26;
    case 4:
      APTTrafficMetricsConnectionClosed(*(v4 + 448));
      CFRelease(v4);
      goto LABEL_26;
    default:
LABEL_26:
      v18 = 0;
      v17 = 0;
      break;
  }

  nw_release(v17);
  nw_release(v18);
  v20 = *MEMORY[0x277D85DE8];
}

void unbufnwGuts_readyToSendBatchSlow(uint64_t a1, uint64_t a2, unsigned int (*a3)(void, CFTypeRef *), CFArrayRef *a4)
{
  values[1] = *MEMORY[0x277D85DE8];
  cf = 0;
  *a4 = 0;
  v7 = *MEMORY[0x277CBECE8];
  if (a3(*MEMORY[0x277CBECE8], &cf))
  {
    goto LABEL_7;
  }

  (*(a1 + 328))(*(a1 + 336), &cf, a2);
  if (!cf)
  {
    goto LABEL_6;
  }

  values[0] = cf;
  v8 = CFArrayCreate(v7, values, 1, MEMORY[0x277CBF128]);
  *a4 = v8;
  if (!v8)
  {
LABEL_7:
    APSLogErrorAt();
  }

  if (cf)
  {
    CFRelease(cf);
  }

LABEL_6:
  v9 = *MEMORY[0x277D85DE8];
}

void unbufnwGuts_connectionHandlePackageHeader_cold_5(uint64_t a1, char a2)
{
  if (gLogCategory_APTransportConnectionUnbufferedNW <= 60 && (gLogCategory_APTransportConnectionUnbufferedNW != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_14_3();
    LogPrintF();
  }

  unbufnwGuts_connectionHandlePackagePayload(a1, 0, 0, 1, a2 & 1);
}

void unbufnwGuts_handleNewConnectionInternal_cold_1(NSObject *a1)
{
  APSLogErrorAt();

  nw_connection_force_cancel(a1);
}

void unbufnwGuts_handleNewConnectionGroupInternal_cold_1(NSObject *a1)
{
  APSLogErrorAt();

  nw_connection_group_cancel(a1);
}

uint64_t _APTransportConnectionUnbufferedNWGutsFinalize_cold_1(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 32);
  OUTLINED_FUNCTION_3_1();
  return LogPrintF();
}

void _APBrokerDoReceiverPollingIfNecessary(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = *(a1 + 104);
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 0x40000000;
    v3[2] = ___APBrokerDoReceiverPollingIfNecessary_block_invoke;
    v3[3] = &__block_descriptor_tmp_69;
    v3[4] = a1;
    v3[5] = a2;
    dispatch_sync(v2, v3);
  }
}

void _APBrokerGroupRemoveAllReceivers(uint64_t a1)
{
  if (CFDictionaryGetCount(*(a1 + 56)) >= 1)
  {
    if (gLogCategory_APBrokerGroup <= 30 && (gLogCategory_APBrokerGroup != -1 || OUTLINED_FUNCTION_8_0()))
    {
      OUTLINED_FUNCTION_7_0();
    }

    CFDictionaryRemoveAllValues(*(a1 + 56));

    _APBrokerGroupFireReceiversChanged(a1);
  }
}

void __APBrokerGroupAuthenticate_block_invoke_2(uint64_t a1, uint64_t a2, int a3, const void *a4)
{
  OUTLINED_FUNCTION_2_5();
  if (v8)
  {
    CFRetain(a4);
  }

  OUTLINED_FUNCTION_2_0();
  v13[1] = 0x40000000;
  v13[2] = __APBrokerGroupAuthenticate_block_invoke_3;
  v13[3] = &unk_278BC8790;
  v10 = *(v5 + 32);
  v9 = *(v5 + 40);
  v14 = a3;
  v11 = *(v5 + 48);
  v13[4] = v10;
  v13[5] = v11;
  v13[6] = a4;
  dispatch_async(v9, v13);
  v12 = *(v5 + 56);
  if (v12)
  {
    CFRelease(v12);
  }

  dispatch_release(*(v5 + 40));
  _APBrokerDoReceiverPollingIfNecessary(v4, 0);
}

void __APBrokerGroupStartReceiverPolling_block_invoke(uint64_t a1)
{
  if (!*(*(a1 + 40) + 112))
  {
    v2 = FigCFWeakReferenceHolderCreateWithReferencedObject();
    if (v2)
    {
      v3 = v2;
      v4 = *(a1 + 40);
      *(v4 + 112) = 1;
      if (gLogCategory_APBrokerGroup <= 50)
      {
        if (gLogCategory_APBrokerGroup != -1 || (v5 = _LogCategory_Initialize(), v4 = *(a1 + 40), v5))
        {
          OUTLINED_FUNCTION_9();
          v4 = *(a1 + 40);
        }
      }

      *(*(a1 + 40) + 120) = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(v4 + 104));
      v6 = *(*(a1 + 40) + 120);
      if (v6)
      {
        handler[0] = MEMORY[0x277D85DD0];
        handler[1] = 0x40000000;
        handler[2] = __APBrokerGroupStartReceiverPolling_block_invoke_2;
        handler[3] = &__block_descriptor_tmp_29;
        handler[4] = v3;
        dispatch_source_set_event_handler(v6, handler);
        v7 = *(*(a1 + 40) + 120);
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 0x40000000;
        v13[2] = __APBrokerGroupStartReceiverPolling_block_invoke_4;
        v13[3] = &__block_descriptor_tmp_30_0;
        v13[4] = v3;
        dispatch_source_set_cancel_handler(v7, v13);
        v8 = *(*(a1 + 40) + 120);
        dispatch_time(0, 0);
        v9 = OUTLINED_FUNCTION_7_5();
        dispatch_source_set_timer(v9, v10, v11, v12);
        dispatch_resume(*(*(a1 + 40) + 120));
      }

      else
      {
        APSLogErrorAt();
        OUTLINED_FUNCTION_1_0();

        CFRelease(v3);
      }
    }

    else
    {
      APSLogErrorAt();
      OUTLINED_FUNCTION_1_0();
    }
  }
}

uint64_t APBrokerGroupStopReceiverPolling(uint64_t a1)
{
  v2 = *(a1 + 24);
  FigSimpleMutexLock();
  v3 = *(a1 + 104);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___APBrokerGroupStopReceiverPollingInternal_block_invoke;
  block[3] = &__block_descriptor_tmp_67;
  block[4] = a1;
  dispatch_sync(v3, block);
  _APBrokerGroupRemoveAllReceivers(a1);
  v4 = *(a1 + 24);
  return FigSimpleMutexUnlock();
}

void _APBrokerGroupFireReceiversChanged(uint64_t a1)
{
  v1 = *(a1 + 72);
  if (v1)
  {
    v3 = *(a1 + 88);
    v4 = *(a1 + 80);
    if (v4)
    {
      v5 = CFRetain(v4);
    }

    else
    {
      v5 = 0;
    }

    CFRetain(a1);
    v6 = *(a1 + 96);
    OUTLINED_FUNCTION_2_0();
    v8[1] = 0x40000000;
    v8[2] = ___APBrokerGroupFireReceiversChanged_block_invoke;
    v8[3] = &__block_descriptor_tmp_36_0;
    v9 = v3;
    v8[4] = a1;
    v8[5] = v1;
    v8[6] = v5;
    dispatch_async(v7, v8);
  }
}

void _APBrokerGroupCallAllBrokers_cold_1(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  APSLogErrorAt();
  (*(a2 + 16))(a2, a3, 4294960568, 0);

  _APBrokerGroupFreeOperationData(a4);
}

uint64_t _APBrokerGroupCallAllBrokers_cold_2()
{
  OUTLINED_FUNCTION_2_5();
  APSLogErrorAt();
  v2 = *(v1 + 16);

  return v2(v1, v0, 4294960568, 0);
}

uint64_t APBrokerGroupResolveReceiverDNSName_cold_1()
{
  OUTLINED_FUNCTION_2_5();
  if (v0)
  {
    IsAppleInternalBuild();
  }

  return OUTLINED_FUNCTION_9();
}

void _APBrokerGroupCallNextBroker_cold_3()
{
  OUTLINED_FUNCTION_2_5();
  APSLogErrorAt();
  *(v1 + 44) = -6728;
  _APBrokerGroupDoneCallingBrokers(v0, v1);
}

uint64_t _APBrokerGroupDoneCallingBrokers_cold_1(uint64_t *a1, CFSetRef *a2)
{
  v2 = *a1;
  CFSetGetCount(*a2);
  return OUTLINED_FUNCTION_7_0();
}

void tcpunbuf_invalidateInternal(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage)
  {
    v3 = DerivedStorage;
    APTTrafficMetricsConnectionClosed(*(DerivedStorage + 584));
    if (gLogCategory_APTransportConnectionTCPUnbuffered <= 50 && (gLogCategory_APTransportConnectionTCPUnbuffered != -1 || _LogCategory_Initialize()))
    {
      v6 = *(v3 + 16);
      OUTLINED_FUNCTION_9();
    }

    *v3 = 1;
    v4 = *(v3 + 384);
    if (v4)
    {
      dispatch_source_cancel(*(v3 + 384));
      dispatch_release(v4);
      *(v3 + 384) = 0;
    }

    tcpunbuf_cleanUp();
    v5 = *(v3 + 24);

    dispatch_sync_f(v5, a1, tcpunbuf_clearCallbackState);
  }
}

_BYTE *tcpunbuf_callEventCallback(uint64_t a1, uint64_t a2, const void *a3)
{
  result = CMBaseObjectGetDerivedStorage();
  if (!*result)
  {
    v5 = result;
    if (a3)
    {
      CFRetain(a3);
    }

    v6 = *(v5 + 3);
    return APSDispatchAsyncFHelper();
  }

  return result;
}

void tcpunbuf_receivedData(uint64_t *a1)
{
  v16 = *MEMORY[0x277D85DE8];
  valuePtr = 0;
  v2 = *a1;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = a1[1];
  Value = APSWrapperGetValue();
  if (!*DerivedStorage && *(DerivedStorage + 180) == 5)
  {
    v6 = Value;
    data = dispatch_source_get_data(*(DerivedStorage + 160));
    if (data)
    {
      v8 = data;
      if (gLogCategory_APTransportConnectionTCPUnbuffered <= 60 && (gLogCategory_APTransportConnectionTCPUnbuffered != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      while (1)
      {
        v9 = v8 >= 0x400 ? 1024 : v8;
        v13 = 0;
        valuePtr = (*(v6 + 24))(v6, v9, v9, v15, &v13, 0, 1);
        if (valuePtr)
        {
          break;
        }

        v8 -= v13;
        if (!v8)
        {
          goto LABEL_13;
        }
      }

      APSLogErrorAt();
    }

    else if (gLogCategory_APTransportConnectionTCPUnbuffered <= 90 && (gLogCategory_APTransportConnectionTCPUnbuffered != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v11 = CMBaseObjectGetDerivedStorage();
    if (!*v11)
    {
      APTTrafficMetricsConnectionClosed(*(v11 + 584));
      tcpunbuf_cleanUp();
    }

    v12 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, &valuePtr);
    tcpunbuf_callEventCallback(v2, 6, v12);
    if (v12)
    {
      CFRelease(v12);
    }
  }

LABEL_13:
  v10 = *MEMORY[0x277D85DE8];
}

uint64_t APTransportConnectionTCPUnbufferedCreate_cold_2(_DWORD *a1)
{
  APSLogErrorAt();
  result = APSSignalErrorAt();
  *a1 = result;
  return result;
}

uint64_t APTransportConnectionTCPUnbufferedCreate_cold_3(_DWORD *a1)
{
  APSLogErrorAt();
  result = APSSignalErrorAt();
  *a1 = result;
  return result;
}

uint64_t APTransportConnectionTCPUnbufferedCreate_cold_4()
{
  OUTLINED_FUNCTION_17();
  APSLogErrorAt();
  OUTLINED_FUNCTION_2_12();
  return APSSignalErrorAt();
}

uint64_t tcpunbuf_setPropertyInternal_cold_1(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  return LogPrintF();
}

uint64_t tcpunbuf_setPropertyInternal_cold_9(uint64_t *a1, unsigned int *a2)
{
  v3 = *a1;
  v4 = *a2;
  return LogPrintF();
}

uint64_t tcpunbuf_setPropertyInternal_cold_15(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -72321;
  return result;
}

uint64_t tcpunbuf_resumeInternal_cold_7(uint64_t a1, uint64_t a2, int a3, void *a4, _DWORD *a5)
{
  result = APSLogErrorAt();
  if (gLogCategory_APTransportConnectionTCPUnbuffered <= 90)
  {
    if (gLogCategory_APTransportConnectionTCPUnbuffered != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF();
    }
  }

  *a5 = a3;
  *a4 = 0;
  return result;
}

uint64_t tcpunbuf_resumeInternal_cold_13(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -72323;
  return result;
}

uint64_t tcpunbuf_setupDataSocketReadSource_cold_1()
{
  OUTLINED_FUNCTION_17();
  APSLogErrorAt();
  OUTLINED_FUNCTION_2_12();

  return APSSignalErrorAt();
}

uint64_t tcpunbuf_setupDataSocketReadSource_cold_2()
{
  OUTLINED_FUNCTION_17();
  APSLogErrorAt();
  OUTLINED_FUNCTION_2_12();

  return APSSignalErrorAt();
}

uint64_t tcpunbuf_setupDataSocketReadSource_cold_3()
{
  OUTLINED_FUNCTION_17();
  APSLogErrorAt();

  return APSSignalErrorAt();
}

uint64_t tcpunbuf_requestAndSendData_cold_4()
{
  OUTLINED_FUNCTION_17();
  APSLogErrorAt();
  OUTLINED_FUNCTION_2_12();
  return APSSignalErrorAt();
}

void APBrokeredReceiverCopyInfoFromDNSName(CFStringRef theString, CFTypeRef *a2, CFTypeRef *a3)
{
  if (theString)
  {
    if (a2)
    {
      if (a3)
      {
        ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(*MEMORY[0x277CBECE8], theString, @"\x1C");
        if (ArrayBySeparatingStrings)
        {
          v6 = ArrayBySeparatingStrings;
          if (CFArrayGetCount(ArrayBySeparatingStrings) == 2)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v6, 0);
            if (CFStringGetLength(ValueAtIndex) >= 1)
            {
              v8 = CFArrayGetValueAtIndex(v6, 1);
              if (CFStringGetLength(v8) >= 1)
              {
                *a2 = CFRetain(ValueAtIndex);
                *a3 = CFRetain(v8);
              }
            }
          }

          CFRelease(v6);
        }
      }
    }
  }
}

CFStringRef APBrokeredReceiverCreateDNSName(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1 && a2)
  {
    result = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@%@%@", a1, @"\x1C", a2);
    if (!result)
    {
      APSLogErrorAt();
      return 0;
    }
  }

  return result;
}

uint64_t _APBrokeredReceiverEqual(uint64_t a1, unint64_t a2)
{
  if (!(a1 | a2))
  {
    return 1;
  }

  result = 0;
  if (a1)
  {
    if (a2)
    {
      v5 = *(a1 + 56);
      v6 = *(a2 + 56);
      if (v5 == v6 || (result = 0, v5) && v6 && (result = CFEqual(*(a1 + 56), v6), result))
      {
        v7 = *(a1 + 16);
        v8 = *(a2 + 16);
        if (v7 == v8 || (result = 0, v7) && v8 && (result = CFEqual(*(a1 + 16), v8), result))
        {
          v9 = *(a1 + 24);
          v10 = *(a2 + 24);
          if (v9 == v10 || (result = 0, v9) && v10 && (result = CFEqual(*(a1 + 24), v10), result))
          {
            v11 = *(a1 + 32);
            v12 = *(a2 + 32);
            if (v11 == v12 || (result = 0, v11) && v12 && (result = CFEqual(*(a1 + 32), v12), result))
            {
              v13 = *(a1 + 72);
              v14 = *(a2 + 72);
              return v13 == v14 || v13 && v14 && CFEqual(v13, v14);
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t APTransportStreamSendBackingProviderCopyPackageForAcquiredBBuf(uint64_t a1, CMBlockBufferRef theBuffer, CFTypeRef *a3)
{
  lengthAtOffsetOut = 0;
  dataPointerOut = 0;
  totalLengthOut = 0;
  if (theBuffer)
  {
    DataPointer = CMBlockBufferGetDataPointer(theBuffer, 0, &lengthAtOffsetOut, &totalLengthOut, &dataPointerOut);
    if (DataPointer)
    {
      v6 = DataPointer;
      APSLogErrorAt();
    }

    else
    {
      v6 = 4294894944;
      if (lengthAtOffsetOut == totalLengthOut)
      {
        v7 = *(a1 + 16);
        FigSimpleMutexLock();
        Value = CFDictionaryGetValue(*(a1 + 40), dataPointerOut);
        v9 = *(a1 + 16);
        FigSimpleMutexUnlock();
        if (Value)
        {
          v6 = 0;
          *a3 = CFRetain(Value);
        }
      }
    }
  }

  else
  {
    APSLogErrorAt();
    return 4294894945;
  }

  return v6;
}

uint64_t APTransportStreamSendBackingProviderUpdateAcquiredBBuf(uint64_t a1, CMBlockBufferRef theBuffer)
{
  lengthAtOffsetOut = 0;
  dataPointerOut = 0;
  totalLengthOut = 0;
  if (theBuffer)
  {
    DataPointer = CMBlockBufferGetDataPointer(theBuffer, 0, &lengthAtOffsetOut, &totalLengthOut, &dataPointerOut);
    if (DataPointer)
    {
      v5 = DataPointer;
      APSLogErrorAt();
    }

    else
    {
      v5 = 4294894944;
      if (lengthAtOffsetOut == totalLengthOut)
      {
        v6 = *(a1 + 16);
        FigSimpleMutexLock();
        Value = CFDictionaryGetValue(*(a1 + 40), dataPointerOut);
        v8 = *(a1 + 16);
        FigSimpleMutexUnlock();
        if (Value)
        {
          v9 = *(*(CMBaseObjectGetVTable() + 16) + 16);
          if (v9)
          {
            v9(Value, theBuffer);
          }

          if (gLogCategory_APTransportStreamSendBackingProvider <= 10 && (gLogCategory_APTransportStreamSendBackingProvider != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          return 0;
        }
      }
    }
  }

  else
  {
    APSLogErrorAt();
    return 4294894945;
  }

  return v5;
}

void carSessionBrowser_dispatchEvent(const void *a1, int a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = *(DerivedStorage + 120);
  if (v7)
  {
    v8 = DerivedStorage;
    v9 = *(DerivedStorage + 128);
    if (gLogCategory_APBrowserCarSession <= 20 && (gLogCategory_APBrowserCarSession != -1 || _LogCategory_Initialize()))
    {
      APBrowserGetEventString(a2);
      LogPrintF();
    }

    if (a1)
    {
      CFRetain(a1);
    }

    if (a3)
    {
      CFRetain(a3);
    }

    v10 = *(v8 + 112);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __carSessionBrowser_dispatchEvent_block_invoke;
    block[3] = &__block_descriptor_tmp_46_1;
    block[4] = v7;
    block[5] = a1;
    v12 = a2;
    block[6] = a3;
    block[7] = v9;
    dispatch_async(v10, block);
  }
}

uint64_t carSessionBrowser_invalidate()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 24);
  if (v1)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __carSessionBrowser_invalidate_block_invoke;
    block[3] = &__block_descriptor_tmp_11_0;
    block[4] = DerivedStorage;
    dispatch_sync(v1, block);
  }

  return 0;
}

void __carSessionBrowser_setMode_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (*(v2 + 32))
  {
    APSLogErrorAt();
    OUTLINED_FUNCTION_8_1();
    v12 = -12785;
LABEL_37:
    *(v11 + 24) = v12;
    return;
  }

  if (!*(v2 + 120))
  {
    APSLogErrorAt();
    OUTLINED_FUNCTION_8_1();
    v12 = -72060;
    goto LABEL_37;
  }

  if (*(a1 + 56))
  {
    if (*(a1 + 56) == 3)
    {
      if (!*(v2 + 72))
      {
        if (gLogCategory_APBrowserCarSession <= 50 && (gLogCategory_APBrowserCarSession != -1 || _LogCategory_Initialize()))
        {
          OUTLINED_FUNCTION_9();
        }

        v4 = *(a1 + 40);
        if (*(v4 + 16))
        {
          if (*(v4 + 48))
          {
            APSPowerAssertionRaiseTemporary();
            v4 = *(a1 + 40);
          }

          v5 = *(v4 + 64);
          v6 = *(*(CMBaseObjectGetVTable() + 16) + 8);
          if (v6)
          {
            v6(v5, 1);
          }
        }

        *(*(a1 + 40) + 72) = 1;
      }

      return;
    }

    if (gLogCategory_APBrowserCarSession > 60)
    {
      goto LABEL_17;
    }

    if (gLogCategory_APBrowserCarSession == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_17;
      }

      v13 = *(a1 + 56);
    }

    LogPrintF();
LABEL_17:
    OUTLINED_FUNCTION_8_1();
    *(v3 + 24) = -72062;

    APSLogErrorAt();
    return;
  }

  if (*(v2 + 72))
  {
    if (gLogCategory_APBrowserCarSession <= 50 && (gLogCategory_APBrowserCarSession != -1 || _LogCategory_Initialize()))
    {
      OUTLINED_FUNCTION_9();
    }

    v7 = *(a1 + 40);
    if (*(v7 + 16))
    {
      v8 = *(v7 + 64);
      v9 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v9)
      {
        v9(v8, 0);
      }

      v10 = *(a1 + 40);
      ++*(v10 + 76);
    }

    else
    {
      carSessionBrowser_dispatchEvent(*(a1 + 48), 7, 0);
      v10 = *(a1 + 40);
    }

    *(v10 + 72) = 0;
  }
}

uint64_t carSessionBrowser_setMode_cold_1(uint64_t a1)
{
  result = APSLogErrorAt();
  *(*a1 + 24) = -72062;
  return result;
}

uint64_t carSessionBrowser_getDNSForDeviceID_cold_1(uint64_t a1)
{
  result = APSLogErrorAt();
  *(*a1 + 24) = -12780;
  return result;
}

uint64_t carSessionBrowser_getDNSForDeviceID_cold_2(uint64_t a1)
{
  result = APSLogErrorAt();
  *(*a1 + 24) = -12780;
  return result;
}

void __carSessionBrowser_getMode_block_invoke_cold_1()
{
  APSLogErrorAt();
  OUTLINED_FUNCTION_8_1();
  *(v0 + 24) = -12785;
}

void __carSessionBrowser_setEventHandler_block_invoke_cold_1()
{
  APSLogErrorAt();
  OUTLINED_FUNCTION_8_1();
  *(v0 + 24) = -12785;
}

void __carSessionBrowser_getDNSForDeviceID_block_invoke_cold_1()
{
  APSLogErrorAt();
  OUTLINED_FUNCTION_8_1();
  *(v0 + 24) = -12785;
}

void __carSessionBrowser_getDNSForDeviceID_block_invoke_cold_3()
{
  APSLogErrorAt();
  OUTLINED_FUNCTION_8_1();
  *(v0 + 24) = -72063;
}

uint64_t __carSessionBrowser_getDNSForDeviceID_block_invoke_cold_5(uint64_t *a1, _BYTE **a2)
{
  if (*a2)
  {
    **a2;
  }

  v3 = *a1;
  return LogPrintF();
}

uint64_t __carSessionBrowser_handleCarPlayHelperEvent_block_invoke_cold_7(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -12786;
  return result;
}

uint64_t __carSessionBrowser_handleCarPlayHelperEvent_block_invoke_cold_8(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -12786;
  return result;
}

uint64_t __carSessionBrowser_handleCarPlayHelperEvent_block_invoke_cold_9(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -12780;
  return result;
}

uint64_t __carSessionBrowser_handleCarPlayHelperEvent_block_invoke_cold_10(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -12780;
  return result;
}

void carSessionBrowser_networkChanged_cold_2(void *a1, uint64_t a2, const void *a3)
{
  *a1 = 0;
  *(a2 + 104) = 0;
  v5 = *(a2 + 96);
  if (v5)
  {
    CFRelease(v5);
    *(a2 + 96) = 0;
  }

  carSessionBrowser_dispatchEvent(a3, 6, 0);
  if (*(a2 + 80))
  {
    v6 = os_transaction_copy_description();
    if (gLogCategory_APBrowserCarSession <= 50 && (gLogCategory_APBrowserCarSession != -1 || _LogCategory_Initialize()))
    {
      OUTLINED_FUNCTION_9();
    }

    free(v6);
    v7 = *(a2 + 80);
    if (v7)
    {
      os_release(v7);
      *(a2 + 80) = 0;
    }
  }
}

uint64_t APTransportDeviceParseInterfaceIndexFromDNSName(char *a1, unsigned int *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  if (!a1 || !a2)
  {
    APSLogErrorAt();
    result = 4294960591;
    goto LABEL_11;
  }

  v3 = strchr(a1, 37);
  if (!v3)
  {
    result = 4294960569;
    goto LABEL_11;
  }

  v4 = v3 + 1;
  v5 = strpbrk(v3 + 1, ":]");
  if (!v5)
  {
    v5 = &v4[strlen(v4)];
  }

  v6 = v5 - v4;
  if ((v5 - v4) >= 0x11)
  {
    goto LABEL_14;
  }

  __memcpy_chk();
  v11[v6] = 0;
  v7 = if_nametoindex(v11);
  v10 = v7;
  if (!v7)
  {
    if (sscanf(v11, "%u", &v10) == 1)
    {
      v7 = v10;
      goto LABEL_10;
    }

LABEL_14:
    APSLogErrorAt();
    result = 4294960554;
    goto LABEL_11;
  }

LABEL_10:
  result = 0;
  *a2 = v7;
LABEL_11:
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t aptransportdevice_copyInterfaceNameFromDNSName(char *a1, CFTypeRef *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v7 = 0;
  *cStr = 0;
  v9 = 0;
  result = APTransportDeviceParseInterfaceIndexFromDNSName(a1, &v7);
  if (!result)
  {
    if (if_indextoname(v7, cStr))
    {
      v4 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], cStr, 0x8000100u);
      if (v4)
      {
        v5 = v4;
        *a2 = CFRetain(v4);
        CFRelease(v5);
        result = 0;
      }

      else
      {
        APSLogErrorAt();
        result = 4294960568;
      }
    }

    else
    {
      APSLogErrorAt();
      result = 4294960569;
    }
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t APTransportDeviceStartTracking(void *a1, uint64_t a2)
{
  if (a1[4])
  {
    return 0;
  }

  if (a1[5])
  {
    return 0;
  }

  v2 = a1[2];
  if (!v2)
  {
    return 0;
  }

  v4 = a1[3];
  Int64 = CFDictionaryGetInt64();
  VTable = CMBaseObjectGetVTable();
  v7 = *(*(VTable + 16) + 40);
  if (!v7)
  {
    v9 = 4294954514;
LABEL_9:
    APSLogErrorAt();
    return v9;
  }

  v8 = *(VTable + 16) + 40;
  v9 = v7(v2, Int64, a2);
  if (v9)
  {
    goto LABEL_9;
  }

  return v9;
}

uint64_t APTransportDeviceStopTracking(void *a1)
{
  if (a1[4] || a1[5])
  {
    return 0;
  }

  v1 = a1[2];
  if (v1)
  {
    v2 = a1[3];
    Int64 = CFDictionaryGetInt64();
    VTable = CMBaseObjectGetVTable();
    v5 = *(*(VTable + 16) + 48);
    if (!v5)
    {
      v1 = 4294954514;
LABEL_9:
      APSLogErrorAt();
      return v1;
    }

    v6 = *(VTable + 16) + 48;
    v1 = v5(v1, Int64);
    if (v1)
    {
      goto LABEL_9;
    }
  }

  return v1;
}

uint64_t APTransportDeviceReconfirm(void *a1)
{
  if (a1[4] || a1[5])
  {
    return 0;
  }

  v1 = a1[2];
  if (v1)
  {
    v2 = a1[3];
    Int64 = CFDictionaryGetInt64();
    VTable = CMBaseObjectGetVTable();
    v5 = *(*(VTable + 16) + 56);
    if (!v5)
    {
      v1 = 4294954514;
LABEL_9:
      APSLogErrorAt();
      return v1;
    }

    v6 = *(VTable + 16) + 56;
    v1 = v5(v1, Int64, 0);
    if (v1)
    {
      goto LABEL_9;
    }
  }

  return v1;
}

uint64_t APTransportDeviceTriggerWoLCachingIfNeeded(void *a1, uint64_t a2)
{
  if (a1[4])
  {
    return 0;
  }

  if (a1[5])
  {
    return 0;
  }

  v2 = a1[2];
  if (!v2)
  {
    return 0;
  }

  v4 = a1[3];
  Int64 = CFDictionaryGetInt64();
  VTable = CMBaseObjectGetVTable();
  v7 = *(*(VTable + 16) + 64);
  if (!v7)
  {
    v9 = 4294954514;
LABEL_9:
    APSLogErrorAt();
    return v9;
  }

  v8 = *(VTable + 16) + 64;
  v9 = v7(v2, Int64, a2);
  if (v9)
  {
    goto LABEL_9;
  }

  return v9;
}

void __transportDevice_networkAddressesToCStringRepresentation_block_invoke()
{
  if (APSNetworkAddressCopyStringRepresentation())
  {
    APSLogErrorAt();
  }
}

void APTransportDeviceCreate_cold_1(const void *a1)
{
  APSLogErrorAt();

  CFRelease(a1);
}

uint64_t APTransportDeviceGetAddress_cold_1(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  CFDictionaryGetInt64Ranged();
  return LogPrintF();
}

uint64_t APTransportDeviceCopyProximityData_cold_1(uint64_t result, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (gLogCategory_APTransportDevice <= 90)
  {
    if (gLogCategory_APTransportDevice == -1)
    {
      v7 = result;
      result = _LogCategory_Initialize();
      if (!result)
      {
        goto LABEL_5;
      }

      a2 = *v7;
    }

    [a2 localizedFailureReason];
    result = LogPrintF();
  }

LABEL_5:
  *a5 = a4;
  return result;
}

uint64_t APTransportDeviceCopyProximityData_cold_2(int a1)
{
  if (a1 != -1)
  {
    return LogPrintF();
  }

  result = _LogCategory_Initialize();
  if (result)
  {
    return LogPrintF();
  }

  return result;
}

void __getNINearbyObjectClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"Class getNINearbyObjectClass(void)_block_invoke") description:{@"APSoftLinking_NearbyInteraction.h", 25, @"Unable to find class %s", "NINearbyObject"}];
  __break(1u);
}

void NearbyInteractionLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"void *NearbyInteractionLibrary(void)") description:{@"APSoftLinking_NearbyInteraction.h", 23, @"%s", *a1}];
  __break(1u);
}

void __getNIDiscoveryTokenClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"Class getNIDiscoveryTokenClass(void)_block_invoke") description:{@"APSoftLinking_NearbyInteraction.h", 28, @"Unable to find class %s", "NIDiscoveryToken"}];
  __break(1u);
}

void __APTNANDataSessionRetainActivation_block_invoke_3(void *a1)
{
  v2 = a1[5];
  v3 = FigCFWeakReferenceHolderCopyReferencedObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APTNANDataSession <= 50 && (gLogCategory_APTNANDataSession != -1 || _LogCategory_Initialize()))
  {
    v10 = a1[6];
    LogPrintF();
  }

  if (v3)
  {
    v5 = a1[4];
    v6 = NSErrorToOSStatus();
    if (v6 != 313374)
    {
      goto LABEL_25;
    }

    v7 = [v5 wfaDataSessionClient];
    if (!v7)
    {
      if (gLogCategory_APTNANDataSession <= 90 && (gLogCategory_APTNANDataSession != -1 || OUTLINED_FUNCTION_9_0()))
      {
        OUTLINED_FUNCTION_15();
      }

      v6 = 313374;
      goto LABEL_25;
    }

    v6 = -72401;
    v8 = [v7 internetSharingPolicy];
    if ((v8 - 2) < 2)
    {
      goto LABEL_21;
    }

    if (v8 == 1)
    {
      v6 = -72400;
    }

    else
    {
      if (!v8)
      {
        if (gLogCategory_APTNANDataSession <= 90)
        {
          if (gLogCategory_APTNANDataSession != -1 || OUTLINED_FUNCTION_9_0())
          {
            OUTLINED_FUNCTION_15();
          }

          v6 = -6762;
          goto LABEL_21;
        }

        v6 = -6762;
LABEL_25:
        CFRetain(v3);
        v9 = *(DerivedStorage + 32);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __APTNANDataSessionRetainActivation_block_invoke_4;
        block[3] = &__block_descriptor_52_e5_v8__0l;
        v12 = v6;
        block[4] = DerivedStorage;
        block[5] = v3;
        dispatch_async(v9, block);
        CFRelease(v3);
        return;
      }

      if (APSIsPersistentGroupSDBCapable())
      {
        v6 = -72401;
      }

      else
      {
        v6 = -72400;
      }
    }

LABEL_21:
    if (gLogCategory_APTNANDataSession <= 90 && (gLogCategory_APTNANDataSession != -1 || OUTLINED_FUNCTION_9_0()))
    {
      OUTLINED_FUNCTION_15();
    }

    goto LABEL_25;
  }
}

void __APTNANDataSessionRetainActivation_block_invoke_4(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 56);
  FigSimpleMutexLock();
  v3 = *(a1 + 32);
  if (*(v3 + 80))
  {
    *(v3 + 88) = *(a1 + 48);
  }

  v4 = *(v3 + 56);
  FigSimpleMutexUnlock();
  v5 = *(a1 + 40);
  if (v5)
  {

    CFRelease(v5);
  }
}

uint64_t _APTNANDataSessionReportIssue(uint64_t a1)
{
  v16 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v3 = *MEMORY[0x277CEA1F0];
  CFStringGetTypeID();
  CFDictionaryGetTypedValue();
  v4 = *MEMORY[0x277CEA1F8];
  if (FigCFEqual())
  {
    v5 = *(DerivedStorage + 56);
    FigSimpleMutexLock();
    v6 = *MEMORY[0x277CEA1E0];
    CFNumberGetTypeID();
    TypedValue = CFDictionaryGetTypedValue();
    v8 = *MEMORY[0x277CEA1E8];
    CFNumberGetTypeID();
    v9 = CFDictionaryGetTypedValue();
    v16 = APTNANDataSessionIssueReportCreate(TypedValue, v9, &cf);
    if (v16)
    {
      APSLogErrorAt();
    }

    else if (gLogCategory_APTNANDataSession <= 50 && (gLogCategory_APTNANDataSession != -1 || _LogCategory_Initialize()))
    {
      v14 = cf;
      OUTLINED_FUNCTION_9();
      [*(DerivedStorage + 80) reportIssue:{cf, a1, v14}];
    }

    else
    {
      [*(DerivedStorage + 80) reportIssue:{cf, v12, v13}];
    }

    v10 = *(DerivedStorage + 56);
    FigSimpleMutexUnlock();
    if (cf)
    {
      CFRelease(cf);
    }
  }

  return v16;
}

uint64_t APTNANDataSessionIsActivatable_cold_1()
{
  result = APSLogErrorAt();
  if (gLogCategory_APTNANDataSession <= 50)
  {
    if (gLogCategory_APTNANDataSession != -1)
    {
      return OUTLINED_FUNCTION_9();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return OUTLINED_FUNCTION_9();
    }
  }

  return result;
}

uint64_t __APTNANDataSessionRetainActivation_block_invoke_5_cold_1(uint64_t a1)
{
  v3 = *(a1 + 64);
  v2 = *(a1 + 56);
  return OUTLINED_FUNCTION_15();
}

uint64_t __APTNANDataSessionRetainActivation_block_invoke_5_cold_2(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 64);
  return OUTLINED_FUNCTION_9();
}

uint64_t APTNANDataSessionCreateStatisticsReport_cold_3(uint64_t *a1)
{
  APSLogErrorAt();
  v2 = *a1;

  return FigSimpleMutexUnlock();
}

uint64_t APBrokerCreateBrokeredReceiversFromBrokerResponse(uint64_t a1, uint64_t a2, CFMutableDictionaryRef *a3, uint64_t *a4)
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2000000000;
  v17 = 0;
  if (gLogCategory_APBroker <= 30 && (gLogCategory_APBroker != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_7_0();
  }

  v8 = 4294960591;
  if (a1 && a2 && a3)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (!Mutable)
    {
      APSLogErrorAt();
      v8 = 4294960568;
      goto LABEL_17;
    }

    v10 = Mutable;
    CFArrayGetTypeID();
    TypedValue = CFDictionaryGetTypedValue();
    if (TypedValue)
    {
      CFArrayGetCount(TypedValue);
      OUTLINED_FUNCTION_1_2();
      CFArrayApplyBlock();
      v12 = v15[3];
      if (!v12)
      {
        v12 = 300;
        v15[3] = 300;
      }

      *a3 = v10;
      if (a4)
      {
        v8 = 0;
        *a4 = v12;
        goto LABEL_17;
      }
    }

    else
    {
      CFRelease(v10);
    }

    v8 = 0;
  }

LABEL_17:
  _Block_object_dispose(&v14, 8);
  return v8;
}

void _CallRequestCallbackBlock(int a1, NSObject *a2, const void *a3, void *aBlock)
{
  if (aBlock)
  {
    v7 = _Block_copy(aBlock);
    if (a3)
    {
      CFRetain(a3);
    }

    OUTLINED_FUNCTION_1_2();
    v9 = 0x40000000;
    v10 = ___CallRequestCallbackBlock_block_invoke;
    v11 = &unk_278BC9190;
    v14 = a1;
    v12 = v7;
    v13 = a3;
    dispatch_async(a2, block);
  }
}

void __APBrokerAuthenticate_block_invoke()
{
  OUTLINED_FUNCTION_4_11();
  if (v6 ^ v7 | v5)
  {
    if (v4 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_9;
      }

      v4 = *(v3 + 2792);
    }

    v8 = *(v0 + 40);
    if (v4 == -1)
    {
      _LogCategory_Initialize();
    }

    LogPrintF();
  }

LABEL_9:
  if (v1)
  {
    APSLogErrorAt();
    Mutable = 0;
    goto LABEL_22;
  }

  v9 = *(v0 + 48);
  v10 = *(v9 + 40);
  FigSimpleMutexCheckIsNotLockedOnThisThread();
  Mutable = 0;
  v1 = -6705;
  if (v2 && v9)
  {
    v12 = *(v3 + 2792);
    if (v12 <= 30 && (v12 != -1 || _LogCategory_Initialize()))
    {
      OUTLINED_FUNCTION_7_0();
    }

    v13 = APBrokerCopyAuthInfoFromBrokerResponse();
    if (v13)
    {
      v1 = v13;
      APSLogErrorAt();
    }

    else
    {
      v14 = *(v9 + 40);
      FigSimpleMutexLock();
      v15 = APBrokerKeychainUtilsStoreAuthToken(*(v9 + 24), 0, 0, 0);
      if (!v15)
      {
        v16 = *(v9 + 40);
        FigSimpleMutexUnlock();
        Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        if (Mutable)
        {
          FigCFDictionarySetValue();
          v1 = 0;
        }

        else
        {
          APSLogErrorAt();
          v1 = -6728;
        }

        goto LABEL_20;
      }

      v1 = v15;
      APSLogErrorAt();
      v17 = *(v9 + 40);
      FigSimpleMutexUnlock();
    }

    Mutable = 0;
  }

LABEL_20:
  if (v1)
  {
    APSLogErrorAt();
  }

LABEL_22:
  _CallRequestCallbackBlock(v1, *(v0 + 56), Mutable, *(v0 + 32));
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  dispatch_release(*(v0 + 56));
  _Block_release(*(v0 + 32));
}

void __APBrokerGetInfo_block_invoke()
{
  OUTLINED_FUNCTION_4_11();
  if (!(v5 ^ v6 | v4))
  {
    goto LABEL_9;
  }

  if (v3 == -1)
  {
    if (!_LogCategory_Initialize())
    {
      goto LABEL_9;
    }

    v3 = *(v2 + 2792);
  }

  v7 = *(v0 + 40);
  if (v3 == -1)
  {
    _LogCategory_Initialize();
  }

  OUTLINED_FUNCTION_9();
LABEL_9:
  if (v1)
  {
    APSLogErrorAt();
    Mutable = 0;
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    FigCFDictionarySetValueFromKeyInDict();
  }

  _CallRequestCallbackBlock(v1, *(v0 + 48), Mutable, *(v0 + 32));
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  dispatch_release(*(v0 + 48));
  v9 = *(v0 + 32);

  _Block_release(v9);
}

void __APBrokerGetReceiverConnectivityInfo_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int BrokeredReceiverConnectivityInfoFromBrokerResponse)
{
  cf = 0;
  if (gLogCategory_APBroker <= 50 && (gLogCategory_APBroker != -1 || _LogCategory_Initialize()))
  {
    v10 = *(a1 + 40);
    if (*(a1 + 48) && IsAppleInternalBuild())
    {
      v11 = *(a1 + 48);
    }

    if (gLogCategory_APBroker == -1)
    {
      _LogCategory_Initialize();
    }

    OUTLINED_FUNCTION_9();
  }

  if (BrokeredReceiverConnectivityInfoFromBrokerResponse || (BrokeredReceiverConnectivityInfoFromBrokerResponse = APBrokerCreateBrokeredReceiverConnectivityInfoFromBrokerResponse(a2, a4, &cf)) != 0)
  {
    APSLogErrorAt();
  }

  _CallRequestCallbackBlock(BrokeredReceiverConnectivityInfoFromBrokerResponse, *(a1 + 56), cf, *(a1 + 32));
  CFRelease(*(a1 + 48));
  if (cf)
  {
    CFRelease(cf);
  }

  dispatch_release(*(a1 + 56));
  _Block_release(*(a1 + 32));
}

uint64_t APBrokerCopyAuthInfoFromBrokerResponse()
{
  CFStringGetTypeID();
  if (OUTLINED_FUNCTION_7_6())
  {
    CFNumberGetTypeID();
    if (OUTLINED_FUNCTION_7_6())
    {
      CFStringGetTypeID();
      if (!OUTLINED_FUNCTION_7_6())
      {
        v2 = 0;
        v0 = 0;
        goto LABEL_8;
      }

      CFDictionaryGetTypeID();
      v0 = OUTLINED_FUNCTION_7_6();
      if (!v0)
      {
LABEL_17:
        APSLogErrorAt();
        goto LABEL_18;
      }

      CFStringGetTypeID();
      if (OUTLINED_FUNCTION_7_6())
      {
        v0 = APSCFDataCreateWithBase64String();
        if (!v0)
        {
          APSLogErrorAt();
          v2 = 4294960568;
          goto LABEL_8;
        }

        APSTXTRecordUtilsCopyCFStringFromTXTRecord();
        goto LABEL_17;
      }
    }
  }

  APSLogErrorAt();
  v0 = 0;
LABEL_18:
  v2 = 4294960591;
LABEL_8:
  if (v0)
  {
    CFRelease(v0);
  }

  return v2;
}

void *__APBrokerCreateBrokeredReceiversFromBrokerResponse_block_invoke(void *result, CFTypeRef cf)
{
  if (cf)
  {
    v2 = result;
    v3 = CFGetTypeID(cf);
    result = CFDictionaryGetTypeID();
    if (v3 == result)
    {
      CFStringGetTypeID();
      result = CFDictionaryGetTypedValue();
      if (result)
      {
        CFArrayGetTypeID();
        result = CFDictionaryGetTypedValue();
        if (result)
        {
          v4 = result;
          Int64 = CFDictionaryGetInt64();
          v6 = *(v2[4] + 8);
          v7 = *(v6 + 24);
          if (!v7 || Int64 && Int64 < v7)
          {
            *(v6 + 24) = Int64;
          }

          CFArrayGetCount(v4);
          OUTLINED_FUNCTION_1_2();
          v8 = v2[5];
          v9 = v2[6];
          return CFArrayApplyBlock();
        }
      }
    }
  }

  return result;
}

uint64_t APBrokerGetBrokeredReceivers_cold_3(uint64_t *a1)
{
  APSLogErrorAt();
  v2 = *a1;
  return FigSimpleMutexUnlock();
}

uint64_t APBrokerSendRequest_cold_1(uint64_t a1, int a2)
{
  APBrokerHTTPProtocolString(*(a1 + 32));
  APBrokerHTTPMethodString(a2);
  return OUTLINED_FUNCTION_7_0();
}

uint64_t APBrokerSendRequest_cold_4(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -6728;
  return result;
}

uint64_t APBrokerSendRequest_cold_7(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -6728;
  return result;
}

uint64_t APBrokerAuthenticate_cold_1(uint64_t a1)
{
  if (*(a1 + 24) && IsAppleInternalBuild())
  {
    v2 = *(a1 + 24);
  }

  if (gLogCategory_APBroker == -1)
  {
    _LogCategory_Initialize();
  }

  return OUTLINED_FUNCTION_9();
}

void APBrokerAuthenticate_cold_3(uint64_t *a1, const void *a2)
{
  APSLogErrorAt();
  v4 = *a1;
  FigSimpleMutexUnlock();

  CFRelease(a2);
}

uint64_t APBrokerGetInfo_cold_1(uint64_t a1)
{
  if (*(a1 + 24) && IsAppleInternalBuild())
  {
    v2 = *(a1 + 24);
  }

  return OUTLINED_FUNCTION_9();
}

uint64_t APBrokerGetInfo_cold_3(uint64_t *a1)
{
  APSLogErrorAt();
  v2 = *a1;

  return FigSimpleMutexUnlock();
}

uint64_t APBrokerGetReceiverConnectivityInfo_cold_1(uint64_t a1)
{
  if (a1)
  {
    IsAppleInternalBuild();
  }

  IsAppleInternalBuild();
  return OUTLINED_FUNCTION_7_0();
}

uint64_t APBrokerCreateBrokeredReceiverConnectivityInfoFromBrokerResponse_cold_5(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -6728;
  return result;
}

uint64_t _APBrokerFinalize_cold_1(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 16);
  return OUTLINED_FUNCTION_9();
}

uint64_t __APBrokerSendRequest_block_invoke_cold_1(uint64_t a1)
{
  v1 = *(a1 + 40);
  APBrokerHTTPProtocolString(*(*(a1 + 48) + 32));
  if (gLogCategory_APBroker == -1)
  {
    _LogCategory_Initialize();
  }

  return OUTLINED_FUNCTION_7_0();
}

void service_invalidateInternal()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage)
  {
    v1 = DerivedStorage;
    if (gLogCategory_APTransportService <= 30 && (gLogCategory_APTransportService != -1 || _LogCategory_Initialize()))
    {
      v3 = *(v1 + 5);
      LogPrintF();
    }

    *v1 = 1;
    service_cleanUp();
    *(v1 + 3) = 0;
    *(v1 + 4) = 0;
    v2 = *(v1 + 6);
    if (v2)
    {
      CFRelease(v2);
      *(v1 + 6) = 0;
    }
  }
}

uint64_t service_resumeInternal_cold_5(_DWORD *a1)
{
  APSLogErrorAt();
  result = APSSignalErrorAt();
  *a1 = result;
  return result;
}

uint64_t service_createSession_cold_1(_DWORD *a1)
{
  APSLogErrorAt();
  result = APSSignalErrorAt();
  *a1 = result;
  return result;
}

uint64_t service_createSession_cold_7(_DWORD *a1)
{
  APSLogErrorAt();
  result = APSSignalErrorAt();
  *a1 = result;
  return result;
}

uint64_t service_handleListenerConnected_cold_2()
{
  APSLogErrorAt();

  return APSSignalErrorAt();
}

void __APTransportWifiManagerClientUnregister_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (*(v2 + 56))
  {
    v3 = *(v2 + 24);
    v4 = __OFSUB__(v3--, 1);
    *(v2 + 24) = v3;
    if ((v3 < 0) ^ v4 | (v3 == 0))
    {
      [*(v2 + 48) endActivity:?];
      if (gLogCategory_APTransportWifiManagerClient <= 40 && (gLogCategory_APTransportWifiManagerClient != -1 || _LogCategory_Initialize()))
      {
        v6 = *(v2 + 48);
        LogPrintF();
      }

      *(v2 + 56) = 0;
      [*(v2 + 48) invalidate];

      *(v2 + 48) = 0;
    }

    if (gLogCategory_APTransportWifiManagerClient <= 30 && (gLogCategory_APTransportWifiManagerClient != -1 || OUTLINED_FUNCTION_8_0()))
    {
      v7 = *(v2 + 48);
      v8 = *(v2 + 24);
      OUTLINED_FUNCTION_7_0();
    }
  }

  CFRetain(v2);
  v5 = *(v2 + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __wifiManagerClient_unregisterInternal_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = v2;
  dispatch_async(v5, block);
  *(*(*(a1 + 32) + 8) + 24) = 0;
}

uint64_t wifiManagerClient_ensureSubscribedForStatistics(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v3 = 0;
  }

  else if (Apple80211GetIOReportingService())
  {
    if (gLogCategory_APTransportWifiManagerClient <= 90 && (gLogCategory_APTransportWifiManagerClient != -1 || _LogCategory_Initialize()))
    {
      Apple80211ErrToStr();
      LogPrintF();
    }

    v3 = 4294960534;
  }

  else
  {
    APSLogErrorAt();
    v3 = APSSignalErrorAt();
  }

  v1 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t __wifiManagerClient_copyWifiStatistics_block_invoke(uint64_t a1)
{
  IOReportChannelGetGroup();
  v2 = FigCFEqual();
  ChannelName = IOReportChannelGetChannelName();
  if (!ChannelName)
  {
    return 0;
  }

  v4 = ChannelName;
  Length = CFStringGetLength(ChannelName);
  MutableCopy = CFStringCreateMutableCopy(0, Length, v4);
  CFStringTrimWhitespace(MutableCopy);
  UnitLabel = IOReportChannelGetUnitLabel();
  IntegerValue = IOReportSimpleGetIntegerValue();
  v9 = CFStringCreateWithFormat(0, 0, @"%lld%@", IntegerValue, UnitLabel);
  if (FigCFEqual())
  {
    v10 = *(a1 + 32);
    if (v2)
    {
      v11 = @"P2PCCA";
    }

    else
    {
      v11 = @"InfraCCA";
    }
  }

  else if (FigCFEqual())
  {
    v10 = *(a1 + 32);
    v11 = @"InfraRSSI";
  }

  else
  {
    if (!FigCFEqual() || v2)
    {
      goto LABEL_12;
    }

    v10 = *(a1 + 32);
    v11 = @"InfraSNR";
  }

  CFDictionarySetValue(v10, v11, v9);
LABEL_12:
  if (v9)
  {
    CFRelease(v9);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  return 0;
}

void APTransportWifiManagerClientCreate_cold_3(const void *a1)
{
  APSLogErrorAt();

  CFRelease(a1);
}

uint64_t __APTransportWifiManagerClientCopyWifiStatistics_block_invoke_cold_2(_DWORD *a1)
{
  APSLogErrorAt();
  result = OUTLINED_FUNCTION_3_10();
  *a1 = result;
  return result;
}

uint64_t __APTransportWifiManagerClientGetPeerRSSI_block_invoke_cold_3(_DWORD *a1)
{
  APSLogErrorAt();
  result = OUTLINED_FUNCTION_3_10();
  *a1 = result;
  return result;
}

uint64_t __APTransportWifiManagerClientGetPeerRSSI_block_invoke_cold_4(_DWORD *a1)
{
  APSLogErrorAt();
  result = OUTLINED_FUNCTION_3_10();
  *a1 = result;
  return result;
}

uint64_t __APTransportWifiManagerClientGetPeerRSSI_block_invoke_cold_5(_DWORD *a1, uint64_t *a2, void *a3, void *a4)
{
  result = APSLogErrorAt();
  *a1 = -71730;
  if (gLogCategory_APTransportWifiManagerClient <= 90)
  {
    if (gLogCategory_APTransportWifiManagerClient != -1 || (result = _LogCategory_Initialize(), result))
    {
      v9 = *a2;
      result = LogPrintF();
    }
  }

  *a4 = 0;
  *a3 = 0;
  return result;
}

uint64_t __APTransportWifiManagerClientGetPeerRSSI_block_invoke_cold_6(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -71732;
  return result;
}

uint64_t wifiManagerClient_dumpWifiStatistics_cold_3(uint64_t *a1)
{
  result = APSLogErrorAt();
  if (gLogCategory_APTransportWifiManagerClient <= 90)
  {
    if (gLogCategory_APTransportWifiManagerClient != -1 || (result = _LogCategory_Initialize(), result))
    {
      v3 = *a1;
      return LogPrintF();
    }
  }

  return result;
}

void APTransportPackageScreenCreateWithBBuf_cold_1(uint64_t a1, CFTypeRef *a2)
{
  APSLogErrorAt();
  if (*a2)
  {
    CFRelease(*a2);
  }
}

uint64_t streamAggregate_invalidateInternal()
{
  result = CMBaseObjectGetDerivedStorage();
  if (!*result)
  {
    v1 = result;
    *result = 1;
    v2 = *(result + 56);
    result = FigCFDictionaryGetCount();
    if (result >= 1 && gLogCategory_APTransportStreamAggregate <= 90)
    {
      if (gLogCategory_APTransportStreamAggregate != -1 || (result = _LogCategory_Initialize(), result))
      {
        result = LogPrintF();
      }
    }

    v3 = *(v1 + 48);
    if (v3)
    {
      v4 = *(v1 + 48);
      VTable = CMBaseObjectGetVTable();
      v6 = *(*(VTable + 16) + 24);
      if (v6)
      {
        v7 = *(VTable + 16) + 24;
        v6(v3, 0);
      }

      result = APTransportConnectionGetCMBaseObject(*(v1 + 48));
      if (result)
      {
        v8 = result;
        v9 = CMBaseObjectGetVTable();
        v10 = *(v9 + 8);
        result = v9 + 8;
        v11 = *(v10 + 24);
        if (v11)
        {
          result = v11(v8);
        }
      }
    }

    if (gLogCategory_APTransportStreamAggregate <= 30)
    {
      if (gLogCategory_APTransportStreamAggregate != -1)
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

uint64_t streamAggregate_SendMessage(uint64_t a1, uint64_t a2, OpaqueCMBlockBuffer *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v15 = 0;
  v14 = 0;
  if (*DerivedStorage)
  {
    return 0;
  }

  v7 = DerivedStorage;
  if (*(DerivedStorage + 48))
  {
    v8 = streamAggregate_copyFormattedAsyncPackageForBBuf(a1, a3, a2, &v15, &v14);
    if (v8)
    {
      v12 = v8;
    }

    else
    {
      if (gLogCategory_APTransportStreamAggregate <= 10 && (gLogCategory_APTransportStreamAggregate != -1 || OUTLINED_FUNCTION_2_15()))
      {
        OUTLINED_FUNCTION_1_21();
        LogPrintF();
      }

      v9 = *(v7 + 48);
      v10 = v15;
      v11 = *(*(CMBaseObjectGetVTable() + 16) + 56);
      if (v11)
      {
        v12 = v11(v9, v10);
        if (!v12)
        {
          goto LABEL_13;
        }
      }

      else
      {
        v12 = 4294954514;
      }
    }

    APSLogErrorAt();
  }

  else
  {
    v12 = 0;
  }

LABEL_13:
  if (v14)
  {
    APTransportStreamSendBackingProviderRelinquishBBuf(*(v7 + 8), a3);
  }

  return v12;
}

uint64_t streamAggregate_SendBatch(uint64_t a1, uint64_t a2, const __CFArray *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  Count = CFArrayGetCount(a3);
  if (*DerivedStorage || !*(DerivedStorage + 48))
  {
    return 0;
  }

  v8 = Count;
  v9 = CFGetAllocator(a3);
  Mutable = CFArrayCreateMutable(v9, v8, MEMORY[0x277CBF128]);
  if (Mutable)
  {
    v10 = CFGetAllocator(a3);
    v11 = MEMORY[0x23EEDC950](v10, v8, 0x100004077774924, 0);
    if (v11)
    {
      v12 = v11;
      v29 = DerivedStorage;
      bzero(v11, v8);
      if (gLogCategory_APTransportStreamAggregate <= 10 && (gLogCategory_APTransportStreamAggregate != -1 || OUTLINED_FUNCTION_2_15()))
      {
        OUTLINED_FUNCTION_1_21();
        LogPrintF();
      }

      if (v8 < 1)
      {
LABEL_21:
        if (gLogCategory_APTransportStreamAggregate <= 10 && (gLogCategory_APTransportStreamAggregate != -1 || OUTLINED_FUNCTION_2_15()))
        {
          OUTLINED_FUNCTION_1_21();
          LogPrintF();
        }

        v20 = v29;
        v21 = *(v29 + 48);
        v22 = *(*(CMBaseObjectGetVTable() + 16) + 88);
        if (v22)
        {
          v23 = v22(v21, Mutable);
        }

        else
        {
          v23 = APTransportConnectionSendBatchSlow(v21, Mutable);
        }

        v24 = v23;
        if (v23)
        {
          APSLogErrorAt();
        }
      }

      else
      {
        v13 = 0;
        v14 = v12;
        v15 = v8;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a3, v13);
          if (!ValueAtIndex || (v17 = ValueAtIndex, v18 = CFGetTypeID(ValueAtIndex), v18 != CMBlockBufferGetTypeID()))
          {
            APSLogErrorAt();
            v24 = 4294950686;
            goto LABEL_40;
          }

          v19 = streamAggregate_copyFormattedAsyncPackageForBBuf(a1, v17, a2, &cf, v14);
          if (v19)
          {
            break;
          }

          if (gLogCategory_APTransportStreamAggregate <= 10 && (gLogCategory_APTransportStreamAggregate != -1 || OUTLINED_FUNCTION_2_15()))
          {
            OUTLINED_FUNCTION_1_21();
            LogPrintF();
          }

          CFArrayAppendValue(Mutable, cf);
          if (cf)
          {
            CFRelease(cf);
            cf = 0;
          }

          ++v13;
          ++v14;
          if (!--v15)
          {
            goto LABEL_21;
          }
        }

        v24 = v19;
        APSLogErrorAt();
LABEL_40:
        v20 = v29;
      }

      if (v8 >= 1)
      {
        for (i = 0; i != v8; ++i)
        {
          if (v12[i])
          {
            v26 = CFArrayGetValueAtIndex(a3, i);
            APTransportStreamSendBackingProviderRelinquishBBuf(*(v20 + 8), v26);
          }
        }
      }

      v27 = CFGetAllocator(a3);
      CFAllocatorDeallocate(v27, v12);
    }

    else
    {
      APSLogErrorAt();
      v24 = 4294950685;
    }

    CFRelease(Mutable);
  }

  else
  {
    APSLogErrorAt();
    return 4294950685;
  }

  return v24;
}

uint64_t APTransportStreamAggregateCreate_cold_3(_DWORD *a1)
{
  APSLogErrorAt();
  result = APSSignalErrorAt();
  *a1 = result;
  return result;
}

uint64_t APTransportStreamAggregateAddSubStream_cold_3(_DWORD *a1)
{
  APSLogErrorAt();
  result = APSSignalErrorAt();
  *a1 = result;
  return result;
}

CFTypeRef streamAggregate_CopyProperty_cold_3(void *a1)
{
  Object = CFNumberGetObject();
  result = CFRetain(Object);
  *a1 = result;
  return result;
}

uint64_t streamAggregate_eventReceived_cold_1(int a1)
{
  if ((a1 - 1) <= 6)
  {
    v1 = off_278BC92B0[a1 - 1];
  }

  return LogPrintF();
}

uint64_t APBrokerHTTPSendRequest_cold_3(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -6705;
  return result;
}

uint64_t APBrokerHTTPSendRequest_cold_10(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -6705;
  return result;
}

uint64_t APBrokerHTTPSendRequest_cold_11(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -6705;
  return result;
}

uint64_t _APBrokerHTTPSendRequestToURL_cold_1(uint64_t a1)
{
  *(a1 + 20);
  *(a1 + 16);
  return LogPrintF();
}

uint64_t APTNANDataSessionStatisticsReportCopyDictionary(void *a1, CFTypeRef *a2)
{
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  result = 4294960591;
  if (a2 && (isKindOfClass & 1) != 0)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v7 = Mutable;
      [a1 infrastructureChannel];
      FigCFDictionarySetValue();
      _APTNANDataSessionStatisticsReportDictionarySetHistogram(v7, @"TxCCA", [a1 txCCAHistogram]);
      _APTNANDataSessionStatisticsReportDictionarySetHistogram(v7, @"RxRSSI", [a1 rxRSSIHistogram]);
      [a1 preferred2GChannelsCount];
      FigCFDictionarySetValue();
      [a1 preferred5GChannelsCount];
      FigCFDictionarySetValue();
      [a1 dfsChannelsCount];
      FigCFDictionarySetValue();
      [a1 csaCount];
      FigCFDictionarySetValue();
      [a1 quietIECount];
      FigCFDictionarySetValue();
      [a1 txErrorCount];
      FigCFDictionarySetValue();
      [a1 packetsOn2GCount];
      FigCFDictionarySetValue();
      [a1 packetsNAVOn2GCount];
      FigCFDictionarySetValue();
      [a1 packetsHOFOn2GCount];
      FigCFDictionarySetValue();
      [a1 packetsOverridenOn5GCount];
      FigCFDictionarySetValue();
      [a1 packetsOn5GCount];
      FigCFDictionarySetValue();
      v8 = [a1 infraRelayOperationStatus];
      v9 = MEMORY[0x277CBED28];
      if (!v8)
      {
        v9 = MEMORY[0x277CBED10];
      }

      CFDictionarySetValue(v7, @"InfraRelayOperationStatus", *v9);
      [a1 infraRelayRequestersCount];
      FigCFDictionarySetValue();
      _APTNANDataSessionStatisticsReportDictionarySetHistogram(v7, @"RxFWDelayHistogram", [a1 rxFWDelayHistogram]);
      _APTNANDataSessionStatisticsReportDictionarySetHistogram(v7, @"RxIPCDelayHistogram", [a1 rxIPCDelayHistogram]);
      _APTNANDataSessionStatisticsReportDictionarySetHistogram(v7, @"TxConsecutiveErrorsHistogram", [a1 txConsecutiveErrorsHistogram]);
      _APTNANDataSessionStatisticsReportDictionarySetHistogram(v7, @"TxPacketExpiryHistogram", [a1 txPacketExpiryHistogram]);
      [a1 txExpiredCount];
      FigCFDictionarySetValue();
      [a1 txNoACKCount];
      FigCFDictionarySetValue();
      [a1 txFailedCount];
      FigCFDictionarySetValue();
      [a1 txNoResourcesCount];
      FigCFDictionarySetValue();
      [a1 txIOErrorCount];
      FigCFDictionarySetValue();
      [a1 txMemoryErrorCount];
      FigCFDictionarySetValue();
      [a1 txChipModeErrorCount];
      FigCFDictionarySetValue();
      [a1 txNoRemotePeerCount];
      FigCFDictionarySetValue();
      [a1 txInternalErrorCount];
      FigCFDictionarySetValue();
      [a1 txDroppedCount];
      FigCFDictionarySetValue();
      [a1 txFirmwareFreePacketCount];
      FigCFDictionarySetValue();
      [a1 txMaxRetriesCount];
      FigCFDictionarySetValue();
      [a1 txForceLifetimeExpiredCount];
      FigCFDictionarySetValue();
      [a1 channelSequenceMismatchOn5GCount];
      FigCFDictionarySetValue();
      [a1 channelSequenceMismatchOn2GCount];
      FigCFDictionarySetValue();
      [a1 infraScanCount];
      FigCFDictionarySetValue();
      [a1 infraAssocCount];
      FigCFDictionarySetValue();
      [a1 infraDisassocCount];
      FigCFDictionarySetValue();
      [a1 countryCode];
      FigCFDictionarySetValue();
      *a2 = CFRetain(v7);
      CFRelease(v7);
      return 0;
    }

    else
    {
      return 4294960568;
    }
  }

  return result;
}

void _APTNANDataSessionStatisticsReportDictionarySetHistogram(CFMutableDictionaryRef theDict, void *key, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  if (!theDict || !key)
  {
LABEL_13:
    v26 = *MEMORY[0x277D85DE8];
    return;
  }

  if (a3)
  {
    Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
    if (Mutable)
    {
      v7 = Mutable;
      CFStringAppendFormat(Mutable, 0, @"[");
      v12 = OUTLINED_FUNCTION_0_9(v8, v9, v10, v11);
      if (v12)
      {
        v13 = v12;
        v14 = MEMORY[0];
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (MEMORY[0] != v14)
            {
              objc_enumerationMutation(a3);
            }

            v16 = *(8 * i);
            [v16 binStart];
            v18 = v17;
            [v16 binEnd];
            v20 = v19;
            [v16 value];
            CFStringAppendFormat(v7, 0, @"[%.2f, %.2f, %.2f], ", v18, v20, v21);
          }

          v13 = OUTLINED_FUNCTION_0_9(v22, v23, v24, v25);
        }

        while (v13);
      }

      CFStringAppendFormat(v7, 0, @"]");
      CFDictionarySetValue(theDict, key, v7);
      CFRelease(v7);
    }

    goto LABEL_13;
  }

  v27 = *MEMORY[0x277D85DE8];

  CFDictionaryRemoveValue(theDict, key);
}

uint64_t transport_CreateSessionToService_cold_1(_DWORD *a1)
{
  APSLogErrorAt();
  result = APSSignalErrorAt();
  *a1 = result;
  return result;
}

uint64_t transport_registerSession_cold_3(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  return LogPrintF();
}

uint64_t APBrowserGetStartEventForBrowserDeviceEvent(uint64_t a1, uint64_t a2, int a3)
{
  EventTimeRecursive = APSEventRecorderGetEventTimeRecursive();
  if (!EventTimeRecursive)
  {
    return 268431360;
  }

  v5 = EventTimeRecursive;
  if (a3 - 268374017) < 0xC && ((0xB83u >> (a3 - 1)))
  {
    return 268431362;
  }

  v7 = APSEventRecorderGetEventTimeRecursive();
  if (v5 <= v7 || v7 == 0)
  {
    return 268431360;
  }

  else
  {
    return 268431361;
  }
}

uint64_t APBrowserCopyDeviceIDFromBonjourInfo_cold_2(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -6728;
  return result;
}

uint64_t APBrowserCopyDeviceIDFromBonjourInfo_cold_3(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -6705;
  return result;
}

void __lowPowerKeepAliveController_resumeInternal_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(DerivedStorage + 40);
  v4 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v4)
  {
    v5 = v4;
    if (v1)
    {
      CFRetain(v1);
    }

    v6 = *DerivedStorage;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 0x40000000;
    v7[2] = __lowPowerKeepAliveController_timerFired_block_invoke;
    v7[3] = &__block_descriptor_tmp_16_0;
    v7[4] = v1;
    v7[5] = v5;
    dispatch_async(v6, v7);
  }
}

uint64_t APTKeepAliveControllerLowPowerCreate_cold_9(_DWORD *a1)
{
  APSLogErrorAt();
  result = APSSignalErrorAt();
  *a1 = result;
  return result;
}

void __lowPowerKeepAliveController_timerFired_block_invoke_cold_2(uint64_t a1, void *a2, const void *a3, int a4)
{
  APSLogErrorAt();
  if (a3)
  {
    CFRetain(a3);
  }

  v8 = *(a1 + 8);
  *a2 = MEMORY[0x277D85DD0];
  a2[1] = 0x40000000;
  a2[2] = __lowPowerKeepAliveController_sendKeepAlive_block_invoke;
  a2[3] = &__block_descriptor_tmp_18_1;
  a2[4] = a3;
  *(a2 + 10) = a4;
  dispatch_async(v8, a2);
}

uint64_t APTPackageMusicDataGetHeaderSize_cold_1(_DWORD *a1)
{
  APSLogErrorAt();
  result = OUTLINED_FUNCTION_1_13();
  *a1 = result;
  return result;
}

uint64_t APTPackageMusicDataGetPayloadSize_cold_3(_DWORD *a1)
{
  APSLogErrorAt();
  result = OUTLINED_FUNCTION_1_13();
  *a1 = result;
  return result;
}

uint64_t APTPackageMusicDataGetPayloadSize_cold_4(_DWORD *a1)
{
  APSLogErrorAt();
  result = OUTLINED_FUNCTION_1_13();
  *a1 = result;
  return result;
}

uint64_t carPlayHelperUSB_invalidate(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(DerivedStorage + 16);
  if (v3)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __carPlayHelperUSB_invalidate_block_invoke;
    v5[3] = &__block_descriptor_48_e5_v8__0l;
    v5[4] = DerivedStorage;
    v5[5] = a1;
    dispatch_sync(v3, v5);
  }

  return 0;
}

void carPlayHelperUSB_finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage[2])
  {
    OUTLINED_FUNCTION_1_2();
    v18 = 3221225472;
    v19 = __carPlayHelperUSB_finalize_block_invoke;
    v20 = &__block_descriptor_40_e5_v8__0l;
    v21 = DerivedStorage;
    dispatch_sync(v3, block);
  }

  carPlayHelperUSB_invalidate(a1);
  v4 = DerivedStorage[1];
  if (v4)
  {
    dispatch_semaphore_wait(v4, 0xFFFFFFFFFFFFFFFFLL);
    v5 = DerivedStorage[1];
    if (v5)
    {
      dispatch_release(v5);
      DerivedStorage[1] = 0;
    }
  }

  v6 = DerivedStorage[2];
  if (v6)
  {
    dispatch_sync(v6, &__block_literal_global_12_0);
    v7 = DerivedStorage[2];
    if (v7)
    {
      dispatch_release(v7);
      DerivedStorage[2] = 0;
    }
  }

  v8 = DerivedStorage[3];
  if (v8)
  {
    dispatch_sync(v8, &__block_literal_global_14_0);
    v9 = DerivedStorage[3];
    if (v9)
    {
      dispatch_release(v9);
      DerivedStorage[3] = 0;
    }
  }

  v10 = DerivedStorage[10];
  if (v10)
  {
    CFRelease(v10);
    DerivedStorage[10] = 0;
  }

  v11 = DerivedStorage[4];
  if (v11)
  {
    CFRelease(v11);
    DerivedStorage[4] = 0;
  }

  v12 = DerivedStorage[5];
  if (v12)
  {
    CFRelease(v12);
    DerivedStorage[5] = 0;
  }

  v13 = DerivedStorage[7];
  if (v13)
  {
    CFRelease(v13);
    DerivedStorage[7] = 0;
  }

  v14 = DerivedStorage[3];
  if (v14)
  {
    dispatch_release(v14);
    DerivedStorage[3] = 0;
  }

  v15 = DerivedStorage[2];
  if (v15)
  {
    dispatch_release(v15);
    DerivedStorage[2] = 0;
  }

  v16 = DerivedStorage[1];
  if (v16)
  {
    dispatch_release(v16);
    DerivedStorage[1] = 0;
  }
}

NSObject *__carPlayHelperUSB_invalidate_block_invoke(NSObject *result)
{
  isa = result[4].isa;
  if (!*isa)
  {
    v2 = result;
    v3 = *(isa + 5);
    if (v3)
    {
      APConnectivityHelperRemoveAllRegistrations(v3, v2[5].isa);
    }

    v4 = v2[5].isa;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    carPlayHelperUSB_dispatchEvent(v4, 3, 0);
    result = *(DerivedStorage + 8);
    if (result)
    {
      result = dispatch_semaphore_signal(result);
    }

    *v2[4].isa = 1;
  }

  return result;
}

void carPlayHelperUSB_setInterfaceWatchingEnabled(const void *a1, char a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 16))
  {
    v5 = DerivedStorage;
    CFRetain(a1);
    v6 = *(v5 + 16);
    OUTLINED_FUNCTION_1_2();
    v9 = 3221225472;
    v10 = __carPlayHelperUSB_setInterfaceWatchingEnabled_block_invoke;
    v11 = &__block_descriptor_49_e5_v8__0l;
    v14 = a2;
    v12 = v5;
    v13 = a1;
    dispatch_async(v7, block);
  }
}

void __carPlayHelperUSB_setInterfaceWatchingEnabled_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!*v2)
  {
    v3 = *(a1 + 48);
    if (*(v2 + 48) == v3)
    {
      goto LABEL_8;
    }

    v4 = *(v2 + 40);
    v5 = *(a1 + 40);
    if (v3)
    {
      if (APConnectivityHelperRegisterForEvent(v4, v5, 4))
      {
        goto LABEL_12;
      }
    }

    else if (APConnectivityHelperDeregisterForEvent(v4, v5, 4))
    {
LABEL_12:
      APSLogErrorAt();
      goto LABEL_13;
    }

    *(*(a1 + 32) + 48) = *(a1 + 48);
    goto LABEL_8;
  }

LABEL_13:
  if (gLogCategory_APBrowserCarUSBHelper <= 90 && (gLogCategory_APBrowserCarUSBHelper != -1 || _LogCategory_Initialize()))
  {
    *(a1 + 48);
    v7 = *(a1 + 40);
    LogPrintF();
  }

LABEL_8:
  v6 = *(a1 + 40);

  CFRelease(v6);
}

uint64_t __carPlayHelperUSB_handleConnectivityHelperEvent_block_invoke_cold_2()
{
  if (gLogCategory_APBrowserCarUSBHelper <= 50)
  {
    if (gLogCategory_APBrowserCarUSBHelper != -1)
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

void standardKeepAliveController_timerFiredCheck(uint64_t a1, CMTime *a2, int a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 68))
  {
    v6 = DerivedStorage;
    time = *a2;
    Seconds = CMTimeGetSeconds(&time);
    time = *(v6 + 56);
    if (Seconds - CMTimeGetSeconds(&time) >= 1.0 && gLogCategory_APTransportKeepAliveControllerStandard <= 60 && (gLogCategory_APTransportKeepAliveControllerStandard != -1 || _LogCategory_Initialize()))
    {
      OUTLINED_FUNCTION_3_0();
    }

    if (a3)
    {
      CMTimeMake(&rhs, *(v6 + 36), 1000);
      lhs = *a2;
      CMTimeAdd(&time, &lhs, &rhs);
      *(v6 + 56) = time;
    }
  }
}

uint64_t APTransportKeepAliveControllerStandardCreate_cold_6(_DWORD *a1)
{
  APSLogErrorAt();
  result = APSSignalErrorAt();
  *a1 = result;
  return result;
}

uint64_t standardKeepAliveController_timerFiredCallback_cold_1(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, CMTime *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_1_23(a1, a2, a3, a4, a5, a6, a7, a8, v9, v10, v11, v12, v13, v14);
  OUTLINED_FUNCTION_2_16();
  return OUTLINED_FUNCTION_3_0();
}

uint64_t standardKeepAliveController_timerFiredCallback_cold_2(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, CMTime *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_1_23(a1, a2, a3, a4, a5, a6, a7, a8, v9, v10, v11, v12, v13, v14);
  OUTLINED_FUNCTION_2_16();
  return OUTLINED_FUNCTION_3_0();
}

uint64_t standardKeepAliveController_sendKeepAliveCallback_cold_3(CMTime *a1)
{
  time = *a1;
  CMTimeGetSeconds(&time);
  return OUTLINED_FUNCTION_3_0();
}

void standardKeepAliveController_controllerSuspendedCallback_cold_1(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  HostTimeClock = CMClockGetHostTimeClock();
  CMClockGetTime(&v9, HostTimeClock);
  standardKeepAliveController_timerFiredCheck(a1, &v9, 0);
  v7 = MEMORY[0x277CC0898];
  *(a2 + 56) = *MEMORY[0x277CC0898];
  *(a2 + 72) = *(v7 + 16);
  dispatch_set_context(*(a2 + 24), 0);
  v8 = *(a2 + 24);
  if (v8)
  {
    dispatch_source_cancel(*(a2 + 24));
    dispatch_release(v8);
    *(a2 + 24) = 0;
  }

  if (gLogCategory_APTransportKeepAliveControllerStandard <= 50 && (gLogCategory_APTransportKeepAliveControllerStandard != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  *a3 = 0;
}

uint64_t __APTransportTrafficRegistrarAWDLTrafficRegistrationCreateEx_block_invoke_cold_1(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  return OUTLINED_FUNCTION_9();
}

uint64_t __APTransportTrafficRegistrarInfraTransactionCreate_block_invoke_cold_1(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  return OUTLINED_FUNCTION_9();
}

uint64_t __APTransportTrafficRegistrarGetAWDLChannelSequence_block_invoke_cold_1(uint64_t a1, _DWORD *a2)
{
  if (gLogCategory_APTransportTrafficRegistrar <= 50)
  {
    if (gLogCategory_APTransportTrafficRegistrar != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = OUTLINED_FUNCTION_9();
    }
  }

  *a2 = -6762;
  return result;
}

uint64_t APTransportTrafficRegistrarGetWifiChannel_cold_1(_DWORD *a1)
{
  APSLogErrorAt();
  result = APSSignalErrorAt();
  *a1 = result;
  return result;
}

uint64_t APTNANEndpointSupportsServiceType(void *a1)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([a1 customData])
    {
      v2 = APSBinaryTXTRecordCopyString();
    }

    else
    {
      [a1 textInfo];
      Value = FigCFDictionaryGetValue();
      if (!Value)
      {
        return APSNANServiceTypeIsKindOfType();
      }

      v2 = CFRetain(Value);
      if (!v2)
      {
        return APSNANServiceTypeIsKindOfType();
      }
    }

    APSNANServiceTypeMakeWithTXTString();
    if (v2)
    {
      CFRelease(v2);
    }
  }

  return APSNANServiceTypeIsKindOfType();
}

uint64_t _APCarPlayControlServerHandleMessage(uint64_t a1, void *a2, uint64_t a3)
{
  v13 = 0;
  if (!*(a3 + 88))
  {
    APSLogErrorAt();
    return 503;
  }

  OUTLINED_FUNCTION_2_17();
  if (!HTTPConnectionGetNextURLSegmentEx())
  {
    return v13;
  }

  if (strnicmpx())
  {
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_2_17();
  if (!HTTPConnectionGetNextURLSegmentEx())
  {
    return v13;
  }

  if (strnicmpx())
  {
LABEL_24:
    if (gLogCategory_CarPlayControlServer <= 60 && (gLogCategory_CarPlayControlServer != -1 || _LogCategory_Initialize()))
    {
      v10 = a2[1034];
      v11 = a2[1033];
      LogPrintF();
    }

    v6 = 404;
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_2_17();
  if (!HTTPConnectionGetNextURLSegmentEx())
  {
    return v13;
  }

  v12 = a2[1034] + a2[1033];
  v8 = a2[1027];
  if (HTTPScanFHeaderValue() != 1)
  {
    return 456;
  }

  v13 = (*(a3 + 88))(a3, 0, 0, v12, *(a3 + 96));
  if (v13)
  {
    v6 = 400;
  }

  else
  {
    v6 = 200;
  }

LABEL_11:
  v13 = MEMORY[0x23EEDD8F0](a1, v6, v13, 0, 0, 0);
  if (v13)
  {
    APSLogErrorAt();
  }

  return v13;
}

uint64_t __APCarPlayControlServerAddInterface_block_invoke_cold_2(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  v3 = *(*(*a1 + 32) + 48);
  return LogPrintF();
}

uint64_t APTransportConnectionUDPCreate_cold_2()
{
  OUTLINED_FUNCTION_2();
  APSLogErrorAt();
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_5_12();
  return APSSignalErrorAt();
}

uint64_t APTransportConnectionUDPCreate_cold_3()
{
  OUTLINED_FUNCTION_2();
  APSLogErrorAt();
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_5_12();
  return APSSignalErrorAt();
}

uint64_t APTransportConnectionUDPCreate_cold_4()
{
  OUTLINED_FUNCTION_2();
  APSLogErrorAt();
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_5_12();
  return APSSignalErrorAt();
}

uint64_t APTransportConnectionUDPCreate_cold_5()
{
  OUTLINED_FUNCTION_2();
  APSLogErrorAt();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_1_5();

  return APSSignalErrorAt();
}

uint64_t udpconnection_copyPropertyInternal_cold_1()
{
  OUTLINED_FUNCTION_17();
  APSLogErrorAt();
  OUTLINED_FUNCTION_7_2();

  return APSSignalErrorAt();
}

uint64_t udpconnection_copyPropertyInternal_cold_2()
{
  OUTLINED_FUNCTION_17();
  APSLogErrorAt();
  OUTLINED_FUNCTION_7_2();

  return APSSignalErrorAt();
}

uint64_t udpconnection_setPropertyInternal_cold_3()
{
  OUTLINED_FUNCTION_2();
  APSLogErrorAt();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_1_5();

  return APSSignalErrorAt();
}

uint64_t udpconnection_setPropertyInternal_cold_4()
{
  OUTLINED_FUNCTION_2();
  APSLogErrorAt();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_1_5();

  return APSSignalErrorAt();
}

uint64_t udpconnection_setPropertyInternal_cold_6()
{
  OUTLINED_FUNCTION_2();
  APSLogErrorAt();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_1_5();

  return APSSignalErrorAt();
}

void udpconnection_setPropertyInternal_cold_8()
{
  APSLogErrorAt();
  if (gLogCategory_APTransportConnectionUDP <= 90 && (gLogCategory_APTransportConnectionUDP != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  OUTLINED_FUNCTION_1_1();
}

uint64_t udpconnection_resumeInternal_cold_5()
{
  OUTLINED_FUNCTION_17();
  APSLogErrorAt();
  OUTLINED_FUNCTION_2_12();
  return APSSignalErrorAt();
}

uint64_t udpconnection_resumeInternal_cold_6()
{
  OUTLINED_FUNCTION_17();
  APSLogErrorAt();
  OUTLINED_FUNCTION_2_12();
  return APSSignalErrorAt();
}

uint64_t udpconnection_resumeInternal_cold_7()
{
  OUTLINED_FUNCTION_17();
  APSLogErrorAt();
  OUTLINED_FUNCTION_2_12();
  return APSSignalErrorAt();
}

uint64_t udpconnection_resumeInternal_cold_8()
{
  OUTLINED_FUNCTION_17();
  APSLogErrorAt();
  OUTLINED_FUNCTION_2_12();
  return APSSignalErrorAt();
}

uint64_t udpconnection_resumeInternal_cold_12(uint64_t a1, int a2, _DWORD *a3)
{
  result = APSLogErrorAt();
  if (gLogCategory_APTransportConnectionUDP <= 90)
  {
    if (gLogCategory_APTransportConnectionUDP != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF();
    }
  }

  *a3 = a2;
  return result;
}

uint64_t udpconnection_resumeInternal_cold_15(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -6709;
  return result;
}

uint64_t udpconnection_resumeInternal_cold_16(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -6709;
  return result;
}

uint64_t udpconnection_acquirePackageInternal_cold_1()
{
  OUTLINED_FUNCTION_17();
  APSLogErrorAt();
  OUTLINED_FUNCTION_7_2();

  return APSSignalErrorAt();
}

uint64_t udpconnection_acquirePackageInternal_cold_3(uint64_t *a1, uint64_t **a2)
{
  v3 = *a1;
  v4 = **a2;
  return OUTLINED_FUNCTION_7_0();
}

uint64_t udpconnection_acquirePackageWithMessageSizeInternal_cold_1()
{
  OUTLINED_FUNCTION_17();
  APSLogErrorAt();
  OUTLINED_FUNCTION_7_2();

  return APSSignalErrorAt();
}

uint64_t udpconnection_acquirePackageWithMessageSizeInternal_cold_3(uint64_t *a1, uint64_t **a2, uint64_t *a3)
{
  v5 = **a2;
  v6 = *a3;
  v4 = *a1;
  return OUTLINED_FUNCTION_7_0();
}

uint64_t udpconnection_sendPackageInternal_cold_1()
{
  OUTLINED_FUNCTION_17();
  APSLogErrorAt();
  OUTLINED_FUNCTION_7_2();

  return APSSignalErrorAt();
}

uint64_t udpconnection_sendPackageInternal_cold_3()
{
  OUTLINED_FUNCTION_17();
  APSLogErrorAt();
  OUTLINED_FUNCTION_2_12();

  return APSSignalErrorAt();
}

uint64_t apapPackage_CreateBBufRepresentation_cold_1()
{
  if (gLogCategory_APTransportPackageAPAP <= 90)
  {
    if (gLogCategory_APTransportPackageAPAP != -1)
    {
      return OUTLINED_FUNCTION_15();
    }

    result = OUTLINED_FUNCTION_9_0();
    if (result)
    {
      return OUTLINED_FUNCTION_15();
    }
  }

  return result;
}

uint64_t apapPackage_CreateBBufRepresentation_cold_2()
{
  if (gLogCategory_APTransportPackageAPAP <= 90)
  {
    if (gLogCategory_APTransportPackageAPAP != -1)
    {
      return OUTLINED_FUNCTION_15();
    }

    result = OUTLINED_FUNCTION_9_0();
    if (result)
    {
      return OUTLINED_FUNCTION_15();
    }
  }

  return result;
}

void apapPackage_CreateBBufRepresentation_cold_4(uint64_t a1, CFTypeRef *a2)
{
  APSLogErrorAt();
  if (*a2)
  {
    CFRelease(*a2);
    *a2 = 0;
  }
}

uint64_t apapPackage_CreateBBufRepresentation_cold_5()
{
  if (gLogCategory_APTransportPackageAPAP <= 90)
  {
    if (gLogCategory_APTransportPackageAPAP != -1)
    {
      return OUTLINED_FUNCTION_15();
    }

    result = OUTLINED_FUNCTION_9_0();
    if (result)
    {
      return OUTLINED_FUNCTION_15();
    }
  }

  return result;
}

uint64_t apapPackage_CreateBBufRepresentation_cold_6(uint64_t result)
{
  if (gLogCategory_APTransportPackageAPAP <= 90)
  {
    v1 = result;
    if (gLogCategory_APTransportPackageAPAP != -1 || (result = OUTLINED_FUNCTION_9_0(), result))
    {
      v2 = *(v1 + 4);
      return OUTLINED_FUNCTION_15();
    }
  }

  return result;
}

void httppackage_appendCustomHeaderField(const void *a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!CFEqual(a1, *MEMORY[0x277CEA380]) && !CFEqual(a1, *MEMORY[0x277CEA360]))
  {
    if (a2 && (v5 = CFGetTypeID(a2), v5 == CFStringGetTypeID()))
    {
      CFStringCopyUTF8CString();
      CFStringCopyUTF8CString();
      v6 = *(DerivedStorage + 24);
      HTTPHeader_SetField();
    }

    else
    {
      APSLogErrorAt();
    }
  }
}

void httppackage_CopyMessageData_cold_1(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  APSLogErrorAt();
  if (*a3)
  {
    CFRelease(*a3);
    *a3 = 0;
  }
}

uint64_t carPlayHelperSession_invalidate(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(DerivedStorage + 16);
  if (v3)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __carPlayHelperSession_invalidate_block_invoke;
    block[3] = &__block_descriptor_56_e5_v8__0l;
    block[4] = DerivedStorage;
    block[5] = a1;
    block[6] = a1;
    dispatch_sync(v3, block);
  }

  return 0;
}

void carPlayHelperSession_finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage[2])
  {
    OUTLINED_FUNCTION_1_2();
    v25 = 3221225472;
    v26 = __carPlayHelperSession_finalize_block_invoke;
    v27 = &__block_descriptor_40_e5_v8__0l;
    v28 = DerivedStorage;
    dispatch_sync(v3, block);
  }

  carPlayHelperSession_invalidate(a1);
  v4 = DerivedStorage[1];
  if (v4)
  {
    dispatch_semaphore_wait(v4, 0xFFFFFFFFFFFFFFFFLL);
    v5 = DerivedStorage[1];
    if (v5)
    {
      dispatch_release(v5);
      DerivedStorage[1] = 0;
    }
  }

  v6 = DerivedStorage[2];
  if (v6)
  {
    dispatch_sync(v6, &__block_literal_global_130);
    v7 = DerivedStorage[2];
    if (v7)
    {
      dispatch_release(v7);
      DerivedStorage[2] = 0;
    }
  }

  v8 = DerivedStorage[3];
  if (v8)
  {
    dispatch_sync(v8, &__block_literal_global_132);
    v9 = DerivedStorage[3];
    if (v9)
    {
      dispatch_release(v9);
      DerivedStorage[3] = 0;
    }
  }

  v10 = DerivedStorage[33];
  if (v10)
  {
    CFRelease(v10);
    DerivedStorage[33] = 0;
  }

  v11 = DerivedStorage[4];
  if (v11)
  {
    CFRelease(v11);
    DerivedStorage[4] = 0;
  }

  v12 = DerivedStorage[5];
  if (v12)
  {
    CFRelease(v12);
    DerivedStorage[5] = 0;
  }

  v13 = DerivedStorage[28];
  if (v13)
  {
    CFRelease(v13);
    DerivedStorage[28] = 0;
  }

  v14 = DerivedStorage[10];
  if (v14)
  {
    CFRelease(v14);
    DerivedStorage[10] = 0;
  }

  v15 = DerivedStorage[20];
  if (v15)
  {
    CFRelease(v15);
    DerivedStorage[20] = 0;
  }

  v16 = DerivedStorage[21];
  if (v16)
  {
    CFRelease(v16);
    DerivedStorage[21] = 0;
  }

  v17 = DerivedStorage[16];
  if (v17)
  {
    CFRelease(v17);
    DerivedStorage[16] = 0;
  }

  v18 = DerivedStorage[17];
  if (v18)
  {
    CFRelease(v18);
    DerivedStorage[17] = 0;
  }

  v19 = DerivedStorage[18];
  if (v19)
  {
    CFRelease(v19);
    DerivedStorage[18] = 0;
  }

  v20 = DerivedStorage[31];
  if (v20)
  {

    DerivedStorage[31] = 0;
  }

  v21 = DerivedStorage[3];
  if (v21)
  {
    dispatch_release(v21);
    DerivedStorage[3] = 0;
  }

  v22 = DerivedStorage[2];
  if (v22)
  {
    dispatch_release(v22);
    DerivedStorage[2] = 0;
  }

  v23 = DerivedStorage[1];
  if (v23)
  {
    dispatch_release(v23);
    DerivedStorage[1] = 0;
  }
}

intptr_t __carPlayHelperSession_invalidate_block_invoke(intptr_t result)
{
  if (!**(result + 32))
  {
    v1 = result;
    if (_MergedGlobals_18 != -1)
    {
      dispatch_once(&_MergedGlobals_18, &__block_literal_global_176);
    }

    [qword_281309C60 removeCarPlayHelper:v1[5]];
    v2 = *(v1[4] + 40);
    if (v2)
    {
      APConnectivityHelperRemoveAllRegistrations(v2, v1[6]);
    }

    v3 = v1[6];
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    carPlayHelperSession_dispatchEvent(v3, 3, 0);
    result = *(DerivedStorage + 8);
    if (result)
    {
      result = dispatch_semaphore_signal(result);
    }

    *v1[4] = 1;
  }

  return result;
}

void carPlayHelperSession_setInterfaceWatchingEnabled(const void *a1, char a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 16))
  {
    v5 = DerivedStorage;
    CFRetain(a1);
    v6 = *(v5 + 16);
    OUTLINED_FUNCTION_1_2();
    v9 = 3221225472;
    v10 = __carPlayHelperSession_setInterfaceWatchingEnabled_block_invoke;
    v11 = &__block_descriptor_49_e5_v8__0l;
    v12 = v5;
    v13 = a1;
    v14 = a2;
    dispatch_async(v7, block);
  }
}

void __carPlayHelperSession_setInterfaceWatchingEnabled_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*v2)
  {
    goto LABEL_17;
  }

  if (gLogCategory_APBrowserCarSessionHelper <= 50)
  {
    if (gLogCategory_APBrowserCarSessionHelper != -1)
    {
LABEL_4:
      v3 = *(a1 + 40);
      v4 = v2[177];
      v5 = v2[64];
      v6 = v2[112];
      *(a1 + 48);
      OUTLINED_FUNCTION_9();
      goto LABEL_6;
    }

    if (OUTLINED_FUNCTION_8())
    {
      v2 = *(a1 + 32);
      goto LABEL_4;
    }
  }

LABEL_6:
  v7 = *(a1 + 32);
  if (*(a1 + 48))
  {
    if (*(v7 + 64))
    {
      v8 = OUTLINED_FUNCTION_7_7(v7);
      APConnectivityHelperRegisterForEvent(v8, v9, 4);
      v7 = *(a1 + 32);
    }

    if (*(v7 + 112))
    {
      v10 = OUTLINED_FUNCTION_7_7(v7);
      APConnectivityHelperRegisterForEvent(v10, v11, 3);
      v12 = OUTLINED_FUNCTION_12_3();
      APConnectivityHelperRegisterForEvent(v12, v13, 9);
      v14 = OUTLINED_FUNCTION_12_3();
      APConnectivityHelperRegisterForEvent(v14, v15, 10);
      v7 = *(a1 + 32);
    }

    v16 = OUTLINED_FUNCTION_7_7(v7);
    APConnectivityHelperRegisterForEvent(v16, v17, 6);
  }

  else
  {
    v18 = OUTLINED_FUNCTION_7_7(v7);
    APConnectivityHelperDeregisterForEvent(v18, v19, 6);
    v20 = *(a1 + 32);
    if (*(v20 + 64))
    {
      v21 = OUTLINED_FUNCTION_7_7(v20);
      APConnectivityHelperDeregisterForEvent(v21, v22, 4);
      v23 = *(a1 + 40);
      carPlayHelperSession_usbInterfaceListeningStopped();
      v20 = *(a1 + 32);
    }

    if (*(v20 + 112))
    {
      v24 = OUTLINED_FUNCTION_7_7(v20);
      APConnectivityHelperDeregisterForEvent(v24, v25, 3);
      v26 = OUTLINED_FUNCTION_12_3();
      APConnectivityHelperDeregisterForEvent(v26, v27, 9);
      v28 = OUTLINED_FUNCTION_12_3();
      APConnectivityHelperDeregisterForEvent(v28, v29, 10);
      carPlayHelperSession_wifiNetworkListeningStopped(*(a1 + 40));
    }

    carPlayHelperSession_dispatchEvent(*(a1 + 40), 2, 0);
  }

LABEL_17:
  v30 = *(a1 + 40);
  *(*(a1 + 32) + 48) = *(a1 + 48);

  CFRelease(v30);
}

uint64_t carPlayHelperSession_wifiNetworkChanged(const void *a1, uint64_t a2)
{
  updated = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    return updated;
  }

  v5 = DerivedStorage;
  if (a2)
  {
    CFStringGetTypeID();
    CFDictionaryGetTypedValue();
    CFStringGetTypeID();
    OUTLINED_FUNCTION_13_5();
    CFStringGetTypeID();
    OUTLINED_FUNCTION_13_5();
    FigCFDictionaryGetBooleanIfPresent();
    v6 = CFDictionaryGetInt64() == 0;
    updated = 0;
  }

  else
  {
    v6 = 1;
  }

  OUTLINED_FUNCTION_11_6();
  if (v9 ^ v10 | v8 && (v7 != -1 || OUTLINED_FUNCTION_8()))
  {
    OUTLINED_FUNCTION_4_12();
    OUTLINED_FUNCTION_9();
  }

  if (v6)
  {
    v11 = *(v5 + 16);
    if (!v11)
    {
      return updated;
    }

    CFRelease(v11);
    *(v5 + 16) = 0;
    v12 = *(v5 + 17);
    if (v12)
    {
      CFRelease(v12);
      *(v5 + 17) = 0;
    }

    *(v5 + 15) = CFAbsoluteTimeGetCurrent();
    v13 = *(v5 + 23);
    if (!v13 || *(v5 + 52) != 2)
    {
      goto LABEL_36;
    }

    *(v5 + 23) = 0;
    v14 = *(v5 + 24);
    if (v14)
    {
      CFRelease(v14);
      *(v5 + 24) = 0;
    }

    *(v5 + 25) = 0;
    *(v5 + 52) = 0;
    OUTLINED_FUNCTION_11_6();
    if (!(v9 ^ v10 | v8) || v15 == -1 && !OUTLINED_FUNCTION_8())
    {
      goto LABEL_36;
    }

    v16 = v5[64];
    v8 = v5[112] == 0;
    if (v5[177])
    {
      if (v5[64])
      {
        goto LABEL_33;
      }
    }

    else if (v5[64])
    {
LABEL_33:
      v5[112];
LABEL_35:
      OUTLINED_FUNCTION_9();
LABEL_36:
      APConnectivityHelperDeregisterActivity(*(v5 + 5), a1, 0);
      updated = carPlayHelperSession_updateNetworkAndSessionState(a1);
      if (updated)
      {
        APSLogErrorAt();
      }

      return updated;
    }

    v5[112];
    goto LABEL_35;
  }

  OUTLINED_FUNCTION_11_6();
  if (v9 ^ v10 | v8 && (v17 != -1 || OUTLINED_FUNCTION_8()))
  {
    OUTLINED_FUNCTION_4_12();
    OUTLINED_FUNCTION_9();
  }

  return updated;
}

uint64_t APCarPlayHelperSessionCreate_cold_6(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -12780;
  return result;
}

uint64_t APCarPlayHelperSessionCreate_cold_7(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -72200;
  return result;
}

uint64_t APCarPlayHelperSessionCreate_cold_8(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -72200;
  return result;
}

uint64_t APCarPlayHelperSessionCreate_cold_9(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -6728;
  return result;
}

uint64_t APCarPlayHelperSessionCreate_cold_10(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -12780;
  return result;
}

uint64_t APCarPlayHelperSessionCreate_cold_11(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -12786;
  return result;
}

uint64_t APCarPlayHelperSessionCreate_cold_12(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -12786;
  return result;
}

uint64_t APCarPlayHelperSessionCreate_cold_13(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -12786;
  return result;
}

uint64_t carPlayHelperSession_connectivityHelperCheckIfWiFiUUIDChanged_cold_1(_BYTE *a1, uint64_t *a2)
{
  a1[112];
  a1[64];
  a1[112];
  a1[112];
  a1[64];
  a1[177];
  v3 = *a2;
  return OUTLINED_FUNCTION_9();
}

uint64_t carPlayHelperSession_connectivityHelperCheckIfWiFiUUIDChanged_cold_2(_BYTE *a1, uint64_t *a2)
{
  a1[112];
  a1[64];
  a1[112];
  a1[112];
  a1[64];
  a1[177];
  v3 = *a2;
  return OUTLINED_FUNCTION_9();
}

uint64_t carPlayHelperSession_dispatchEvent_cold_1(unsigned __int8 *a1)
{
  OUTLINED_FUNCTION_2_18(a1);
  OUTLINED_FUNCTION_6_11();
  return LogPrintF();
}

uint64_t carPlayHelperSession_usbInterfaceListeningStopped_cold_1(unsigned __int8 *a1)
{
  OUTLINED_FUNCTION_2_18(a1);
  OUTLINED_FUNCTION_6_11();
  return OUTLINED_FUNCTION_7_0();
}

uint64_t carPlayHelperSession_wifiNetworkListeningStopped_cold_1(unsigned __int8 *a1)
{
  OUTLINED_FUNCTION_2_18(a1);
  OUTLINED_FUNCTION_6_11();
  return OUTLINED_FUNCTION_7_0();
}

uint64_t __carPlayHelperSession_handleConnectivityHelperEvent_block_invoke_cold_1(uint64_t a1)
{
  *(*(*(a1 + 32) + 8) + 24) = carPlayHelperSession_wifiNetworkChanged(*(a1 + 48), *(a1 + 56));
  result = *(*(*(a1 + 32) + 8) + 24);
  if (result)
  {

    return APSLogErrorAt();
  }

  return result;
}

void __carPlayHelperSession_handleConnectivityHelperEvent_block_invoke_cold_2()
{
  if (gLogCategory_APBrowserCarSessionHelper <= 50)
  {
    OUTLINED_FUNCTION_10_8();
    if (!v1 || OUTLINED_FUNCTION_8())
    {
      v2 = v0[177];
      v3 = v0[64];
      v4 = v0[112];
      OUTLINED_FUNCTION_6_11();
      OUTLINED_FUNCTION_9();
    }
  }
}

uint64_t __carPlayHelperSession_handleConnectivityHelperEvent_block_invoke_cold_4(unsigned __int8 *a1)
{
  OUTLINED_FUNCTION_2_18(a1);
  OUTLINED_FUNCTION_6_11();
  return OUTLINED_FUNCTION_9();
}

uint64_t __carPlayHelperSession_handleConnectivityHelperEvent_block_invoke_cold_5(unsigned __int8 *a1)
{
  OUTLINED_FUNCTION_2_18(a1);
  OUTLINED_FUNCTION_6_11();
  return OUTLINED_FUNCTION_9();
}

void __carPlayHelperSession_handleConnectivityHelperEvent_block_invoke_cold_11()
{
  if (gLogCategory_APBrowserCarSessionHelper <= 50)
  {
    OUTLINED_FUNCTION_10_8();
    if (!v1 || OUTLINED_FUNCTION_8())
    {
      v2 = v0[177];
      v3 = v0[64];
      v4 = v0[112];
      OUTLINED_FUNCTION_6_11();
      OUTLINED_FUNCTION_9();
    }
  }
}

uint64_t __carPlayHelperSession_handleConnectivityHelperEvent_block_invoke_cold_12(unsigned __int8 *a1)
{
  OUTLINED_FUNCTION_2_18(a1);
  OUTLINED_FUNCTION_6_11();
  return OUTLINED_FUNCTION_9();
}

uint64_t __carPlayHelperSession_handleConnectivityHelperEvent_block_invoke_cold_14(unsigned __int8 *a1)
{
  OUTLINED_FUNCTION_2_18(a1);
  OUTLINED_FUNCTION_6_11();
  v2 = *v1;
  if (!v3)
  {
    switch(*v1)
    {
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
      case 6:
      case 7:
      case 8:
        return OUTLINED_FUNCTION_9();
      default:
        JUMPOUT(0);
    }
  }

  return OUTLINED_FUNCTION_9();
}

uint64_t __carPlayHelperSession_handleConnectivityHelperEvent_block_invoke_cold_20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 48);
  v4 = *(a3 + 177);
  v5 = *(a3 + 112);
  OUTLINED_FUNCTION_6_11();
  *(v6 + 64);
  *(v6 + 64);
  v9 = *v7;
  return OUTLINED_FUNCTION_7_0();
}

void __carPlayHelperSession_handleConnectivityHelperEvent_block_invoke_cold_21(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    CFRelease(v3);
  }
}

void __getCARSessionRequestAgentClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"Class getCARSessionRequestAgentClass(void)_block_invoke") description:{@"APCarPlayHelperSession.m", 63, @"Unable to find class %s", "CARSessionRequestAgent"}];
  __break(1u);
}

void __getCARSessionRequestAgentClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"void *CarKitLibrary(void)") description:{@"APCarPlayHelperSession.m", 59, @"%s", *a1}];
  __break(1u);
}

void __APTransportStreamEnableReverseControl_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APTransportStream <= 30 && (gLogCategory_APTransportStream != -1 || OUTLINED_FUNCTION_8_0()))
  {
    OUTLINED_FUNCTION_7_0();
  }

  if (*(DerivedStorage + 72))
  {
    APSLogErrorAt();
    v24 = -16617;
    goto LABEL_28;
  }

  v3 = 48;
  if (!*(DerivedStorage + 24))
  {
    v3 = 56;
  }

  v4 = *(DerivedStorage + v3);
  if (*(v4 + 9))
  {
    v24 = 0;
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_11_7();
  if (v6)
  {
    v5 = 48;
  }

  v7 = *(*(DerivedStorage + v5) + 40);
  if (v7)
  {
    CMBaseObject = APTransportConnectionGetCMBaseObject(*(v4 + 24));
    v9 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (!v9)
    {
      v24 = -12782;
      goto LABEL_27;
    }

    v10 = v9(CMBaseObject, @"RemoteNetworkIPAddress", v7);
    if (v10)
    {
      v24 = v10;
      goto LABEL_27;
    }
  }

  v11 = *(DerivedStorage + 120);
  if (v11)
  {
    v12 = *(DerivedStorage + 128);
    if (v12)
    {
      v13 = *(v4 + 24);
      v14 = *(*(CMBaseObjectGetVTable() + 16) + 80);
      if (!v14)
      {
        v24 = -12782;
        goto LABEL_27;
      }

      v15 = v14(v13, v11, v12);
      if (v15)
      {
        v24 = v15;
        goto LABEL_27;
      }
    }
  }

  v17 = *(v4 + 24);
  v16 = *(v4 + 32);
  v18 = *(DerivedStorage + 184);
  v19 = *(DerivedStorage + 96);
  v20 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v20)
  {
    v24 = -12782;
    goto LABEL_27;
  }

  v21 = v20(v17, v1, v16, v18, v19);
  if (v21)
  {
    v24 = v21;
    goto LABEL_27;
  }

  v22 = *(v4 + 24);
  v23 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v23)
  {
    v24 = -12782;
    goto LABEL_27;
  }

  v24 = v23(v22);
  if (v24)
  {
LABEL_27:
    APSLogErrorAt();
    goto LABEL_28;
  }

  *(v4 + 9) = 1;
  stream_postCachedConnectionEvent(v1, v4);
LABEL_28:
  OUTLINED_FUNCTION_8_1();
  *(v25 + 24) = v24;
}

uint64_t APTransportStreamCopyConvertedLinkLocalIPv6Addresses(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  *buffer = 0;
  v16 = 0;
  v18 = 0;
  v17 = 0;
  cf = 0;
  theData = 0;
  if (!a2)
  {
    return v3;
  }

  v4 = OUTLINED_FUNCTION_5_2();
  if (CFArrayGetCount(v4) < 1)
  {
    return 0;
  }

  if (!v2 || (v5 = CFGetTypeID(v2), v5 != FigTransportStreamGetTypeID()))
  {
    if (gLogCategory_APTransportStream <= 50 && (gLogCategory_APTransportStream != -1 || OUTLINED_FUNCTION_8()))
    {
      OUTLINED_FUNCTION_9();
    }

    v3 = 0;
    goto LABEL_16;
  }

  v6 = *MEMORY[0x277CBECE8];
  CMBaseObject = FigTransportStreamGetCMBaseObject();
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v8)
  {
    v8(CMBaseObject, @"LocalNetworkIPAddress", v6, &theData);
  }

  v9 = FigTransportStreamGetCMBaseObject();
  v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v10)
  {
    v10(v9, @"LocalInterfaceName", v6, &cf);
    v11 = cf;
  }

  else
  {
    v11 = 0;
  }

  if (!(theData | v11))
  {
    return 0;
  }

  if (theData)
  {
    v19.location = 0;
    v19.length = 28;
    CFDataGetBytes(theData, v19, buffer);
  }

  v3 = APSNetworkCopyConvertedLinkLocalIPv6Addresses();
  if (theData)
  {
    CFRelease(theData);
  }

LABEL_16:
  if (cf)
  {
    CFRelease(cf);
  }

  return v3;
}

uint64_t stream_RelinquishMessageBBuf(uint64_t a1, uint64_t a2)
{
  CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v4 = OUTLINED_FUNCTION_5_2();
    CFRetain(v4);
    v5 = *(v2 + 64);
    APSDispatchAsyncFHelper();
  }

  return 0;
}

uint64_t stream_SendBatch(const void *a1, uint64_t a2, const void *a3)
{
  CMBaseObjectGetDerivedStorage();
  if (a1 && a3)
  {
    v6 = OUTLINED_FUNCTION_5_2();
    if (CFArrayGetCount(v6) >= 1)
    {
      CFRetain(a1);
      CFRetain(a3);
      v7 = *(v3 + 64);
      APSDispatchAsyncFHelper();
    }

    return 0;
  }

  else
  {
    APSLogErrorAt();
    return 4294950686;
  }
}

uint64_t stream_createConnectionAddressFromEventData(int a1, CFDataRef theData)
{
  v8 = 0;
  *buffer = 0;
  v5 = 0;
  v7 = 0;
  v6 = 0;
  if (!theData)
  {
    return 0;
  }

  if (CFDataGetLength(theData) != 28)
  {
    if (gLogCategory_APTransportStream > 60 || gLogCategory_APTransportStream == -1 && !_LogCategory_Initialize())
    {
      return 0;
    }

LABEL_10:
    OUTLINED_FUNCTION_3_0();
    return 0;
  }

  v9.location = 0;
  v9.length = 28;
  CFDataGetBytes(theData, v9, buffer);
  result = CFStringCreateF();
  if (!result)
  {
    if (gLogCategory_APTransportStream > 60 || gLogCategory_APTransportStream == -1 && !_LogCategory_Initialize())
    {
      return 0;
    }

    goto LABEL_10;
  }

  return result;
}

uint64_t stream_CopyProperty_cold_3(_DWORD *a1)
{
  APSLogErrorAt();
  result = APSSignalErrorAt();
  *a1 = result;
  return result;
}

uint64_t stream_DumpHierarchy_cold_1_0()
{
  OUTLINED_FUNCTION_12_4();
  APSLogErrorAt();
  OUTLINED_FUNCTION_12_4();

  return APSLogErrorAt();
}

uint64_t stream_sendBatchInternal_cold_2(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  return LogPrintF();
}

uint64_t stream_sendBatchInternal_cold_4(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  return LogPrintF();
}

uint64_t stream_recordConnectionEvent_cold_2()
{
  if (gLogCategory_APTransportStream <= 60)
  {
    if (gLogCategory_APTransportStream != -1)
    {
      return OUTLINED_FUNCTION_3_0();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return OUTLINED_FUNCTION_3_0();
    }
  }

  return result;
}

uint64_t APTTrafficMetricsMessageReadStarted(uint64_t result)
{
  if (result)
  {
    OUTLINED_FUNCTION_6_12();
    mach_absolute_time();
    v2 = *(v1 + 56);
    APSAtomicMessageQueueSendMessage();
    v3 = *(v1 + 64);
    return APSRealTimeSignalRaise();
  }

  return result;
}

uint64_t APTTrafficMetricsMessageReadFinished(uint64_t result)
{
  if (result)
  {
    OUTLINED_FUNCTION_6_12();
    mach_absolute_time();
    OUTLINED_FUNCTION_3_11();
    v2 = *(v1 + 64);
    return APSRealTimeSignalRaise();
  }

  return result;
}

uint64_t APTTrafficMetricsMessageProcessed(uint64_t result)
{
  if (result)
  {
    OUTLINED_FUNCTION_6_12();
    mach_absolute_time();
    OUTLINED_FUNCTION_0_10();
    v2 = *(v1 + 64);
    return APSRealTimeSignalRaise();
  }

  return result;
}

void datagramPackage_SetMessageData(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 8);
  if (v4 != a2)
  {
    *(DerivedStorage + 8) = a2;
    if (a2)
    {
      CFRetain(a2);
    }

    if (v4)
    {
      CFRelease(v4);
    }

    datagramPackage_updateMessageDataArrivalTicks();
  }
}

void datagramPackage_SetArrivalTicks(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 16) != a2)
  {
    *(DerivedStorage + 16) = a2;

    datagramPackage_updateMessageDataArrivalTicks();
  }
}

void datagramPackage_updateMessageDataArrivalTicks()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 8);
  if (v1)
  {
    if (*(DerivedStorage + 16))
    {
      v2 = *MEMORY[0x277CBECE8];
      UInt64 = FigCFNumberCreateUInt64();
      CMSetAttachment(*(DerivedStorage + 8), *MEMORY[0x277CEA348], UInt64, 0);
      if (UInt64)
      {

        CFRelease(UInt64);
      }
    }

    else
    {
      v4 = *MEMORY[0x277CEA348];

      CMRemoveAttachment(v1, v4);
    }
  }
}

uint64_t browser_invalidateNoQueueCheck(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 245))
  {
    return 4294960573;
  }

  v3 = DerivedStorage;
  browser_setModeInternal(a1, 0);
  v4 = *(v3 + 96);
  if (v4)
  {
    APBrowserBTLEManagerInvalidate(v4);
  }

  if (*(v3 + 104))
  {
    CMBaseObject = APBrowserDeviceQueryManagerGetCMBaseObject();
    if (CMBaseObject)
    {
      v6 = CMBaseObject;
      VTable = CMBaseObjectGetVTable();
      v8 = *(*(VTable + 8) + 24);
      if (v8)
      {
        v9 = *(VTable + 8) + 24;
        v8(v6);
      }
    }
  }

  v10 = *(v3 + 184);
  if (v10)
  {
    APConnectivityHelperRemoveAllRegistrations(v10, a1);
  }

  v11 = *(v3 + 144);
  if (v11)
  {
    APBrowserRapportManagerInvalidate(v11);
  }

  v12 = *(v3 + 88);
  if (v12)
  {
    APBonjourBrowserInvalidate(v12);
  }

  [*(v3 + 224) stopBrowsing];
  browser_stopNI();
  browser_ensureDetailedForeverTimerStopped();
  v13 = browser_dispatchEvent(a1, 8, 0);
  *(v3 + 248) = 0;
  *(v3 + 256) = 0;
  if (*(v3 + 56))
  {
    FigInstallSysdiagnoseBlock();
  }

  *(v3 + 245) = 1;
  return v13;
}

uint64_t browser_tickleDetailedMode()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 245))
  {
    APSLogErrorAt();
    return 4294960573;
  }

  else if (*(DerivedStorage + 24) == 3)
  {
    if (*(DerivedStorage + 130) && *(DerivedStorage + 129) && *(DerivedStorage + 198))
    {
      v1 = APBonjourBrowserTickleDetailedMode(*(DerivedStorage + 88));
      if (v1)
      {
        APSLogErrorAt();
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    APSLogErrorAt();
    return 4294960587;
  }

  return v1;
}

uint64_t browser_invalidate(void *a1)
{
  CMBaseObjectGetDerivedStorage();
  v2 = browser_invalidateNoQueueCheck(a1);
  if (v2)
  {
    APSLogErrorAt();
  }

  return v2;
}

uint64_t browser_getMode(uint64_t *a1)
{
  v2 = *a1;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 245))
  {
    return 4294960573;
  }

  v4 = DerivedStorage;
  result = 0;
  *a1[1] = *(v4 + 24);
  return result;
}

void __browser_updateDetailedDiscoveryThresholdTimer_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_4_14(DerivedStorage);
  if (v3 <= 50)
  {
    if (v3 != -1)
    {
LABEL_3:
      OUTLINED_FUNCTION_9();
      goto LABEL_5;
    }

    if (OUTLINED_FUNCTION_8())
    {
      v9 = *DerivedStorage;
      goto LABEL_3;
    }
  }

LABEL_5:
  v4 = CFStringCreateF();
  if (v4)
  {
    v5 = v4;
    v6 = CFStringCreateF();
    if (v6)
    {
      v7 = v6;
      v8 = *MEMORY[0x277CEA2F8];
      APSTapToRadarInvoke();
      CFRelease(v5);
      v5 = v7;
    }

    CFRelease(v5);
  }
}

void __browser_ensureDetailedForeverTimerStarted_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_4_14(DerivedStorage);
  if (v3 <= 30)
  {
    if (v3 != -1)
    {
LABEL_3:
      OUTLINED_FUNCTION_1();
      LogPrintF();
      goto LABEL_5;
    }

    if (OUTLINED_FUNCTION_8_0())
    {
      v10 = *DerivedStorage;
      goto LABEL_3;
    }
  }

LABEL_5:
  v4 = CMBaseObjectGetDerivedStorage();
  if (APSRTCReportingAgentCreate())
  {
    APSLogErrorAt();
    Mutable = 0;
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      CFDictionarySetInt64();
      CFDictionarySetValue(Mutable, @"sessionType", @"Discovery");
      APSRTCReportingAgentSendEvent();
      OUTLINED_FUNCTION_10_10(*v4);
      if (v8 ^ v9 | v7)
      {
        if (v6 == -1)
        {
          if (!OUTLINED_FUNCTION_8_0())
          {
            goto LABEL_12;
          }

          v11 = *v4;
        }

        OUTLINED_FUNCTION_1();
        LogPrintF();
      }
    }
  }

LABEL_12:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  browser_ensureDetailedForeverTimerStopped();
}

void __browser_startOrExtendDiscoverySessionThresholdTimer_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  mach_absolute_time();
  CFAbsoluteTimeGetCurrent();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(DerivedStorage + 24);
  OUTLINED_FUNCTION_4_14(DerivedStorage);
  if (v4 <= 50)
  {
    if (v4 != -1)
    {
LABEL_3:
      OUTLINED_FUNCTION_9();
      goto LABEL_5;
    }

    if (OUTLINED_FUNCTION_8())
    {
      v6 = *DerivedStorage;
      goto LABEL_3;
    }
  }

LABEL_5:
  if (v3)
  {
    browser_batchAndSendDiscoveredDeviceRTCMetrics();
    v5 = *(DerivedStorage + 384);
    APSEventRecorderRecordEventWithFlagsAtTime();

    browser_ensureDiscoverySessionThresholdTimerStopped();
  }
}

uint64_t browser_startWiFiPowerChangedListener(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 196))
  {
    return 0;
  }

  v3 = DerivedStorage;
  if (!*(DerivedStorage + 192))
  {
    APSLogErrorAt();
    return 4294960587;
  }

  OUTLINED_FUNCTION_2_21();
  if (v6 ^ v7 | v5)
  {
    if (v4 == -1)
    {
      if (!OUTLINED_FUNCTION_7())
      {
        goto LABEL_8;
      }

      v12 = *v3;
    }

    OUTLINED_FUNCTION_11();
  }

LABEL_8:
  v8 = APConnectivityHelperRegisterForEvent(*(v3 + 184), a1, 2);
  if (v8)
  {
    v10 = v8;
    APSLogErrorAt();
    return v10;
  }

  *(v3 + 196) = 1;
  APConnectivityHelperQueryWiFiPower(*(v3 + 184), v3 + 198);
  OUTLINED_FUNCTION_2_21();
  if (!(v6 ^ v7 | v5))
  {
    return 0;
  }

  if (v9 == -1)
  {
    if (!OUTLINED_FUNCTION_7())
    {
      return 0;
    }

    v13 = *v3;
  }

  *(v3 + 198);
  OUTLINED_FUNCTION_11();
  return 0;
}

void __browser_flushAllBTLEDevices_block_invoke(uint64_t a1, int a2, CFDictionaryRef theDict)
{
  cf = 0;
  v8 = 0;
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"lastInfo");
    if (Value)
    {
      if (browser_createBonjourInfoForBTLEDevice(Value, 1, &v8, &cf))
      {
        APSLogErrorAt();
        v5 = v8;
      }

      else
      {
        v5 = v8;
        if (browser_removeService(*(a1 + 32), @"AirPlay", v8) || browser_removeService(*(a1 + 32), @"RAOP", cf))
        {
          APSLogErrorAt();
        }
      }

      if (v5)
      {
        CFRelease(v5);
      }

      v6 = cf;
      if (cf)
      {

        CFRelease(v6);
      }
    }
  }
}

uint64_t browser_handleBonjourRemove(const void *a1, __CFString *a2, const __CFDictionary *a3)
{
  CMBaseObjectGetDerivedStorage();
  v6 = browser_removeService(a1, a2, a3);
  if (v6)
  {
    APSLogErrorAt();
  }

  return v6;
}

uint64_t browser_setEventHandler(uint64_t *a1)
{
  v2 = *a1;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 245))
  {
    return 4294960573;
  }

  v4 = DerivedStorage;
  if (*(DerivedStorage + 24))
  {
    APSLogErrorAt();
    return 4294960587;
  }

  else
  {
    result = 0;
    *(v4 + 248) = *(a1 + 1);
  }

  return result;
}

uint64_t browser_startTrackingDevice(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_18_1(a1);
  if (*(v4 + 245))
  {
    return 4294960573;
  }

  if (!v1)
  {
    APSLogErrorAt();
    return 4294960591;
  }

  v5 = v4;
  if (*(v4 + 24) - 4 <= 0xFFFFFFFD)
  {
    APSLogErrorAt();
    return 4294960587;
  }

  v6 = CFGetAllocator(v2);
  v7 = CFNumberCreate(v6, kCFNumberSInt64Type, valuePtr);
  if (!v7)
  {
    APSLogErrorAt();
    return 4294960568;
  }

  v8 = v7;
  v9 = OUTLINED_FUNCTION_14_4();
  Value = CFDictionaryGetValue(v9, v10);
  if (!Value)
  {
    APSLogErrorAt();
    v22 = -6727;
    goto LABEL_15;
  }

  v12 = Value;
  CFDictionaryGetInt64();
  CFDictionaryGetInt64();
  v22 = browser_cacheP2PDNSAddresses(v2, v8, v12);
  if (v22)
  {
    APSLogErrorAt();
    goto LABEL_15;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  ++*(DerivedStorage + 240);
  v22 = 0;
  CFDictionarySetInt64();
  CFDictionarySetValue(v12, @"IsTracked", *MEMORY[0x277CBED28]);
  if (*(a1 + 24))
  {
    v14 = 1;
  }

  else
  {
    v14 = 2;
  }

  *(v5 + 444) |= v14;
  OUTLINED_FUNCTION_1_29();
  if (!(v17 ^ v18 | v16))
  {
    goto LABEL_15;
  }

  if (v15 == -1)
  {
    if (!OUTLINED_FUNCTION_7())
    {
      goto LABEL_15;
    }

    v20 = *v5;
  }

  OUTLINED_FUNCTION_11();
LABEL_15:
  CFRelease(v8);
  return v22;
}

uint64_t browser_stopTrackingDevice(uint64_t *a1)
{
  v3 = OUTLINED_FUNCTION_18_1(a1);
  if (*(v3 + 245))
  {
    return 4294960573;
  }

  if (!v1)
  {
    APSLogErrorAt();
    return 4294960591;
  }

  v4 = v3;
  if (!*(v3 + 24))
  {
    APSLogErrorAt();
    return 4294960587;
  }

  v5 = CFGetAllocator(v2);
  v6 = CFNumberCreate(v5, kCFNumberSInt64Type, valuePtr);
  if (!v6)
  {
    APSLogErrorAt();
    return 4294960568;
  }

  v7 = v6;
  v8 = OUTLINED_FUNCTION_14_4();
  Value = CFDictionaryGetValue(v8, v9);
  if (!Value)
  {
    OUTLINED_FUNCTION_1_29();
    if (!(v15 ^ v16 | v14))
    {
      goto LABEL_33;
    }

    if (v20 == -1)
    {
      if (!OUTLINED_FUNCTION_7())
      {
        goto LABEL_33;
      }

      v23 = *v4;
    }

    OUTLINED_FUNCTION_11();
LABEL_33:
    updated = 0;
    goto LABEL_20;
  }

  v11 = Value;
  CFRetain(Value);
  if (!CFDictionaryGetInt64())
  {
LABEL_22:
    updated = 0;
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_11_8();
  v12 = CFDictionaryGetInt64() - 1;
  OUTLINED_FUNCTION_11_8();
  CFDictionarySetInt64();
  OUTLINED_FUNCTION_1_29();
  if (v15 ^ v16 | v14)
  {
    if (v13 == -1)
    {
      if (!OUTLINED_FUNCTION_7())
      {
        goto LABEL_12;
      }

      v21 = *v4;
    }

    OUTLINED_FUNCTION_11();
  }

LABEL_12:
  if (v12)
  {
    goto LABEL_22;
  }

  CFDictionaryRemoveValue(v11, @"CachedRAOPP2PDNS");
  CFDictionaryRemoveValue(v11, @"CachedAirPlayP2PDNS");
  CFDictionaryRemoveValue(v11, @"IsTracked");
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  --*(DerivedStorage + 240);
  updated = 0;
  updated = browser_updateDevice(v2, v7, v11);
  if (updated)
  {
    APSLogErrorAt();
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_1_29();
  if (!(v15 ^ v16 | v14))
  {
    goto LABEL_19;
  }

  if (v18 == -1)
  {
    if (!OUTLINED_FUNCTION_7())
    {
      goto LABEL_19;
    }

    v22 = *v4;
  }

  OUTLINED_FUNCTION_11();
LABEL_19:
  CFRelease(v11);
LABEL_20:
  CFRelease(v7);
  return updated;
}

uint64_t browser_reconfirmDevice(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  valuePtr = v2;
  v3 = *(a1 + 16);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 245))
  {
    return 4294960573;
  }

  if (!v2)
  {
    APSLogErrorAt();
    return 4294960591;
  }

  v5 = DerivedStorage;
  if (!*(DerivedStorage + 24))
  {
    APSLogErrorAt();
    return 4294960587;
  }

  v6 = CFGetAllocator(v1);
  v7 = CFNumberCreate(v6, kCFNumberSInt64Type, &valuePtr);
  if (!v7)
  {
    APSLogErrorAt();
    return 4294960568;
  }

  v8 = v7;
  v9 = OUTLINED_FUNCTION_14_4();
  Value = CFDictionaryGetValue(v9, v10);
  if (!Value)
  {
    APSLogErrorAt();
    v25 = 4294960569;
    goto LABEL_28;
  }

  v12 = Value;
  v13 = CFDictionaryGetValue(Value, *(v5 + 64));
  if (v13)
  {
    v14 = APBonjourBrowserReconfirmDevice(*(v5 + 88), v13, *(v5 + 72), v3);
    if (v14)
    {
      v25 = v14;
LABEL_38:
      APSLogErrorAt();
      goto LABEL_28;
    }

    OUTLINED_FUNCTION_1_29();
    if (v17 ^ v18 | v16)
    {
      if (v15 == -1)
      {
        if (!OUTLINED_FUNCTION_7())
        {
          goto LABEL_13;
        }

        v27 = *v5;
      }

      OUTLINED_FUNCTION_11();
    }
  }

LABEL_13:
  v19 = CFDictionaryGetValue(v12, @"AirPlayNANFullBonjourInfo");
  if (!v19)
  {
    goto LABEL_20;
  }

  v20 = APBonjourBrowserReconfirmDevice(*(v5 + 88), v19, @"AirPlayNANFullBonjourInfo", 0);
  if (v20)
  {
    v25 = v20;
    goto LABEL_38;
  }

  OUTLINED_FUNCTION_1_29();
  if (v17 ^ v18 | v16)
  {
    if (v21 == -1)
    {
      if (!OUTLINED_FUNCTION_7())
      {
        goto LABEL_20;
      }

      v28 = *v5;
    }

    OUTLINED_FUNCTION_11();
  }

LABEL_20:
  v22 = CFDictionaryGetValue(v12, @"RAOPBonjourInfo");
  if (!v22)
  {
    goto LABEL_27;
  }

  v23 = APBonjourBrowserReconfirmDevice(*(v5 + 88), v22, @"RAOP", v3);
  if (v23)
  {
    v25 = v23;
    goto LABEL_38;
  }

  OUTLINED_FUNCTION_1_29();
  if (!(v17 ^ v18 | v16))
  {
    goto LABEL_27;
  }

  if (v24 == -1)
  {
    if (!OUTLINED_FUNCTION_7())
    {
      goto LABEL_27;
    }

    v29 = *v5;
  }

  OUTLINED_FUNCTION_11();
LABEL_27:
  v25 = 0;
LABEL_28:
  CFRelease(v8);
  return v25;
}

void browser_triggerWoLCachingIfNeeded(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  valuePtr = v2;
  v3 = *(a1 + 16);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 245))
  {
    goto LABEL_13;
  }

  if (v2)
  {
    v5 = DerivedStorage;
    if (*(DerivedStorage + 24))
    {
      v6 = CFGetAllocator(v1);
      v7 = CFNumberCreate(v6, kCFNumberSInt64Type, &valuePtr);
      if (v7)
      {
        v8 = v7;
        Value = CFDictionaryGetValue(*(v5 + 216), v7);
        if (!Value)
        {
          APSLogErrorAt();
          goto LABEL_12;
        }

        v10 = CFDictionaryGetValue(Value, *(v5 + 64));
        if (!v10)
        {
          goto LABEL_12;
        }

        APBonjourBrowserTriggerWoLCachingIfNeeded(*(v5 + 88), v10, v3);
        OUTLINED_FUNCTION_3_12(*v5);
        if (!(v13 ^ v14 | v12))
        {
          goto LABEL_12;
        }

        if (v11 == -1)
        {
          if (!OUTLINED_FUNCTION_7())
          {
            goto LABEL_12;
          }

          v15 = *v5;
        }

        OUTLINED_FUNCTION_11();
LABEL_12:
        CFRelease(v8);
        goto LABEL_13;
      }
    }
  }

  APSLogErrorAt();
LABEL_13:
  CFRelease(v1);
  if (v3)
  {
    CFRelease(v3);
  }
}

uint64_t browser_getDeviceRelationship_cold_2(unsigned int **a1, uint64_t a2, _DWORD *a3)
{
  result = OUTLINED_FUNCTION_4_14(a1);
  if (v6 <= 90)
  {
    if (v6 == -1)
    {
      result = _LogCategory_Initialize();
      if (!result)
      {
        goto LABEL_5;
      }

      v7 = *a1;
    }

    result = LogPrintF();
  }

LABEL_5:
  *a3 = 0;
  return result;
}

uint64_t browser_setModeInternal_cold_4()
{
  OUTLINED_FUNCTION_2_5();
  result = OUTLINED_FUNCTION_4_14(v2);
  if (v4 <= 50)
  {
    if (v4 == -1)
    {
      result = OUTLINED_FUNCTION_8();
      if (!result)
      {
        goto LABEL_5;
      }

      v5 = *v1;
    }

    result = OUTLINED_FUNCTION_9();
  }

LABEL_5:
  *v0 = 0;
  return result;
}

void browser_setModeInternal_cold_37(uint64_t a1)
{
  v1 = *(a1 + 368);
  if (v1)
  {

    *(a1 + 368) = 0;
  }
}

uint64_t __browser_batchAndSendDiscoveredDeviceRTCMetrics_block_invoke_cold_4()
{
  APSLogErrorAt();
  OUTLINED_FUNCTION_3();
  return APSLogErrorAt();
}

uint64_t browser_updateBTLEBrowsing_cold_5()
{
  APSLogErrorAt();
  browser_ensureConnectivityCheckTimerStopped();

  return APSLogErrorAt();
}

uint64_t browser_updateRapportBrowsing_cold_1()
{
  APSLogErrorAt();

  return APSLogErrorAt();
}

void browser_updateBrokerBrowsing_cold_3()
{
  OUTLINED_FUNCTION_2_5();
  v2 = *(v1 + 344);
  if (v2)
  {
    APBrokerManagerSetDelegate(v2, 0, 0);
    *(v0 + 352) = 0;
    APBrokerManagerSetBrowseMode(*(v0 + 344), 0);
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFDictionaryGetCount(*(DerivedStorage + 360)) > 0)
  {
    v4 = **DerivedStorage;
    if (v4 <= 50)
    {
      if (v4 == -1)
      {
        if (!OUTLINED_FUNCTION_8())
        {
          goto LABEL_8;
        }

        v6 = *DerivedStorage;
      }

      OUTLINED_FUNCTION_9();
    }

LABEL_8:
    v5 = *(DerivedStorage + 360);
    CFDictionaryApplyBlock();
    CFDictionaryRemoveAllValues(*(DerivedStorage + 360));
  }
}

uint64_t browser_updateEventInfoForDevice_cold_2(uint64_t a1, int *a2)
{
  result = APSLogErrorAt();
  if (*a2 <= 40)
  {
    if (*a2 != -1)
    {
      return OUTLINED_FUNCTION_11();
    }

    result = OUTLINED_FUNCTION_7();
    if (result)
    {
      return OUTLINED_FUNCTION_11();
    }
  }

  return result;
}

uint64_t browser_updateEventInfoForDevice_cold_5(uint64_t a1, int *a2)
{
  result = APSLogErrorAt();
  if (*a2 <= 40)
  {
    if (*a2 != -1)
    {
      return OUTLINED_FUNCTION_11();
    }

    result = OUTLINED_FUNCTION_7();
    if (result)
    {
      return OUTLINED_FUNCTION_11();
    }
  }

  return result;
}

uint64_t browser_handleConnectivityHelperEventInternal_cold_6(unsigned int **a1, int a2, _DWORD *a3)
{
  result = OUTLINED_FUNCTION_4_14(a1);
  if (v7 <= 90)
  {
    if (v7 == -1)
    {
      result = _LogCategory_Initialize();
      if (!result)
      {
        goto LABEL_5;
      }

      v8 = *a1;
    }

    result = LogPrintF();
  }

LABEL_5:
  *a3 = a2;
  return result;
}

void browser_createBonjourInfoForBTLEDevice_cold_9(uint64_t a1, const void *a2, const void *a3)
{
  APSLogErrorAt();
  CFRelease(a2);
  CFRelease(a3);
}

uint64_t browser_createBonjourInfoForBTLEDevice_cold_14(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -6710;
  return result;
}

uint64_t browser_getDNSForDeviceIDInternal_cold_1(_DWORD *a1)
{
  APSLogErrorAt();
  *a1 = -6762;
  return APSLogErrorAt();
}

uint64_t browser_getDNSForDeviceIDInternal_cold_2(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -6762;
  return result;
}

uint64_t browser_getDNSForDeviceIDInternal_cold_4(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -6762;
  return result;
}

uint64_t browser_getDNSForDeviceIDInternal_cold_5(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -6727;
  return result;
}

uint64_t browser_getDNSForDeviceIDInternal_cold_6(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -6727;
  return result;
}

uint64_t browser_getDNSForDeviceIDInternal_cold_7(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -6727;
  return result;
}

uint64_t browser_removeBonjourWithBTLE_cold_3(unsigned int **a1, uint64_t a2, _DWORD *a3)
{
  result = OUTLINED_FUNCTION_3_12(*a1);
  if (v8 ^ v9 | v7)
  {
    if (v6 == -1)
    {
      result = OUTLINED_FUNCTION_7();
      if (!result)
      {
        goto LABEL_6;
      }

      v10 = *a1;
    }

    result = OUTLINED_FUNCTION_11();
  }

LABEL_6:
  *a3 = 0;
  return result;
}

uint64_t __browser_handleBTLEQueryEventExternal_block_invoke_cold_12(unsigned int **a1, _DWORD *a2)
{
  result = OUTLINED_FUNCTION_3_12(*a1);
  if (v7 ^ v8 | v6)
  {
    if (v5 == -1)
    {
      result = OUTLINED_FUNCTION_7();
      if (!result)
      {
        goto LABEL_6;
      }

      v9 = *a1;
    }

    result = OUTLINED_FUNCTION_11();
  }

LABEL_6:
  *a2 = 0;
  return result;
}

uint64_t browser_handleBonjourAddOrUpdate_cold_1(const void *a1, __CFString *a2, const __CFDictionary *a3, _DWORD *a4)
{
  result = browser_removeService(a1, a2, a3);
  *a4 = result;
  if (result)
  {
    return APSLogErrorAt();
  }

  return result;
}

void __getNISessionClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"Class getNISessionClass(void)_block_invoke") description:{@"APSoftLinking_NearbyInteraction.h", 31, @"Unable to find class %s", "NISession"}];
  __break(1u);
}

void __getNISpatialBrowsingConfigurationClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"Class getNISpatialBrowsingConfigurationClass(void)_block_invoke") description:{@"APSoftLinking_NearbyInteraction.h", 34, @"Unable to find class %s", "NISpatialBrowsingConfiguration"}];
  __break(1u);
}

uint64_t __browser_resolveBrokerAddress_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2_5();
  result = OUTLINED_FUNCTION_3_12(*(v2 + 48));
  if (v6 ^ v7 | v5)
  {
    if (v4 == -1)
    {
      result = OUTLINED_FUNCTION_7();
      if (!result)
      {
        goto LABEL_6;
      }

      v8 = *(v1 + 48);
    }

    v9 = *(v1 + 56);
    result = OUTLINED_FUNCTION_11();
  }

LABEL_6:
  *v0 = 0;
  return result;
}

uint64_t browser_handleBonjourEvent_cold_1(const void *a1, __CFString *a2, const __CFDictionary *a3)
{
  result = browser_handleBonjourRemove(a1, a2, a3);
  if (result)
  {

    return APSLogErrorAt();
  }

  return result;
}

void browser_handleBonjourEvent_cold_7(uint64_t a1, const void *a2)
{
  APSLogErrorAt();

  CFRelease(a2);
}

uint64_t __browser_handleBTLEEventExternal_block_invoke_cold_2()
{
  APSLogErrorAt();

  return APSLogErrorAt();
}

uint64_t __browser_handleBTLEEventExternal_block_invoke_cold_4()
{
  APSLogErrorAt();

  return APSLogErrorAt();
}

CFRange CFStringFind(CFStringRef theString, CFStringRef stringToFind, CFStringCompareFlags compareOptions)
{
  v3 = MEMORY[0x28210FD68](theString, stringToFind, compareOptions);
  result.length = v4;
  result.location = v3;
  return result;
}

CFUUIDBytes CFUUIDGetUUIDBytes(CFUUIDRef uuid)
{
  v1 = MEMORY[0x2821100F0](uuid);
  result.byte8 = v2;
  result.byte9 = BYTE1(v2);
  result.byte10 = BYTE2(v2);
  result.byte11 = BYTE3(v2);
  result.byte12 = BYTE4(v2);
  result.byte13 = BYTE5(v2);
  result.byte14 = BYTE6(v2);
  result.byte15 = HIBYTE(v2);
  result.byte0 = v1;
  result.byte1 = BYTE1(v1);
  result.byte2 = BYTE2(v1);
  result.byte3 = BYTE3(v1);
  result.byte4 = BYTE4(v1);
  result.byte5 = BYTE5(v1);
  result.byte6 = BYTE6(v1);
  result.byte7 = HIBYTE(v1);
  return result;
}
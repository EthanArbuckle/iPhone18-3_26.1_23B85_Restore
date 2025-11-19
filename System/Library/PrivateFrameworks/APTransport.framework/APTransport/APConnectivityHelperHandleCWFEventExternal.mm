@interface APConnectivityHelperHandleCWFEventExternal
@end

@implementation APConnectivityHelperHandleCWFEventExternal

void ___APConnectivityHelperHandleCWFEventExternal_block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = [v3 type];
  if (v2[232])
  {
    goto LABEL_42;
  }

  if (v4 != 1)
  {
    if (v4 == 6)
    {
      if (!v2[81])
      {
        goto LABEL_42;
      }

      if (!_APConnectivityHelperHandleWiFiLinkChangedInternal(v2, [v3 info]))
      {
        goto LABEL_42;
      }

      if (gLogCategory_APConnectivityHelper > 90)
      {
        goto LABEL_42;
      }

      OUTLINED_FUNCTION_2_9();
      if (v5)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_42;
        }
      }
    }

    else
    {
      if (v4 != 29)
      {
        if (v4 == 10 && (v2[88] || v2[209]))
        {
          if (gLogCategory_APConnectivityHelper <= 40 && (gLogCategory_APConnectivityHelper != -1 || OUTLINED_FUNCTION_7()))
          {
            OUTLINED_FUNCTION_11();
          }

          if (v2[88])
          {
            _APConnectivityHelperTrySettingWiFiDevice(v2);
          }

          if (v2[209])
          {
            _APConnectivityHelperTrySettingAWDLDevice(v2);
          }
        }

        goto LABEL_42;
      }

      if (!v2[83])
      {
        goto LABEL_42;
      }

      v10 = v2;
      if (gLogCategory_APConnectivityHelper <= 40 && (gLogCategory_APConnectivityHelper != -1 || OUTLINED_FUNCTION_7()))
      {
        OUTLINED_FUNCTION_11();
      }

      v6 = CFGetAllocator(v2);
      Mutable = CFDictionaryCreateMutable(v6, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (Mutable)
      {
        v12 = 0;
        _APConnectivityHelperPopulateCurrentWiFiNetworkInfo(&v10);
        if (v12)
        {
          APSLogErrorAt();
          v8 = 1;
          v7 = Mutable;
        }

        else
        {
          v7 = Mutable;
          if (_APConnectivityHelperDispatchEvent(v2, 9, Mutable))
          {
            APSLogErrorAt();
            v8 = 0;
          }

          else
          {
            v8 = 1;
          }
        }

        if (v7)
        {
          CFRelease(v7);
        }

        if (v8)
        {
          goto LABEL_42;
        }
      }

      else
      {
        APSLogErrorAt();
      }

      if (gLogCategory_APConnectivityHelper > 90)
      {
        goto LABEL_42;
      }

      OUTLINED_FUNCTION_2_9();
      if (v5)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_42;
        }
      }
    }

LABEL_48:
    LogPrintF();
    goto LABEL_42;
  }

  if (v2[85])
  {
    if (gLogCategory_APConnectivityHelper <= 40 && (gLogCategory_APConnectivityHelper != -1 || OUTLINED_FUNCTION_7()))
    {
      OUTLINED_FUNCTION_11();
    }

    if (_APConnectivityHelperDispatchEvent(v2, 2, 0))
    {
      APSLogErrorAt();
      if (gLogCategory_APConnectivityHelper <= 90)
      {
        OUTLINED_FUNCTION_2_9();
        if (!v5 || _LogCategory_Initialize())
        {
          goto LABEL_48;
        }
      }
    }
  }

LABEL_42:

  v9 = *(a1 + 40);

  CFRelease(v9);
}

@end
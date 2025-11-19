@interface QueryDevice
@end

@implementation QueryDevice

void __queryManagerGetInfo_QueryDevice_block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v5 = *(a1 + 56);
  v4 = *(a1 + 64);
  v6 = *(a1 + 72);
  v11 = *(a1 + 80);
  v12 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  *buffer = 0u;
  if (v3)
  {
    if (v5)
    {
      if (v4)
      {
        v8 = DerivedStorage;
        if (*(DerivedStorage + 16))
        {
          v12 = -72233;
        }

        else
        {
          CFGetInt64();
          buffer[0] = 0;
          if (CFStringGetCString(v5, buffer, 128, 0x8000100u))
          {
            v12 = HTTPClientCreate();
            if (v12)
            {
              __queryManagerGetInfo_QueryDevice_block_invoke_cold_2();
            }

            else
            {
              if (CFDictionaryGetValue(*(v8 + 24), v3))
              {
                if (gLogCategory_APBrowserDeviceQueryManagerGetInfo <= 20 && (gLogCategory_APBrowserDeviceQueryManagerGetInfo != -1 || _LogCategory_Initialize()))
                {
                  __queryManagerGetInfo_QueryDevice_block_invoke_cold_3();
                }

                HTTPClientInvalidate();
                CFDictionaryRemoveValue(*(v8 + 24), v3);
              }

              CFDictionarySetValue(*(v8 + 24), v3, 0);
              if (gLogCategory_APBrowserDeviceQueryManagerGetInfo <= 50 && (gLogCategory_APBrowserDeviceQueryManagerGetInfo != -1 || _LogCategory_Initialize()))
              {
                HTTPClientGetClientID();
                LogPrintF();
              }

              v9 = *(v8 + 8);
              HTTPClientSetDispatchQueue();
              APSLogUtilsGetHTTPClientCoreLogCategory();
              HTTPClientSetLogging();
              APSLogUtilsGetAsyncCnxLogCategory();
              HTTPClientSetConnectionLogging();
              HTTPClientSetFlags();
              HTTPClientSetTimeout();
              v12 = HTTPClientSetDestination();
              if (v12)
              {
                __queryManagerGetInfo_QueryDevice_block_invoke_cold_4();
              }

              else
              {
                v12 = HTTPMessageCreate();
                if (v12)
                {
                  __queryManagerGetInfo_QueryDevice_block_invoke_cold_5();
                }

                else
                {
                  HTTPMessageSetCompletionBlock();
                  buffer[0] = 0;
                  snprintf(buffer, 0x80uLL, "/info?%s&%s", "txtAirPlay", "txtRAOP");
                  HTTPHeader_InitRequest();
                  if (v6)
                  {
                    HTTPHeader_SetField();
                  }

                  CFRetain(v2);
                  CFRetain(0);
                  CFRetain(v5);
                  CFRetain(v4);
                  CFRetain(v3);
                  v12 = HTTPClientSendMessage();
                  if (v12)
                  {
                    APSLogErrorAt();
                    CFDictionaryRemoveValue(*(v8 + 24), v3);
                    CFRelease(v5);
                    CFRelease(v4);
                    CFRelease(v3);
                    CFRelease(0);
                    CFRelease(v2);
                  }
                }
              }
            }
          }

          else
          {
            __queryManagerGetInfo_QueryDevice_block_invoke_cold_6(&v12);
          }
        }
      }

      else
      {
        __queryManagerGetInfo_QueryDevice_block_invoke_cold_7();
      }
    }

    else
    {
      __queryManagerGetInfo_QueryDevice_block_invoke_cold_8();
    }
  }

  else
  {
    __queryManagerGetInfo_QueryDevice_block_invoke_cold_9();
  }

  *(*(*(a1 + 32) + 8) + 24) = v12;
  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __queryManagerGetInfo_QueryDevice_block_invoke_cold_6(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -72232;
  return result;
}

@end
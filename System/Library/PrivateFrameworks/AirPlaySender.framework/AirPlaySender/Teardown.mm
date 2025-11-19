@interface Teardown
@end

@implementation Teardown

void __apEndpointRemoteControlSession_Teardown_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  CMBaseObjectGetDerivedStorage();
  if (!apEndpointRemoteControlSession_isInvalidated())
  {
    v3 = dispatch_semaphore_create(0);
    if (v3)
    {
      v4 = v3;
      CFRetain(v2);
      dispatch_retain(v4);
      OUTLINED_FUNCTION_1_17();
      v8 = 0x40000000;
      v9 = __apEndpointRemoteControlSession_teardownInternal_block_invoke;
      v10 = &__block_descriptor_tmp_69;
      v11 = v2;
      v12 = v4;
      dispatch_async(v5, block);
      v6 = dispatch_time(0, 4000000000);
      if (dispatch_semaphore_wait(v4, v6) && gLogCategory_APEndpointRemoteControlSession <= 60 && (gLogCategory_APEndpointRemoteControlSession != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      apEndpointRemoteControlSession_invalidateInternal(v2);
      if (gLogCategory_APEndpointRemoteControlSession <= 50 && (gLogCategory_APEndpointRemoteControlSession != -1 || _LogCategory_Initialize()))
      {
        OUTLINED_FUNCTION_2();
      }

      dispatch_release(v4);
    }

    else
    {
      APSLogErrorAt();
    }
  }

  CFRelease(*(a1 + 32));
}

@end
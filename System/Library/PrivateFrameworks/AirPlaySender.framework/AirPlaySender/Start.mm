@interface Start
@end

@implementation Start

void __apEndpointRemoteControlSession_Start_block_invoke(uint64_t a1)
{
  v1 = (a1 + 32);
  if (apEndpointRemoteControlSession_ensureAndCopyTransportStreams(*(a1 + 32), 0))
  {
    __apEndpointRemoteControlSession_Start_block_invoke_cold_1(gLogCategory_APEndpointRemoteControlSession);
  }

  else if (gLogCategory_APEndpointRemoteControlSession <= 50 && (gLogCategory_APEndpointRemoteControlSession != -1 || _LogCategory_Initialize()))
  {
    __apEndpointRemoteControlSession_Start_block_invoke_cold_2();
  }

  v2 = *v1;

  CFRelease(v2);
}

void __hdpd_Start_block_invoke()
{
  if (gLogCategory_SPHubbedDevicesProviderDefaults <= 30 && (gLogCategory_SPHubbedDevicesProviderDefaults != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  hdpd_handlePreferencesChanged();
  if (gLogCategory_SPHubbedDevicesProviderDefaults <= 30 && (gLogCategory_SPHubbedDevicesProviderDefaults != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }
}

uint64_t __apEndpointRemoteControlSession_Start_block_invoke_cold_1(uint64_t result)
{
  if (result <= 90)
  {
    if (result != -1)
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

@end
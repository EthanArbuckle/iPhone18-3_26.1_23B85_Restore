@interface APCarPlayControlServerControl
@end

@implementation APCarPlayControlServerControl

uint64_t ___APCarPlayControlServerControl_block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 72);
  result = CFDictionaryApplyBlock();
  *(*(a1 + 32) + 80) = 1;
  return result;
}

void ___APCarPlayControlServerControl_block_invoke_2(uint64_t a1)
{
  v2 = *(*(*(a1 + 32) + 32) + 48);
  BonjourAdvertiserSetPort();
  BonjourAdvertiserStart();
  if (*(*(a1 + 32) + 104))
  {
    APSEventRecorderRecordEvent();
  }

  v3 = LogCategoryCopyOSLogHandle();
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = MEMORY[0x277D86220];
  }

  if (os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23D2A9000, v5, OS_SIGNPOST_EVENT, 0x2B8D07DCuLL, "AP_SIGNPOST_CAR_CONTROLSERVER_STARTEDADVERTISE", "", buf, 2u);
  }

  if (v4)
  {
    os_release(v4);
  }

  if (gLogCategory_CarPlayControlServer <= 40 && (gLogCategory_CarPlayControlServer != -1 || _LogCategory_Initialize()))
  {
    v6 = *(*(*(a1 + 32) + 32) + 48);
    LogPrintF();
  }
}

uint64_t ___APCarPlayControlServerControl_block_invoke_2_33(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 72);
  result = CFDictionaryApplyBlock();
  *(*(a1 + 32) + 80) = 0;
  return result;
}

uint64_t ___APCarPlayControlServerControl_block_invoke_3()
{
  result = BonjourAdvertiserStop();
  if (gLogCategory_CarPlayControlServer <= 40)
  {
    if (gLogCategory_CarPlayControlServer != -1)
    {
      return ___APCarPlayControlServerControl_block_invoke_3_cold_1();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return ___APCarPlayControlServerControl_block_invoke_3_cold_1();
    }
  }

  return result;
}

@end
@interface APAdvertiserRapportManager
@end

@implementation APAdvertiserRapportManager

void __APAdvertiserRapportManager_startAdvertising_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = -6709;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  if (gLogCategory_APAdvertiserRapportManager <= 50 && (gLogCategory_APAdvertiserRapportManager != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  active = _APAdvertiserRapportManager_lookupAndRetainActiveManagerWithKey(*(a1 + 32));
  v7 = active;
  if (active)
  {
    v8 = *(active + 40);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __APAdvertiserRapportManager_startAdvertising_block_invoke_2;
    block[3] = &unk_278C60820;
    block[4] = &v17;
    block[5] = &v13;
    block[6] = v7;
    dispatch_sync(v8, block);
  }

  v9 = *(v18 + 6);
  if (v9)
  {
    v10 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v9 userInfo:0];
  }

  else
  {
    v10 = 0;
  }

  (*(a4 + 16))(a4, v14[3], 0, v10);
  v11 = v14[3];
  if (v11)
  {
    CFRelease(v11);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v17, 8);
}

void __APAdvertiserRapportManager_startAdvertising_block_invoke_3(uint64_t a1, uint64_t a2)
{
  if (a2 && gLogCategory_APAdvertiserRapportManager <= 90 && (gLogCategory_APAdvertiserRapportManager != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  active = _APAdvertiserRapportManager_lookupAndRetainActiveManagerWithKey(*(a1 + 32));
  if (active)
  {
    v5 = active;
    v6 = *(active + 40);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __APAdvertiserRapportManager_startAdvertising_block_invoke_4;
    block[3] = &unk_278C60A58;
    block[4] = a2;
    block[5] = v5;
    dispatch_sync(v6, block);
    CFRelease(v5);
  }

  else
  {

    APSLogErrorAt();
  }
}

void __APAdvertiserRapportManager_startAdvertising_block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (!*(v1 + 24))
  {
    if (*(a1 + 32))
    {
      [*(v1 + 64) deregisterRequestID:@"com.apple.airplay.discovery.getinfo"];
      [*(*(a1 + 40) + 64) invalidate];

      *(*(a1 + 40) + 64) = 0;
    }

    else
    {
      *(v1 + 80) = 1;
    }
  }
}

void __APAdvertiserRapportManager_startAdvertising_block_invoke_2(void *a1)
{
  v1 = a1[6];
  if (!*(v1 + 24))
  {
    if (*(v1 + 48))
    {
      v3 = *(a1[5] + 8);
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (Mutable)
      {
        v5 = Mutable;
        CFDictionarySetValue(Mutable, *MEMORY[0x277CE9F28], *(v1 + 48));
        v6 = 0;
        *(v3 + 24) = v5;
      }

      else
      {
        APSLogErrorAt();
        v6 = -6728;
      }
    }

    else
    {
      APSLogErrorAt();
      v6 = -6709;
    }

    *(*(a1[4] + 8) + 24) = v6;
  }
}

uint64_t ___APAdvertiserRapportManager_getActiveManagers_block_invoke()
{
  result = FigCFWeakReferenceTableCreate();
  if (result)
  {
    if (gLogCategory_APAdvertiserRapportManager <= 100)
    {
      if (gLogCategory_APAdvertiserRapportManager != -1 || (result = _LogCategory_Initialize(), result))
      {
        result = LogPrintF();
      }
    }

    __break(1u);
  }

  return result;
}

@end
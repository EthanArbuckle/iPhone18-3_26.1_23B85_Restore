@interface RegisterForThermalNotifications
@end

@implementation RegisterForThermalNotifications

void __fpServer_RegisterForThermalNotifications_block_invoke(int a1, int token)
{
  v13 = 0;
  notify_get_state(token, &v13);
  if (v13 >= 0x28)
  {
    v15 = 0;
    if (bigBossSession)
    {
      return;
    }

    getpid();
    v2 = *MEMORY[0x1E695E480];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    cf = 0;
    if (FPSupport_CanUseCMSession())
    {
      if (__fpServer_RegisterForThermalNotifications_block_invoke_cold_1(&v15, v2, &v16))
      {
        v10 = v16;
        goto LABEL_18;
      }
    }

    else if (FigAudioSessionCreateUsingAuxiliaryAVAudioSession(v2, 0, @"BigBadThermalBoss", &bigBossSession))
    {
      goto LABEL_17;
    }

    FigCFDictionarySetInt32();
    FigCFDictionarySetInt32();
    FigCFDictionarySetInt32();
    FigCFDictionarySetInt32();
    v4 = bigBossSession;
    if (bigBossSession && (v5 = *(CMBaseObjectGetVTable() + 16)) != 0 && (v6 = *(v5 + 104)) != 0 && v6(v4, Mutable, &cf))
    {
      v7 = bigBossSession;
      if (bigBossSession)
      {
        v8 = *(CMBaseObjectGetVTable() + 16);
        if (v8)
        {
          v9 = *(v8 + 80);
          if (v9)
          {
            v10 = v9(v7, 0) != 0;
LABEL_18:
            if (cf)
            {
              CFRelease(cf);
            }

            if (Mutable)
            {
              CFRelease(Mutable);
            }

            if (v15)
            {
              CFRelease(v15);
            }

            if (bigBossSession)
            {
              v12 = v10;
            }

            else
            {
              v12 = 0;
            }

            if (v12 == 1)
            {
              CFRelease(bigBossSession);
              bigBossSession = 0;
            }

            return;
          }
        }
      }
    }

    else
    {
      v11 = FigCFCopyCompactDescription();
      if (v11)
      {
        CFRelease(v11);
      }
    }

LABEL_17:
    v10 = 1;
    goto LABEL_18;
  }

  if (bigBossSession)
  {
    CFRelease(bigBossSession);
    bigBossSession = 0;
  }
}

uint64_t __fpServer_RegisterForThermalNotifications_block_invoke_cold_1(const void **a1, uint64_t a2, _BYTE *a3)
{
  if (CMSessionCreate() || FigAudioSessionCreateWithCMSession(a2, *a1, &bigBossSession))
  {
    result = 1;
    *a3 = 1;
  }

  else
  {
    v6 = bigBossSession;
    if (bigBossSession)
    {
      v7 = *(CMBaseObjectGetVTable() + 16);
      if (v7)
      {
        v8 = *(v7 + 56);
        if (v8)
        {
          v8(v6, *MEMORY[0x1E69AFD90], @"BigBadThermalBoss");
        }
      }
    }

    return 0;
  }

  return result;
}

@end
@interface APTNANDataSessionInvalidate
@end

@implementation APTNANDataSessionInvalidate

void ___APTNANDataSessionInvalidate_block_invoke(void *a1)
{
  v2 = *(a1[5] + 56);
  FigSimpleMutexLock();
  v3 = *(a1[5] + 80);
  if (v3 == a1[6])
  {

    v4 = a1[5];
    *(v4 + 80) = 0;
    if (*(v4 + 88))
    {
      *(*(a1[4] + 8) + 24) = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (*(*(a1[4] + 8) + 24))
      {
        v5 = *(a1[5] + 88);
        CFDictionarySetInt64();
      }

      else if (gLogCategory_APTNANDataSession <= 90 && (gLogCategory_APTNANDataSession != -1 || _LogCategory_Initialize()))
      {
        ___APTNANDataSessionInvalidate_block_invoke_cold_2(a1);
      }
    }

    v6 = *(a1[5] + 40);
    CMNotificationCenterGetDefaultLocalCenter();
    v7 = a1[7];
    v8 = *(*(a1[4] + 8) + 24);
    FigDispatchAsyncPostNotification();
  }

  else if (gLogCategory_APTNANDataSession <= 50 && (gLogCategory_APTNANDataSession != -1 || _LogCategory_Initialize()))
  {
    ___APTNANDataSessionInvalidate_block_invoke_cold_1(a1);
  }

  v9 = *(a1[5] + 56);
  FigSimpleMutexUnlock();
  v10 = *(*(a1[4] + 8) + 24);
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = a1[7];

  CFRelease(v11);
}

@end
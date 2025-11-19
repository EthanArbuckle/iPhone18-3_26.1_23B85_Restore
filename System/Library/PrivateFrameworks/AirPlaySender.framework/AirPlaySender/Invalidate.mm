@interface Invalidate
@end

@implementation Invalidate

void __apsession_Invalidate_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage)
  {
    v4 = DerivedStorage;
    *DerivedStorage = 1;
    apsession_stopSenderNetworkClockIfNeeded(v2);
    FigSimpleMutexLock();
    v5 = *(v4 + 40);
    if (v5)
    {
      v6 = CFRetain(v5);
    }

    else
    {
      v6 = 0;
    }

    v7 = *(v4 + 49);
    if (v7)
    {
      CFRelease(v7);
      *(v4 + 49) = 0;
    }

    v8 = *(v4 + 51);
    if (v8)
    {
      CFRelease(v8);
      *(v4 + 51) = 0;
    }

    v9 = *(v4 + 15);
    if (v9)
    {
      CFRelease(v9);
      *(v4 + 15) = 0;
    }

    v10 = *(v4 + 16);
    if (v10)
    {
      CFRelease(v10);
      *(v4 + 16) = 0;
    }

    v11 = *(v4 + 52);
    if (v11)
    {
      CFRelease(v11);
      *(v4 + 52) = 0;
    }

    v12 = *(v4 + 53);
    if (v12)
    {
      CFRelease(v12);
      *(v4 + 53) = 0;
    }

    FigSimpleMutexUnlock();
    if (v4[216])
    {
      v13 = *(*(CMBaseObjectGetVTable() + 16) + 56);
      if (v13)
      {
        v13(v6);
      }

      v4[216] = 0;
    }

    FigSimpleMutexLock();
    if (*(v4 + 40))
    {
      CMBaseObject = FigTransportSessionGetCMBaseObject();
      if (CMBaseObject)
      {
        v15 = CMBaseObject;
        v16 = *(*(CMBaseObjectGetVTable() + 8) + 24);
        if (v16)
        {
          v16(v15);
        }
      }
    }

    FigSimpleMutexUnlock();
    v17 = *(v4 + 7);
    if (v17)
    {
      CFRelease(v17);
      *(v4 + 7) = 0;
    }

    v18 = *(v4 + 8);
    if (v18)
    {
      CFRelease(v18);
      *(v4 + 8) = 0;
    }

    v19 = *(v4 + 28);
    if (v19)
    {
      CFRelease(v19);
      *(v4 + 28) = 0;
    }

    v20 = *(v4 + 29);
    if (v20)
    {
      CFRelease(v20);
      *(v4 + 29) = 0;
    }

    v21 = *(v4 + 26);
    if (v21)
    {
      APPWDKeyExchangeSenderSessionInvalidate(v21);
      CFRelease(*(v4 + 26));
      *(v4 + 26) = 0;
    }

    if (v6)
    {
      CFRelease(v6);
    }
  }

  *(*(*(a1 + 32) + 8) + 24) = 0;
}

@end
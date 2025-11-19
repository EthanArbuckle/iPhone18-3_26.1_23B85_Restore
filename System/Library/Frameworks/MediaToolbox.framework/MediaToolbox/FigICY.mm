@interface FigICY
@end

@implementation FigICY

uint64_t __FigICY_ResumeHTTP_block_invoke()
{
  FigRetainProxyRetain();
  FigRetainProxyLockMutex();
  if (!FigRetainProxyIsInvalidated())
  {
    Owner = FigRetainProxyGetOwner();
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    while (CFArrayGetCount(*(DerivedStorage + 360)) >= 1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 360), 0);
      v3 = ValueAtIndex;
      if (ValueAtIndex)
      {
        CFRetain(ValueAtIndex);
      }

      DataLength = CMBlockBufferGetDataLength(v3);
      v5 = *(DerivedStorage + 360);
      *(DerivedStorage + 368) -= DataLength;
      CFArrayRemoveValueAtIndex(v5, 0);
      if (!*(DerivedStorage + 377) || CFArrayGetCount(*(DerivedStorage + 360)))
      {
        v6 = 0;
      }

      else
      {
        *(DerivedStorage + 377) = 0;
        v6 = 1;
      }

      v7 = CMBlockBufferGetDataLength(v3);
      FigICY_HTTPCommonCallback(Owner, v3, 0, v7, v6, 0);
      if (v3)
      {
        CFRelease(v3);
      }

      if (FigRetainProxyIsInvalidated() || !*(DerivedStorage + 19))
      {
        goto LABEL_16;
      }
    }

    if (!*(DerivedStorage + 320))
    {
      *(DerivedStorage + 376) = 0;
      v9 = *(DerivedStorage + 96);
      if (*(DerivedStorage + 208))
      {
        FigICY_CreateHTTPRequest(Owner, v9, 1);
      }

      else
      {
        FigICY_CreateHTTPRequest(Owner, v9, 0);
        *(DerivedStorage + 21) = 1;
      }
    }
  }

LABEL_16:
  FigRetainProxyUnlockMutex();
  FigRetainProxyRelease();

  return FigRetainProxyRelease();
}

@end
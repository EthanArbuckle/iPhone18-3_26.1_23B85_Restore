@interface FigVideoTargetRemoteConnectionEstablisher
@end

@implementation FigVideoTargetRemoteConnectionEstablisher

uint64_t __FigVideoTargetRemoteConnectionEstablisher_EstablishConnectionInternal_block_invoke(uint64_t a1, int a2, const void *a3)
{
  FigSimpleMutexLock();
  if (a2)
  {
    v6 = 2;
  }

  else
  {
    if (a3)
    {
      v7 = CFRetain(a3);
    }

    else
    {
      v7 = 0;
    }

    a2 = 0;
    *(*(a1 + 32) + 16) = v7;
    v6 = 1;
  }

  v8 = *(a1 + 32);
  *v8 = v6;
  *(v8 + 4) = a2;
  if (CFArrayGetCount(*(v8 + 8)) >= 1)
  {
    v9 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(*(a1 + 32) + 8), v9);
      (*(ValueAtIndex + 2))(ValueAtIndex, *(*(a1 + 32) + 4), **(a1 + 32));
      ++v9;
    }

    while (v9 < CFArrayGetCount(*(*(a1 + 32) + 8)));
  }

  CFArrayRemoveAllValues(*(*(a1 + 32) + 8));

  return FigSimpleMutexUnlock();
}

@end
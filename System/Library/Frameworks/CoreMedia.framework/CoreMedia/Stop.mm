@interface Stop
@end

@implementation Stop

uint64_t __tcp_Stop_block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(v1 + 48);
  if (v2 == 1)
  {
    v3 = result;
    *(v1 + 120) = 1;
    v4 = *(v1 + 92);
    if ((v4 & 0x80000000) == 0)
    {
      close(v4);
      v1 = *(v3 + 32);
      *(v1 + 92) = -1;
    }

    FigThreadJoin(*(v1 + 112), 0);
    *(*(v3 + 32) + 112) = 0;
    result = tcp_CleanupFileDescriptors(*(v3 + 40));
    v1 = *(v3 + 32);
    v2 = *(v1 + 48);
  }

  v5 = __OFSUB__(v2, 1);
  v6 = v2 - 1;
  if (v6 < 0 == v5)
  {
    *(v1 + 48) = v6;
  }

  return result;
}

_opaque_pthread_t *__usb_Stop_block_invoke(_opaque_pthread_t *result)
{
  v1 = *&result->__opaque[16];
  v2 = *(v1 + 88);
  if (v2 == 1)
  {
    v3 = result;
    v4 = *(v1 + 80);
    if (v4)
    {
      CFRelease(v4);
      *(*&v3->__opaque[16] + 80) = 0;
    }

    result = usb_stopMessageSendingAndReceivingThreads(*&v3->__opaque[24]);
    v1 = *&v3->__opaque[16];
    v2 = *(v1 + 88);
  }

  v5 = __OFSUB__(v2, 1);
  v6 = v2 - 1;
  if (v6 < 0 == v5)
  {
    *(v1 + 88) = v6;
  }

  return result;
}

uint64_t __ids_Stop_block_invoke(uint64_t a1)
{
  result = CMBaseObjectGetDerivedStorage(*(a1 + 40));
  if (*result)
  {
    v6 = -12055;
  }

  else
  {
    v3 = result;
    v4 = *(result + 36);
    if (v4 == 1)
    {
      *(result + 88) = 1;
      dispatch_semaphore_signal(*(result + 144));
      dispatch_semaphore_signal(*(v3 + 152));
      FigThreadJoin(*(v3 + 80), 0);
      *(v3 + 80) = 0;
      result = [*(v3 + 72) deactivateConnection];
      v4 = *(v3 + 36);
    }

    v5 = v4 - 1;
    if (v4 < 1)
    {
      v6 = 0;
    }

    else
    {
      v6 = 0;
      *(v3 + 36) = v5;
    }
  }

  *(*(*(a1 + 32) + 8) + 24) = v6;
  return result;
}

@end
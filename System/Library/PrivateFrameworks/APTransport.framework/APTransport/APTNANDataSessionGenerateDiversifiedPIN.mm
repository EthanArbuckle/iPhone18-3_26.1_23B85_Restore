@interface APTNANDataSessionGenerateDiversifiedPIN
@end

@implementation APTNANDataSessionGenerateDiversifiedPIN

intptr_t ___APTNANDataSessionGenerateDiversifiedPIN_block_invoke(void *a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = -6753;
  }

  else
  {
    v5 = 0;
  }

  *(*(a1[5] + 8) + 24) = v5;
  v6 = a1[5];
  if (*(*(v6 + 8) + 24))
  {
    v7 = 90;
  }

  else
  {
    v7 = 50;
  }

  if (v7 >= gLogCategory_APTNANDataSession)
  {
    if (gLogCategory_APTNANDataSession != -1)
    {
LABEL_9:
      v12 = a1[7];
      LogPrintF();
      v6 = a1[5];
      goto LABEL_11;
    }

    v8 = _LogCategory_Initialize();
    v6 = a1[5];
    if (v8)
    {
      v11 = *(*(v6 + 8) + 24);
      goto LABEL_9;
    }
  }

LABEL_11:
  if (!*(*(v6 + 8) + 24))
  {
    *(*(a1[6] + 8) + 40) = a3;
  }

  v9 = a1[4];

  return dispatch_semaphore_signal(v9);
}

@end
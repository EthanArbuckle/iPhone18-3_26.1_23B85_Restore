@interface APBrokerGroupGetInfoWithOneBroker
@end

@implementation APBrokerGroupGetInfoWithOneBroker

void ___APBrokerGroupGetInfoWithOneBroker_block_invoke(void *a1, uint64_t a2, CFTypeRef cf, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a2;
  v9 = a1[6];
  v10 = gLogCategory_APBrokerGroup;
  if (gLogCategory_APBrokerGroup <= 50)
  {
    v11 = a1[5];
    v12 = a1[7];
    if (gLogCategory_APBrokerGroup != -1)
    {
      goto LABEL_3;
    }

    if (_LogCategory_Initialize())
    {
      v10 = gLogCategory_APBrokerGroup;
LABEL_3:
      if (v10 == -1)
      {
        _LogCategory_Initialize();
      }

      LogPrintF();
      if (!v7)
      {
        goto LABEL_10;
      }

      goto LABEL_7;
    }
  }

  if (!v7)
  {
LABEL_10:
    *(v9 + 4) = 0;
    *v9 = 1;
    if (cf)
    {
      v13 = CFRetain(cf);
    }

    else
    {
      v13 = 0;
    }

    *(v9 + 8) = v13;
    goto LABEL_14;
  }

LABEL_7:
  *(v9 + 4) = v7;
LABEL_14:
  (*(a1[4] + 16))(a1[4], a2, cf, a4, a5, a6);
  v14 = a1[4];

  _Block_release(v14);
}

@end
@interface APSWiFiTransactionFinalize
@end

@implementation APSWiFiTransactionFinalize

int *___APSWiFiTransactionFinalize_block_invoke(void *a1, uint64_t a2)
{
  if (a2)
  {
    v3 = 90;
  }

  else
  {
    v3 = 50;
  }

  result = a1[4];
  if (v3 >= *result)
  {
    if (*result != -1)
    {
LABEL_6:
      v5 = a1[6];
      v8 = a1[7];
      v7 = a1[5];
      return LogPrintF();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      v6 = a1[4];
      goto LABEL_6;
    }
  }

  return result;
}

@end
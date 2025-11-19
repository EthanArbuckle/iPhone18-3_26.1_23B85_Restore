@interface APBrokerHTTPSendRequestToURL
@end

@implementation APBrokerHTTPSendRequestToURL

void ___APBrokerHTTPSendRequestToURL_block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  if (a4)
  {
    NSErrorToOSStatus();
    if (gLogCategory_APBrokerHTTPUtils <= 30 && (gLogCategory_APBrokerHTTPUtils != -1 || _LogCategory_Initialize()))
    {
      ___APBrokerHTTPSendRequestToURL_block_invoke_cold_1(v5);
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [a3 statusCode];
    }

    else
    {
      v7 = 0;
    }

    if (gLogCategory_APBrokerHTTPUtils <= 30 && (gLogCategory_APBrokerHTTPUtils != -1 || _LogCategory_Initialize()))
    {
      v10 = *v5;
      v11 = v7;
      LogPrintF();
    }

    if (a2 && v7 == 200 && [a2 length])
    {
      if (IsAppleInternalBuild())
      {
        IntWithDefault = APSSettingsGetIntWithDefault();
      }

      else
      {
        IntWithDefault = 0x100000;
      }

      if ([a2 length] <= IntWithDefault)
      {
        [MEMORY[0x277CCAAA0] JSONObjectWithData:a2 options:0 error:0];
        objc_opt_class();
        objc_opt_isKindOfClass();
      }

      else if (gLogCategory_APBrokerHTTPUtils <= 90 && (gLogCategory_APBrokerHTTPUtils != -1 || _LogCategory_Initialize()))
      {
        ___APBrokerHTTPSendRequestToURL_block_invoke_cold_2(v5, a2);
      }
    }
  }

  v9 = *(v5 + 100);
  (*(*(v5 + 56) + 16))();

  _APBrokerHTTPReleaseRequestData(v5);
}

uint64_t ___APBrokerHTTPSendRequestToURL_block_invoke_cold_1(uint64_t *a1)
{
  v3 = a1[4];
  v2 = *a1;
  return LogPrintF();
}

uint64_t ___APBrokerHTTPSendRequestToURL_block_invoke_cold_2(uint64_t *a1, void *a2)
{
  v2 = *a1;
  [a2 length];
  return LogPrintF();
}

@end
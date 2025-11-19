@interface CopyNANEndpointForDeviceID
@end

@implementation CopyNANEndpointForDeviceID

void __browser_CopyNANEndpointForDeviceID_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v1 = *(a1 + 48);
  v3 = *(a1 + 64);
  v4 = *(a1 + 68);
  v5 = *(a1 + 56);
  v11 = 0;
  v12 = 0;
  if (*(CMBaseObjectGetDerivedStorage() + 245))
  {
    v7 = -6723;
  }

  else if (v5)
  {
    v6 = browser_copyNANEndpointForOneDeviceID(v2, v1, v3, v4, &v11, &v12);
    v7 = v6;
    v8 = v6 == -72065 || v6 == 0;
    if (v8 && (v12 || !v11 || (v9 = browser_copyNANEndpointForOneDeviceID(v2, v11, v3, v4, 0, &v12), v7 = v9, v9 == -72065) || !v9))
    {
      if (!v7)
      {
        *v5 = v12;
      }
    }

    else
    {
      APSLogErrorAt();
    }
  }

  else
  {
    APSLogErrorAt();
    v7 = -6705;
  }

  OUTLINED_FUNCTION_8_1();
  *(v10 + 24) = v7;
}

@end
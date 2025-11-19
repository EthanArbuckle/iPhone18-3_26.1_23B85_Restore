@interface NSHTTPURLResponse(AMSFraudReport)
- (BOOL)ams_isFraudReportCallbackResponse;
- (BOOL)ams_isFraudReportInitURLResponse;
- (BOOL)ams_isFraudReportRetryResponse;
@end

@implementation NSHTTPURLResponse(AMSFraudReport)

- (BOOL)ams_isFraudReportInitURLResponse
{
  v2 = [a1 ams_fsrNameSpace];
  if (v2)
  {
    v3 = [a1 ams_fsrInitUrl];
    if (v3)
    {
      v4 = [a1 ams_fsrRequestInterval];
      v5 = v4 != 0;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)ams_isFraudReportRetryResponse
{
  if ([a1 statusCode] != 409)
  {
    return 0;
  }

  v2 = [a1 ams_fsrNameSpace];
  if (v2)
  {
    v3 = [a1 ams_fsrTransactionID];
    if (v3)
    {
      v4 = [a1 ams_fsrAnonymousID];
      if (v4)
      {
        v5 = [a1 ams_fsrData];
        v6 = v5 != 0;
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)ams_isFraudReportCallbackResponse
{
  v2 = [a1 ams_fsrNameSpace];
  if (v2)
  {
    v3 = [a1 ams_fsrTransactionID];
    if (v3)
    {
      v4 = [a1 ams_fsrAnonymousID];
      if (v4)
      {
        v5 = [a1 ams_fsrData];
        if (v5)
        {
          v6 = [a1 ams_fsrCallbackUrl];
          v7 = v6 != 0;
        }

        else
        {
          v7 = 0;
        }
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end
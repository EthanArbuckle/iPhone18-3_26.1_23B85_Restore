@interface NSHTTPURLResponse(AMSFraudReport)
- (BOOL)ams_isFraudReportCallbackResponse;
- (BOOL)ams_isFraudReportInitURLResponse;
- (BOOL)ams_isFraudReportRetryResponse;
@end

@implementation NSHTTPURLResponse(AMSFraudReport)

- (BOOL)ams_isFraudReportInitURLResponse
{
  ams_fsrNameSpace = [self ams_fsrNameSpace];
  if (ams_fsrNameSpace)
  {
    ams_fsrInitUrl = [self ams_fsrInitUrl];
    if (ams_fsrInitUrl)
    {
      ams_fsrRequestInterval = [self ams_fsrRequestInterval];
      v5 = ams_fsrRequestInterval != 0;
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
  if ([self statusCode] != 409)
  {
    return 0;
  }

  ams_fsrNameSpace = [self ams_fsrNameSpace];
  if (ams_fsrNameSpace)
  {
    ams_fsrTransactionID = [self ams_fsrTransactionID];
    if (ams_fsrTransactionID)
    {
      ams_fsrAnonymousID = [self ams_fsrAnonymousID];
      if (ams_fsrAnonymousID)
      {
        ams_fsrData = [self ams_fsrData];
        v6 = ams_fsrData != 0;
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
  ams_fsrNameSpace = [self ams_fsrNameSpace];
  if (ams_fsrNameSpace)
  {
    ams_fsrTransactionID = [self ams_fsrTransactionID];
    if (ams_fsrTransactionID)
    {
      ams_fsrAnonymousID = [self ams_fsrAnonymousID];
      if (ams_fsrAnonymousID)
      {
        ams_fsrData = [self ams_fsrData];
        if (ams_fsrData)
        {
          ams_fsrCallbackUrl = [self ams_fsrCallbackUrl];
          v7 = ams_fsrCallbackUrl != 0;
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
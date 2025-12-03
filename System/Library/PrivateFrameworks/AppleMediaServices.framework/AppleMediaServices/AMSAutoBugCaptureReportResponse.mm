@interface AMSAutoBugCaptureReportResponse
- (AMSAutoBugCaptureReportResponse)initWithSessionID:(id)d groupID:(id)iD;
@end

@implementation AMSAutoBugCaptureReportResponse

- (AMSAutoBugCaptureReportResponse)initWithSessionID:(id)d groupID:(id)iD
{
  if (!d)
  {
    v5 = 0;
    v7 = 0;
    if (iD)
    {
      goto LABEL_3;
    }

LABEL_5:
    v8 = 0;
    v10 = 0;
    return sub_192C06E1C(v5, v7, v8, v10);
  }

  v5 = sub_192F967CC();
  v7 = v6;
  if (!iD)
  {
    goto LABEL_5;
  }

LABEL_3:
  v8 = sub_192F967CC();
  v10 = v9;
  return sub_192C06E1C(v5, v7, v8, v10);
}

@end
@interface AMSAutoBugCaptureReportResponse
- (AMSAutoBugCaptureReportResponse)initWithSessionID:(id)a3 groupID:(id)a4;
@end

@implementation AMSAutoBugCaptureReportResponse

- (AMSAutoBugCaptureReportResponse)initWithSessionID:(id)a3 groupID:(id)a4
{
  if (!a3)
  {
    v5 = 0;
    v7 = 0;
    if (a4)
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
  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v8 = sub_192F967CC();
  v10 = v9;
  return sub_192C06E1C(v5, v7, v8, v10);
}

@end
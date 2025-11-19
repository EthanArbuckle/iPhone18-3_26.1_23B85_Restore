@interface AMSDAutoBugCaptureService
+ (AMSDAutoBugCaptureService)sharedService;
+ (BOOL)isConnectionEntitled:(id)a3;
- (void)captureSnapshotWithSignature:(id)a3 delay:(double)a4 events:(id)a5 payload:(id)a6 actions:(id)a7 completion:(id)a8;
@end

@implementation AMSDAutoBugCaptureService

+ (AMSDAutoBugCaptureService)sharedService
{
  if (qword_1002E34A8 != -1)
  {
    sub_10021B56C();
  }

  v3 = qword_1002E34B0;

  return v3;
}

- (void)captureSnapshotWithSignature:(id)a3 delay:(double)a4 events:(id)a5 payload:(id)a6 actions:(id)a7 completion:(id)a8
{
  v13 = a8;
  v14 = a7;
  v15 = a6;
  v16 = a5;
  v17 = a3;
  v18 = objc_alloc_init(AMSDAutoBugCaptureServiceTrampoline);
  [(AMSDAutoBugCaptureServiceTrampoline *)v18 captureSnapshotWithSignature:v17 delay:v16 events:v15 payload:v14 actions:v13 completion:a4];
}

+ (BOOL)isConnectionEntitled:(id)a3
{
  v3 = a3;
  v4 = [v3 valueForEntitlement:@"com.apple.private.applemediaservices"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if ([v5 BOOLValue])
  {
    v6 = 1;
  }

  else
  {
    v7 = [v3 valueForEntitlement:@"com.apple.itunesstored.private"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v6 = [v8 BOOLValue];
  }

  return v6;
}

@end
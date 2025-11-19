@interface AMSAutoBugCaptureReport
+ (void)sendSnapshotFromXPCWithSignature:(NSDictionary *)a3 delay:(double)a4 events:(NSArray *)a5 payload:(NSDictionary *)a6 actions:(NSDictionary *)a7 completionHandler:(id)a8;
- (AMSAutoBugCaptureReport)initWithDomain:(id)a3 type:(id)a4 subtype:(id)a5 subtypeContext:(id)a6 process:(id)a7 thresholdValues:(id)a8;
- (NSArray)thresholdValues;
- (void)captureWithDelay:(double)a3 events:(NSArray *)a4 payload:(NSDictionary *)a5 actions:(AMSAutoBugCaptureDiagnosticActionOptions *)a6 completionHandler:(id)a7;
@end

@implementation AMSAutoBugCaptureReport

- (NSArray)thresholdValues
{
  if (AutoBugCaptureReport.thresholdValues.getter())
  {
    v2 = sub_192F96AFC();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (AMSAutoBugCaptureReport)initWithDomain:(id)a3 type:(id)a4 subtype:(id)a5 subtypeContext:(id)a6 process:(id)a7 thresholdValues:(id)a8
{
  v25 = sub_192F967CC();
  v11 = v10;
  v12 = sub_192F967CC();
  v14 = v13;
  v15 = sub_192F967CC();
  v17 = v16;
  if (a6)
  {
    a6 = sub_192F967CC();
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  v20 = sub_192F967CC();
  v22 = v21;
  if (a8)
  {
    v23 = sub_192F96B0C();
  }

  else
  {
    v23 = 0;
  }

  return AutoBugCaptureReport.init(domain:type:subtype:subtypeContext:process:thresholdValues:)(v25, v11, v12, v14, v15, v17, a6, v19, v20, v22, v23);
}

- (void)captureWithDelay:(double)a3 events:(NSArray *)a4 payload:(NSDictionary *)a5 actions:(AMSAutoBugCaptureDiagnosticActionOptions *)a6 completionHandler:(id)a7
{
  v12 = _Block_copy(a7);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a4;
  *(v13 + 32) = a5;
  *(v13 + 40) = a6;
  *(v13 + 48) = v12;
  *(v13 + 56) = self;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = self;

  sub_1928FB3BC(&unk_192FC2030, v13);
}

+ (void)sendSnapshotFromXPCWithSignature:(NSDictionary *)a3 delay:(double)a4 events:(NSArray *)a5 payload:(NSDictionary *)a6 actions:(NSDictionary *)a7 completionHandler:(id)a8
{
  v14 = _Block_copy(a8);
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  *(v15 + 24) = a4;
  *(v15 + 32) = a5;
  *(v15 + 40) = a6;
  *(v15 + 48) = a7;
  *(v15 + 56) = v14;
  *(v15 + 64) = a1;
  v16 = a3;
  v17 = a5;
  v18 = a6;
  v19 = a7;

  sub_1928FB3BC(&unk_192FC2040, v15);
}

@end
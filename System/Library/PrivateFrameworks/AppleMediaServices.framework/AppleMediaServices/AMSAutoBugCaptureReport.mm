@interface AMSAutoBugCaptureReport
+ (void)sendSnapshotFromXPCWithSignature:(NSDictionary *)signature delay:(double)delay events:(NSArray *)events payload:(NSDictionary *)payload actions:(NSDictionary *)actions completionHandler:(id)handler;
- (AMSAutoBugCaptureReport)initWithDomain:(id)domain type:(id)type subtype:(id)subtype subtypeContext:(id)context process:(id)process thresholdValues:(id)values;
- (NSArray)thresholdValues;
- (void)captureWithDelay:(double)delay events:(NSArray *)events payload:(NSDictionary *)payload actions:(AMSAutoBugCaptureDiagnosticActionOptions *)actions completionHandler:(id)handler;
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

- (AMSAutoBugCaptureReport)initWithDomain:(id)domain type:(id)type subtype:(id)subtype subtypeContext:(id)context process:(id)process thresholdValues:(id)values
{
  v25 = sub_192F967CC();
  v11 = v10;
  v12 = sub_192F967CC();
  v14 = v13;
  v15 = sub_192F967CC();
  v17 = v16;
  if (context)
  {
    context = sub_192F967CC();
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  v20 = sub_192F967CC();
  v22 = v21;
  if (values)
  {
    v23 = sub_192F96B0C();
  }

  else
  {
    v23 = 0;
  }

  return AutoBugCaptureReport.init(domain:type:subtype:subtypeContext:process:thresholdValues:)(v25, v11, v12, v14, v15, v17, context, v19, v20, v22, v23);
}

- (void)captureWithDelay:(double)delay events:(NSArray *)events payload:(NSDictionary *)payload actions:(AMSAutoBugCaptureDiagnosticActionOptions *)actions completionHandler:(id)handler
{
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  *(v13 + 16) = delay;
  *(v13 + 24) = events;
  *(v13 + 32) = payload;
  *(v13 + 40) = actions;
  *(v13 + 48) = v12;
  *(v13 + 56) = self;
  eventsCopy = events;
  payloadCopy = payload;
  actionsCopy = actions;
  selfCopy = self;

  sub_1928FB3BC(&unk_192FC2030, v13);
}

+ (void)sendSnapshotFromXPCWithSignature:(NSDictionary *)signature delay:(double)delay events:(NSArray *)events payload:(NSDictionary *)payload actions:(NSDictionary *)actions completionHandler:(id)handler
{
  v14 = _Block_copy(handler);
  v15 = swift_allocObject();
  *(v15 + 16) = signature;
  *(v15 + 24) = delay;
  *(v15 + 32) = events;
  *(v15 + 40) = payload;
  *(v15 + 48) = actions;
  *(v15 + 56) = v14;
  *(v15 + 64) = self;
  signatureCopy = signature;
  eventsCopy = events;
  payloadCopy = payload;
  actionsCopy = actions;

  sub_1928FB3BC(&unk_192FC2040, v15);
}

@end
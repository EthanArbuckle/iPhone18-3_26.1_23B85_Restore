@interface AMSDAutoBugCaptureService
+ (AMSDAutoBugCaptureService)sharedService;
+ (BOOL)isConnectionEntitled:(id)entitled;
- (void)captureSnapshotWithSignature:(id)signature delay:(double)delay events:(id)events payload:(id)payload actions:(id)actions completion:(id)completion;
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

- (void)captureSnapshotWithSignature:(id)signature delay:(double)delay events:(id)events payload:(id)payload actions:(id)actions completion:(id)completion
{
  completionCopy = completion;
  actionsCopy = actions;
  payloadCopy = payload;
  eventsCopy = events;
  signatureCopy = signature;
  v18 = objc_alloc_init(AMSDAutoBugCaptureServiceTrampoline);
  [(AMSDAutoBugCaptureServiceTrampoline *)v18 captureSnapshotWithSignature:signatureCopy delay:eventsCopy events:payloadCopy payload:actionsCopy actions:completionCopy completion:delay];
}

+ (BOOL)isConnectionEntitled:(id)entitled
{
  entitledCopy = entitled;
  v4 = [entitledCopy valueForEntitlement:@"com.apple.private.applemediaservices"];
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
    bOOLValue = 1;
  }

  else
  {
    v7 = [entitledCopy valueForEntitlement:@"com.apple.itunesstored.private"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    bOOLValue = [v8 BOOLValue];
  }

  return bOOLValue;
}

@end
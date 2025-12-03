@interface AMSDAutoBugCaptureServiceTrampoline
- (void)captureSnapshotWithSignature:(NSDictionary *)signature delay:(double)delay events:(NSArray *)events payload:(NSDictionary *)payload actions:(NSDictionary *)actions completion:(id)completion;
@end

@implementation AMSDAutoBugCaptureServiceTrampoline

- (void)captureSnapshotWithSignature:(NSDictionary *)signature delay:(double)delay events:(NSArray *)events payload:(NSDictionary *)payload actions:(NSDictionary *)actions completion:(id)completion
{
  v14 = _Block_copy(completion);
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
  selfCopy = self;

  sub_100004754(&unk_10023B3A0, v15);
}

@end
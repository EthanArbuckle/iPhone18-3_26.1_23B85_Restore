@interface AMSDAutoBugCaptureServiceTrampoline
- (void)captureSnapshotWithSignature:(NSDictionary *)a3 delay:(double)a4 events:(NSArray *)a5 payload:(NSDictionary *)a6 actions:(NSDictionary *)a7 completion:(id)a8;
@end

@implementation AMSDAutoBugCaptureServiceTrampoline

- (void)captureSnapshotWithSignature:(NSDictionary *)a3 delay:(double)a4 events:(NSArray *)a5 payload:(NSDictionary *)a6 actions:(NSDictionary *)a7 completion:(id)a8
{
  v14 = _Block_copy(a8);
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  *(v15 + 24) = a4;
  *(v15 + 32) = a5;
  *(v15 + 40) = a6;
  *(v15 + 48) = a7;
  *(v15 + 56) = v14;
  *(v15 + 64) = self;
  v16 = a3;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = self;

  sub_100004754(&unk_10023B3A0, v15);
}

@end
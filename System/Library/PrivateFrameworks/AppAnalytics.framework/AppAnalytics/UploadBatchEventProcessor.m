@interface UploadBatchEventProcessor
- (void)flushWithCallbackQueue:(id)a3 completion:(id)a4;
@end

@implementation UploadBatchEventProcessor

- (void)flushWithCallbackQueue:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  if (v5)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v5 = sub_1B69D72B0;
  }

  else
  {
    v6 = 0;
  }

  v7 = a3;

  UploadBatchEventProcessor.flush(callbackQueue:completion:)(v7, v5, v6);
  sub_1B69A3100(v5);
}

@end
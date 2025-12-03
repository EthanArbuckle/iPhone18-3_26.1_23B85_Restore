@interface LazyEventProcessor
- (void)flushWithCallbackQueue:(id)queue completion:(id)completion;
@end

@implementation LazyEventProcessor

- (void)flushWithCallbackQueue:(id)queue completion:(id)completion
{
  v5 = _Block_copy(completion);
  if (v5)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v5 = sub_1B6AB47E0;
  }

  else
  {
    v6 = 0;
  }

  queueCopy = queue;

  LazyEventProcessor.flush(callbackQueue:completion:)(queueCopy, v5, v6);
  sub_1B69A3100(v5);
}

@end
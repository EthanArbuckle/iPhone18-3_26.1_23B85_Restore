@interface _ASIncomingCallObserver
+ (_ASIncomingCallObserver)callObserverWithBlock:(id)a3;
- (id)_initWithBlock:(id)a3;
- (void)callObserver:(id)a3 callChanged:(id)a4;
@end

@implementation _ASIncomingCallObserver

+ (_ASIncomingCallObserver)callObserverWithBlock:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] _initWithBlock:v4];

  return v5;
}

- (id)_initWithBlock:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = _ASIncomingCallObserver;
  v5 = [(_ASIncomingCallObserver *)&v12 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695AEF8]);
    callObserver = v5->_callObserver;
    v5->_callObserver = v6;

    [(CXCallObserver *)v5->_callObserver setDelegate:v5 queue:0];
    v8 = _Block_copy(v4);
    incomingCallHandler = v5->_incomingCallHandler;
    v5->_incomingCallHandler = v8;

    v10 = v5;
  }

  return v5;
}

- (void)callObserver:(id)a3 callChanged:(id)a4
{
  if ([a4 hasConnected])
  {
    v5 = *(self->_incomingCallHandler + 2);

    v5();
  }
}

@end
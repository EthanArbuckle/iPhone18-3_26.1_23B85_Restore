@interface _ASIncomingCallObserver
+ (_ASIncomingCallObserver)callObserverWithBlock:(id)block;
- (id)_initWithBlock:(id)block;
- (void)callObserver:(id)observer callChanged:(id)changed;
@end

@implementation _ASIncomingCallObserver

+ (_ASIncomingCallObserver)callObserverWithBlock:(id)block
{
  blockCopy = block;
  v5 = [[self alloc] _initWithBlock:blockCopy];

  return v5;
}

- (id)_initWithBlock:(id)block
{
  blockCopy = block;
  v12.receiver = self;
  v12.super_class = _ASIncomingCallObserver;
  v5 = [(_ASIncomingCallObserver *)&v12 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695AEF8]);
    callObserver = v5->_callObserver;
    v5->_callObserver = v6;

    [(CXCallObserver *)v5->_callObserver setDelegate:v5 queue:0];
    v8 = _Block_copy(blockCopy);
    incomingCallHandler = v5->_incomingCallHandler;
    v5->_incomingCallHandler = v8;

    v10 = v5;
  }

  return v5;
}

- (void)callObserver:(id)observer callChanged:(id)changed
{
  if ([changed hasConnected])
  {
    v5 = *(self->_incomingCallHandler + 2);

    v5();
  }
}

@end
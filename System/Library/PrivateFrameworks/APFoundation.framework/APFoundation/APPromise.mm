@interface APPromise
- (APPromise)init;
- (void)catch:(id)catch;
- (void)raceWithTimeout:(double)timeout queue:(id)queue;
- (void)resolve;
- (void)then:(id)then;
@end

@implementation APPromise

- (APPromise)init
{
  v6.receiver = self;
  v6.super_class = APPromise;
  v2 = [(APPromise *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(_TtC12APFoundation15APPromiseBridge);
    innerPromise = v2->_innerPromise;
    v2->_innerPromise = v3;
  }

  return v2;
}

- (void)then:(id)then
{
  thenCopy = then;
  v10 = objc_msgSend_innerPromise(self, v5, v6, v7);
  objc_msgSend_then_(v10, v8, thenCopy, v9);
}

- (void)catch:(id)catch
{
  catchCopy = catch;
  v10 = objc_msgSend_innerPromise(self, v5, v6, v7);
  objc_msgSend_catch_(v10, v8, catchCopy, v9);
}

- (void)raceWithTimeout:(double)timeout queue:(id)queue
{
  queueCopy = queue;
  v12 = objc_msgSend_innerPromise(self, v7, v8, v9);
  objc_msgSend_raceWithTimeout_queue_(v12, v10, queueCopy, v11, timeout);
}

- (void)resolve
{
  v7 = objc_msgSend_innerPromise(self, a2, v2, v3);
  objc_msgSend_resolve(v7, v4, v5, v6);
}

@end
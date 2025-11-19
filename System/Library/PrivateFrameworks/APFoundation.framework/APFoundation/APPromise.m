@interface APPromise
- (APPromise)init;
- (void)catch:(id)a3;
- (void)raceWithTimeout:(double)a3 queue:(id)a4;
- (void)resolve;
- (void)then:(id)a3;
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

- (void)then:(id)a3
{
  v4 = a3;
  v10 = objc_msgSend_innerPromise(self, v5, v6, v7);
  objc_msgSend_then_(v10, v8, v4, v9);
}

- (void)catch:(id)a3
{
  v4 = a3;
  v10 = objc_msgSend_innerPromise(self, v5, v6, v7);
  objc_msgSend_catch_(v10, v8, v4, v9);
}

- (void)raceWithTimeout:(double)a3 queue:(id)a4
{
  v6 = a4;
  v12 = objc_msgSend_innerPromise(self, v7, v8, v9);
  objc_msgSend_raceWithTimeout_queue_(v12, v10, v6, v11, a3);
}

- (void)resolve
{
  v7 = objc_msgSend_innerPromise(self, a2, v2, v3);
  objc_msgSend_resolve(v7, v4, v5, v6);
}

@end
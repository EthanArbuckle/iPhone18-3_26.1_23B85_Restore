@interface _LTInterruptionHandler
- (_LTInterruptionHandler)init;
- (id)addObservationBlock:(id)a3;
- (void)_didReceiveInterruption;
- (void)addObserver:(id)a3;
- (void)removeObserver:(id)a3;
@end

@implementation _LTInterruptionHandler

- (_LTInterruptionHandler)init
{
  v8.receiver = self;
  v8.super_class = _LTInterruptionHandler;
  v2 = [(_LTInterruptionHandler *)&v8 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_queue, MEMORY[0x277D85CD0]);
    v4 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = v3->_observers;
    v3->_observers = v4;

    v6 = v3;
  }

  return v3;
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38___LTInterruptionHandler_addObserver___block_invoke;
  block[3] = &unk_278B6CD08;
  objc_copyWeak(&v8, &location);
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41___LTInterruptionHandler_removeObserver___block_invoke;
  block[3] = &unk_278B6CD08;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (id)addObservationBlock:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(_LTBlockBasedInterruptionHandler);
  [(_LTBlockBasedInterruptionHandler *)v5 setHandler:v4];

  [(_LTInterruptionHandler *)self addObserver:v5];

  return v5;
}

- (void)_didReceiveInterruption
{
  objc_initWeak(&location, self);
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __49___LTInterruptionHandler__didReceiveInterruption__block_invoke;
  v4[3] = &unk_278B6CD30;
  objc_copyWeak(&v5, &location);
  dispatch_async(queue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

@end
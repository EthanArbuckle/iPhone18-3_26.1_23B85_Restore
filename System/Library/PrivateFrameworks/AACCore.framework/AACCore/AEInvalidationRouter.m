@interface AEInvalidationRouter
- (AEInvalidationRouter)initWithQueue:(id)a3;
- (id)invalidationHandler;
- (void)fetchCapturedErrorWithCompletion:(id)a3;
- (void)forwardError;
- (void)setRouterDelegate:(id)a3;
- (void)setRouterMode:(int64_t)a3;
@end

@implementation AEInvalidationRouter

- (AEInvalidationRouter)initWithQueue:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = AEInvalidationRouter;
  v6 = [(AEInvalidationRouter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, a3);
    v7->_mode = 0;
  }

  return v7;
}

void __43__AEInvalidationRouter_invalidationHandler__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __43__AEInvalidationRouter_invalidationHandler__block_invoke_2;
  v6[3] = &unk_278BB6F60;
  objc_copyWeak(&v8, (a1 + 40));
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, v6);

  objc_destroyWeak(&v8);
}

void __43__AEInvalidationRouter_invalidationHandler__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if ((*(WeakRetained + 8) & 1) == 0)
    {
      *(WeakRetained + 8) = 1;
      v3 = WeakRetained;
      objc_storeStrong(WeakRetained + 5, *(a1 + 32));
      WeakRetained = v3;
      if (*(v3 + 4) == 1)
      {
        [(AEInvalidationRouter *)v3 forwardError];
        WeakRetained = v3;
      }
    }
  }
}

- (void)setRouterMode:(int64_t)a3
{
  objc_initWeak(&location, self);
  if (self)
  {
    queue = self->_queue;
  }

  OUTLINED_FUNCTION_0_1();
  v10 = 3221225472;
  v11 = __38__AEInvalidationRouter_setRouterMode___block_invoke;
  v12 = &unk_278BB6F38;
  v8 = v7;
  objc_copyWeak((v3 + 32), &location);
  v13 = a3;
  dispatch_async(v8, block);

  objc_destroyWeak((v3 + 32));
  objc_destroyWeak(&location);
}

void __38__AEInvalidationRouter_setRouterMode___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    WeakRetained[4] = *(a1 + 40);
  }

  v3 = WeakRetained;
  [(AEInvalidationRouter *)WeakRetained forwardError];
}

- (void)forwardError
{
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 24));
    if (WeakRetained && *(a1 + 32) == 1)
    {
      v5 = WeakRetained;
      v3 = *(a1 + 40);
      if (v3)
      {
        v4 = *(a1 + 9);

        if (v4)
        {
          return;
        }

        *(a1 + 9) = 1;
        v5 = objc_loadWeakRetained((a1 + 24));
        [v5 invalidationRouter:a1 didReceiveInvalidationError:*(a1 + 40)];
      }

      WeakRetained = v5;
    }
  }
}

- (void)setRouterDelegate:(id)a3
{
  v5 = a3;
  objc_initWeak(&location, self);
  if (self)
  {
    queue = self->_queue;
  }

  OUTLINED_FUNCTION_0_1();
  v11 = 3221225472;
  v12 = __42__AEInvalidationRouter_setRouterDelegate___block_invoke;
  v13 = &unk_278BB6F60;
  v8 = v7;
  objc_copyWeak((v3 + 40), &location);
  v14 = v5;
  v9 = v5;
  dispatch_async(v8, block);

  objc_destroyWeak((v3 + 40));
  objc_destroyWeak(&location);
}

void __42__AEInvalidationRouter_setRouterDelegate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    objc_storeWeak(WeakRetained + 3, *(a1 + 32));
    WeakRetained = v3;
  }

  [(AEInvalidationRouter *)WeakRetained forwardError];
}

- (void)fetchCapturedErrorWithCompletion:(id)a3
{
  v5 = a3;
  objc_initWeak(&location, self);
  if (self)
  {
    self = self->_queue;
  }

  OUTLINED_FUNCTION_0_1();
  v9 = 3221225472;
  v10 = __57__AEInvalidationRouter_fetchCapturedErrorWithCompletion___block_invoke;
  v11 = &unk_278BB6F88;
  v12 = v5;
  v6 = v5;
  v7 = self;
  objc_copyWeak((v3 + 40), &location);
  dispatch_async(&v7->super, block);

  objc_destroyWeak((v3 + 40));
  objc_destroyWeak(&location);
}

void __57__AEInvalidationRouter_fetchCapturedErrorWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v3 = *(WeakRetained + 5);
  }

  else
  {
    v3 = 0;
  }

  (*(v1 + 16))(v1, v3);
}

- (id)invalidationHandler
{
  objc_initWeak(&location, self);
  if (self)
  {
    queue = self->_queue;
  }

  else
  {
    queue = 0;
  }

  v4 = queue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __43__AEInvalidationRouter_invalidationHandler__block_invoke;
  v9[3] = &unk_278BB6FB0;
  v10 = v4;
  v5 = v4;
  objc_copyWeak(&v11, &location);
  v6 = MEMORY[0x23EECC850](v9);
  v7 = MEMORY[0x23EECC850]();

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);

  return v7;
}

@end
@interface AXAssertionCoordinator
- (AXAssertionCoordinator)initWithIdentifier:(id)a3 delegate:(id)a4;
- (AXAssertionCoordinatorDelegate)delegate;
- (id)acquireAssertionWithReason:(id)a3;
- (void)_startTrackingPoorMansAssertion:(id)a3;
- (void)_stopTrackingPoorMansAssertion:(id)a3;
- (void)dealloc;
@end

@implementation AXAssertionCoordinator

- (AXAssertionCoordinator)initWithIdentifier:(id)a3 delegate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = AXAssertionCoordinator;
  v8 = [(AXAssertionCoordinator *)&v11 init];
  if (v8)
  {
    v9 = dispatch_queue_create("AXAssertionCoordinator-AssertionQueue", 0);
    [(AXAssertionCoordinator *)v8 setAssertionQueue:v9];

    [(AXAssertionCoordinator *)v8 setDelegate:v7];
    [(AXAssertionCoordinator *)v8 setIdentifier:v6];
  }

  return v8;
}

- (id)acquireAssertionWithReason:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = objc_alloc(MEMORY[0x1E698E778]);
  v6 = [(AXAssertionCoordinator *)self identifier];
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __53__AXAssertionCoordinator_acquireAssertionWithReason___block_invoke;
  v12 = &unk_1E71EA750;
  objc_copyWeak(&v13, &location);
  v7 = [v5 initWithIdentifier:v6 forReason:v4 invalidationBlock:&v9];

  [(AXAssertionCoordinator *)self _startTrackingPoorMansAssertion:v7, v9, v10, v11, v12];
  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);

  return v7;
}

void __53__AXAssertionCoordinator_acquireAssertionWithReason___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _stopTrackingPoorMansAssertion:v3];
}

- (void)_startTrackingPoorMansAssertion:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = AXLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 reason];
    *buf = 138412290;
    v12 = v6;
    _os_log_impl(&dword_18B15E000, v5, OS_LOG_TYPE_DEFAULT, "AXAssertionCoordinator: Now start tracking assertion for reason: %@", buf, 0xCu);
  }

  v7 = [(AXAssertionCoordinator *)self assertionQueue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __58__AXAssertionCoordinator__startTrackingPoorMansAssertion___block_invoke;
  v9[3] = &unk_1E71EA128;
  v9[4] = self;
  v10 = v4;
  v8 = v4;
  dispatch_async(v7, v9);
}

void __58__AXAssertionCoordinator__startTrackingPoorMansAssertion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) assertions];
  v3 = [v2 count];

  v4 = [*(a1 + 32) assertions];

  if (!v4)
  {
    v5 = [MEMORY[0x1E696AC70] hashTableWithOptions:517];
    [*(a1 + 32) setAssertions:v5];
  }

  v6 = [*(a1 + 32) assertions];
  [v6 addObject:*(a1 + 40)];

  if (!v3)
  {
    v7 = [*(a1 + 32) delegate];
    [v7 assertionCoordinator:*(a1 + 32) assertionsDidBecomeActive:1];
  }
}

- (void)_stopTrackingPoorMansAssertion:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = AXLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 reason];
    *buf = 138412290;
    v12 = v6;
    _os_log_impl(&dword_18B15E000, v5, OS_LOG_TYPE_DEFAULT, "AXAssertionCoordinator: Stop tracking assertion for reason: %@", buf, 0xCu);
  }

  v7 = [(AXAssertionCoordinator *)self assertionQueue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __57__AXAssertionCoordinator__stopTrackingPoorMansAssertion___block_invoke;
  v9[3] = &unk_1E71EA128;
  v9[4] = self;
  v10 = v4;
  v8 = v4;
  dispatch_async(v7, v9);
}

void __57__AXAssertionCoordinator__stopTrackingPoorMansAssertion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) assertions];
  v3 = [v2 count];

  v4 = [*(a1 + 32) assertions];
  [v4 removeObject:*(a1 + 40)];

  if (v3)
  {
    v5 = [*(a1 + 32) assertions];
    v6 = [v5 count];

    if (!v6)
    {
      v7 = [*(a1 + 32) delegate];
      [v7 assertionCoordinator:*(a1 + 32) assertionsDidBecomeActive:0];
    }
  }
}

- (void)dealloc
{
  v3 = [(AXAssertionCoordinator *)self assertionQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__AXAssertionCoordinator_dealloc__block_invoke;
  block[3] = &unk_1E71E9B98;
  block[4] = self;
  dispatch_async(v3, block);

  v4.receiver = self;
  v4.super_class = AXAssertionCoordinator;
  [(AXAssertionCoordinator *)&v4 dealloc];
}

void __33__AXAssertionCoordinator_dealloc__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) assertions];
  v3 = [v2 count];

  if (v3)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v4 = [*(a1 + 32) assertions];
    v5 = [v4 allObjects];

    v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      do
      {
        v9 = 0;
        do
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [*(*(&v10 + 1) + 8 * v9++) invalidate];
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }
  }
}

- (AXAssertionCoordinatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
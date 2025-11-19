@interface ASCModalViewInteraction
- (ASCModalViewInteraction)initWithView:(id)a3;
- (UIView)view;
- (void)cancelGestureDidChange:(id)a3;
- (void)dealloc;
- (void)installWithCancelBlock:(id)a3;
- (void)invalidate;
@end

@implementation ASCModalViewInteraction

- (ASCModalViewInteraction)initWithView:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = ASCModalViewInteraction;
  v5 = [(ASCModalViewInteraction *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_view, v4);
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    observers = v6->_observers;
    v6->_observers = v7;
  }

  return v6;
}

- (void)dealloc
{
  [(ASCModalViewInteraction *)self invalidate];
  v3.receiver = self;
  v3.super_class = ASCModalViewInteraction;
  [(ASCModalViewInteraction *)&v3 dealloc];
}

- (void)installWithCancelBlock:(id)a3
{
  v41 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ASCModalViewInteraction *)self view];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 window];

    if (v7)
    {
      v8 = [(ASCModalViewInteraction *)self cancelGestureRecognizer];

      if (v8)
      {
        v32 = objc_alloc(MEMORY[0x277CBEAD8]);
        objc_exception_throw([v32 initWithName:*MEMORY[0x277CBE658] reason:@"Modal view interaction cannot be installed more than once" userInfo:0]);
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        v40 = self;
        _os_log_impl(&dword_21571A000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Installing %{public}@", buf, 0xCu);
      }

      v9 = [[ASCModalViewGestureRecognizer alloc] initWithTargetView:v6 target:self action:sel_cancelGestureDidChange_];
      [(ASCModalViewInteraction *)self setCancelGestureRecognizer:v9];

      [(ASCModalViewInteraction *)self setCancelBlock:v4];
      v10 = [v6 window];
      v11 = [(ASCModalViewInteraction *)self cancelGestureRecognizer];
      [v10 addGestureRecognizer:v11];

      objc_initWeak(buf, self);
      v33 = MEMORY[0x277D85DD0];
      v34 = 3221225472;
      v35 = __50__ASCModalViewInteraction_installWithCancelBlock___block_invoke;
      v36 = &unk_2781CCEF8;
      objc_copyWeak(&v38, buf);
      v37 = v4;
      v12 = MEMORY[0x216070C30](&v33);
      v13 = [MEMORY[0x277CCAB98] defaultCenter];
      v14 = [(ASCModalViewInteraction *)self observers];
      v15 = [v13 addObserverForName:*MEMORY[0x277D76768] object:0 queue:0 usingBlock:v12];
      [v14 addObject:v15];

      v16 = [(ASCModalViewInteraction *)self observers];
      v17 = [v13 addObserverForName:*MEMORY[0x277CCA0C8] object:0 queue:0 usingBlock:v12];
      [v16 addObject:v17];

      objc_destroyWeak(&v38);
      objc_destroyWeak(buf);
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [(ASCModalViewInteraction *)self installWithCancelBlock:v25, v26, v27, v28, v29, v30, v31];
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [(ASCModalViewInteraction *)self installWithCancelBlock:v18, v19, v20, v21, v22, v23, v24];
  }
}

uint64_t __50__ASCModalViewInteraction_installWithCancelBlock___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v4 = 138543362;
    v5 = WeakRetained;
    _os_log_impl(&dword_21571A000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Canceling %{public}@ for application entering background", &v4, 0xCu);
  }

  return (*(*(a1 + 32) + 16))();
}

- (void)invalidate
{
  v22 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v21 = self;
    _os_log_impl(&dword_21571A000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Invalidating %{public}@", buf, 0xCu);
  }

  v3 = [(ASCModalViewInteraction *)self cancelGestureRecognizer];

  if (v3)
  {
    v4 = [(ASCModalViewInteraction *)self cancelGestureRecognizer];
    v5 = [v4 view];
    v6 = [(ASCModalViewInteraction *)self cancelGestureRecognizer];
    [v5 removeGestureRecognizer:v6];
  }

  v7 = [MEMORY[0x277CCAB98] defaultCenter];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [(ASCModalViewInteraction *)self observers];
  v9 = [v8 copy];

  v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      v13 = 0;
      do
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [v7 removeObserver:*(*(&v15 + 1) + 8 * v13++)];
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }

  v14 = [(ASCModalViewInteraction *)self observers];
  [v14 removeAllObjects];
}

- (void)cancelGestureDidChange:(id)a3
{
  if ([a3 state] == 3)
  {
    v4 = [(ASCModalViewInteraction *)self cancelBlock];

    if (v4)
    {
      v12 = [(ASCModalViewInteraction *)self cancelBlock];
      v12[2]();
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [(ASCModalViewInteraction *)self cancelGestureDidChange:v5, v6, v7, v8, v9, v10, v11];
    }
  }
}

- (UIView)view
{
  WeakRetained = objc_loadWeakRetained(&self->_view);

  return WeakRetained;
}

@end
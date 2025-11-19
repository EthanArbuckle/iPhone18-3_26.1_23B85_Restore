@interface LAPSPasscodeChangeSystemDispatchDecorator
- (LAPSPasscodeChangeSystemDispatchDecorator)initWithSystem:(id)a3;
- (LAPSPasscodeChangeSystemDispatchDecorator)initWithSystem:(id)a3 workQueue:(id)a4;
- (void)changePasscode:(id)a3 to:(id)a4 completion:(id)a5;
- (void)verifyNewPasscode:(id)a3 completion:(id)a4;
- (void)verifyPasscode:(id)a3 completion:(id)a4;
@end

@implementation LAPSPasscodeChangeSystemDispatchDecorator

- (LAPSPasscodeChangeSystemDispatchDecorator)initWithSystem:(id)a3
{
  v4 = MEMORY[0x277D24028];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v4 createUserInitiatedSerialQueueWithIdentifier:v7];

  v9 = [(LAPSPasscodeChangeSystemDispatchDecorator *)self initWithSystem:v5 workQueue:v8];
  return v9;
}

- (LAPSPasscodeChangeSystemDispatchDecorator)initWithSystem:(id)a3 workQueue:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = LAPSPasscodeChangeSystemDispatchDecorator;
  v9 = [(LAPSPasscodeChangeSystemDispatchDecorator *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_system, a3);
    objc_storeStrong(&v10->_workQueue, a4);
  }

  return v10;
}

- (void)verifyPasscode:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __71__LAPSPasscodeChangeSystemDispatchDecorator_verifyPasscode_completion___block_invoke;
  v10[3] = &unk_278A65818;
  objc_copyWeak(&v13, &location);
  v8 = v6;
  v11 = v8;
  v9 = v7;
  v12 = v9;
  [(LAPSPasscodeChangeSystemDispatchDecorator *)self _performOnBackgroundQueue:v10];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __71__LAPSPasscodeChangeSystemDispatchDecorator_verifyPasscode_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(WeakRetained + 1);
    v5 = *(a1 + 32);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __71__LAPSPasscodeChangeSystemDispatchDecorator_verifyPasscode_completion___block_invoke_2;
    v6[3] = &unk_278A65D18;
    objc_copyWeak(&v8, (a1 + 48));
    v7 = *(a1 + 40);
    [v4 verifyPasscode:v5 completion:v6];

    objc_destroyWeak(&v8);
  }
}

void __71__LAPSPasscodeChangeSystemDispatchDecorator_verifyPasscode_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __71__LAPSPasscodeChangeSystemDispatchDecorator_verifyPasscode_completion___block_invoke_3;
    v5[3] = &unk_278A65E40;
    v7 = *(a1 + 32);
    v6 = v3;
    [WeakRetained _performOnMainQueue:v5];
  }
}

- (void)verifyNewPasscode:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __74__LAPSPasscodeChangeSystemDispatchDecorator_verifyNewPasscode_completion___block_invoke;
  v10[3] = &unk_278A65818;
  objc_copyWeak(&v13, &location);
  v8 = v6;
  v11 = v8;
  v9 = v7;
  v12 = v9;
  [(LAPSPasscodeChangeSystemDispatchDecorator *)self _performOnBackgroundQueue:v10];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __74__LAPSPasscodeChangeSystemDispatchDecorator_verifyNewPasscode_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(WeakRetained + 1);
    v5 = *(a1 + 32);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __74__LAPSPasscodeChangeSystemDispatchDecorator_verifyNewPasscode_completion___block_invoke_2;
    v6[3] = &unk_278A65D18;
    objc_copyWeak(&v8, (a1 + 48));
    v7 = *(a1 + 40);
    [v4 verifyNewPasscode:v5 completion:v6];

    objc_destroyWeak(&v8);
  }
}

void __74__LAPSPasscodeChangeSystemDispatchDecorator_verifyNewPasscode_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __74__LAPSPasscodeChangeSystemDispatchDecorator_verifyNewPasscode_completion___block_invoke_3;
    v5[3] = &unk_278A65E40;
    v7 = *(a1 + 32);
    v6 = v3;
    [WeakRetained _performOnMainQueue:v5];
  }
}

- (void)changePasscode:(id)a3 to:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_initWeak(&location, self);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __74__LAPSPasscodeChangeSystemDispatchDecorator_changePasscode_to_completion___block_invoke;
  v14[3] = &unk_278A65E68;
  objc_copyWeak(&v18, &location);
  v11 = v8;
  v15 = v11;
  v12 = v9;
  v16 = v12;
  v13 = v10;
  v17 = v13;
  [(LAPSPasscodeChangeSystemDispatchDecorator *)self _performOnBackgroundQueue:v14];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

void __74__LAPSPasscodeChangeSystemDispatchDecorator_changePasscode_to_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(WeakRetained + 1);
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __74__LAPSPasscodeChangeSystemDispatchDecorator_changePasscode_to_completion___block_invoke_2;
    v7[3] = &unk_278A65D18;
    objc_copyWeak(&v9, (a1 + 56));
    v8 = *(a1 + 48);
    [v4 changePasscode:v5 to:v6 completion:v7];

    objc_destroyWeak(&v9);
  }
}

void __74__LAPSPasscodeChangeSystemDispatchDecorator_changePasscode_to_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __74__LAPSPasscodeChangeSystemDispatchDecorator_changePasscode_to_completion___block_invoke_3;
    v5[3] = &unk_278A65E40;
    v7 = *(a1 + 32);
    v6 = v3;
    [WeakRetained _performOnMainQueue:v5];
  }
}

@end
@interface LAPSPasscodeChangeUIPresentationController
- (LAPSPasscodeChangeUIPresentationController)initWithParentVC:(id)a3 containerVC:(id)a4;
- (void)_dismissWithCompletion:(id)a3;
- (void)_restoreParentModalInPresentationFlag;
- (void)_storeParentModalInPresentationFlag;
- (void)dismissWithCompletion:(id)a3;
- (void)presentAlertVC:(id)a3;
- (void)presentVC:(id)a3 animated:(BOOL)a4;
- (void)presentVC:(id)a3 transitionStyle:(int64_t)a4;
@end

@implementation LAPSPasscodeChangeUIPresentationController

- (LAPSPasscodeChangeUIPresentationController)initWithParentVC:(id)a3 containerVC:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v11.receiver = self;
  v11.super_class = LAPSPasscodeChangeUIPresentationController;
  v8 = [(LAPSPasscodeChangeUIPresentationController *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_parentVC, v6);
    [(LAPSPasscodeChangeUIPresentationController *)v9 _storeParentModalInPresentationFlag];
    objc_storeStrong(&v9->_containerVC, a4);
  }

  return v9;
}

- (void)dismissWithCompletion:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v5 = LACLogPasscodeService();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v11 = self;
    _os_log_impl(&dword_238BCD000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ will dismiss UI", buf, 0xCu);
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __68__LAPSPasscodeChangeUIPresentationController_dismissWithCompletion___block_invoke;
  v8[3] = &unk_278A65A20;
  v8[4] = self;
  v9 = v4;
  v6 = v4;
  [(LAPSPasscodeChangeUIPresentationController *)self _dismissWithCompletion:v8];

  v7 = *MEMORY[0x277D85DE8];
}

uint64_t __68__LAPSPasscodeChangeUIPresentationController_dismissWithCompletion___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 32) resignFirstResponder];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)presentAlertVC:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v5 = LACLogPasscodeService();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543618;
    v11 = self;
    v12 = 2114;
    v13 = v4;
    _os_log_impl(&dword_238BCD000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ will present %{public}@", &v10, 0x16u);
  }

  v6 = [(LACUIContainerViewController *)self->_containerVC parentViewController];
  if (v6)
  {
    WeakRetained = self->_containerVC;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_parentVC);
  }

  v8 = WeakRetained;

  [(LACUIContainerViewController *)v8 resignFirstResponder];
  [(LACUIContainerViewController *)v8 presentViewController:v4 animated:1 completion:&__block_literal_global_5];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)presentVC:(id)a3 animated:(BOOL)a4
{
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __65__LAPSPasscodeChangeUIPresentationController_presentVC_animated___block_invoke;
  v10 = &unk_278A65F38;
  LOBYTE(v12) = a4;
  v11 = self;
  v5 = a3;
  v6 = __65__LAPSPasscodeChangeUIPresentationController_presentVC_animated___block_invoke(&v7);
  [(LAPSPasscodeChangeUIPresentationController *)self presentVC:v5 transitionStyle:v6, v7, v8, v9, v10, v11, v12];
}

BOOL __65__LAPSPasscodeChangeUIPresentationController_presentVC_animated___block_invoke(uint64_t a1)
{
  if (*(a1 + 40) != 1)
  {
    return 0;
  }

  v1 = [*(*(a1 + 32) + 32) currentViewController];
  v2 = v1 != 0;

  return v2;
}

- (void)presentVC:(id)a3 transitionStyle:(int64_t)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a3;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v7 = LACLogPasscodeService();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543874;
    v10 = self;
    v11 = 2114;
    v12 = v6;
    v13 = 2048;
    v14 = a4;
    _os_log_impl(&dword_238BCD000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ will present %{public}@ with transition style %ld", &v9, 0x20u);
  }

  [(LAPSPasscodeChangeUIPresentationController *)self _setupParentVCIfNeededAnimated:1];
  [(LACUIContainerViewController *)self->_containerVC presentViewController:v6 transitionStyle:a4];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_dismissWithCompletion:(id)a3
{
  v11 = a3;
  v4 = [(LACUIContainerViewController *)self->_containerVC view];
  [v4 setUserInteractionEnabled:0];

  [(LAPSPasscodeChangeUIPresentationController *)self _restoreParentModalInPresentationFlag];
  WeakRetained = objc_loadWeakRetained(&self->_parentVC);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = [(LACUIContainerViewController *)self->_containerVC navigationItem];
    v8 = objc_alloc_init(MEMORY[0x277D751E0]);
    [v8 setTitle:&stru_284B7B4C0];
    [v7 setBackBarButtonItem:v8];
  }

  else
  {
    v9 = objc_loadWeakRetained(&self->_rootVC);

    if (v9)
    {
      v10 = objc_loadWeakRetained(&self->_rootVC);
      [v10 dismissViewControllerAnimated:1 completion:v11];

      goto LABEL_6;
    }
  }

  v11[2]();
LABEL_6:
}

- (void)_storeParentModalInPresentationFlag
{
  WeakRetained = objc_loadWeakRetained(&self->_parentVC);
  self->_parentModalInPresentationOriginalFlag = [WeakRetained isModalInPresentation];
}

- (void)_restoreParentModalInPresentationFlag
{
  WeakRetained = objc_loadWeakRetained(&self->_parentVC);
  [WeakRetained setModalInPresentation:self->_parentModalInPresentationOriginalFlag];
}

@end
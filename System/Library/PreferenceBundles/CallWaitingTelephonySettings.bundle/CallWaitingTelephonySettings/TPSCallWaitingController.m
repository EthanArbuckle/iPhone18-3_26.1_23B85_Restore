@interface TPSCallWaitingController
- (TPSCallWaitingController)init;
- (TPSCallWaitingController)initWithSubscriptionContext:(id)a3;
- (TPSCallWaitingControllerDelegate)delegate;
- (void)requestController:(id)a3 didReceiveResponse:(id)a4;
- (void)requestStateChange:(int64_t)a3;
@end

@implementation TPSCallWaitingController

- (TPSCallWaitingController)init
{
  [(TPSCallWaitingController *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (TPSCallWaitingController)initWithSubscriptionContext:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = TPSCallWaitingController;
  v6 = [(TPSCallWaitingController *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_subscriptionContext, a3);
    v7->_state = 0;
    v8 = objc_alloc_init(TPSCallWaitingRequestController);
    requestController = v7->_requestController;
    v7->_requestController = v8;

    [(TPSCallWaitingRequestController *)v7->_requestController addDelegate:v7 queue:&_dispatch_main_q];
    v10 = [[TPSCallWaitingRequest alloc] initWithSubscriptionContext:v5];
    [(TPSCallWaitingRequestController *)v7->_requestController addRequest:v10];
  }

  return v7;
}

- (void)requestStateChange:(int64_t)a3
{
  if ([(TPSCallWaitingController *)self state]!= a3)
  {
    [(TPSCallWaitingController *)self setState:0];
    v5 = [TPSSetCallWaitingRequest alloc];
    v6 = [(TPSCallWaitingController *)self subscriptionContext];
    v7 = [v5 initWithSubscriptionContext:v6 enabled:a3 == 2];

    v8 = TPSCallWaitingLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v7;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Sending call waiting request %@.", &v10, 0xCu);
    }

    v9 = [(TPSCallWaitingController *)self requestController];
    [v9 addRequest:v7];
  }
}

- (void)requestController:(id)a3 didReceiveResponse:(id)a4
{
  v5 = a4;
  v6 = TPSCallWaitingLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 138412546;
    *&v13[4] = objc_opt_class();
    *&v13[12] = 2112;
    *&v13[14] = v5;
    v7 = *&v13[4];
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "%@ received response %@.", v13, 0x16u);
  }

  if ([v5 enabled])
  {
    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  [(TPSCallWaitingController *)self setState:v8, *v13, *&v13[16]];
  v9 = [(TPSCallWaitingController *)self delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = [(TPSCallWaitingController *)self delegate];
    v12 = [v5 error];
    [v11 callWaitingController:self didChangeState:v8 error:v12];
  }
}

- (TPSCallWaitingControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
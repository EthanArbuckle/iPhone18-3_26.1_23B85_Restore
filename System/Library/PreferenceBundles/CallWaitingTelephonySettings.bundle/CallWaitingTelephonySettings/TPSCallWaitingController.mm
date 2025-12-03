@interface TPSCallWaitingController
- (TPSCallWaitingController)init;
- (TPSCallWaitingController)initWithSubscriptionContext:(id)context;
- (TPSCallWaitingControllerDelegate)delegate;
- (void)requestController:(id)controller didReceiveResponse:(id)response;
- (void)requestStateChange:(int64_t)change;
@end

@implementation TPSCallWaitingController

- (TPSCallWaitingController)init
{
  [(TPSCallWaitingController *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (TPSCallWaitingController)initWithSubscriptionContext:(id)context
{
  contextCopy = context;
  v12.receiver = self;
  v12.super_class = TPSCallWaitingController;
  v6 = [(TPSCallWaitingController *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_subscriptionContext, context);
    v7->_state = 0;
    v8 = objc_alloc_init(TPSCallWaitingRequestController);
    requestController = v7->_requestController;
    v7->_requestController = v8;

    [(TPSCallWaitingRequestController *)v7->_requestController addDelegate:v7 queue:&_dispatch_main_q];
    v10 = [[TPSCallWaitingRequest alloc] initWithSubscriptionContext:contextCopy];
    [(TPSCallWaitingRequestController *)v7->_requestController addRequest:v10];
  }

  return v7;
}

- (void)requestStateChange:(int64_t)change
{
  if ([(TPSCallWaitingController *)self state]!= change)
  {
    [(TPSCallWaitingController *)self setState:0];
    v5 = [TPSSetCallWaitingRequest alloc];
    subscriptionContext = [(TPSCallWaitingController *)self subscriptionContext];
    v7 = [v5 initWithSubscriptionContext:subscriptionContext enabled:change == 2];

    v8 = TPSCallWaitingLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v7;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Sending call waiting request %@.", &v10, 0xCu);
    }

    requestController = [(TPSCallWaitingController *)self requestController];
    [requestController addRequest:v7];
  }
}

- (void)requestController:(id)controller didReceiveResponse:(id)response
{
  responseCopy = response;
  v6 = TPSCallWaitingLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 138412546;
    *&v13[4] = objc_opt_class();
    *&v13[12] = 2112;
    *&v13[14] = responseCopy;
    v7 = *&v13[4];
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "%@ received response %@.", v13, 0x16u);
  }

  if ([responseCopy enabled])
  {
    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  [(TPSCallWaitingController *)self setState:v8, *v13, *&v13[16]];
  delegate = [(TPSCallWaitingController *)self delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    delegate2 = [(TPSCallWaitingController *)self delegate];
    error = [responseCopy error];
    [delegate2 callWaitingController:self didChangeState:v8 error:error];
  }
}

- (TPSCallWaitingControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
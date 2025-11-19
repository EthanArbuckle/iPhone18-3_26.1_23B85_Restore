@interface TPSCallingLineIdRestrictionController
- (TPSCallingLineIdRestrictionController)init;
- (TPSCallingLineIdRestrictionController)initWithSubscriptionContext:(id)a3;
- (TPSCallingLineIdRestrictionControllerDelegate)delegate;
- (void)requestController:(id)a3 didReceiveResponse:(id)a4;
- (void)requestStateChange:(int64_t)a3;
- (void)requestStateForSubscriptionContext:(id)a3;
@end

@implementation TPSCallingLineIdRestrictionController

- (TPSCallingLineIdRestrictionController)init
{
  [(TPSCallingLineIdRestrictionController *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (TPSCallingLineIdRestrictionController)initWithSubscriptionContext:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = TPSCallingLineIdRestrictionController;
  v6 = [(TPSCallingLineIdRestrictionController *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_subscriptionContext, a3);
    v7->_state = 0;
    v8 = objc_alloc_init(TPSCallingLineIdRestrictionRequestController);
    requestController = v7->_requestController;
    v7->_requestController = v8;

    [(TPSCallingLineIdRestrictionRequestController *)v7->_requestController addDelegate:v7 queue:&_dispatch_main_q];
    [(TPSCallingLineIdRestrictionController *)v7 requestStateForSubscriptionContext:v5];
  }

  return v7;
}

- (void)requestStateForSubscriptionContext:(id)a3
{
  v4 = a3;
  v5 = [[TPSCallingLineIdRestrictionRequest alloc] initWithSubscriptionContext:v4];

  v6 = TPSCallingLineIdRestrictionLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Sending caller line ID restriction request %@.", &v7, 0xCu);
  }

  [(TPSCallingLineIdRestrictionRequestController *)self->_requestController addRequest:v5];
}

- (void)requestStateChange:(int64_t)a3
{
  if ([(TPSCallingLineIdRestrictionController *)self state]!= a3)
  {
    [(TPSCallingLineIdRestrictionController *)self setState:0];
    v5 = [TPSCallingLineIdRestrictionSetRequest alloc];
    v6 = [(TPSCallingLineIdRestrictionController *)self subscriptionContext];
    v7 = [v5 initWithSubscriptionContext:v6 state:a3];

    v8 = TPSCallingLineIdRestrictionLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v7;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Sending caller line ID restriction set request %@.", &v10, 0xCu);
    }

    v9 = [(TPSCallingLineIdRestrictionController *)self requestController];
    [v9 addRequest:v7];
  }
}

- (void)requestController:(id)a3 didReceiveResponse:(id)a4
{
  v5 = a4;
  v6 = TPSCallingLineIdRestrictionLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412546;
    v14 = objc_opt_class();
    v15 = 2112;
    v16 = v5;
    v7 = v14;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "%@ received response %@.", &v13, 0x16u);
  }

  -[TPSCallingLineIdRestrictionController setEditable:](self, "setEditable:", [v5 isEditable]);
  -[TPSCallingLineIdRestrictionController setState:](self, "setState:", [v5 state]);
  v8 = [(TPSCallingLineIdRestrictionController *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(TPSCallingLineIdRestrictionController *)self delegate];
    v11 = [v5 state];
    v12 = [v5 error];
    [v10 callingLineIdController:self didChangeState:v11 error:v12];
  }
}

- (TPSCallingLineIdRestrictionControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
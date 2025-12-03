@interface TPSCallingLineIdRestrictionController
- (TPSCallingLineIdRestrictionController)init;
- (TPSCallingLineIdRestrictionController)initWithSubscriptionContext:(id)context;
- (TPSCallingLineIdRestrictionControllerDelegate)delegate;
- (void)requestController:(id)controller didReceiveResponse:(id)response;
- (void)requestStateChange:(int64_t)change;
- (void)requestStateForSubscriptionContext:(id)context;
@end

@implementation TPSCallingLineIdRestrictionController

- (TPSCallingLineIdRestrictionController)init
{
  [(TPSCallingLineIdRestrictionController *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (TPSCallingLineIdRestrictionController)initWithSubscriptionContext:(id)context
{
  contextCopy = context;
  v11.receiver = self;
  v11.super_class = TPSCallingLineIdRestrictionController;
  v6 = [(TPSCallingLineIdRestrictionController *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_subscriptionContext, context);
    v7->_state = 0;
    v8 = objc_alloc_init(TPSCallingLineIdRestrictionRequestController);
    requestController = v7->_requestController;
    v7->_requestController = v8;

    [(TPSCallingLineIdRestrictionRequestController *)v7->_requestController addDelegate:v7 queue:&_dispatch_main_q];
    [(TPSCallingLineIdRestrictionController *)v7 requestStateForSubscriptionContext:contextCopy];
  }

  return v7;
}

- (void)requestStateForSubscriptionContext:(id)context
{
  contextCopy = context;
  v5 = [[TPSCallingLineIdRestrictionRequest alloc] initWithSubscriptionContext:contextCopy];

  v6 = TPSCallingLineIdRestrictionLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Sending caller line ID restriction request %@.", &v7, 0xCu);
  }

  [(TPSCallingLineIdRestrictionRequestController *)self->_requestController addRequest:v5];
}

- (void)requestStateChange:(int64_t)change
{
  if ([(TPSCallingLineIdRestrictionController *)self state]!= change)
  {
    [(TPSCallingLineIdRestrictionController *)self setState:0];
    v5 = [TPSCallingLineIdRestrictionSetRequest alloc];
    subscriptionContext = [(TPSCallingLineIdRestrictionController *)self subscriptionContext];
    v7 = [v5 initWithSubscriptionContext:subscriptionContext state:change];

    v8 = TPSCallingLineIdRestrictionLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v7;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Sending caller line ID restriction set request %@.", &v10, 0xCu);
    }

    requestController = [(TPSCallingLineIdRestrictionController *)self requestController];
    [requestController addRequest:v7];
  }
}

- (void)requestController:(id)controller didReceiveResponse:(id)response
{
  responseCopy = response;
  v6 = TPSCallingLineIdRestrictionLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412546;
    v14 = objc_opt_class();
    v15 = 2112;
    v16 = responseCopy;
    v7 = v14;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "%@ received response %@.", &v13, 0x16u);
  }

  -[TPSCallingLineIdRestrictionController setEditable:](self, "setEditable:", [responseCopy isEditable]);
  -[TPSCallingLineIdRestrictionController setState:](self, "setState:", [responseCopy state]);
  delegate = [(TPSCallingLineIdRestrictionController *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    delegate2 = [(TPSCallingLineIdRestrictionController *)self delegate];
    state = [responseCopy state];
    error = [responseCopy error];
    [delegate2 callingLineIdController:self didChangeState:state error:error];
  }
}

- (TPSCallingLineIdRestrictionControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
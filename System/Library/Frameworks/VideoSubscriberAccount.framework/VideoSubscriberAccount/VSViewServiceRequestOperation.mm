@interface VSViewServiceRequestOperation
- (BOOL)viewServiceHostViewController:(id)controller shouldAuthenticateAccountProviderWithIdentifier:(id)identifier;
- (VSViewServiceRequestOperation)init;
- (VSViewServiceRequestOperation)initWithViewServiceRequest:(id)request;
- (VSViewServiceRequestOperationDelegate)delegate;
- (void)_dismissViewController;
- (void)_dismissViewControllerIfRequired;
- (void)_presentViewController;
- (void)cancel;
- (void)dismissViewServiceHostViewController:(id)controller;
- (void)executionDidBegin;
- (void)finishExecutionIfPossible;
- (void)presentViewServiceHostViewController:(id)controller;
- (void)viewServiceHostViewController:(id)controller didCancelRequest:(id)request;
- (void)viewServiceHostViewController:(id)controller didChooseAdditionalProvidersForRequest:(id)request;
- (void)viewServiceHostViewController:(id)controller request:(id)request didFailWithError:(id)error;
- (void)viewServiceHostViewController:(id)controller request:(id)request didFinishWithResponse:(id)response;
@end

@implementation VSViewServiceRequestOperation

- (VSViewServiceRequestOperation)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The %@ initializer is not available.", v5}];

  return 0;
}

- (VSViewServiceRequestOperation)initWithViewServiceRequest:(id)request
{
  requestCopy = request;
  if (!requestCopy)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The viewServiceRequest parameter must not be nil."];
  }

  v13.receiver = self;
  v13.super_class = VSViewServiceRequestOperation;
  v5 = [(VSViewServiceRequestOperation *)&v13 init];
  if (v5)
  {
    v6 = [requestCopy copy];
    viewServiceRequest = v5->_viewServiceRequest;
    v5->_viewServiceRequest = v6;

    uUID = [MEMORY[0x277CCAD78] UUID];
    requestID = v5->_requestID;
    v5->_requestID = uUID;

    v10 = objc_alloc_init(VSOptional);
    v11 = v5->_result;
    v5->_result = v10;
  }

  return v5;
}

- (void)_presentViewController
{
  v9 = *MEMORY[0x277D85DE8];
  VSRequireMainThread();
  viewServiceHostViewController = [(VSViewServiceRequestOperation *)self viewServiceHostViewController];
  v4 = VSDefaultLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = viewServiceHostViewController;
    _os_log_impl(&dword_23AB8E000, v4, OS_LOG_TYPE_DEFAULT, "Will present view controller: %@", &v7, 0xCu);
  }

  delegate = [(VSViewServiceRequestOperation *)self delegate];
  [delegate viewServiceRequestOperation:self presentViewController:viewServiceHostViewController];

  v6 = VSDefaultLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = viewServiceHostViewController;
    _os_log_impl(&dword_23AB8E000, v6, OS_LOG_TYPE_DEFAULT, "Did present view controller: %@", &v7, 0xCu);
  }
}

- (void)_dismissViewController
{
  v9 = *MEMORY[0x277D85DE8];
  VSRequireMainThread();
  viewServiceHostViewController = [(VSViewServiceRequestOperation *)self viewServiceHostViewController];
  v4 = VSDefaultLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = viewServiceHostViewController;
    _os_log_impl(&dword_23AB8E000, v4, OS_LOG_TYPE_DEFAULT, "Will dismiss view controller: %@", &v7, 0xCu);
  }

  delegate = [(VSViewServiceRequestOperation *)self delegate];
  [delegate viewServiceRequestOperation:self dismissViewController:viewServiceHostViewController];

  v6 = VSDefaultLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = viewServiceHostViewController;
    _os_log_impl(&dword_23AB8E000, v6, OS_LOG_TYPE_DEFAULT, "Did dismiss view controller: %@", &v7, 0xCu);
  }
}

- (void)_dismissViewControllerIfRequired
{
  if (self->_isPresentingViewController)
  {
    [(VSViewServiceRequestOperation *)self _dismissViewController];
    self->_isPresentingViewController = 0;
  }

  else
  {
    v3 = VSDefaultLogObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_23AB8E000, v3, OS_LOG_TYPE_DEFAULT, "No view controller to dismiss.", v4, 2u);
    }
  }
}

- (void)presentViewServiceHostViewController:(id)controller
{
  VSRequireMainThread();
  self->_isPresentingViewController = 1;

  [(VSViewServiceRequestOperation *)self _presentViewController];
}

- (void)dismissViewServiceHostViewController:(id)controller
{
  VSRequireMainThread();

  [(VSViewServiceRequestOperation *)self _dismissViewControllerIfRequired];
}

- (void)viewServiceHostViewController:(id)controller request:(id)request didFinishWithResponse:(id)response
{
  v13 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  v7 = VSDefaultLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = responseCopy;
    _os_log_impl(&dword_23AB8E000, v7, OS_LOG_TYPE_DEFAULT, "View service returned response: %@.", &v11, 0xCu);
  }

  VSRequireMainThread();
  [(VSViewServiceRequestOperation *)self _dismissViewControllerIfRequired];
  v8 = [responseCopy copy];
  v9 = [VSFailable failableWithObject:v8];
  v10 = [VSOptional optionalWithObject:v9];
  [(VSViewServiceRequestOperation *)self setResult:v10];

  [(VSViewServiceRequestOperation *)self finishExecutionIfPossible];
}

- (void)viewServiceHostViewController:(id)controller request:(id)request didFailWithError:(id)error
{
  errorCopy = error;
  v7 = VSErrorLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [VSViewServiceRequestOperation viewServiceHostViewController:errorCopy request:v7 didFailWithError:?];
  }

  VSRequireMainThread();
  [(VSViewServiceRequestOperation *)self _dismissViewControllerIfRequired];
  v8 = [VSFailable failableWithError:errorCopy];
  v9 = [VSOptional optionalWithObject:v8];
  [(VSViewServiceRequestOperation *)self setResult:v9];

  [(VSViewServiceRequestOperation *)self finishExecutionIfPossible];
}

- (void)viewServiceHostViewController:(id)controller didChooseAdditionalProvidersForRequest:(id)request
{
  v5 = VSDefaultLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_23AB8E000, v5, OS_LOG_TYPE_DEFAULT, "View service chose additional providers.", v9, 2u);
  }

  VSRequireMainThread();
  [(VSViewServiceRequestOperation *)self _dismissViewControllerIfRequired];
  v6 = VSPublicUnsupportedProviderError(0, 0);
  v7 = [VSFailable failableWithError:v6];
  v8 = [VSOptional optionalWithObject:v7];
  [(VSViewServiceRequestOperation *)self setResult:v8];

  [(VSViewServiceRequestOperation *)self finishExecutionIfPossible];
}

- (void)viewServiceHostViewController:(id)controller didCancelRequest:(id)request
{
  v5 = VSDefaultLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_23AB8E000, v5, OS_LOG_TYPE_DEFAULT, "View service cancelled.", v9, 2u);
  }

  VSRequireMainThread();
  [(VSViewServiceRequestOperation *)self _dismissViewControllerIfRequired];
  v6 = VSPublicError(0, 2, 0);
  v7 = [VSFailable failableWithError:v6];
  v8 = [VSOptional optionalWithObject:v7];
  [(VSViewServiceRequestOperation *)self setResult:v8];

  [(VSViewServiceRequestOperation *)self finishExecutionIfPossible];
}

- (BOOL)viewServiceHostViewController:(id)controller shouldAuthenticateAccountProviderWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  VSRequireMainThread();
  delegate = [(VSViewServiceRequestOperation *)self delegate];
  LOBYTE(self) = [delegate viewServiceRequestOperation:self shouldAuthenticateAccountProviderWithIdentifier:identifierCopy];

  return self;
}

- (void)executionDidBegin
{
  v11 = 0;
  v3 = VSLoadInterfaceFramework(&v11);
  v4 = v11;
  v5 = v4;
  if (v3)
  {
    v6 = NSClassFromString(@"VSViewServiceHostViewController");
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __50__VSViewServiceRequestOperation_executionDidBegin__block_invoke;
    v10[3] = &unk_278B73E50;
    v10[4] = self;
    v10[5] = v6;
    VSPerformBlockOnMainThread(v10);
  }

  else
  {
    if (!v4)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The errorOrNil parameter must not be nil."];
    }

    v7 = v5;
    v8 = [VSFailable failableWithError:v7];
    v9 = [VSOptional optionalWithObject:v8];
    [(VSViewServiceRequestOperation *)self setResult:v9];

    [(VSViewServiceRequestOperation *)self finishExecutionIfPossible];
  }
}

void __50__VSViewServiceRequestOperation_executionDidBegin__block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) viewServiceRequest];
  v2 = [*(a1 + 32) viewServiceHostViewController];
  if (!v2)
  {
    v2 = objc_alloc_init(*(a1 + 40));
    [*(a1 + 32) setViewServiceHostViewController:v2];
  }

  [v2 setDelegate:*(a1 + 32)];
  v3 = [*(a1 + 32) requestID];
  [v2 enqueueViewServiceRequest:v4 withIdentifier:v3];
}

- (void)finishExecutionIfPossible
{
  v4.receiver = self;
  v4.super_class = VSViewServiceRequestOperation;
  [(VSAsyncOperation *)&v4 finishExecutionIfPossible];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __58__VSViewServiceRequestOperation_finishExecutionIfPossible__block_invoke;
  v3[3] = &unk_278B733D8;
  v3[4] = self;
  VSPerformBlockOnMainThread(v3);
}

- (void)cancel
{
  v6.receiver = self;
  v6.super_class = VSViewServiceRequestOperation;
  [(VSAsyncOperation *)&v6 cancel];
  [(VSViewServiceRequestOperation *)self _dismissViewControllerIfRequired];
  v3 = VSPublicError(0, 2, 0);
  v4 = [VSFailable failableWithError:v3];
  v5 = [VSOptional optionalWithObject:v4];
  [(VSViewServiceRequestOperation *)self setResult:v5];

  [(VSViewServiceRequestOperation *)self finishExecutionIfPossible];
}

- (VSViewServiceRequestOperationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)viewServiceHostViewController:(uint64_t)a1 request:(NSObject *)a2 didFailWithError:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_23AB8E000, a2, OS_LOG_TYPE_ERROR, "View service failed: %@", &v2, 0xCu);
}

@end
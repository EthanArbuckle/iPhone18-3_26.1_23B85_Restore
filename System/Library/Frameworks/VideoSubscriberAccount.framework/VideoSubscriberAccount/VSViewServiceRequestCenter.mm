@interface VSViewServiceRequestCenter
+ (id)sharedViewServiceRequestCenter;
- (VSViewServiceRequestCenter)init;
- (id)enqueueCompletionHandlerBlock:(id)block;
- (id)enqueueRequest:(id)request withAccountManagerDelegate:(id)delegate operationDelegate:(id)operationDelegate completionHandler:(id)handler;
@end

@implementation VSViewServiceRequestCenter

+ (id)sharedViewServiceRequestCenter
{
  if (sharedViewServiceRequestCenter___vs_lazy_init_predicate != -1)
  {
    +[VSViewServiceRequestCenter sharedViewServiceRequestCenter];
  }

  v3 = sharedViewServiceRequestCenter___vs_lazy_init_variable;

  return v3;
}

uint64_t __60__VSViewServiceRequestCenter_sharedViewServiceRequestCenter__block_invoke()
{
  v0 = objc_alloc_init(VSViewServiceRequestCenter);
  v1 = sharedViewServiceRequestCenter___vs_lazy_init_variable;
  sharedViewServiceRequestCenter___vs_lazy_init_variable = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (VSViewServiceRequestCenter)init
{
  v8.receiver = self;
  v8.super_class = VSViewServiceRequestCenter;
  v2 = [(VSViewServiceRequestCenter *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CCABD8]);
    requestQueue = v2->_requestQueue;
    v2->_requestQueue = v3;

    [(NSOperationQueue *)v2->_requestQueue setName:@"VSViewServiceRequestCenter.Request"];
    [(NSOperationQueue *)v2->_requestQueue setMaxConcurrentOperationCount:1];
    v5 = objc_alloc_init(MEMORY[0x277CCABD8]);
    completionQueue = v2->_completionQueue;
    v2->_completionQueue = v5;

    [(NSOperationQueue *)v2->_completionQueue setName:@"VSViewServiceRequestCenter.Completion"];
  }

  return v2;
}

- (id)enqueueCompletionHandlerBlock:(id)block
{
  v4 = [MEMORY[0x277CCA8C8] blockOperationWithBlock:block];
  completionQueue = [(VSViewServiceRequestCenter *)self completionQueue];
  [completionQueue addOperation:v4];

  v6 = [[VSAccountManagerResult alloc] initWithOperation:v4];

  return v6;
}

- (id)enqueueRequest:(id)request withAccountManagerDelegate:(id)delegate operationDelegate:(id)operationDelegate completionHandler:(id)handler
{
  requestCopy = request;
  delegateCopy = delegate;
  operationDelegateCopy = operationDelegate;
  handlerCopy = handler;
  if (!requestCopy)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The viewServiceRequest parameter must not be nil."];
  }

  allowsAuthenticationUI = [requestCopy allowsAuthenticationUI];
  if (!delegateCopy && allowsAuthenticationUI)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"This kind of request requires a delegate."];
  }

  localizedVideoTitle = [requestCopy localizedVideoTitle];
  if (localizedVideoTitle)
  {
    v16 = localizedVideoTitle;
    allowsAuthenticationUI2 = [requestCopy allowsAuthenticationUI];

    if ((allowsAuthenticationUI2 & 1) == 0)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"A localized video title is not appropriate for this kind of request."];
    }
  }

  v18 = [[VSViewServiceRequestOperation alloc] initWithViewServiceRequest:requestCopy];
  [(VSViewServiceRequestOperation *)v18 setDelegate:operationDelegateCopy];
  v19 = MEMORY[0x277CCA8C8];
  v27 = MEMORY[0x277D85DD0];
  v28 = 3221225472;
  v29 = __108__VSViewServiceRequestCenter_enqueueRequest_withAccountManagerDelegate_operationDelegate_completionHandler___block_invoke;
  v30 = &unk_278B73758;
  v31 = v18;
  v32 = handlerCopy;
  v20 = handlerCopy;
  v21 = v18;
  v22 = [v19 blockOperationWithBlock:&v27];
  [v22 addDependency:{v21, v27, v28, v29, v30}];
  completionQueue = [(VSViewServiceRequestCenter *)self completionQueue];
  [completionQueue addOperation:v22];

  requestQueue = [(VSViewServiceRequestCenter *)self requestQueue];
  [requestQueue addOperation:v21];

  v25 = [[VSAccountManagerResult alloc] initWithOperation:v21];

  return v25;
}

void __108__VSViewServiceRequestCenter_enqueueRequest_withAccountManagerDelegate_operationDelegate_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) result];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __108__VSViewServiceRequestCenter_enqueueRequest_withAccountManagerDelegate_operationDelegate_completionHandler___block_invoke_2;
  v3[3] = &unk_278B73BF8;
  v4 = *(a1 + 40);
  [v2 conditionallyUnwrapObject:v3];
}

@end
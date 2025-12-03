@interface AMSUIPurchaseQueue
- (id)purchase:(id)purchase handleSceneIdentifierRequest:(id)request error:(id *)error;
- (id)purchase:(id)purchase handleWindowRequest:(id)request error:(id *)error;
- (void)purchase:(id)purchase handleSceneBundleIdentifierRequest:(id)request completion:(id)completion;
- (void)purchase:(id)purchase handleSceneIdentifierRequest:(id)request completion:(id)completion;
- (void)purchase:(id)purchase handleWindowRequest:(id)request completion:(id)completion;
@end

@implementation AMSUIPurchaseQueue

- (void)purchase:(id)purchase handleSceneBundleIdentifierRequest:(id)request completion:(id)completion
{
  purchaseCopy = purchase;
  requestCopy = request;
  completionCopy = completion;
  config = [(AMSPurchaseQueue *)self config];
  delegate = [config delegate];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    config2 = [(AMSPurchaseQueue *)self config];
    delegate2 = [config2 delegate];
    [delegate2 purchase:purchaseCopy handleSceneBundleIdentifierRequest:requestCopy purchaseQueue:self completion:completionCopy];

    completionCopy = delegate2;
  }

  else
  {
    config2 = AMSError();
    (*(completionCopy + 2))(completionCopy, 0, config2);
  }
}

- (void)purchase:(id)purchase handleSceneIdentifierRequest:(id)request completion:(id)completion
{
  purchaseCopy = purchase;
  requestCopy = request;
  completionCopy = completion;
  config = [(AMSPurchaseQueue *)self config];
  delegate = [config delegate];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    config2 = [(AMSPurchaseQueue *)self config];
    delegate2 = [config2 delegate];
    [delegate2 purchase:purchaseCopy handleSceneIdentifierRequest:requestCopy purchaseQueue:self completion:completionCopy];

    completionCopy = delegate2;
  }

  else
  {
    config2 = AMSError();
    (*(completionCopy + 2))(completionCopy, 0, config2);
  }
}

- (id)purchase:(id)purchase handleSceneIdentifierRequest:(id)request error:(id *)error
{
  purchaseCopy = purchase;
  requestCopy = request;
  config = [(AMSPurchaseQueue *)self config];
  delegate = [config delegate];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    config2 = [(AMSPurchaseQueue *)self config];
    delegate2 = [config2 delegate];
    v15 = [delegate2 purchase:purchaseCopy handleSceneIdentifierRequest:requestCopy purchaseQueue:self error:error];
  }

  else if (error)
  {
    AMSError();
    *error = v15 = 0;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)purchase:(id)purchase handleWindowRequest:(id)request completion:(id)completion
{
  purchaseCopy = purchase;
  requestCopy = request;
  completionCopy = completion;
  config = [(AMSPurchaseQueue *)self config];
  delegate = [config delegate];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    config2 = [(AMSPurchaseQueue *)self config];
    delegate2 = [config2 delegate];
    [delegate2 purchase:purchaseCopy handleWindowRequest:requestCopy purchaseQueue:self completion:completionCopy];

    completionCopy = delegate2;
  }

  else
  {
    config2 = AMSError();
    (*(completionCopy + 2))(completionCopy, 0, config2);
  }
}

- (id)purchase:(id)purchase handleWindowRequest:(id)request error:(id *)error
{
  purchaseCopy = purchase;
  requestCopy = request;
  config = [(AMSPurchaseQueue *)self config];
  delegate = [config delegate];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    config2 = [(AMSPurchaseQueue *)self config];
    delegate2 = [config2 delegate];
    v15 = [delegate2 purchase:purchaseCopy handleWindowRequest:requestCopy purchaseQueue:self error:error];
  }

  else if (error)
  {
    AMSError();
    *error = v15 = 0;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

@end
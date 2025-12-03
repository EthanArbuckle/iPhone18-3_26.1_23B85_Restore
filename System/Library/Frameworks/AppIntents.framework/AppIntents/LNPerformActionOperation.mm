@interface LNPerformActionOperation
- (BOOL)requestCancelTimeoutAndReturnError:(id *)error;
- (BOOL)requestExtendTimeoutAndReturnError:(id *)error;
- (LNPerformActionOperation)initWithAction:(id)action options:(id)options client:(id)client completionHandler:(id)handler;
- (NSUUID)identifier;
- (void)finishWithError:(id)error;
- (void)requestActionConfirmation:(id)confirmation completionHandler:(id)handler;
- (void)requestChoice:(id)choice completionHandler:(id)handler;
- (void)requestContinueInApp:(id)app completionHandler:(id)handler;
- (void)requestOpenURL:(id)l completionHandler:(id)handler;
- (void)requestParameterConfirmation:(id)confirmation completionHandler:(id)handler;
- (void)requestParameterDisambiguation:(id)disambiguation completionHandler:(id)handler;
- (void)requestParameterNeedsValue:(id)value completionHandler:(id)handler;
- (void)requestViewSnippetEnvironmentWithCompletionHandler:(id)handler;
- (void)start;
@end

@implementation LNPerformActionOperation

- (void)requestChoice:(id)choice completionHandler:(id)handler
{
  handlerCopy = handler;
  choiceCopy = choice;
  client = [(LNPerformActionOperation *)self client];
  [client requestChoice:choiceCopy completionHandler:handlerCopy];
}

- (void)requestOpenURL:(id)l completionHandler:(id)handler
{
  handlerCopy = handler;
  lCopy = l;
  client = [(LNPerformActionOperation *)self client];
  [client requestOpenURL:lCopy completionHandler:handlerCopy];
}

- (void)requestContinueInApp:(id)app completionHandler:(id)handler
{
  handlerCopy = handler;
  appCopy = app;
  client = [(LNPerformActionOperation *)self client];
  [client requestContinueInApp:appCopy completionHandler:handlerCopy];
}

- (BOOL)requestExtendTimeoutAndReturnError:(id *)error
{
  client = [(LNPerformActionOperation *)self client];
  [client requestExtendTimeout];

  if (error)
  {
    *error = 0;
  }

  return 1;
}

- (BOOL)requestCancelTimeoutAndReturnError:(id *)error
{
  client = [(LNPerformActionOperation *)self client];
  [client requestCancelTimeout];

  if (error)
  {
    *error = 0;
  }

  return 1;
}

- (void)requestViewSnippetEnvironmentWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  client = [(LNPerformActionOperation *)self client];
  [client requestViewSnippetEnvironmentWithCompletion:handlerCopy];
}

- (void)requestActionConfirmation:(id)confirmation completionHandler:(id)handler
{
  handlerCopy = handler;
  confirmationCopy = confirmation;
  client = [(LNPerformActionOperation *)self client];
  [client requestActionConfirmation:confirmationCopy completionHandler:handlerCopy];
}

- (void)requestParameterNeedsValue:(id)value completionHandler:(id)handler
{
  handlerCopy = handler;
  valueCopy = value;
  client = [(LNPerformActionOperation *)self client];
  [client requestParameterNeedsValue:valueCopy completionHandler:handlerCopy];
}

- (void)requestParameterDisambiguation:(id)disambiguation completionHandler:(id)handler
{
  handlerCopy = handler;
  disambiguationCopy = disambiguation;
  client = [(LNPerformActionOperation *)self client];
  [client requestParameterDisambiguation:disambiguationCopy completionHandler:handlerCopy];
}

- (void)requestParameterConfirmation:(id)confirmation completionHandler:(id)handler
{
  handlerCopy = handler;
  confirmationCopy = confirmation;
  client = [(LNPerformActionOperation *)self client];
  [client requestParameterConfirmation:confirmationCopy completionHandler:handlerCopy];
}

- (void)finishWithError:(id)error
{
  errorCopy = error;
  progress = [(LNPerformActionOperation *)self progress];
  [progress unpublish];

  completionHandler = [(LNPerformActionOperation *)self completionHandler];

  if (completionHandler)
  {
    completionHandler2 = [(LNPerformActionOperation *)self completionHandler];
    result = [(LNPerformActionOperation *)self result];
    (completionHandler2)[2](completionHandler2, result, errorCopy);

    [(LNPerformActionOperation *)self setCompletionHandler:0];
  }

  delegate = [(LNPerformActionOperation *)self delegate];
  result2 = [(LNPerformActionOperation *)self result];
  [delegate performActionOperation:self didFinishWithResult:result2 error:errorCopy];
}

- (void)start
{
  v3 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:1];
  [(LNPerformActionOperation *)self setProgress:v3];

  progress = [(LNPerformActionOperation *)self progress];
  [progress setUserInfoObject:*MEMORY[0x1E69ACB30] forKey:*MEMORY[0x1E696A7F8]];

  progress2 = [(LNPerformActionOperation *)self progress];
  options = [(LNPerformActionOperation *)self options];
  executionUUID = [options executionUUID];
  [progress2 setUserInfoObject:executionUUID forKey:*MEMORY[0x1E69ACB38]];

  progress3 = [(LNPerformActionOperation *)self progress];
  [progress3 publish];

  delegate = [(LNPerformActionOperation *)self delegate];
  appContext = [delegate appContext];
  action = [(LNPerformActionOperation *)self action];
  options2 = [(LNPerformActionOperation *)self options];
  progress4 = [(LNPerformActionOperation *)self progress];
  client = [(LNPerformActionOperation *)self client];
  delegate2 = [(LNPerformActionOperation *)self delegate];
  xpcConnection = [delegate2 xpcConnection];
  v17 = xpcConnection;
  if (xpcConnection)
  {
    [xpcConnection auditToken];
  }

  else
  {
    memset(v19, 0, sizeof(v19));
  }

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __33__LNPerformActionOperation_start__block_invoke;
  v18[3] = &unk_1E72B71B8;
  v18[4] = self;
  [appContext performAction:action options:options2 reportingProgress:progress4 delegate:client auditToken:v19 completionHandler:v18];
}

void __33__LNPerformActionOperation_start__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 setResult:a2];
  [*(a1 + 32) finishWithError:v6];
}

- (NSUUID)identifier
{
  options = [(LNPerformActionOperation *)self options];
  executionUUID = [options executionUUID];

  return executionUUID;
}

- (LNPerformActionOperation)initWithAction:(id)action options:(id)options client:(id)client completionHandler:(id)handler
{
  actionCopy = action;
  optionsCopy = options;
  clientCopy = client;
  handlerCopy = handler;
  if (actionCopy)
  {
    if (optionsCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNPerformActionOperation.m" lineNumber:35 description:{@"Invalid parameter not satisfying: %@", @"action"}];

    if (optionsCopy)
    {
LABEL_3:
      if (clientCopy)
      {
        goto LABEL_4;
      }

LABEL_10:
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"LNPerformActionOperation.m" lineNumber:37 description:{@"Invalid parameter not satisfying: %@", @"client"}];

      if (handlerCopy)
      {
        goto LABEL_5;
      }

      goto LABEL_11;
    }
  }

  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"LNPerformActionOperation.m" lineNumber:36 description:{@"Invalid parameter not satisfying: %@", @"options"}];

  if (!clientCopy)
  {
    goto LABEL_10;
  }

LABEL_4:
  if (handlerCopy)
  {
    goto LABEL_5;
  }

LABEL_11:
  currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler4 handleFailureInMethod:a2 object:self file:@"LNPerformActionOperation.m" lineNumber:38 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

LABEL_5:
  v26.receiver = self;
  v26.super_class = LNPerformActionOperation;
  v16 = [(LNPerformActionOperation *)&v26 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_options, options);
    objc_storeStrong(&v17->_action, action);
    objc_storeStrong(&v17->_client, client);
    v18 = [handlerCopy copy];
    completionHandler = v17->_completionHandler;
    v17->_completionHandler = v18;

    v20 = v17;
  }

  return v17;
}

@end
@interface LNPerformActionOperation
- (BOOL)requestCancelTimeoutAndReturnError:(id *)a3;
- (BOOL)requestExtendTimeoutAndReturnError:(id *)a3;
- (LNPerformActionOperation)initWithAction:(id)a3 options:(id)a4 client:(id)a5 completionHandler:(id)a6;
- (NSUUID)identifier;
- (void)finishWithError:(id)a3;
- (void)requestActionConfirmation:(id)a3 completionHandler:(id)a4;
- (void)requestChoice:(id)a3 completionHandler:(id)a4;
- (void)requestContinueInApp:(id)a3 completionHandler:(id)a4;
- (void)requestOpenURL:(id)a3 completionHandler:(id)a4;
- (void)requestParameterConfirmation:(id)a3 completionHandler:(id)a4;
- (void)requestParameterDisambiguation:(id)a3 completionHandler:(id)a4;
- (void)requestParameterNeedsValue:(id)a3 completionHandler:(id)a4;
- (void)requestViewSnippetEnvironmentWithCompletionHandler:(id)a3;
- (void)start;
@end

@implementation LNPerformActionOperation

- (void)requestChoice:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(LNPerformActionOperation *)self client];
  [v8 requestChoice:v7 completionHandler:v6];
}

- (void)requestOpenURL:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(LNPerformActionOperation *)self client];
  [v8 requestOpenURL:v7 completionHandler:v6];
}

- (void)requestContinueInApp:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(LNPerformActionOperation *)self client];
  [v8 requestContinueInApp:v7 completionHandler:v6];
}

- (BOOL)requestExtendTimeoutAndReturnError:(id *)a3
{
  v4 = [(LNPerformActionOperation *)self client];
  [v4 requestExtendTimeout];

  if (a3)
  {
    *a3 = 0;
  }

  return 1;
}

- (BOOL)requestCancelTimeoutAndReturnError:(id *)a3
{
  v4 = [(LNPerformActionOperation *)self client];
  [v4 requestCancelTimeout];

  if (a3)
  {
    *a3 = 0;
  }

  return 1;
}

- (void)requestViewSnippetEnvironmentWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(LNPerformActionOperation *)self client];
  [v5 requestViewSnippetEnvironmentWithCompletion:v4];
}

- (void)requestActionConfirmation:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(LNPerformActionOperation *)self client];
  [v8 requestActionConfirmation:v7 completionHandler:v6];
}

- (void)requestParameterNeedsValue:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(LNPerformActionOperation *)self client];
  [v8 requestParameterNeedsValue:v7 completionHandler:v6];
}

- (void)requestParameterDisambiguation:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(LNPerformActionOperation *)self client];
  [v8 requestParameterDisambiguation:v7 completionHandler:v6];
}

- (void)requestParameterConfirmation:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(LNPerformActionOperation *)self client];
  [v8 requestParameterConfirmation:v7 completionHandler:v6];
}

- (void)finishWithError:(id)a3
{
  v10 = a3;
  v4 = [(LNPerformActionOperation *)self progress];
  [v4 unpublish];

  v5 = [(LNPerformActionOperation *)self completionHandler];

  if (v5)
  {
    v6 = [(LNPerformActionOperation *)self completionHandler];
    v7 = [(LNPerformActionOperation *)self result];
    (v6)[2](v6, v7, v10);

    [(LNPerformActionOperation *)self setCompletionHandler:0];
  }

  v8 = [(LNPerformActionOperation *)self delegate];
  v9 = [(LNPerformActionOperation *)self result];
  [v8 performActionOperation:self didFinishWithResult:v9 error:v10];
}

- (void)start
{
  v3 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:1];
  [(LNPerformActionOperation *)self setProgress:v3];

  v4 = [(LNPerformActionOperation *)self progress];
  [v4 setUserInfoObject:*MEMORY[0x1E69ACB30] forKey:*MEMORY[0x1E696A7F8]];

  v5 = [(LNPerformActionOperation *)self progress];
  v6 = [(LNPerformActionOperation *)self options];
  v7 = [v6 executionUUID];
  [v5 setUserInfoObject:v7 forKey:*MEMORY[0x1E69ACB38]];

  v8 = [(LNPerformActionOperation *)self progress];
  [v8 publish];

  v9 = [(LNPerformActionOperation *)self delegate];
  v10 = [v9 appContext];
  v11 = [(LNPerformActionOperation *)self action];
  v12 = [(LNPerformActionOperation *)self options];
  v13 = [(LNPerformActionOperation *)self progress];
  v14 = [(LNPerformActionOperation *)self client];
  v15 = [(LNPerformActionOperation *)self delegate];
  v16 = [v15 xpcConnection];
  v17 = v16;
  if (v16)
  {
    [v16 auditToken];
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
  [v10 performAction:v11 options:v12 reportingProgress:v13 delegate:v14 auditToken:v19 completionHandler:v18];
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
  v2 = [(LNPerformActionOperation *)self options];
  v3 = [v2 executionUUID];

  return v3;
}

- (LNPerformActionOperation)initWithAction:(id)a3 options:(id)a4 client:(id)a5 completionHandler:(id)a6
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (v12)
  {
    if (v13)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    [v22 handleFailureInMethod:a2 object:self file:@"LNPerformActionOperation.m" lineNumber:35 description:{@"Invalid parameter not satisfying: %@", @"action"}];

    if (v13)
    {
LABEL_3:
      if (v14)
      {
        goto LABEL_4;
      }

LABEL_10:
      v24 = [MEMORY[0x1E696AAA8] currentHandler];
      [v24 handleFailureInMethod:a2 object:self file:@"LNPerformActionOperation.m" lineNumber:37 description:{@"Invalid parameter not satisfying: %@", @"client"}];

      if (v15)
      {
        goto LABEL_5;
      }

      goto LABEL_11;
    }
  }

  v23 = [MEMORY[0x1E696AAA8] currentHandler];
  [v23 handleFailureInMethod:a2 object:self file:@"LNPerformActionOperation.m" lineNumber:36 description:{@"Invalid parameter not satisfying: %@", @"options"}];

  if (!v14)
  {
    goto LABEL_10;
  }

LABEL_4:
  if (v15)
  {
    goto LABEL_5;
  }

LABEL_11:
  v25 = [MEMORY[0x1E696AAA8] currentHandler];
  [v25 handleFailureInMethod:a2 object:self file:@"LNPerformActionOperation.m" lineNumber:38 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

LABEL_5:
  v26.receiver = self;
  v26.super_class = LNPerformActionOperation;
  v16 = [(LNPerformActionOperation *)&v26 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_options, a4);
    objc_storeStrong(&v17->_action, a3);
    objc_storeStrong(&v17->_client, a5);
    v18 = [v15 copy];
    completionHandler = v17->_completionHandler;
    v17->_completionHandler = v18;

    v20 = v17;
  }

  return v17;
}

@end
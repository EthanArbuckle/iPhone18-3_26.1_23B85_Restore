@interface FPDisconnectDomainOperation
- (FPDisconnectDomainOperation)initWithDomain:(id)a3;
- (void)_tryDisconnectingSafely:(BOOL)a3;
- (void)cancel;
@end

@implementation FPDisconnectDomainOperation

- (FPDisconnectDomainOperation)initWithDomain:(id)a3
{
  v5 = a3;
  v6 = [v5 identifier];
  v9.receiver = self;
  v9.super_class = FPDisconnectDomainOperation;
  v7 = [(FPActionOperation *)&v9 initWithProvider:v6 action:0];

  if (v7)
  {
    objc_storeStrong(&v7->_domain, a3);
    [(FPActionOperation *)v7 setSetupRemoteOperationService:1];
  }

  return v7;
}

- (void)_tryDisconnectingSafely:(BOOL)a3
{
  v5 = !a3;
  v6 = [(FPActionOperation *)self remoteServiceProxy];
  v7 = [(FPProviderDomain *)self->_domain identifier];
  v8 = [v7 fp_toDomainIdentifier];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __55__FPDisconnectDomainOperation__tryDisconnectingSafely___block_invoke;
  v11[3] = &unk_1E793E1C0;
  v11[4] = self;
  v12 = a3;
  v9 = [v6 disconnectDomainID:v8 options:v5 completionHandler:v11];
  remoteProgress = self->_remoteProgress;
  self->_remoteProgress = v9;
}

void __55__FPDisconnectDomainOperation__tryDisconnectingSafely___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 456);
  v4 = a2;
  v5 = [v3 domainDisplayName];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [*(*(a1 + 32) + 456) providerDisplayName];
  }

  v8 = v7;

  v9 = [v4 fp_annotatedErrorWithName:v8];

  if (*(a1 + 40) == 1 && [v9 fp_isFileProviderError:-5007])
  {
    v10 = *(a1 + 32);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __55__FPDisconnectDomainOperation__tryDisconnectingSafely___block_invoke_2;
    v11[3] = &unk_1E793E198;
    v11[4] = v10;
    v12 = v9;
    [v10 tryRecoveringFromError:v12 completion:v11];
  }

  else
  {
    [*(a1 + 32) completedWithResult:0 error:v9];
  }
}

uint64_t __55__FPDisconnectDomainOperation__tryDisconnectingSafely___block_invoke_2(uint64_t result, char a2, uint64_t a3)
{
  if ((a2 & 1) == 0)
  {
    v4 = *(result + 40);
    v3 = *(result + 32);
    return [v3 completedWithResult:? error:?];
  }

  if (a3 != 1)
  {
    if (a3)
    {
      return result;
    }

    v3 = *(result + 32);
    return [v3 completedWithResult:? error:?];
  }

  return [*(result + 32) _tryDisconnectingSafely:0];
}

- (void)cancel
{
  [(NSProgress *)self->_remoteProgress cancel];
  remoteProgress = self->_remoteProgress;
  self->_remoteProgress = 0;

  v4.receiver = self;
  v4.super_class = FPDisconnectDomainOperation;
  [(FPOperation *)&v4 cancel];
}

@end
@interface _NSFileAccessClaimPresenterRelinquishment
- (_NSFileAccessClaimPresenterRelinquishment)initWithClaim:(id)a3 presenterID:(id)a4 relinquisher:(id)a5;
- (void)abandon;
- (void)blockClaimForPresenterAt:(const char *)a3;
- (void)dealloc;
- (void)performRelinquish;
@end

@implementation _NSFileAccessClaimPresenterRelinquishment

- (_NSFileAccessClaimPresenterRelinquishment)initWithClaim:(id)a3 presenterID:(id)a4 relinquisher:(id)a5
{
  v11 = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = _NSFileAccessClaimPresenterRelinquishment;
  v8 = [(_NSFileAccessClaimPresenterRelinquishment *)&v10 init];
  if (v8)
  {
    v8->_claim = a3;
    v8->_presenterID = a4;
    v8->_relinquisher = a5;
  }

  return v8;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = _NSFileAccessClaimPresenterRelinquishment;
  [(_NSFileAccessClaimPresenterRelinquishment *)&v3 dealloc];
}

- (void)blockClaimForPresenterAt:(const char *)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = _NSFCClaimsLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(NSFileAccessClaim *)self->_claim claimID];
    presenterID = self->_presenterID;
    *buf = 138543874;
    v10 = v6;
    v11 = 2114;
    v12 = presenterID;
    v13 = 2082;
    v14 = a3;
    _os_log_impl(&dword_18075C000, v5, OS_LOG_TYPE_DEFAULT, "Claimer for %{public}@ is waiting for presenter %{public}@ on %{public}s to relinquish", buf, 0x20u);
  }

  v8 = [NSString stringWithFormat:@"Waiting for presenter %@ to relinquish", self->_presenterID];
  self->_blockageReason = v8;
  [(NSFileAccessClaim *)self->_claim blockClaimerForReason:v8];
  [(NSFileAccessClaim *)self->_claim addBlockingReactorID:self->_presenterID];
}

- (void)performRelinquish
{
  v3[5] = *MEMORY[0x1E69E9840];
  relinquisher = self->_relinquisher;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __62___NSFileAccessClaimPresenterRelinquishment_performRelinquish__block_invoke;
  v3[3] = &unk_1E69F89D8;
  v3[4] = self;
  relinquisher[2](relinquisher, v3);
}

- (void)abandon
{
  if (self->_blockageReason)
  {
    [(NSFileAccessClaim *)self->_claim unblockClaimerForReason:?];
  }
}

@end
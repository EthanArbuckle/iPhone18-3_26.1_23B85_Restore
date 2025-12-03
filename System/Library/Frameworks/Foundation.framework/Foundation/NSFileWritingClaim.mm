@interface NSFileWritingClaim
- (BOOL)evaluateSelfWithRootNode:(id)node checkSubarbitrability:(BOOL)subarbitrability;
- (NSFileWritingClaim)initWithCoder:(id)coder;
- (NSFileWritingClaim)initWithPurposeID:(id)d url:(id)url options:(unint64_t)options claimer:(id)claimer;
- (void)dealloc;
- (void)devalueSelf;
- (void)encodeWithCoder:(id)coder;
- (void)forwardUsingConnection:(id)connection crashHandler:(id)handler;
- (void)granted;
- (void)invokeClaimer;
- (void)itemAtLocation:(id)location wasReplacedByItemAtLocation:(id)atLocation;
- (void)resolveURLsThenContinueInvokingClaimer:(id)claimer;
@end

@implementation NSFileWritingClaim

id __29__NSFileWritingClaim_granted__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[7] = *MEMORY[0x1E69E9840];
  if (![*(a1 + 32) shouldWritingWithOptions:*(*(a1 + 32) + 224) causePresenterToRelinquish:a2])
  {
    return 0;
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __29__NSFileWritingClaim_granted__block_invoke_2;
  v7[3] = &unk_1E69F8500;
  v7[4] = *(a1 + 32);
  v7[5] = a2;
  v7[6] = a3;
  return [v7 copy];
}

- (void)granted
{
  v22 = *MEMORY[0x1E69E9840];
  if (self->_location)
  {
    v3 = atomic_load(&_NSFCSubarbitrationCount);
    if (v3 < 1 || (v12 = atomic_load(_NSFCDisableLogSuppression), (v12 & 1) != 0) || (v13 = atomic_load(&_NSFCSubarbitratedClaimCount), v13 <= 99))
    {
      v4 = _NSFCClaimsLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        claimID = [(NSFileAccessClaim *)self claimID];
        _os_log_impl(&dword_18075C000, v4, OS_LOG_TYPE_DEFAULT, "Claim %{public}@ granted in server", buf, 0xCu);
      }
    }

    v5 = (self->_options & 0x13000B) != 0;
    location = self->_location;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __29__NSFileWritingClaim_granted__block_invoke;
    v18[3] = &unk_1E69F8438;
    v18[4] = self;
    v7 = [(NSFileAccessClaim *)self prepareAndBlockOnClaimRelinquishmentForPresentersOfItemAtLocation:location orContainedItem:v5 withRelinquishProcedureGetter:v18];
    v19 = self->_location;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v19 count:1];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __29__NSFileWritingClaim_granted__block_invoke_3;
    v17[3] = &unk_1E69F8460;
    v17[4] = v7;
    [(NSFileAccessClaim *)self makeProvidersProvideItemsForReadingLocations:0 options:0 andWritingLocationsIfNecessary:v8 options:&self->_options thenContinue:v17];
    if ([(NSFileAccessClaim *)self shouldInformProvidersAboutEndOfWriteWithOptions:self->_options])
    {
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __29__NSFileWritingClaim_granted__block_invoke_4;
      v16[3] = &unk_1E69F2C00;
      v16[4] = self;
      [(NSFileAccessClaim *)self whenRevokedPerformProcedure:v16];
    }
  }

  else if (self->super._client)
  {
    v9 = _NSFCClaimsLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      claimID = [(NSFileAccessClaim *)self claimID];
      _os_log_error_impl(&dword_18075C000, v9, OS_LOG_TYPE_ERROR, "Claim %{public}@ can't be granted in daemon", buf, 0xCu);
    }
  }

  else
  {
    v10 = atomic_load(&_NSFCSubarbitrationCount);
    if (v10 < 1 || (v14 = atomic_load(_NSFCDisableLogSuppression), (v14 & 1) != 0) || (v15 = atomic_load(&_NSFCSubarbitratedClaimCount), v15 <= 99))
    {
      v11 = _NSFCClaimsLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        claimID = [(NSFileAccessClaim *)self claimID];
        _os_log_impl(&dword_18075C000, v11, OS_LOG_TYPE_DEFAULT, "Claim %{public}@ granted in client", buf, 0xCu);
      }
    }
  }

  [(NSFileAccessClaim *)self unblockClaimerForReason:@"Initial blockage"];
}

- (void)invokeClaimer
{
  v2[5] = *MEMORY[0x1E69E9840];
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __35__NSFileWritingClaim_invokeClaimer__block_invoke;
  v2[3] = &unk_1E69F8488;
  v2[4] = self;
  [(NSFileWritingClaim *)self resolveURLsThenContinueInvokingClaimer:v2];
}

id __35__NSFileWritingClaim_invokeClaimer__block_invoke(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  if (v4[20])
  {
    v5 = atomic_load(&_NSFCSubarbitrationCount);
    if (v5 < 1 || (v14 = atomic_load(_NSFCDisableLogSuppression), (v14 & 1) != 0) || (v15 = atomic_load(&_NSFCSubarbitratedClaimCount), v15 <= 99))
    {
      v6 = _NSFCClaimsLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = [*(a1 + 32) claimID];
        *buf = 138543362;
        v21 = v7;
        _os_log_impl(&dword_18075C000, v6, OS_LOG_TYPE_DEFAULT, "Claim %{public}@ invoked in client", buf, 0xCu);
      }
    }

    (*(*(*(a1 + 32) + 160) + 16))(*(*(a1 + 32) + 160), *(a1 + 32), a2, [*(a1 + 32) claimerError]);

    *(*(a1 + 32) + 160) = 0;
    v4 = *(a1 + 32);
  }

  if (v4[21])
  {
    v8 = atomic_load(&_NSFCSubarbitrationCount);
    if (v8 < 1 || (v16 = atomic_load(_NSFCDisableLogSuppression), (v16 & 1) != 0) || (v17 = atomic_load(&_NSFCSubarbitratedClaimCount), v17 <= 99))
    {
      v9 = _NSFCClaimsLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [*(a1 + 32) claimID];
        *buf = 138543362;
        v21 = v10;
        _os_log_impl(&dword_18075C000, v9, OS_LOG_TYPE_DEFAULT, "Claim %{public}@ invoked in server", buf, 0xCu);
      }
    }

    v11 = *(*(a1 + 32) + 168);
    v12 = [NSURLPromisePair pairWithURL:a2];
    if (!v12)
    {
      v12 = [MEMORY[0x1E695DFB0] null];
    }

    v19 = v12;
    (*(v11 + 16))(v11, 0, [MEMORY[0x1E695DEC8] arrayWithObjects:&v19 count:1], *(*(a1 + 32) + 176), objc_msgSend(*(a1 + 32), "shouldEnableMaterializationDuringAccessorBlock"), objc_msgSend(*(a1 + 32), "claimerError"));

    *(*(a1 + 32) + 168) = 0;
    v4 = *(a1 + 32);
  }

  v18.receiver = v4;
  v18.super_class = NSFileWritingClaim;
  return objc_msgSendSuper2(&v18, sel_invokeClaimer);
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSFileWritingClaim;
  [(NSFileAccessClaim *)&v3 dealloc];
}

- (void)devalueSelf
{
  v5[5] = *MEMORY[0x1E69E9840];
  location = self->_location;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __33__NSFileWritingClaim_devalueSelf__block_invoke;
  v5[3] = &unk_1E69F83E8;
  v5[4] = self;
  [(NSFileAccessNode *)location forEachRelevantAccessClaimPerformProcedure:v5];
  [(NSFileAccessNode *)self->_location removeAccessClaim:self];
  self->_location = 0;
  v4.receiver = self;
  v4.super_class = NSFileWritingClaim;
  [(NSFileAccessClaim *)&v4 devalueSelf];
}

uint64_t __29__NSFileWritingClaim_granted__block_invoke_4(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 232) itemProvider];
  v3 = *(*(a1 + 32) + 232);

  return [v2 observeEndOfWriteAtLocation:v3 forAccessClaim:?];
}

- (NSFileWritingClaim)initWithPurposeID:(id)d url:(id)url options:(unint64_t)options claimer:(id)claimer
{
  v9 = [(NSFileAccessClaim *)self initWithClient:0 claimID:0 purposeID:d];
  if (v9)
  {
    v9->_url = [url copy];
    v9->_options = options;
    v9->super._claimerOrNil = [claimer copy];
  }

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  v6 = *MEMORY[0x1E69E9840];
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"NSFileAccessClaims should only ever be encoded by XPC" userInfo:0]);
  }

  [coder encodeObject:+[NSURLPromisePair pairWithURL:](NSURLPromisePair forKey:{"pairWithURL:", self->_url), @"NSURLPairKey"}];
  [coder encodeObject:+[NSNumber numberWithUnsignedInteger:](NSNumber forKey:{"numberWithUnsignedInteger:", self->_options), @"NSURLOptionsKey"}];
  v5.receiver = self;
  v5.super_class = NSFileWritingClaim;
  [(NSFileAccessClaim *)&v5 encodeWithCoder:coder];
}

- (NSFileWritingClaim)initWithCoder:(id)coder
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = NSFileWritingClaim;
  v4 = [(NSFileAccessClaim *)&v6 initWithCoder:?];
  if (v4)
  {
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"NSFileAccessClaims should only ever be decoded by XPC" userInfo:0]);
    }

    v4->_url = [objc_msgSend(coder decodeObjectOfClass:objc_opt_class() forKey:{@"NSURLPairKey", "URL"}];
    v4->_options = [objc_msgSend(coder decodeObjectOfClass:objc_opt_class() forKey:{@"NSURLOptionsKey", "unsignedIntegerValue"}];
  }

  return v4;
}

- (void)forwardUsingConnection:(id)connection crashHandler:(id)handler
{
  v13 = *MEMORY[0x1E69E9840];
  v7 = _NSFCClaimsLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543362;
    claimID = [(NSFileAccessClaim *)self claimID];
    _os_log_debug_impl(&dword_18075C000, v7, OS_LOG_TYPE_DEBUG, "%{public}@ blocked pending grantAccessClaim", buf, 0xCu);
  }

  [(NSFileAccessClaim *)self block];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __58__NSFileWritingClaim_forwardUsingConnection_crashHandler___block_invoke;
  v10[3] = &unk_1E69F61A0;
  v10[4] = self;
  v10[5] = handler;
  v8 = [connection remoteObjectProxyWithErrorHandler:v10];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __58__NSFileWritingClaim_forwardUsingConnection_crashHandler___block_invoke_387;
  v9[3] = &unk_1E69F83C0;
  v9[4] = self;
  [v8 grantAccessClaim:self withReply:v9];
}

uint64_t __58__NSFileWritingClaim_forwardUsingConnection_crashHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = _NSFCClaimsLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = [*(a1 + 32) claimID];
    v8 = 138543618;
    v9 = v7;
    v10 = 2114;
    v11 = a2;
    _os_log_error_impl(&dword_18075C000, v4, OS_LOG_TYPE_ERROR, "%{public}@ grantAccessClaim message failed: %{public}@", &v8, 0x16u);
  }

  v5 = _NSFCLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v8 = 138543618;
    v9 = @"grantAccessClaim";
    v10 = 2114;
    v11 = a2;
    _os_log_error_impl(&dword_18075C000, v5, OS_LOG_TYPE_ERROR, "Sending of a '%{public}@' message was interrupted: %{public}@", &v8, 0x16u);
  }

  if ((*(*(a1 + 40) + 16))())
  {
    [*(a1 + 32) setClaimerError:{_NSErrorWithFilePath(512, *(*(a1 + 32) + 208))}];
  }

  return [*(a1 + 32) unblock];
}

uint64_t __58__NSFileWritingClaim_forwardUsingConnection_crashHandler___block_invoke_387(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v17 = *MEMORY[0x1E69E9840];
  v11 = _NSFCClaimsLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = [*(a1 + 32) claimID];
    v15 = 138543362;
    v16 = v12;
    _os_log_debug_impl(&dword_18075C000, v11, OS_LOG_TYPE_DEBUG, "%{public}@ received grantAccessClaim reply", &v15, 0xCu);
    if (a6)
    {
      goto LABEL_3;
    }
  }

  else if (a6)
  {
LABEL_3:
    [*(a1 + 32) setClaimerError:a6];
    return [*(a1 + 32) unblock];
  }

  v13 = [a3 firstObject];
  if (objc_opt_isKindOfClass())
  {

    *(*(a1 + 32) + 208) = [objc_msgSend(v13 "URL")];
    *(*(a1 + 32) + 216) = 1;
  }

  if (a4)
  {

    *(*(a1 + 32) + 176) = [a4 copy];
  }

  [*(a1 + 32) setShouldEnableMaterializationDuringAccessorBlock:a5];
  return [*(a1 + 32) unblock];
}

- (BOOL)evaluateSelfWithRootNode:(id)node checkSubarbitrability:(BOOL)subarbitrability
{
  subarbitrabilityCopy = subarbitrability;
  v13[1] = *MEMORY[0x1E69E9840];
  v6 = [node descendantForFileURL:self->_url];
  if (!v6)
  {
    return 1;
  }

  v7 = v6;
  v12 = 0;
  if (subarbitrabilityCopy && ![(NSFileAccessNode *)v6 itemIsSubarbitrable])
  {
    v9 = 0;
  }

  else
  {
    v13[0] = v7;
    if (-[NSFileAccessClaim canAccessLocations:forReading:error:](self, "canAccessLocations:forReading:error:", [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1], 0, &v12))
    {
      self->_location = v7;
      [(NSFileAccessNode *)v7 addAccessClaim:self];
      location = self->_location;
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __69__NSFileWritingClaim_evaluateSelfWithRootNode_checkSubarbitrability___block_invoke;
      v11[3] = &unk_1E69F83E8;
      v11[4] = self;
      [(NSFileAccessNode *)location forEachRelevantAccessClaimForEvaluatingAgainstClaim:self performProcedure:v11];
    }

    else
    {
      [(NSFileAccessClaim *)self setClaimerError:v12];
    }

    v9 = 1;
  }

  [(NSFileAccessNode *)v7 removeSelfIfUseless];
  return v9;
}

uint64_t __29__NSFileWritingClaim_granted__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) purposeIDOfClaimOnItemAtLocation:*(*(a1 + 32) + 232) forMessagingPresenter:*(a1 + 40)];
  v5 = *(a1 + 40);
  v6 = [*(a1 + 32) claimID];
  v7 = *(*(a1 + 32) + 224);
  v8 = *(a1 + 48);

  return [v5 relinquishToWritingClaimWithID:v6 options:v7 purposeID:v4 subitemPath:v8 resultHandler:a2];
}

uint64_t __29__NSFileWritingClaim_granted__block_invoke_3(uint64_t a1, int a2)
{
  v2 = &selRef_performRelinquish;
  v3 = *(a1 + 32);
  if (!a2)
  {
    v2 = &selRef_abandon;
  }

  return [v3 makeObjectsPerformSelector:*v2];
}

- (void)resolveURLsThenContinueInvokingClaimer:(id)claimer
{
  v11[6] = *MEMORY[0x1E69E9840];
  if ([(NSFileAccessClaim *)self didWait])
  {
    standardizedURL = [(NSFileAccessNode *)self->_location standardizedURL];
    if (standardizedURL)
    {
      v6 = standardizedURL;

      self->_url = [v6 copy];
      self->_urlDidChange = 1;
    }
  }

  if ([(NSFileAccessClaim *)self claimerError])
  {
    v7 = *(claimer + 2);

    v7(claimer, 0);
  }

  else
  {
    location = self->_location;
    purposeID = [(NSFileAccessClaim *)self purposeID];
    options = self->_options;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __61__NSFileWritingClaim_resolveURLsThenContinueInvokingClaimer___block_invoke;
    v11[3] = &unk_1E69F8528;
    v11[4] = self;
    v11[5] = claimer;
    [(NSFileAccessClaim *)self makeProviderOfItemAtLocation:location provideOrAttachPhysicalURLIfNecessaryForPurposeID:purposeID writingOptions:options thenContinue:v11];
  }
}

uint64_t __61__NSFileWritingClaim_resolveURLsThenContinueInvokingClaimer___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  if (!a2)
  {
    v4 = *(a1 + 32);
    if (*(v4 + 216) == 1)
    {
      a2 = *(v4 + 208);
    }

    else
    {
      a2 = 0;
    }
  }

  return (*(v3 + 16))(v3, a2);
}

- (void)itemAtLocation:(id)location wasReplacedByItemAtLocation:(id)atLocation
{
  if (self->_location == location)
  {
    [atLocation addAccessClaim:self];
    [location removeAccessClaim:self];
    self->_location = atLocation;
  }
}

@end
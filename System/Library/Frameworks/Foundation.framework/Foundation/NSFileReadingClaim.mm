@interface NSFileReadingClaim
- (BOOL)evaluateSelfWithRootNode:(id)node checkSubarbitrability:(BOOL)subarbitrability;
- (NSFileReadingClaim)initWithCoder:(id)coder;
- (NSFileReadingClaim)initWithPurposeID:(id)d url:(id)url options:(unint64_t)options claimer:(id)claimer;
- (void)dealloc;
- (void)devalueSelf;
- (void)encodeWithCoder:(id)coder;
- (void)forwardUsingConnection:(id)connection crashHandler:(id)handler;
- (void)granted;
- (void)invokeClaimer;
- (void)itemAtLocation:(id)location wasReplacedByItemAtLocation:(id)atLocation;
- (void)resolveURLThenMaybeContinueInvokingClaimer:(id)claimer;
@end

@implementation NSFileReadingClaim

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

    location = self->_location;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __29__NSFileReadingClaim_granted__block_invoke;
    v18[3] = &unk_1E69F8438;
    v18[4] = self;
    v6 = [(NSFileAccessClaim *)self prepareAndBlockOnClaimRelinquishmentForPresentersOfItemAtLocation:location orContainedItem:0 withRelinquishProcedureGetter:v18];
    v19 = self->_location;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v19 count:1];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __29__NSFileReadingClaim_granted__block_invoke_3;
    v17[3] = &unk_1E69F8460;
    v17[4] = v6;
    [(NSFileAccessClaim *)self makeProvidersProvideItemsForReadingLocations:v7 options:&self->_options andWritingLocationsIfNecessary:0 options:0 thenContinue:v17];
  }

  else if (self->super._client)
  {
    v8 = _NSFCClaimsLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      claimID = [(NSFileAccessClaim *)self claimID];
      _os_log_error_impl(&dword_18075C000, v8, OS_LOG_TYPE_ERROR, "Claim %{public}@ can't be granted in daemon", buf, 0xCu);
    }
  }

  else
  {
    v9 = atomic_load(&_NSFCSubarbitrationCount);
    if (v9 < 1 || (v14 = atomic_load(_NSFCDisableLogSuppression), (v14 & 1) != 0) || (v15 = atomic_load(&_NSFCSubarbitratedClaimCount), v15 <= 99))
    {
      v10 = _NSFCClaimsLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        claimID = [(NSFileAccessClaim *)self claimID];
        _os_log_impl(&dword_18075C000, v10, OS_LOG_TYPE_DEFAULT, "Claim %{public}@ granted in client", buf, 0xCu);
      }
    }

    if ((self->_options & 8) != 0)
    {
      url = self->_url;
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __29__NSFileReadingClaim_granted__block_invoke_363;
      v16[3] = &unk_1E69F3BD8;
      v16[4] = self;
      [(NSFileAccessClaim *)self prepareItemForUploadingFromURL:url thenContinue:v16];
    }
  }

  [(NSFileAccessClaim *)self unblockClaimerForReason:@"Initial blockage"];
}

- (void)invokeClaimer
{
  v2[5] = *MEMORY[0x1E69E9840];
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __35__NSFileReadingClaim_invokeClaimer__block_invoke;
  v2[3] = &unk_1E69F8488;
  v2[4] = self;
  [(NSFileReadingClaim *)self resolveURLThenMaybeContinueInvokingClaimer:v2];
}

id __35__NSFileReadingClaim_invokeClaimer__block_invoke(uint64_t a1, uint64_t a2)
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

    (*(*(*(a1 + 32) + 160) + 16))(*(*(a1 + 32) + 160), *(a1 + 32), a2, *(*(a1 + 32) + 176), [*(a1 + 32) claimerError]);

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
    (*(v11 + 16))(v11, [MEMORY[0x1E695DEC8] arrayWithObjects:&v19 count:1], 0, *(*(a1 + 32) + 176), objc_msgSend(*(a1 + 32), "shouldEnableMaterializationDuringAccessorBlock"), objc_msgSend(*(a1 + 32), "claimerError"));

    *(*(a1 + 32) + 168) = 0;
    v4 = *(a1 + 32);
  }

  v18.receiver = v4;
  v18.super_class = NSFileReadingClaim;
  return objc_msgSendSuper2(&v18, sel_invokeClaimer);
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSFileReadingClaim;
  [(NSFileAccessClaim *)&v3 dealloc];
}

- (void)devalueSelf
{
  v5[5] = *MEMORY[0x1E69E9840];
  location = self->_location;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __33__NSFileReadingClaim_devalueSelf__block_invoke;
  v5[3] = &unk_1E69F83E8;
  v5[4] = self;
  [(NSFileAccessNode *)location forEachRelevantAccessClaimPerformProcedure:v5];
  [(NSFileAccessNode *)self->_location removeAccessClaim:self];
  self->_location = 0;
  v4.receiver = self;
  v4.super_class = NSFileReadingClaim;
  [(NSFileAccessClaim *)&v4 devalueSelf];
}

id __29__NSFileReadingClaim_granted__block_invoke(uint64_t a1, uint64_t a2)
{
  v6[6] = *MEMORY[0x1E69E9840];
  if (![*(a1 + 32) shouldReadingWithOptions:*(*(a1 + 32) + 224) causePresenterToRelinquish:a2])
  {
    return 0;
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __29__NSFileReadingClaim_granted__block_invoke_2;
  v6[3] = &unk_1E69F8410;
  v4 = *(a1 + 32);
  v6[4] = a2;
  v6[5] = v4;
  return [v6 copy];
}

- (NSFileReadingClaim)initWithPurposeID:(id)d url:(id)url options:(unint64_t)options claimer:(id)claimer
{
  v9 = [(NSFileAccessClaim *)self initWithClient:0 claimID:0 purposeID:d];
  if (v9)
  {
    v9->_url = [url copy];
    v9->_options = (options << 14) & 0x20000 | options;
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
  v5.super_class = NSFileReadingClaim;
  [(NSFileAccessClaim *)&v5 encodeWithCoder:coder];
}

- (NSFileReadingClaim)initWithCoder:(id)coder
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = NSFileReadingClaim;
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
  v10[2] = __58__NSFileReadingClaim_forwardUsingConnection_crashHandler___block_invoke;
  v10[3] = &unk_1E69F61A0;
  v10[4] = self;
  v10[5] = handler;
  v8 = [connection remoteObjectProxyWithErrorHandler:v10];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __58__NSFileReadingClaim_forwardUsingConnection_crashHandler___block_invoke_355;
  v9[3] = &unk_1E69F83C0;
  v9[4] = self;
  [v8 grantAccessClaim:self withReply:v9];
}

uint64_t __58__NSFileReadingClaim_forwardUsingConnection_crashHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = _NSFCClaimsLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = [*(a1 + 32) claimID];
    v7 = 138543618;
    v8 = v6;
    v9 = 2114;
    v10 = a2;
    _os_log_error_impl(&dword_18075C000, v4, OS_LOG_TYPE_ERROR, "%{public}@ grantAccessClaim message failed: %{public}@", &v7, 0x16u);
  }

  if ((*(*(a1 + 40) + 16))())
  {
    [*(a1 + 32) setClaimerError:{_NSErrorWithFilePath(256, *(*(a1 + 32) + 208))}];
  }

  return [*(a1 + 32) unblock];
}

uint64_t __58__NSFileReadingClaim_forwardUsingConnection_crashHandler___block_invoke_355(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v21 = *MEMORY[0x1E69E9840];
  v11 = _NSFCClaimsLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v13 = [*(a1 + 32) claimID];
    v17 = 138543362;
    v18 = v13;
    _os_log_debug_impl(&dword_18075C000, v11, OS_LOG_TYPE_DEBUG, "%{public}@ received grantAccessClaim reply", &v17, 0xCu);
    if (a6)
    {
      goto LABEL_3;
    }
  }

  else if (a6)
  {
LABEL_3:
    v12 = _NSFCClaimsLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v16 = [*(a1 + 32) claimID];
      v17 = 138543618;
      v18 = v16;
      v19 = 2114;
      v20 = a6;
      _os_log_error_impl(&dword_18075C000, v12, OS_LOG_TYPE_ERROR, "%{public}@ grantAccessClaim reply is an error: %{public}@", &v17, 0x16u);
    }

    [*(a1 + 32) setClaimerError:a6];
    return [*(a1 + 32) unblock];
  }

  v14 = [a2 firstObject];
  if (objc_opt_isKindOfClass())
  {

    *(*(a1 + 32) + 208) = [objc_msgSend(v14 "URL")];
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
  v14[1] = *MEMORY[0x1E69E9840];
  v7 = [node descendantForFileURL:self->_url];
  if (!v7)
  {
    return 1;
  }

  v8 = v7;
  v13 = 0;
  if (subarbitrabilityCopy && ![(NSFileAccessNode *)v7 itemIsSubarbitrable])
  {
    v10 = 0;
  }

  else
  {
    v14[0] = v8;
    if (-[NSFileAccessClaim canAccessLocations:forReading:error:](self, "canAccessLocations:forReading:error:", [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1], 1, &v13))
    {
      self->_location = v8;
      [(NSFileAccessNode *)v8 addAccessClaim:self];
      if ((self->_options & 2) != 0)
      {
        self->_rootNode = node;
      }

      location = self->_location;
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __69__NSFileReadingClaim_evaluateSelfWithRootNode_checkSubarbitrability___block_invoke;
      v12[3] = &unk_1E69F83E8;
      v12[4] = self;
      [(NSFileAccessNode *)location forEachRelevantAccessClaimForEvaluatingAgainstClaim:self performProcedure:v12];
    }

    else
    {
      [(NSFileAccessClaim *)self setClaimerError:v13];
    }

    v10 = 1;
  }

  [(NSFileAccessNode *)v8 removeSelfIfUseless];
  return v10;
}

uint64_t __29__NSFileReadingClaim_granted__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) claimID];
  v6 = *(a1 + 40);
  v7 = v6[28];
  v8 = [v6 purposeID];

  return [v4 relinquishToReadingClaimWithID:v5 options:v7 purposeID:v8 resultHandler:a2];
}

uint64_t __29__NSFileReadingClaim_granted__block_invoke_3(uint64_t a1, int a2)
{
  v2 = &selRef_performRelinquish;
  v3 = *(a1 + 32);
  if (!a2)
  {
    v2 = &selRef_abandon;
  }

  return [v3 makeObjectsPerformSelector:*v2];
}

void *__29__NSFileReadingClaim_granted__block_invoke_363(void *result, void *a2, uint64_t a3)
{
  v3 = result;
  v13 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    *(result[4] + 216) = 1;
    v5 = *(result[4] + 208);
    if (v5 != a2)
    {

      result = a2;
      *(v3[4] + 208) = result;
    }
  }

  else
  {
    v7 = _NSFCClaimsLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [v3[4] claimID];
      v9 = 138543618;
      v10 = v8;
      v11 = 2112;
      v12 = a3;
      _os_log_error_impl(&dword_18075C000, v7, OS_LOG_TYPE_ERROR, "Claim %{public}@ failed during preparing for uploading due to error: %@", &v9, 0x16u);
    }

    return [v3[4] setClaimerError:a3];
  }

  return result;
}

- (void)resolveURLThenMaybeContinueInvokingClaimer:(id)claimer
{
  v9[5] = *MEMORY[0x1E69E9840];
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
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __65__NSFileReadingClaim_resolveURLThenMaybeContinueInvokingClaimer___block_invoke;
    v9[3] = &unk_1E69F84B0;
    v9[4] = self;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __65__NSFileReadingClaim_resolveURLThenMaybeContinueInvokingClaimer___block_invoke_3;
    v8[3] = &unk_1E69F5678;
    v8[4] = self;
    v8[5] = claimer;
    __65__NSFileReadingClaim_resolveURLThenMaybeContinueInvokingClaimer___block_invoke(v9, v8);
  }
}

uint64_t __65__NSFileReadingClaim_resolveURLThenMaybeContinueInvokingClaimer___block_invoke(uint64_t a1, uint64_t a2)
{
  v7[5] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  if ((*(v3 + 224) & 2) != 0 && (v4 = *(v3 + 208)) != 0)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __65__NSFileReadingClaim_resolveURLThenMaybeContinueInvokingClaimer___block_invoke_2;
    v7[3] = &unk_1E69F8488;
    v7[4] = v3;
    result = [v3 checkIfSymbolicLinkAtURL:v4 withResolutionCount:v3 + 248 andIfSoThenReevaluateSelf:v7];
    if ((result & 1) == 0)
    {
      return (*(a2 + 16))(a2);
    }
  }

  else
  {
    v6 = *(a2 + 16);

    return v6(a2);
  }

  return result;
}

uint64_t __65__NSFileReadingClaim_resolveURLThenMaybeContinueInvokingClaimer___block_invoke_2(uint64_t a1, void *a2)
{
  *(*(a1 + 32) + 208) = [a2 copy];
  *(*(a1 + 32) + 216) = 1;
  v4 = *(a1 + 32);
  v5 = v4[30];

  return [v4 evaluateSelfWithRootNode:v5 checkSubarbitrability:0];
}

uint64_t __65__NSFileReadingClaim_resolveURLThenMaybeContinueInvokingClaimer___block_invoke_3(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = v2[29];
  v4 = [v2 purposeID];
  v5 = *(a1 + 32);
  v6 = *(*(a1 + 32) + 224);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __65__NSFileReadingClaim_resolveURLThenMaybeContinueInvokingClaimer___block_invoke_4;
  v8[3] = &unk_1E69F84D8;
  v9 = v5;
  return [v2 makeProviderOfItemAtLocation:v3 provideOrAttachPhysicalURLIfNecessaryForPurposeID:v4 readingOptions:v6 thenContinue:v8];
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
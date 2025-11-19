@interface NSFileReadingWritingClaim
- (BOOL)blocksClaim:(id)a3;
- (BOOL)evaluateSelfWithRootNode:(id)a3 checkSubarbitrability:(BOOL)a4;
- (BOOL)isBlockedByWritingItemAtLocation:(id)a3 options:(unint64_t)a4;
- (NSFileReadingWritingClaim)initWithCoder:(id)a3;
- (NSFileReadingWritingClaim)initWithPurposeID:(id)a3 readingURL:(id)a4 options:(unint64_t)a5 writingURL:(id)a6 options:(unint64_t)a7 claimer:(id)a8;
- (id)allURLs;
- (void)dealloc;
- (void)devalueSelf;
- (void)encodeWithCoder:(id)a3;
- (void)forwardUsingConnection:(id)a3 crashHandler:(id)a4;
- (void)granted;
- (void)invokeClaimer;
- (void)itemAtLocation:(id)a3 wasReplacedByItemAtLocation:(id)a4;
- (void)resolveURLsThenMaybeContinueInvokingClaimer:(id)a3;
@end

@implementation NSFileReadingWritingClaim

- (id)allURLs
{
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = v3;
  if (self->_readingURL)
  {
    [v3 addObject:?];
  }

  if (self->_writingURL)
  {
    [v4 addObject:?];
  }

  return v4;
}

- (void)granted
{
  v28 = *MEMORY[0x1E69E9840];
  if (self->_readingLocation || self->_writingLocation)
  {
    v3 = atomic_load(&_NSFCSubarbitrationCount);
    if (v3 < 1 || (v16 = atomic_load(_NSFCDisableLogSuppression), (v16 & 1) != 0) || (v17 = atomic_load(&_NSFCSubarbitratedClaimCount), v17 <= 99))
    {
      v4 = _NSFCClaimsLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v27 = [(NSFileAccessClaim *)self claimID];
        _os_log_impl(&dword_18075C000, v4, OS_LOG_TYPE_DEFAULT, "Claim %{public}@ granted in server", buf, 0xCu);
      }
    }

    v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v6 = v5;
    if (self->_writingLocation)
    {
      v23[6] = MEMORY[0x1E69E9820];
      v23[7] = 3221225472;
      v23[8] = __36__NSFileReadingWritingClaim_granted__block_invoke;
      v23[9] = &unk_1E69F8550;
      v23[10] = self;
      v23[11] = v5;
      v7 = [NSFileAccessClaim prepareAndBlockOnClaimRelinquishmentForPresentersOfItemAtLocation:"prepareAndBlockOnClaimRelinquishmentForPresentersOfItemAtLocation:orContainedItem:withRelinquishProcedureGetter:" orContainedItem:? withRelinquishProcedureGetter:?];
    }

    else
    {
      v7 = 0;
    }

    readingLocation = self->_readingLocation;
    if (readingLocation)
    {
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __36__NSFileReadingWritingClaim_granted__block_invoke_3;
      v23[3] = &unk_1E69F8550;
      v23[4] = self;
      v23[5] = v6;
      v9 = [(NSFileAccessClaim *)self prepareAndBlockOnClaimRelinquishmentForPresentersOfItemAtLocation:readingLocation orContainedItem:0 withRelinquishProcedureGetter:v23];
    }

    else
    {
      v9 = 0;
    }

    if (self->_readingLocation)
    {
      v25 = self->_readingLocation;
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];
    }

    else
    {
      v10 = 0;
    }

    if (self->_writingLocation)
    {
      writingLocation = self->_writingLocation;
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&writingLocation count:1];
    }

    else
    {
      v11 = 0;
    }

    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __36__NSFileReadingWritingClaim_granted__block_invoke_5;
    v22[3] = &unk_1E69F8578;
    v22[4] = v9;
    v22[5] = v7;
    [(NSFileAccessClaim *)self makeProvidersProvideItemsForReadingLocations:v10 options:&self->_readingOptions andWritingLocationsIfNecessary:v11 options:&self->_writingOptions thenContinue:v22];
    if (self->_writingLocation && [(NSFileAccessClaim *)self shouldInformProvidersAboutEndOfWriteWithOptions:self->_writingOptions])
    {
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __36__NSFileReadingWritingClaim_granted__block_invoke_6;
      v21[3] = &unk_1E69F2C00;
      v21[4] = self;
      [(NSFileAccessClaim *)self whenRevokedPerformProcedure:v21];
    }
  }

  else if (self->super._client)
  {
    v12 = _NSFCClaimsLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v27 = [(NSFileAccessClaim *)self claimID];
      _os_log_error_impl(&dword_18075C000, v12, OS_LOG_TYPE_ERROR, "Claim %{public}@ can't be granted in daemon", buf, 0xCu);
    }
  }

  else
  {
    v13 = atomic_load(&_NSFCSubarbitrationCount);
    if (v13 < 1 || (v18 = atomic_load(_NSFCDisableLogSuppression), (v18 & 1) != 0) || (v19 = atomic_load(&_NSFCSubarbitratedClaimCount), v19 <= 99))
    {
      v14 = _NSFCClaimsLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v27 = [(NSFileAccessClaim *)self claimID];
        _os_log_impl(&dword_18075C000, v14, OS_LOG_TYPE_DEFAULT, "Claim %{public}@ granted in client", buf, 0xCu);
      }
    }

    if ((self->_readingOptions & 8) != 0)
    {
      readingURL = self->_readingURL;
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __36__NSFileReadingWritingClaim_granted__block_invoke_407;
      v20[3] = &unk_1E69F3BD8;
      v20[4] = self;
      [(NSFileAccessClaim *)self prepareItemForUploadingFromURL:readingURL thenContinue:v20];
    }
  }

  [(NSFileAccessClaim *)self unblockClaimerForReason:@"Initial blockage"];
}

id __36__NSFileReadingWritingClaim_granted__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v7[7] = *MEMORY[0x1E69E9840];
  if (![*(a1 + 32) shouldWritingWithOptions:*(*(a1 + 32) + 248) causePresenterToRelinquish:a2])
  {
    return 0;
  }

  [*(a1 + 40) addObject:{objc_msgSend(a2, "reactorID")}];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __36__NSFileReadingWritingClaim_granted__block_invoke_2;
  v7[3] = &unk_1E69F8500;
  v7[4] = *(a1 + 32);
  v7[5] = a2;
  v7[6] = a3;
  return [v7 copy];
}

- (void)invokeClaimer
{
  v2[5] = *MEMORY[0x1E69E9840];
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __42__NSFileReadingWritingClaim_invokeClaimer__block_invoke;
  v2[3] = &unk_1E69F85C8;
  v2[4] = self;
  [(NSFileReadingWritingClaim *)self resolveURLsThenMaybeContinueInvokingClaimer:v2];
}

id __42__NSFileReadingWritingClaim_invokeClaimer__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  if (v6[20])
  {
    v7 = atomic_load(&_NSFCSubarbitrationCount);
    if (v7 < 1 || (v20 = atomic_load(_NSFCDisableLogSuppression), (v20 & 1) != 0) || (v21 = atomic_load(&_NSFCSubarbitratedClaimCount), v21 <= 99))
    {
      v8 = _NSFCClaimsLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [*(a1 + 32) claimID];
        *buf = 138543362;
        v28 = v9;
        _os_log_impl(&dword_18075C000, v8, OS_LOG_TYPE_DEFAULT, "Claim %{public}@ invoked in client", buf, 0xCu);
      }
    }

    (*(*(*(a1 + 32) + 160) + 16))(*(*(a1 + 32) + 160), *(a1 + 32), a2, a3, *(*(a1 + 32) + 176), [*(a1 + 32) claimerError]);

    *(*(a1 + 32) + 160) = 0;
    v6 = *(a1 + 32);
  }

  if (v6[21])
  {
    v10 = atomic_load(&_NSFCSubarbitrationCount);
    if (v10 < 1 || (v22 = atomic_load(_NSFCDisableLogSuppression), (v22 & 1) != 0) || (v23 = atomic_load(&_NSFCSubarbitratedClaimCount), v23 <= 99))
    {
      v11 = _NSFCClaimsLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [*(a1 + 32) claimID];
        *buf = 138543362;
        v28 = v12;
        _os_log_impl(&dword_18075C000, v11, OS_LOG_TYPE_DEFAULT, "Claim %{public}@ invoked in server", buf, 0xCu);
      }
    }

    if (a2)
    {
      v13 = [NSURLPromisePair pairWithURL:a2];
    }

    else
    {
      v13 = [MEMORY[0x1E695DFB0] null];
    }

    v14 = v13;
    if (a3)
    {
      v15 = [NSURLPromisePair pairWithURL:a3];
    }

    else
    {
      v15 = [MEMORY[0x1E695DFB0] null];
    }

    v16 = v15;
    v17 = *(*(a1 + 32) + 168);
    v26 = v14;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v26 count:1];
    v25 = v16;
    (*(v17 + 16))(v17, v18, [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1], *(*(a1 + 32) + 176), objc_msgSend(*(a1 + 32), "shouldEnableMaterializationDuringAccessorBlock"), objc_msgSend(*(a1 + 32), "claimerError"));

    *(*(a1 + 32) + 168) = 0;
    v6 = *(a1 + 32);
  }

  v24.receiver = v6;
  v24.super_class = NSFileReadingWritingClaim;
  return objc_msgSendSuper2(&v24, sel_invokeClaimer);
}

uint64_t __36__NSFileReadingWritingClaim_granted__block_invoke_6(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 264) itemProvider];
  v3 = *(*(a1 + 32) + 264);

  return [v2 observeEndOfWriteAtLocation:v3 forAccessClaim:?];
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSFileReadingWritingClaim;
  [(NSFileAccessClaim *)&v3 dealloc];
}

- (void)devalueSelf
{
  v7[5] = *MEMORY[0x1E69E9840];
  readingLocation = self->_readingLocation;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __40__NSFileReadingWritingClaim_devalueSelf__block_invoke;
  v7[3] = &unk_1E69F83E8;
  v7[4] = self;
  [(NSFileAccessNode *)readingLocation forEachRelevantAccessClaimPerformProcedure:v7];
  writingLocation = self->_writingLocation;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __40__NSFileReadingWritingClaim_devalueSelf__block_invoke_2;
  v6[3] = &unk_1E69F83E8;
  v6[4] = self;
  [(NSFileAccessNode *)writingLocation forEachRelevantAccessClaimPerformProcedure:v6];
  [(NSFileAccessNode *)self->_readingLocation removeAccessClaim:self];
  self->_readingLocation = 0;
  [(NSFileAccessNode *)self->_writingLocation removeAccessClaim:self];
  self->_writingLocation = 0;
  v5.receiver = self;
  v5.super_class = NSFileReadingWritingClaim;
  [(NSFileAccessClaim *)&v5 devalueSelf];
}

- (NSFileReadingWritingClaim)initWithPurposeID:(id)a3 readingURL:(id)a4 options:(unint64_t)a5 writingURL:(id)a6 options:(unint64_t)a7 claimer:(id)a8
{
  v13 = [(NSFileAccessClaim *)self initWithClient:0 claimID:0 purposeID:a3];
  if (v13)
  {
    v13->_readingURL = [a4 copy];
    v13->_readingOptions = (a5 << 14) & 0x20000 | a5;
    v13->_writingURL = [a6 copy];
    v13->_writingOptions = a7;
    v13->super._claimerOrNil = [a8 copy];
  }

  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = *MEMORY[0x1E69E9840];
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"NSFileAccessClaims should only ever be encoded by XPC" userInfo:0]);
  }

  [a3 encodeObject:+[NSURLPromisePair pairWithURL:](NSURLPromisePair forKey:{"pairWithURL:", self->_readingURL), @"NSReadingURLPairKey"}];
  [a3 encodeObject:+[NSNumber numberWithUnsignedInteger:](NSNumber forKey:{"numberWithUnsignedInteger:", self->_readingOptions), @"NSReadingOptionsKey"}];
  [a3 encodeObject:+[NSURLPromisePair pairWithURL:](NSURLPromisePair forKey:{"pairWithURL:", self->_writingURL), @"NSWritingURLPairKey"}];
  [a3 encodeObject:+[NSNumber numberWithUnsignedInteger:](NSNumber forKey:{"numberWithUnsignedInteger:", self->_writingOptions), @"NSWritingOptionsKey"}];
  v5.receiver = self;
  v5.super_class = NSFileReadingWritingClaim;
  [(NSFileAccessClaim *)&v5 encodeWithCoder:a3];
}

- (NSFileReadingWritingClaim)initWithCoder:(id)a3
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = NSFileReadingWritingClaim;
  v4 = [(NSFileAccessClaim *)&v6 initWithCoder:?];
  if (v4)
  {
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"NSFileAccessClaims should only ever be decoded by XPC" userInfo:0]);
    }

    v4->_readingURL = [objc_msgSend(a3 decodeObjectOfClass:objc_opt_class() forKey:{@"NSReadingURLPairKey", "URL"}];
    v4->_readingOptions = [objc_msgSend(a3 decodeObjectOfClass:objc_opt_class() forKey:{@"NSReadingOptionsKey", "unsignedIntegerValue"}];
    v4->_writingURL = [objc_msgSend(a3 decodeObjectOfClass:objc_opt_class() forKey:{@"NSWritingURLPairKey", "URL"}];
    v4->_writingOptions = [objc_msgSend(a3 decodeObjectOfClass:objc_opt_class() forKey:{@"NSWritingOptionsKey", "unsignedIntegerValue"}];
  }

  return v4;
}

- (void)forwardUsingConnection:(id)a3 crashHandler:(id)a4
{
  v13 = *MEMORY[0x1E69E9840];
  v7 = _NSFCClaimsLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543362;
    v12 = [(NSFileAccessClaim *)self claimID];
    _os_log_debug_impl(&dword_18075C000, v7, OS_LOG_TYPE_DEBUG, "%{public}@ blocked pending grantAccessClaim", buf, 0xCu);
  }

  [(NSFileAccessClaim *)self block];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __65__NSFileReadingWritingClaim_forwardUsingConnection_crashHandler___block_invoke;
  v10[3] = &unk_1E69F61A0;
  v10[4] = self;
  v10[5] = a4;
  v8 = [a3 remoteObjectProxyWithErrorHandler:v10];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __65__NSFileReadingWritingClaim_forwardUsingConnection_crashHandler___block_invoke_406;
  v9[3] = &unk_1E69F83C0;
  v9[4] = self;
  [v8 grantAccessClaim:self withReply:v9];
}

uint64_t __65__NSFileReadingWritingClaim_forwardUsingConnection_crashHandler___block_invoke(uint64_t a1, uint64_t a2)
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
    [*(a1 + 32) setClaimerError:{_NSErrorWithFilePath(256, *(*(a1 + 32) + 208))}];
  }

  return [*(a1 + 32) unblock];
}

uint64_t __65__NSFileReadingWritingClaim_forwardUsingConnection_crashHandler___block_invoke_406(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v23 = *MEMORY[0x1E69E9840];
  v12 = _NSFCClaimsLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v14 = [*(a1 + 32) claimID];
    v19 = 138543362;
    v20 = v14;
    _os_log_debug_impl(&dword_18075C000, v12, OS_LOG_TYPE_DEBUG, "%{public}@ received grantAccessClaim reply", &v19, 0xCu);
    if (a6)
    {
      goto LABEL_3;
    }
  }

  else if (a6)
  {
LABEL_3:
    v13 = _NSFCClaimsLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v18 = [*(a1 + 32) claimID];
      v19 = 138543618;
      v20 = v18;
      v21 = 2114;
      v22 = a6;
      _os_log_error_impl(&dword_18075C000, v13, OS_LOG_TYPE_ERROR, "%{public}@ grantAccessClaim reply is an error: %{public}@", &v19, 0x16u);
    }

    [*(a1 + 32) setClaimerError:a6];
    return [*(a1 + 32) unblock];
  }

  v15 = [a2 firstObject];
  if (objc_opt_isKindOfClass())
  {

    *(*(a1 + 32) + 208) = [objc_msgSend(v15 "URL")];
    *(*(a1 + 32) + 216) = 1;
  }

  v16 = [a3 firstObject];
  if (objc_opt_isKindOfClass())
  {

    *(*(a1 + 32) + 232) = [objc_msgSend(v16 "URL")];
    *(*(a1 + 32) + 240) = 1;
  }

  if (a4)
  {

    *(*(a1 + 32) + 176) = [a4 copy];
  }

  [*(a1 + 32) setShouldEnableMaterializationDuringAccessorBlock:a5];
  return [*(a1 + 32) unblock];
}

- (BOOL)evaluateSelfWithRootNode:(id)a3 checkSubarbitrability:(BOOL)a4
{
  v4 = a4;
  v19[1] = *MEMORY[0x1E69E9840];
  v7 = [a3 descendantForFileURL:self->_readingURL];
  v8 = [a3 descendantForFileURL:self->_writingURL];
  if (v7)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    return 1;
  }

  v11 = v8;
  v17 = 0;
  if (!v4 || [(NSFileAccessNode *)v7 itemIsSubarbitrable]&& [(NSFileAccessNode *)v11 itemIsSubarbitrable])
  {
    v19[0] = v7;
    if (-[NSFileAccessClaim canAccessLocations:forReading:error:](self, "canAccessLocations:forReading:error:", [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1], 1, &v17) && (v18 = v11, -[NSFileAccessClaim canAccessLocations:forReading:error:](self, "canAccessLocations:forReading:error:", objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", &v18, 1), 0, &v17)))
    {
      self->_readingLocation = v7;
      [(NSFileAccessNode *)v7 addAccessClaim:self];
      self->_writingLocation = v11;
      [(NSFileAccessNode *)v11 addAccessClaim:self];
      if ((self->_readingOptions & 2) != 0)
      {
        self->_rootNode = a3;
      }

      readingLocation = self->_readingLocation;
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __76__NSFileReadingWritingClaim_evaluateSelfWithRootNode_checkSubarbitrability___block_invoke;
      v16[3] = &unk_1E69F83E8;
      v16[4] = self;
      [(NSFileAccessNode *)readingLocation forEachRelevantAccessClaimForEvaluatingAgainstClaim:self performProcedure:v16];
      writingLocation = self->_writingLocation;
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __76__NSFileReadingWritingClaim_evaluateSelfWithRootNode_checkSubarbitrability___block_invoke_2;
      v15[3] = &unk_1E69F83E8;
      v15[4] = self;
      [(NSFileAccessNode *)writingLocation forEachRelevantAccessClaimForEvaluatingAgainstClaim:self performProcedure:v15];
    }

    else
    {
      [(NSFileAccessClaim *)self setClaimerError:v17];
    }

    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  [(NSFileAccessNode *)v11 removeSelfIfUseless];
  [(NSFileAccessNode *)v7 removeSelfIfUseless];
  return v10;
}

- (BOOL)isBlockedByWritingItemAtLocation:(id)a3 options:(unint64_t)a4
{
  v7 = objc_opt_class();
  if ([v7 canReadingItemAtLocation:self->_readingLocation options:self->_readingOptions safelyOverlapNewWriting:0 ofItemAtLocation:a3 options:a4])
  {
    return [v7 canNewWriteOfItemAtLocation:self->_writingLocation options:self->_writingOptions safelyOverlapExistingWriteOfItemAtLocation:a3 options:a4] ^ 1;
  }

  else
  {
    return 1;
  }
}

uint64_t __36__NSFileReadingWritingClaim_granted__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) purposeIDOfClaimOnItemAtLocation:*(*(a1 + 32) + 264) forMessagingPresenter:*(a1 + 40)];
  v5 = *(a1 + 40);
  v6 = [*(a1 + 32) claimID];
  v7 = *(*(a1 + 32) + 248);
  v8 = *(a1 + 48);

  return [v5 relinquishToWritingClaimWithID:v6 options:v7 purposeID:v4 subitemPath:v8 resultHandler:a2];
}

id __36__NSFileReadingWritingClaim_granted__block_invoke_3(uint64_t a1, void *a2)
{
  v6[6] = *MEMORY[0x1E69E9840];
  if (![*(a1 + 32) shouldReadingWithOptions:*(*(a1 + 32) + 224) causePresenterToRelinquish:a2] || (objc_msgSend(*(a1 + 40), "containsObject:", objc_msgSend(a2, "reactorID")) & 1) != 0)
  {
    return 0;
  }

  [*(a1 + 40) addObject:{objc_msgSend(a2, "reactorID")}];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __36__NSFileReadingWritingClaim_granted__block_invoke_4;
  v6[3] = &unk_1E69F8410;
  v5 = *(a1 + 32);
  v6[4] = a2;
  v6[5] = v5;
  return [v6 copy];
}

uint64_t __36__NSFileReadingWritingClaim_granted__block_invoke_4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) claimID];
  v6 = *(a1 + 40);
  v7 = v6[28];
  v8 = [v6 purposeID];

  return [v4 relinquishToReadingClaimWithID:v5 options:v7 purposeID:v8 resultHandler:a2];
}

uint64_t __36__NSFileReadingWritingClaim_granted__block_invoke_5(uint64_t a1, int a2)
{
  v3 = &selRef_performRelinquish;
  v4 = *(a1 + 32);
  if (!a2)
  {
    v3 = &selRef_abandon;
  }

  v5 = *v3;
  [v4 makeObjectsPerformSelector:*v3];
  v6 = *(a1 + 40);

  return [v6 makeObjectsPerformSelector:v5];
}

void *__36__NSFileReadingWritingClaim_granted__block_invoke_407(void *result, void *a2, uint64_t a3)
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

- (void)resolveURLsThenMaybeContinueInvokingClaimer:(id)a3
{
  v11[5] = *MEMORY[0x1E69E9840];
  if ([(NSFileAccessClaim *)self didWait])
  {
    v5 = [(NSFileAccessNode *)self->_readingLocation standardizedURL];
    if (v5)
    {
      v6 = v5;

      self->_readingURL = [v6 copy];
      self->_readingURLDidChange = 1;
    }

    v7 = [(NSFileAccessNode *)self->_writingLocation standardizedURL];
    if (v7)
    {
      v8 = v7;

      self->_writingURL = [v8 copy];
      self->_writingURLDidChange = 1;
    }
  }

  if ([(NSFileAccessClaim *)self claimerError])
  {
    v9 = *(a3 + 2);

    v9(a3, 0, 0);
  }

  else
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __73__NSFileReadingWritingClaim_resolveURLsThenMaybeContinueInvokingClaimer___block_invoke;
    v11[3] = &unk_1E69F84B0;
    v11[4] = self;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __73__NSFileReadingWritingClaim_resolveURLsThenMaybeContinueInvokingClaimer___block_invoke_3;
    v10[3] = &unk_1E69F5678;
    v10[4] = self;
    v10[5] = a3;
    __73__NSFileReadingWritingClaim_resolveURLsThenMaybeContinueInvokingClaimer___block_invoke(v11, v10);
  }
}

uint64_t __73__NSFileReadingWritingClaim_resolveURLsThenMaybeContinueInvokingClaimer___block_invoke(uint64_t a1, uint64_t a2)
{
  v6[5] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  if ((*(v3 + 224) & 2) == 0)
  {
    return (*(a2 + 16))(a2);
  }

  v4 = *(v3 + 208);
  if (!v4)
  {
    return (*(a2 + 16))(a2);
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __73__NSFileReadingWritingClaim_resolveURLsThenMaybeContinueInvokingClaimer___block_invoke_2;
  v6[3] = &unk_1E69F8488;
  v6[4] = v3;
  result = [v3 checkIfSymbolicLinkAtURL:v4 withResolutionCount:v3 + 280 andIfSoThenReevaluateSelf:v6];
  if ((result & 1) == 0)
  {
    return (*(a2 + 16))(a2);
  }

  return result;
}

uint64_t __73__NSFileReadingWritingClaim_resolveURLsThenMaybeContinueInvokingClaimer___block_invoke_2(uint64_t a1, void *a2)
{
  *(*(a1 + 32) + 208) = [a2 copy];
  *(*(a1 + 32) + 216) = 1;
  v4 = *(a1 + 32);
  v5 = v4[34];

  return [v4 evaluateSelfWithRootNode:v5 checkSubarbitrability:0];
}

uint64_t __73__NSFileReadingWritingClaim_resolveURLsThenMaybeContinueInvokingClaimer___block_invoke_3(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = v2[32];
  v4 = [v2 purposeID];
  v5 = *(a1 + 32);
  v6 = *(*(a1 + 32) + 224);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __73__NSFileReadingWritingClaim_resolveURLsThenMaybeContinueInvokingClaimer___block_invoke_4;
  v8[3] = &unk_1E69F84D8;
  v9 = v5;
  return [v2 makeProviderOfItemAtLocation:v3 provideOrAttachPhysicalURLIfNecessaryForPurposeID:v4 readingOptions:v6 thenContinue:v8];
}

uint64_t __73__NSFileReadingWritingClaim_resolveURLsThenMaybeContinueInvokingClaimer___block_invoke_4(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = v4[33];
  v6 = [v4 purposeID];
  v7 = *(a1 + 32);
  v8 = *(*(a1 + 32) + 248);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __73__NSFileReadingWritingClaim_resolveURLsThenMaybeContinueInvokingClaimer___block_invoke_5;
  v10[3] = &unk_1E69F85A0;
  v10[4] = a2;
  v11 = v7;
  return [v4 makeProviderOfItemAtLocation:v5 provideOrAttachPhysicalURLIfNecessaryForPurposeID:v6 writingOptions:v8 thenContinue:v10];
}

- (void)itemAtLocation:(id)a3 wasReplacedByItemAtLocation:(id)a4
{
  if (self->_writingLocation == a3)
  {
    [a4 addAccessClaim:self];
    [a3 removeAccessClaim:self];
    self->_writingLocation = a4;
  }

  if (self->_readingLocation == a3)
  {
    [a4 addAccessClaim:self];
    [a3 removeAccessClaim:self];
    self->_readingLocation = a4;
  }
}

- (BOOL)blocksClaim:(id)a3
{
  if ([a3 isBlockedByReadingItemAtLocation:self->_readingLocation options:self->_readingOptions])
  {
    return 1;
  }

  writingLocation = self->_writingLocation;
  writingOptions = self->_writingOptions;

  return [a3 isBlockedByWritingItemAtLocation:writingLocation options:writingOptions];
}

@end
@interface NSFileWritingWritingClaim
- (BOOL)blocksClaim:(id)a3;
- (BOOL)evaluateSelfWithRootNode:(id)a3 checkSubarbitrability:(BOOL)a4;
- (BOOL)isBlockedByReadingItemAtLocation:(id)a3 options:(unint64_t)a4;
- (BOOL)isBlockedByWritingItemAtLocation:(id)a3 options:(unint64_t)a4;
- (NSFileWritingWritingClaim)initWithCoder:(id)a3;
- (NSFileWritingWritingClaim)initWithPurposeID:(id)a3 url:(id)a4 options:(unint64_t)a5 url:(id)a6 options:(unint64_t)a7 claimer:(id)a8;
- (id)allURLs;
- (void)dealloc;
- (void)devalueSelf;
- (void)encodeWithCoder:(id)a3;
- (void)forwardUsingConnection:(id)a3 crashHandler:(id)a4;
- (void)granted;
- (void)invokeClaimer;
- (void)itemAtLocation:(id)a3 wasReplacedByItemAtLocation:(id)a4;
- (void)protectFilesAgainstEviction;
- (void)resolveURLsThenContinueInvokingClaimer:(id)a3;
@end

@implementation NSFileWritingWritingClaim

- (NSFileWritingWritingClaim)initWithPurposeID:(id)a3 url:(id)a4 options:(unint64_t)a5 url:(id)a6 options:(unint64_t)a7 claimer:(id)a8
{
  v13 = [(NSFileAccessClaim *)self initWithClient:0 claimID:0 purposeID:a3];
  if (v13)
  {
    v13->_url1 = [a4 copy];
    v13->_options1 = a5;
    v13->_url2 = [a6 copy];
    v13->_options2 = a7;
    v13->super._claimerOrNil = [a8 copy];
  }

  return v13;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSFileWritingWritingClaim;
  [(NSFileAccessClaim *)&v3 dealloc];
}

- (void)encodeWithCoder:(id)a3
{
  v6 = *MEMORY[0x1E69E9840];
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"NSFileAccessClaims should only ever be encoded by XPC" userInfo:0]);
  }

  [a3 encodeObject:+[NSURLPromisePair pairWithURL:](NSURLPromisePair forKey:{"pairWithURL:", self->_url1), @"NSURLPair1Key"}];
  [a3 encodeObject:+[NSNumber numberWithUnsignedInteger:](NSNumber forKey:{"numberWithUnsignedInteger:", self->_options1), @"NSOptions1Key"}];
  [a3 encodeObject:+[NSURLPromisePair pairWithURL:](NSURLPromisePair forKey:{"pairWithURL:", self->_url2), @"NSURLPair2Key"}];
  [a3 encodeObject:+[NSNumber numberWithUnsignedInteger:](NSNumber forKey:{"numberWithUnsignedInteger:", self->_options2), @"NSOptions2Key"}];
  v5.receiver = self;
  v5.super_class = NSFileWritingWritingClaim;
  [(NSFileAccessClaim *)&v5 encodeWithCoder:a3];
}

- (NSFileWritingWritingClaim)initWithCoder:(id)a3
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = NSFileWritingWritingClaim;
  v4 = [(NSFileAccessClaim *)&v6 initWithCoder:?];
  if (v4)
  {
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"NSFileAccessClaims should only ever be decoded by XPC" userInfo:0]);
    }

    v4->_url1 = [objc_msgSend(a3 decodeObjectOfClass:objc_opt_class() forKey:{@"NSURLPair1Key", "URL"}];
    v4->_options1 = [objc_msgSend(a3 decodeObjectOfClass:objc_opt_class() forKey:{@"NSOptions1Key", "unsignedIntegerValue"}];
    v4->_url2 = [objc_msgSend(a3 decodeObjectOfClass:objc_opt_class() forKey:{@"NSURLPair2Key", "URL"}];
    v4->_options2 = [objc_msgSend(a3 decodeObjectOfClass:objc_opt_class() forKey:{@"NSOptions2Key", "unsignedIntegerValue"}];
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
  v10[2] = __65__NSFileWritingWritingClaim_forwardUsingConnection_crashHandler___block_invoke;
  v10[3] = &unk_1E69F61A0;
  v10[4] = self;
  v10[5] = a4;
  v8 = [a3 remoteObjectProxyWithErrorHandler:v10];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __65__NSFileWritingWritingClaim_forwardUsingConnection_crashHandler___block_invoke_438;
  v9[3] = &unk_1E69F83C0;
  v9[4] = self;
  [v8 grantAccessClaim:self withReply:v9];
}

uint64_t __65__NSFileWritingWritingClaim_forwardUsingConnection_crashHandler___block_invoke(uint64_t a1, uint64_t a2)
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

uint64_t __65__NSFileWritingWritingClaim_forwardUsingConnection_crashHandler___block_invoke_438(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v22 = *MEMORY[0x1E69E9840];
  v11 = _NSFCClaimsLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v13 = [*(a1 + 32) claimID];
    v18 = 138543362;
    v19 = v13;
    _os_log_debug_impl(&dword_18075C000, v11, OS_LOG_TYPE_DEBUG, "%{public}@ received grantAccessClaim reply", &v18, 0xCu);
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
      v17 = [*(a1 + 32) claimID];
      v18 = 138543618;
      v19 = v17;
      v20 = 2114;
      v21 = a6;
      _os_log_error_impl(&dword_18075C000, v12, OS_LOG_TYPE_ERROR, "%{public}@ grantAccessClaim reply is an error: %{public}@", &v18, 0x16u);
    }

    [*(a1 + 32) setClaimerError:a6];
    return [*(a1 + 32) unblock];
  }

  v14 = [a3 firstObject];
  if (objc_opt_isKindOfClass())
  {

    *(*(a1 + 32) + 208) = [objc_msgSend(v14 "URL")];
    *(*(a1 + 32) + 216) = 1;
  }

  if ([a3 count] < 2)
  {
    v15 = 0;
  }

  else
  {
    v15 = [a3 objectAtIndex:1];
  }

  if (objc_opt_isKindOfClass())
  {

    *(*(a1 + 32) + 232) = [objc_msgSend(v15 "URL")];
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
  v18[2] = *MEMORY[0x1E69E9840];
  v7 = [a3 descendantForFileURL:self->_url1];
  v8 = [a3 descendantForFileURL:self->_url2];
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
    v18[0] = v7;
    v18[1] = v11;
    if (-[NSFileAccessClaim canAccessLocations:forReading:error:](self, "canAccessLocations:forReading:error:", [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2], 0, &v17))
    {
      self->_location1 = v7;
      [(NSFileAccessNode *)v7 addAccessClaim:self];
      self->_location2 = v11;
      [(NSFileAccessNode *)v11 addAccessClaim:self];
      location1 = self->_location1;
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __76__NSFileWritingWritingClaim_evaluateSelfWithRootNode_checkSubarbitrability___block_invoke;
      v16[3] = &unk_1E69F83E8;
      v16[4] = self;
      [(NSFileAccessNode *)location1 forEachRelevantAccessClaimForEvaluatingAgainstClaim:self performProcedure:v16];
      location2 = self->_location2;
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __76__NSFileWritingWritingClaim_evaluateSelfWithRootNode_checkSubarbitrability___block_invoke_2;
      v15[3] = &unk_1E69F83E8;
      v15[4] = self;
      [(NSFileAccessNode *)location2 forEachRelevantAccessClaimForEvaluatingAgainstClaim:self performProcedure:v15];
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

  [(NSFileAccessNode *)v7 removeSelfIfUseless];
  [(NSFileAccessNode *)v11 removeSelfIfUseless];
  return v10;
}

- (BOOL)isBlockedByReadingItemAtLocation:(id)a3 options:(unint64_t)a4
{
  v7 = objc_opt_class();
  LOBYTE(v8) = 1;
  if ([v7 canReadingItemAtLocation:a3 options:a4 safelyOverlapNewWriting:1 ofItemAtLocation:self->_location1 options:self->_options1])
  {
    return [v7 canReadingItemAtLocation:a3 options:a4 safelyOverlapNewWriting:1 ofItemAtLocation:self->_location2 options:self->_options2] ^ 1;
  }

  return v8;
}

- (BOOL)isBlockedByWritingItemAtLocation:(id)a3 options:(unint64_t)a4
{
  v7 = objc_opt_class();
  if ([v7 canNewWriteOfItemAtLocation:self->_location1 options:self->_options1 safelyOverlapExistingWriteOfItemAtLocation:a3 options:a4])
  {
    return [v7 canNewWriteOfItemAtLocation:self->_location2 options:self->_options2 safelyOverlapExistingWriteOfItemAtLocation:a3 options:a4] ^ 1;
  }

  else
  {
    return 1;
  }
}

- (void)granted
{
  buf[3] = *MEMORY[0x1E69E9840];
  v3 = atomic_load(&_NSFCSubarbitrationCount);
  if (v3 < 1 || (v13 = atomic_load(_NSFCDisableLogSuppression), (v13 & 1) != 0) || (v14 = atomic_load(&_NSFCSubarbitratedClaimCount), v14 <= 99))
  {
    if (self->_location1 || self->_location2)
    {
      v4 = _NSFCClaimsLog();
      if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_7;
      }

      LODWORD(buf[0]) = 138543362;
      *(buf + 4) = [(NSFileAccessClaim *)self claimID];
      v5 = "Claim %{public}@ granted in server";
    }

    else
    {
      v4 = _NSFCClaimsLog();
      if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_7;
      }

      LODWORD(buf[0]) = 138543362;
      *(buf + 4) = [(NSFileAccessClaim *)self claimID];
      v5 = "Claim %{public}@ granted in client";
    }

    _os_log_impl(&dword_18075C000, v4, OS_LOG_TYPE_DEFAULT, v5, buf, 0xCu);
  }

LABEL_7:
  if (self->_location1 || self->_location2)
  {
    v6 = malloc_type_malloc(0x10uLL, 0x100004000313F17uLL);
    v7 = v6;
    location1 = self->_location1;
    if (location1)
    {
      buf[0] = self->_location1;
      *v6 = self->_options1;
      LODWORD(location1) = 1;
    }

    location2 = self->_location2;
    if (location2)
    {
      buf[location1] = location2;
      v6[location1] = self->_options2;
      LODWORD(location1) = location1 + 1;
    }

    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:buf count:location1];
    if (self->_location1)
    {
      v16[12] = MEMORY[0x1E69E9820];
      v16[13] = 3221225472;
      v16[14] = __36__NSFileWritingWritingClaim_granted__block_invoke;
      v16[15] = &unk_1E69F8438;
      v16[16] = self;
      v11 = [NSFileAccessClaim prepareAndBlockOnClaimRelinquishmentForPresentersOfItemAtLocation:"prepareAndBlockOnClaimRelinquishmentForPresentersOfItemAtLocation:orContainedItem:withRelinquishProcedureGetter:" orContainedItem:? withRelinquishProcedureGetter:?];
    }

    else
    {
      v11 = 0;
    }

    if (self->_location2)
    {
      v16[7] = MEMORY[0x1E69E9820];
      v16[8] = 3221225472;
      v16[9] = __36__NSFileWritingWritingClaim_granted__block_invoke_3;
      v16[10] = &unk_1E69F8438;
      v16[11] = self;
      v12 = [NSFileAccessClaim prepareAndBlockOnClaimRelinquishmentForPresentersOfItemAtLocation:"prepareAndBlockOnClaimRelinquishmentForPresentersOfItemAtLocation:orContainedItem:withRelinquishProcedureGetter:" orContainedItem:? withRelinquishProcedureGetter:?];
    }

    else
    {
      v12 = 0;
    }

    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __36__NSFileWritingWritingClaim_granted__block_invoke_5;
    v16[3] = &unk_1E69F85F0;
    v16[4] = v11;
    v16[5] = v12;
    v16[6] = v7;
    [(NSFileAccessClaim *)self makeProvidersProvideItemsForReadingLocations:0 options:0 andWritingLocationsIfNecessary:v10 options:v7 thenContinue:v16];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __36__NSFileWritingWritingClaim_granted__block_invoke_6;
    v15[3] = &unk_1E69F2C00;
    v15[4] = self;
    [(NSFileAccessClaim *)self whenRevokedPerformProcedure:v15];
  }

  [(NSFileAccessClaim *)self unblockClaimerForReason:@"Initial blockage"];
}

id __36__NSFileWritingWritingClaim_granted__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[7] = *MEMORY[0x1E69E9840];
  if (![*(a1 + 32) shouldWritingWithOptions:*(*(a1 + 32) + 224) causePresenterToRelinquish:a2])
  {
    return 0;
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __36__NSFileWritingWritingClaim_granted__block_invoke_2;
  v7[3] = &unk_1E69F8500;
  v7[4] = *(a1 + 32);
  v7[5] = a2;
  v7[6] = a3;
  return [v7 copy];
}

uint64_t __36__NSFileWritingWritingClaim_granted__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) purposeIDOfClaimOnItemAtLocation:*(*(a1 + 32) + 256) forMessagingPresenter:*(a1 + 40)];
  v5 = *(a1 + 40);
  v6 = [*(a1 + 32) claimID];
  v7 = *(*(a1 + 32) + 224);
  v8 = *(a1 + 48);

  return [v5 relinquishToWritingClaimWithID:v6 options:v7 purposeID:v4 subitemPath:v8 resultHandler:a2];
}

id __36__NSFileWritingWritingClaim_granted__block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[7] = *MEMORY[0x1E69E9840];
  if (![*(a1 + 32) shouldWritingWithOptions:*(*(a1 + 32) + 248) causePresenterToRelinquish:a2])
  {
    return 0;
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __36__NSFileWritingWritingClaim_granted__block_invoke_4;
  v7[3] = &unk_1E69F8500;
  v7[4] = *(a1 + 32);
  v7[5] = a2;
  v7[6] = a3;
  return [v7 copy];
}

uint64_t __36__NSFileWritingWritingClaim_granted__block_invoke_4(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) purposeIDOfClaimOnItemAtLocation:*(*(a1 + 32) + 264) forMessagingPresenter:*(a1 + 40)];
  v5 = *(a1 + 40);
  v6 = [*(a1 + 32) claimID];
  v7 = *(*(a1 + 32) + 248);
  v8 = *(a1 + 48);

  return [v5 relinquishToWritingClaimWithID:v6 options:v7 purposeID:v4 subitemPath:v8 resultHandler:a2];
}

void __36__NSFileWritingWritingClaim_granted__block_invoke_5(uint64_t a1, int a2)
{
  v3 = &selRef_performRelinquish;
  v4 = *(a1 + 32);
  if (!a2)
  {
    v3 = &selRef_abandon;
  }

  v5 = *v3;
  [v4 makeObjectsPerformSelector:*v3];
  [*(a1 + 40) makeObjectsPerformSelector:v5];
  v6 = *(a1 + 48);

  free(v6);
}

uint64_t __36__NSFileWritingWritingClaim_granted__block_invoke_6(uint64_t a1)
{
  result = *(a1 + 32);
  if (*(result + 256))
  {
    v3 = [result shouldInformProvidersAboutEndOfWriteWithOptions:*(result + 224)];
    result = *(a1 + 32);
    if (v3)
    {
      [objc_msgSend(*(result + 256) "itemProvider")];
      result = *(a1 + 32);
    }
  }

  if (*(result + 264))
  {
    result = [result shouldInformProvidersAboutEndOfWriteWithOptions:*(result + 248)];
    if (result)
    {
      v4 = [*(*(a1 + 32) + 264) itemProvider];
      v5 = *(*(a1 + 32) + 264);

      return [v4 observeEndOfWriteAtLocation:v5 forAccessClaim:?];
    }
  }

  return result;
}

- (void)resolveURLsThenContinueInvokingClaimer:(id)a3
{
  v13[7] = *MEMORY[0x1E69E9840];
  if ([(NSFileAccessClaim *)self didWait])
  {
    v5 = [(NSFileAccessNode *)self->_location1 standardizedURL];
    if (v5)
    {
      v6 = v5;

      self->_url1 = [v6 copy];
      self->_url1DidChange = 1;
    }

    v7 = [(NSFileAccessNode *)self->_location2 standardizedURL];
    if (v7)
    {
      v8 = v7;

      self->_url2 = [v8 copy];
      self->_url2DidChange = 1;
    }
  }

  if ([(NSFileAccessClaim *)self claimerError])
  {
    v9 = *(a3 + 2);

    v9(a3, 0, 0);
  }

  else
  {
    v10 = [(NSFileAccessClaim *)self purposeID];
    location1 = self->_location1;
    options1 = self->_options1;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __68__NSFileWritingWritingClaim_resolveURLsThenContinueInvokingClaimer___block_invoke;
    v13[3] = &unk_1E69F85A0;
    v13[4] = self;
    v13[5] = v10;
    v13[6] = a3;
    [(NSFileAccessClaim *)self makeProviderOfItemAtLocation:location1 provideOrAttachPhysicalURLIfNecessaryForPurposeID:v10 writingOptions:options1 thenContinue:v13];
  }
}

uint64_t __68__NSFileWritingWritingClaim_resolveURLsThenContinueInvokingClaimer___block_invoke(void *a1, uint64_t a2)
{
  v8[7] = *MEMORY[0x1E69E9840];
  v3 = a1[4];
  v2 = a1[5];
  v4 = v3[33];
  v5 = v3[31];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __68__NSFileWritingWritingClaim_resolveURLsThenContinueInvokingClaimer___block_invoke_2;
  v8[3] = &unk_1E69F8618;
  v6 = a1[6];
  v8[5] = v3;
  v8[6] = v6;
  v8[4] = a2;
  return [v3 makeProviderOfItemAtLocation:v4 provideOrAttachPhysicalURLIfNecessaryForPurposeID:v2 writingOptions:v5 thenContinue:v8];
}

uint64_t __68__NSFileWritingWritingClaim_resolveURLsThenContinueInvokingClaimer___block_invoke_2(void *a1, uint64_t a2)
{
  v4 = a1[6];
  v5 = a1[4];
  if (v5)
  {
LABEL_4:
    if (a2)
    {
      return (*(v4 + 16))(v4, v5, a2);
    }

    goto LABEL_5;
  }

  v6 = a1[5];
  if (*(v6 + 216) == 1)
  {
    v5 = *(v6 + 208);
    goto LABEL_4;
  }

  v5 = 0;
  if (a2)
  {
    return (*(v4 + 16))(v4, v5, a2);
  }

LABEL_5:
  v7 = a1[5];
  if (*(v7 + 240) == 1)
  {
    a2 = *(v7 + 232);
  }

  else
  {
    a2 = 0;
  }

  return (*(v4 + 16))(v4, v5, a2);
}

- (void)invokeClaimer
{
  v2[5] = *MEMORY[0x1E69E9840];
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __42__NSFileWritingWritingClaim_invokeClaimer__block_invoke;
  v2[3] = &unk_1E69F85C8;
  v2[4] = self;
  [(NSFileWritingWritingClaim *)self resolveURLsThenContinueInvokingClaimer:v2];
}

id __42__NSFileWritingWritingClaim_invokeClaimer__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  if (v6[20])
  {
    v7 = atomic_load(&_NSFCSubarbitrationCount);
    if (v7 < 1 || (v18 = atomic_load(_NSFCDisableLogSuppression), (v18 & 1) != 0) || (v19 = atomic_load(&_NSFCSubarbitratedClaimCount), v19 <= 99))
    {
      v8 = _NSFCClaimsLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [*(a1 + 32) claimID];
        *buf = 138543362;
        v25 = v9;
        _os_log_impl(&dword_18075C000, v8, OS_LOG_TYPE_DEFAULT, "Claim %{public}@ invoked in client", buf, 0xCu);
      }
    }

    (*(*(*(a1 + 32) + 160) + 16))(*(*(a1 + 32) + 160), *(a1 + 32), a2, a3, [*(a1 + 32) claimerError]);

    *(*(a1 + 32) + 160) = 0;
    v6 = *(a1 + 32);
  }

  if (v6[21])
  {
    v10 = atomic_load(&_NSFCSubarbitrationCount);
    if (v10 < 1 || (v20 = atomic_load(_NSFCDisableLogSuppression), (v20 & 1) != 0) || (v21 = atomic_load(&_NSFCSubarbitratedClaimCount), v21 <= 99))
    {
      v11 = _NSFCClaimsLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [*(a1 + 32) claimID];
        *buf = 138543362;
        v25 = v12;
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

    v16 = *(*(a1 + 32) + 168);
    v23[0] = v14;
    v23[1] = v15;
    (*(v16 + 16))(v16, 0, [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2], *(*(a1 + 32) + 176), objc_msgSend(*(a1 + 32), "shouldEnableMaterializationDuringAccessorBlock"), objc_msgSend(*(a1 + 32), "claimerError"));

    *(*(a1 + 32) + 168) = 0;
    v6 = *(a1 + 32);
  }

  v22.receiver = v6;
  v22.super_class = NSFileWritingWritingClaim;
  return objc_msgSendSuper2(&v22, sel_invokeClaimer);
}

- (void)devalueSelf
{
  v7[5] = *MEMORY[0x1E69E9840];
  location1 = self->_location1;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __40__NSFileWritingWritingClaim_devalueSelf__block_invoke;
  v7[3] = &unk_1E69F83E8;
  v7[4] = self;
  [(NSFileAccessNode *)location1 forEachRelevantAccessClaimPerformProcedure:v7];
  location2 = self->_location2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __40__NSFileWritingWritingClaim_devalueSelf__block_invoke_2;
  v6[3] = &unk_1E69F83E8;
  v6[4] = self;
  [(NSFileAccessNode *)location2 forEachRelevantAccessClaimPerformProcedure:v6];
  [(NSFileAccessNode *)self->_location1 removeAccessClaim:self];
  self->_location1 = 0;
  [(NSFileAccessNode *)self->_location2 removeAccessClaim:self];
  self->_location2 = 0;
  v5.receiver = self;
  v5.super_class = NSFileWritingWritingClaim;
  [(NSFileAccessClaim *)&v5 devalueSelf];
}

- (void)itemAtLocation:(id)a3 wasReplacedByItemAtLocation:(id)a4
{
  if (self->_location1 == a3)
  {
    [a4 addAccessClaim:self];
    [a3 removeAccessClaim:self];
    self->_location1 = a4;
  }

  if (self->_location2 == a3)
  {
    [a4 addAccessClaim:self];
    [a3 removeAccessClaim:self];
    self->_location2 = a4;
  }
}

- (BOOL)blocksClaim:(id)a3
{
  if ([a3 isBlockedByWritingItemAtLocation:self->_location1 options:self->_options1])
  {
    return 1;
  }

  location2 = self->_location2;
  options2 = self->_options2;

  return [a3 isBlockedByWritingItemAtLocation:location2 options:options2];
}

- (id)allURLs
{
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = v3;
  if (self->_url1)
  {
    [v3 addObject:?];
  }

  if (self->_url2)
  {
    [v4 addObject:?];
  }

  return v4;
}

- (void)protectFilesAgainstEviction
{
  [(NSFileAccessClaim *)self _protectIfNecessaryFileAtURL:self->_url1 withOptions:self->_options1 forReading:0];
  url2 = self->_url2;
  options2 = self->_options2;

  [(NSFileAccessClaim *)self _protectIfNecessaryFileAtURL:url2 withOptions:options2 forReading:0];
}

@end
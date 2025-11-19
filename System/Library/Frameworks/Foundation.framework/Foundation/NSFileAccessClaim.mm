@interface NSFileAccessClaim
+ (BOOL)canNewWriteOfItemAtLocation:(id)a3 options:(unint64_t)a4 safelyOverlapExistingWriteOfItemAtLocation:(id)a5 options:(unint64_t)a6;
- (BOOL)_writeArchiveOfDirectoryAtURL:(id)a3 toURL:(id)a4 error:(id *)a5;
- (BOOL)canAccessLocations:(id)a3 forReading:(BOOL)a4 error:(id *)a5;
- (BOOL)checkIfSymbolicLinkAtURL:(id)a3 withResolutionCount:(int64_t *)a4 andIfSoThenReevaluateSelf:(id)a5;
- (BOOL)claimerInvokingIsBlockedByReactorWithID:(id)a3;
- (BOOL)isBlockedByClaimWithPurposeID:(id)a3;
- (BOOL)shouldInformProvidersAboutEndOfWriteWithOptions:(unint64_t)a3;
- (BOOL)shouldMakeProviderProvideItemAtLocation:(id)a3 withOptions:(unint64_t)a4;
- (BOOL)shouldReadingWithOptions:(unint64_t)a3 causePresenterToRelinquish:(id)a4;
- (NSFileAccessClaim)initWithClient:(id)a3 claimID:(id)a4 purposeID:(id)a5;
- (NSFileAccessClaim)initWithCoder:(id)a3;
- (id)claimID;
- (id)claimerError;
- (id)client;
- (id)descriptionWithIndenting:(id)a3;
- (id)pendingClaims;
- (id)prepareAndBlockOnClaimRelinquishmentForPresentersOfItemAtLocation:(id)a3 orContainedItem:(BOOL)a4 withRelinquishProcedureGetter:(id)a5;
- (id)purposeID;
- (id)purposeIDOfClaimOnItemAtLocation:(id)a3 forMessagingPresenter:(id)a4;
- (int)clientProcessIdentifier;
- (uint64_t)_recursive_claimerInvokingIsBlockedByReactorWithID:(void *)a3 checkedClaims:;
- (void)_checkIfMovingRequiresProvidingAmongWritingLocations:(id)a3 options:(unint64_t *)a4 thenContinue:(id)a5;
- (void)_protectIfNecessaryFileAtURL:(id)a3 withOptions:(unint64_t)a4 forReading:(BOOL)a5;
- (void)_setupWithClaimID:(id)a3 purposeID:(id)a4 originatingReactorQueueID:(id)a5;
- (void)acceptClaimFromClient:(id)a3 arbiterQueue:(id)a4 grantHandler:(id)a5;
- (void)addBlockingReactorID:(id)a3;
- (void)addPendingClaim:(id)a3;
- (void)addReacquirer:(id)a3 forPresenterID:(id)a4;
- (void)block;
- (void)blockClaimerForReason:(id)a3;
- (void)cancelled;
- (void)dealloc;
- (void)devalueSelf;
- (void)disavowed;
- (void)encodeWithCoder:(id)a3;
- (void)ensureProvidersOfItemsAtReadingLocations:(id)a3 writingLocations:(id)a4 thenContinue:(id)a5;
- (void)evaluateNewClaim:(id)a3;
- (void)finished;
- (void)givePriorityToClaim:(id)a3;
- (void)invokeClaimer;
- (void)makeProviderOfItemAtLocation:(id)a3 provideIfNecessaryWithOptions:(unint64_t)a4 thenContinue:(id)a5;
- (void)makeProviderOfItemAtLocation:(id)a3 provideOrAttachPhysicalURLIfNecessaryForPurposeID:(id)a4 readingOptions:(unint64_t)a5 thenContinue:(id)a6;
- (void)makeProviderOfItemAtLocation:(id)a3 provideOrAttachPhysicalURLIfNecessaryForPurposeID:(id)a4 writingOptions:(unint64_t)a5 thenContinue:(id)a6;
- (void)makeProviderOfItemAtLocation:(id)a3 providePhysicalURLThenContinue:(id)a4;
- (void)makeProvidersProvideItemsForReadingLocations:(id)a3 options:(unint64_t *)a4 andWritingLocationsIfNecessary:(id)a5 options:(unint64_t *)a6 thenContinue:(id)a7;
- (void)prepareClaimForGrantingWithArbiterQueue:(id)a3;
- (void)prepareItemForUploadingFromURL:(id)a3 thenContinue:(id)a4;
- (void)removePendingClaims:(id)a3;
- (void)revoked;
- (void)scheduleBlockedClaim:(id)a3;
- (void)setClaimerError:(id)a3;
- (void)startObservingClientState;
- (void)unblock;
- (void)unblockClaimerForReason:(id)a3;
- (void)whenDevaluedPerformProcedure:(id)a3;
- (void)whenFinishedPerformProcedure:(id)a3;
- (void)whenRevokedPerformProcedure:(id)a3;
@end

@implementation NSFileAccessClaim

- (id)claimerError
{
  v2 = self->_claimerError;

  return v2;
}

- (id)purposeID
{
  v2 = self->_purposeIDOrNil;

  return v2;
}

- (void)invokeClaimer
{
  if (!self->_hasInvokedClaimer)
  {
    claimerWaiter = self->_claimerWaiter;
    if (claimerWaiter)
    {
      dispatch_semaphore_signal(claimerWaiter);
    }

    self->_hasInvokedClaimer = 1;
  }
}

- (void)finished
{
  v13 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  finishingProcedures = self->_finishingProcedures;
  v4 = [(NSMutableArray *)finishingProcedures countByEnumeratingWithState:&v9 objects:v8 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(finishingProcedures);
        }

        (*(*(*(&v9 + 1) + 8 * i) + 16))();
      }

      v5 = [(NSMutableArray *)finishingProcedures countByEnumeratingWithState:&v9 objects:v8 count:16];
    }

    while (v5);
  }

  self->_finishingProcedures = 0;
  [(NSMutableDictionary *)self->_fileHandlesForEvictionProtection enumerateKeysAndObjectsUsingBlock:&__block_literal_global_177];

  self->_fileHandlesForEvictionProtection = 0;
}

- (void)dealloc
{
  v7 = *MEMORY[0x1E69E9840];

  claimerWaiter = self->_claimerWaiter;
  if (claimerWaiter)
  {
    dispatch_release(claimerWaiter);
  }

  serverClaimerOrNil = self->_serverClaimerOrNil;
  if (serverClaimerOrNil)
  {
  }

  [(NSFileAccessProcessManager *)self->_processManager invalidate];
  arbiterQueue = self->_arbiterQueue;
  if (arbiterQueue)
  {
    dispatch_release(arbiterQueue);
  }

  v6.receiver = self;
  v6.super_class = NSFileAccessClaim;
  [(NSFileAccessClaim *)&v6 dealloc];
}

- (void)revoked
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = atomic_load(&_NSFCSubarbitrationCount);
  if (v3 < 1 || (v12 = atomic_load(_NSFCDisableLogSuppression), (v12 & 1) != 0) || (v13 = atomic_load(&_NSFCSubarbitratedClaimCount), v13 <= 199))
  {
    v4 = _NSFCClaimsLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      claimID = self->_claimID;
      LODWORD(buf) = 138543362;
      *(&buf + 4) = claimID;
      _os_log_impl(&dword_18075C000, v4, OS_LOG_TYPE_DEFAULT, "Claim %{public}@ was revoked", &buf, 0xCu);
    }
  }

  self->_isRevoked = 1;
  [(NSFileAccessClaim *)self cancelled];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  revocationProcedures = self->_revocationProcedures;
  v7 = [(NSMutableArray *)revocationProcedures countByEnumeratingWithState:&v19 objects:v18 count:16];
  if (v7)
  {
    v8 = *v20;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(revocationProcedures);
        }

        (*(*(*(&v19 + 1) + 8 * i) + 16))();
      }

      v7 = [(NSMutableArray *)revocationProcedures countByEnumeratingWithState:&v19 objects:v18 count:16];
    }

    while (v7);
  }

  self->_revocationProcedures = 0;
  *&buf = 0;
  *(&buf + 1) = &buf;
  v16 = 0x2020000000;
  v17 = 1;
  reacquisitionProceduresByPresenterID = self->_reacquisitionProceduresByPresenterID;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __28__NSFileAccessClaim_revoked__block_invoke;
  v14[3] = &unk_1E69F8350;
  v14[4] = self;
  v14[5] = &buf;
  [(NSMutableDictionary *)reacquisitionProceduresByPresenterID enumerateKeysAndObjectsUsingBlock:v14];

  self->_reacquisitionProceduresByPresenterID = 0;
  v11 = *(*(&buf + 1) + 24) - 1;
  *(*(&buf + 1) + 24) = v11;
  if (!v11)
  {
    [(NSFileAccessClaim *)self devalueSelf];
  }

  _Block_object_dispose(&buf, 8);
}

- (void)cancelled
{
  v17 = *MEMORY[0x1E69E9840];
  providerCancellationProcedures = self->_providerCancellationProcedures;
  if (providerCancellationProcedures)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v4 = [(NSMutableArray *)providerCancellationProcedures countByEnumeratingWithState:&v13 objects:v12 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v14;
      do
      {
        v7 = 0;
        do
        {
          if (*v14 != v6)
          {
            objc_enumerationMutation(providerCancellationProcedures);
          }

          (*(*(*(&v13 + 1) + 8 * v7++) + 16))();
        }

        while (v5 != v7);
        v5 = [(NSMutableArray *)providerCancellationProcedures countByEnumeratingWithState:&v13 objects:v12 count:16];
      }

      while (v5);
    }
  }

  self->_providerCancellationProcedures = 0;
  if ([(NSMutableArray *)self->_claimerBlockageReasons count])
  {
    v8 = _NSFCClaimsLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      claimID = self->_claimID;
      v10 = 138543362;
      v11 = claimID;
      _os_log_impl(&dword_18075C000, v8, OS_LOG_TYPE_DEFAULT, "Claim %{public}@ was cancelled before claimer was invoked", &v10, 0xCu);
    }

    if (!self->_claimerError)
    {
      self->_claimerError = [[NSError alloc] initWithDomain:@"NSCocoaErrorDomain" code:3072 userInfo:0];
    }

    [(NSFileAccessClaim *)self invokeClaimer];
  }
}

- (void)devalueSelf
{
  v31 = *MEMORY[0x1E69E9840];
  [(NSFileAccessProcessManager *)self->_processManager invalidate];

  self->_processManager = 0;
  v3 = atomic_load(&_NSFCSubarbitrationCount);
  if (v3 < 1 || (v17 = atomic_load(_NSFCDisableLogSuppression), (v17 & 1) != 0) || (v18 = atomic_load(&_NSFCSubarbitratedClaimCount), v18 <= 199))
  {
    v4 = _NSFCClaimsLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      claimID = self->_claimID;
      *buf = 138543362;
      v30 = claimID;
      _os_log_impl(&dword_18075C000, v4, OS_LOG_TYPE_INFO, "Claim %{public}@ was devalued", buf, 0xCu);
    }
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  pendingClaims = self->_pendingClaims;
  v7 = [(NSMutableOrderedSet *)pendingClaims countByEnumeratingWithState:&v25 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v26;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(pendingClaims);
        }

        v11 = *(*(&v25 + 1) + 8 * i);
        [v11[10] removeObject:self];
        [v11 unblock];
      }

      v8 = [(NSMutableOrderedSet *)pendingClaims countByEnumeratingWithState:&v25 objects:v24 count:16];
    }

    while (v8);
  }

  self->_pendingClaims = 0;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  devaluationProcedures = self->_devaluationProcedures;
  v13 = [(NSMutableArray *)devaluationProcedures countByEnumeratingWithState:&v20 objects:v19 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v21;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(devaluationProcedures);
        }

        (*(*(*(&v20 + 1) + 8 * j) + 16))();
      }

      v14 = [(NSMutableArray *)devaluationProcedures countByEnumeratingWithState:&v20 objects:v19 count:16];
    }

    while (v14);
  }

  self->_devaluationProcedures = 0;
}

- (id)claimID
{
  v2 = self->_claimID;

  return v2;
}

- (void)block
{
  blockageCount = self->_blockageCount;
  if (!blockageCount)
  {
    NSLog(@"NSFileCoordinator: an access claim that was unblocked has somehow become blocked again.", a2);
    blockageCount = self->_blockageCount;
  }

  self->_blockageCount = blockageCount + 1;
}

- (void)unblock
{
  blockageCount = self->_blockageCount;
  if (!blockageCount)
  {
    NSLog(@"NSFileCoordinator: an access claim that was unblocked is somehow becoming even more unblocked.", a2);
    blockageCount = self->_blockageCount;
  }

  v4 = blockageCount - 1;
  self->_blockageCount = v4;
  if (!v4 && !self->_isRevoked)
  {
    processManager = self->_processManager;
    if (processManager)
    {
      [(NSFileAccessProcessManager *)processManager preventSuspensionWithActivityName:[NSString stringWithFormat:@"File Coordination Claim %@", [(NSFileAccessClaim *)self claimID]]];
    }

    [(NSFileAccessClaim *)self granted];
  }
}

- (void)startObservingClientState
{
  v13 = *MEMORY[0x1E69E9840];
  client = self->_client;
  if (client && self->_arbiterQueue && !self->_cameFromSuperarbiter)
  {
    v4 = [(NSXPCConnection *)client processIdentifier];
    v5 = _NSFCProcessMonitorLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      claimID = self->_claimID;
      *buf = 67109378;
      v10 = v4;
      v11 = 2114;
      v12 = claimID;
      _os_log_impl(&dword_18075C000, v5, OS_LOG_TYPE_INFO, "Starting to observe state of client with pid %d on behalf of claim %{public}@", buf, 0x12u);
    }

    self->_processManager = [[NSFileAccessProcessManager alloc] initWithClient:[(NSXPCConnection *)self->_client _xpcConnection] queue:self->_arbiterQueue];
    [(NSFileAccessProcessManager *)self->_processManager setURLs:[(NSFileAccessClaim *)self allURLs]];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __46__NSFileAccessClaim_startObservingClientState__block_invoke;
    v7[3] = &unk_1E69F8030;
    v7[4] = self;
    v8 = v4;
    [(NSFileAccessProcessManager *)self->_processManager setSuspensionHandler:v7];
  }
}

- (id)pendingClaims
{
  pendingClaims = self->_pendingClaims;
  if (!pendingClaims)
  {
    pendingClaims = MEMORY[0x1E695DEC8];
  }

  return [(NSMutableOrderedSet *)pendingClaims array];
}

void __29__NSFileAccessClaim_finished__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = 0;
  if (([a3 closeAndReturnError:&v6] & 1) == 0)
  {
    v4 = _NSFCClaimsLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = [a2 path];
      *buf = 138478083;
      v8 = v5;
      v9 = 2112;
      v10 = v6;
      _os_log_error_impl(&dword_18075C000, v4, OS_LOG_TYPE_ERROR, "Failed to close file at %{private}@ because of error: %@", buf, 0x16u);
    }
  }
}

+ (BOOL)canNewWriteOfItemAtLocation:(id)a3 options:(unint64_t)a4 safelyOverlapExistingWriteOfItemAtLocation:(id)a5 options:(unint64_t)a6
{
  if (a4 >> 31)
  {
    return 1;
  }

  v6 = a6;
  v8 = a4;
  return ([a3 itemIsItemAtLocation:a5] & 1) == 0 && ((*&v8 & 0x13000BLL) == 0 || (objc_msgSend(a5, "itemIsInItemAtLocation:", a3) & 1) == 0) && ((*&v6 & 0x13000BLL) == 0 || (objc_msgSend(a3, "itemIsInItemAtLocation:", a5) & 1) == 0);
}

- (BOOL)shouldReadingWithOptions:(unint64_t)a3 causePresenterToRelinquish:(id)a4
{
  if ((a3 & 0x40000000) != 0)
  {
    return 0;
  }

  if ((a3 & 0x80000001) != 0x80000000)
  {
    return 1;
  }

  if (![a4 usesMainThreadDuringReliquishing])
  {
    return 1;
  }

  v6 = [objc_msgSend(a4 "client")];
  return v6 != [(NSXPCConnection *)self->_client processIdentifier];
}

- (BOOL)shouldInformProvidersAboutEndOfWriteWithOptions:(unint64_t)a3
{
  v3 = a3;
  v4 = ![(NSFileAccessClaim *)self cameFromSuperarbiter];
  return (*&v3 & 0x30000) == 0 && v4;
}

- (void)_setupWithClaimID:(id)a3 purposeID:(id)a4 originatingReactorQueueID:(id)a5
{
  if (a3)
  {
    v8 = a3;
  }

  else
  {
    v8 = +[NSFileCoordinator _createIdentifierForNewClaim];
  }

  self->_claimID = v8;
  self->_purposeIDOrNil = a4;
  self->_blockageCount = 1;
  self->_claimerBlockageReasons = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{@"Initial blockage", 0}];
  self->_originatingReactorQueueID = a5;
}

- (NSFileAccessClaim)initWithClient:(id)a3 claimID:(id)a4 purposeID:(id)a5
{
  v11 = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = NSFileAccessClaim;
  v8 = [(NSFileAccessClaim *)&v10 init];
  if (v8)
  {
    v8->_client = a3;
    v8->_claimerWaiter = dispatch_semaphore_create(0);
    [(NSFileAccessClaim *)v8 _setupWithClaimID:a4 purposeID:a5 originatingReactorQueueID:0];
  }

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"NSFileAccessClaims should only ever be encoded by XPC" userInfo:0]);
  }

  [a3 encodeObject:self->_claimID forKey:@"NSClaimIDKey"];
  [a3 encodeObject:self->_purposeIDOrNil forKey:@"NSPurposeIDKey"];
  originatingReactorQueueID = self->_originatingReactorQueueID;

  [a3 encodeObject:originatingReactorQueueID forKey:@"NSOriginatingReactorQueueID"];
}

- (NSFileAccessClaim)initWithCoder:(id)a3
{
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"NSFileAccessClaims should only ever be decoded by XPC" userInfo:0]);
  }

  v5 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"NSClaimIDKey"];
  v6 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"NSPurposeIDKey"];
  -[NSFileAccessClaim _setupWithClaimID:purposeID:originatingReactorQueueID:](self, "_setupWithClaimID:purposeID:originatingReactorQueueID:", v5, v6, [a3 decodeObjectOfClass:objc_opt_class() forKey:@"NSOriginatingReactorQueueID"]);
  return self;
}

- (id)client
{
  v2 = self->_client;

  return v2;
}

- (int)clientProcessIdentifier
{
  client = self->_client;
  if (client)
  {
    return [(NSXPCConnection *)client processIdentifier];
  }

  else
  {
    return getpid();
  }
}

- (void)prepareClaimForGrantingWithArbiterQueue:(id)a3
{
  if (self->_arbiterQueue)
  {
    [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInMethod:"handleFailureInMethod:object:file:lineNumber:description:" object:a2 file:self lineNumber:@"NSFileAccessClaim.m" description:307, @"This claim has already been prepared for granting"];
  }

  self->_arbiterQueue = a3;
  if (a3)
  {
    dispatch_retain(a3);
  }

  self->_originatingReactorQueueID = -[NSMutableDictionary objectForKeyedSubscript:]([+[NSThread currentThread](NSThread threadDictionary], "objectForKeyedSubscript:", @"_NSCurrentReactorID");
}

- (void)acceptClaimFromClient:(id)a3 arbiterQueue:(id)a4 grantHandler:(id)a5
{
  if (self->_client)
  {
    [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInMethod:"handleFailureInMethod:object:file:lineNumber:description:" object:a2 file:self lineNumber:@"NSFileAccessClaim.m" description:321, @"This claim has already been accepted"];
  }

  self->_client = a3;
  self->_arbiterQueue = a4;
  if (a4)
  {
    dispatch_retain(a4);
  }

  self->_serverClaimerOrNil = [a5 copy];
}

uint64_t __46__NSFileAccessClaim_startObservingClientState__block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = _NSFCProcessMonitorLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(*(a1 + 32) + 16);
    v6 = *(a1 + 40);
    v9 = 138543618;
    v10 = v5;
    v11 = 1024;
    v12 = v6;
    _os_log_impl(&dword_18075C000, v4, OS_LOG_TYPE_DEFAULT, "Claim %{public}@ observed suspension of client with %d", &v9, 0x12u);
  }

  v7 = *(a1 + 32);
  if (v7[5])
  {
    return [v7 cancelled];
  }

  else
  {
    return [a2 killProcessWithMessage:@"A coordinated read or write was still active when process was suspended."];
  }
}

- (void)blockClaimerForReason:(id)a3
{
  if (![(NSMutableArray *)self->_claimerBlockageReasons count])
  {
    NSLog(@"NSFileCoordinator: [NSFileAccessClaim blockClaimerForReason:] is being invoked with %@ when the claimer has already been invoked.", a3);
  }

  claimerBlockageReasons = self->_claimerBlockageReasons;

  [(NSMutableArray *)claimerBlockageReasons addObject:a3];
}

- (void)unblockClaimerForReason:(id)a3
{
  v4 = [(NSMutableArray *)self->_claimerBlockageReasons indexOfObject:a3];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(NSMutableArray *)self->_claimerBlockageReasons removeObjectAtIndex:v4];
  }

  if (![(NSMutableArray *)self->_claimerBlockageReasons count])
  {

    [(NSFileAccessClaim *)self invokeClaimer];
  }
}

- (void)setClaimerError:(id)a3
{
  claimerError = self->_claimerError;
  if (claimerError != a3)
  {

    self->_claimerError = [a3 copy];
  }
}

- (void)whenRevokedPerformProcedure:(id)a3
{
  if (!self->_revocationProcedures)
  {
    self->_revocationProcedures = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  v5 = [a3 copy];
  [(NSMutableArray *)self->_revocationProcedures addObject:v5];
}

- (void)whenDevaluedPerformProcedure:(id)a3
{
  if (!self->_devaluationProcedures)
  {
    self->_devaluationProcedures = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  v5 = [a3 copy];
  [(NSMutableArray *)self->_devaluationProcedures addObject:v5];
}

- (void)whenFinishedPerformProcedure:(id)a3
{
  if (!self->_finishingProcedures)
  {
    self->_finishingProcedures = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  v5 = [a3 copy];
  [(NSMutableArray *)self->_finishingProcedures addObject:v5];
}

- (void)addBlockingReactorID:(id)a3
{
  blockingReactorIDs = self->_blockingReactorIDs;
  if (!blockingReactorIDs)
  {
    blockingReactorIDs = objc_alloc_init(NSCountedSet);
    self->_blockingReactorIDs = blockingReactorIDs;
  }

  [(NSCountedSet *)blockingReactorIDs addObject:a3];
}

- (BOOL)claimerInvokingIsBlockedByReactorWithID:(id)a3
{
  v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  LOBYTE(a3) = [(NSFileAccessClaim *)self _recursive_claimerInvokingIsBlockedByReactorWithID:a3 checkedClaims:v5];

  return a3;
}

- (uint64_t)_recursive_claimerInvokingIsBlockedByReactorWithID:(void *)a3 checkedClaims:
{
  v15 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v5 = result;
    if ([a3 containsObject:result])
    {
      return 0;
    }

    if ([*(v5 + 88) containsObject:a2])
    {
      return 1;
    }

    [a3 addObject:v5];
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = *(v5 + 80);
    result = [v6 countByEnumeratingWithState:&v11 objects:v10 count:16];
    if (result)
    {
      v7 = result;
      v8 = *v12;
LABEL_9:
      v9 = 0;
      while (1)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v6);
        }

        if (([(NSFileAccessClaim *)*(*(&v11 + 1) + 8 * v9) _recursive_claimerInvokingIsBlockedByReactorWithID:a2 checkedClaims:a3]& 1) != 0)
        {
          return 1;
        }

        if (v7 == ++v9)
        {
          v7 = [v6 countByEnumeratingWithState:&v11 objects:v10 count:16];
          result = 0;
          if (v7)
          {
            goto LABEL_9;
          }

          return result;
        }
      }
    }
  }

  return result;
}

- (BOOL)isBlockedByClaimWithPurposeID:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  blockingClaims = self->_blockingClaims;
  v5 = [(NSMutableSet *)blockingClaims countByEnumeratingWithState:&v11 objects:v10 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(blockingClaims);
        }

        if ([objc_msgSend(*(*(&v11 + 1) + 8 * v8) "purposeID")])
        {
          LOBYTE(v5) = 1;
          return v5;
        }

        ++v8;
      }

      while (v6 != v8);
      v5 = [(NSMutableSet *)blockingClaims countByEnumeratingWithState:&v11 objects:v10 count:16];
      v6 = v5;
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  return v5;
}

- (void)givePriorityToClaim:(id)a3
{
  v8[1] = *MEMORY[0x1E69E9840];
  v5 = [a3 claimID];
  v6 = [NSString stringWithFormat:@"Avoiding deadlock with claim: %@", v5];
  [(NSFileAccessClaim *)self blockClaimerForReason:v6];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __41__NSFileAccessClaim_givePriorityToClaim___block_invoke;
  v7[3] = &unk_1E69F68D8;
  v7[4] = self;
  v7[5] = v5;
  v7[6] = v6;
  [a3 whenDevaluedPerformProcedure:v7];
  v8[0] = a3;
  -[NSFileAccessClaim removePendingClaims:](self, "removePendingClaims:", [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1]);
}

uint64_t __41__NSFileAccessClaim_givePriorityToClaim___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = _NSFCClaimsLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 32) + 16);
    v6 = 138543618;
    v7 = v4;
    v8 = 2114;
    v9 = v3;
    _os_log_impl(&dword_18075C000, v2, OS_LOG_TYPE_DEFAULT, "Unblocking claimer for claim %{public}@ because the claim it was avoiding a deadlock with finished: %{public}@", &v6, 0x16u);
  }

  *(*(a1 + 32) + 48) = 1;
  return [*(a1 + 32) unblockClaimerForReason:*(a1 + 48)];
}

- (void)scheduleBlockedClaim:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = [a3 purposeID];
  if (v5)
  {
    v6 = v5;
    if ([(NSFileAccessClaim *)self claimerInvokingIsBlockedByReactorWithID:v5])
    {
      v7 = _NSFCClaimsLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [a3 claimID];
        claimID = self->_claimID;
        *v20 = 138543874;
        *&v20[4] = v8;
        *&v20[12] = 2114;
        *&v20[14] = claimID;
        *&v20[22] = 2114;
        v21 = v6;
        v10 = "Letting claim %{public}@ go before blocking claim %{public}@ because the latter is blocked by a reactor with the former's purposeID: %{public}@";
LABEL_8:
        _os_log_impl(&dword_18075C000, v7, OS_LOG_TYPE_DEFAULT, v10, v20, 0x20u);
        goto LABEL_9;
      }

      goto LABEL_9;
    }

    if ([(NSFileAccessClaim *)self isBlockedByClaimWithPurposeID:v6])
    {
      v7 = _NSFCClaimsLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [a3 claimID];
        v12 = self->_claimID;
        *v20 = 138543874;
        *&v20[4] = v11;
        *&v20[12] = 2114;
        *&v20[14] = v12;
        *&v20[22] = 2114;
        v21 = v6;
        v10 = "Letting claim %{public}@ go before blocking claim %{public}@ because the latter is blocked by another claim with the former's purposeID: %{public}@";
        goto LABEL_8;
      }

LABEL_9:
      [(NSFileAccessClaim *)self givePriorityToClaim:a3, *v20, *&v20[16], v21];
      return;
    }
  }

  v13 = [a3 shouldCancelInsteadOfWaiting];
  v14 = _NSFCClaimsLog();
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
  if (v13)
  {
    if (v15)
    {
      v16 = [a3 claimID];
      v17 = self->_claimID;
      *v20 = 138543618;
      *&v20[4] = v16;
      *&v20[12] = 2114;
      *&v20[14] = v17;
      _os_log_impl(&dword_18075C000, v14, OS_LOG_TYPE_DEFAULT, "As requested, cancelling claim %{public}@ because it is blocked by claim %{public}@.", v20, 0x16u);
    }

    [a3 setClaimerError:{+[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", @"NSCocoaErrorDomain", 3072, 0)}];
  }

  else
  {
    if (v15)
    {
      v18 = [a3 claimID];
      v19 = self->_claimID;
      *v20 = 138543618;
      *&v20[4] = v18;
      *&v20[12] = 2114;
      *&v20[14] = v19;
      _os_log_impl(&dword_18075C000, v14, OS_LOG_TYPE_DEFAULT, "Claim %{public}@ is blocked waiting for claim %{public}@ to finish.", v20, 0x16u);
    }

    [(NSFileAccessClaim *)self addPendingClaim:a3];
  }
}

- (void)evaluateNewClaim:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  if (a3 != self)
  {
    v5 = [a3 purposeID];
    if (v5 && [(NSString *)self->_purposeIDOrNil isEqual:v5]&& !self->_isRevoked)
    {
      v6 = _NSFCClaimsLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = [a3 claimID];
        claimID = self->_claimID;
        purposeIDOrNil = self->_purposeIDOrNil;
        v10 = 138543874;
        v11 = v7;
        v12 = 2114;
        v13 = claimID;
        v14 = 2114;
        v15 = purposeIDOrNil;
        _os_log_impl(&dword_18075C000, v6, OS_LOG_TYPE_INFO, "Claim %{public}@ is not blocked by %{public}@ because it has the same purposeID: %{public}@", &v10, 0x20u);
      }
    }

    else if ([(NSFileAccessClaim *)self blocksClaim:a3])
    {

      [(NSFileAccessClaim *)self scheduleBlockedClaim:a3];
    }
  }
}

- (void)addPendingClaim:(id)a3
{
  pendingClaims = self->_pendingClaims;
  if (!pendingClaims)
  {
    pendingClaims = objc_alloc_init(MEMORY[0x1E695DFA0]);
    self->_pendingClaims = pendingClaims;
  }

  if (([(NSMutableOrderedSet *)pendingClaims containsObject:a3]& 1) == 0)
  {
    [(NSMutableOrderedSet *)self->_pendingClaims addObject:a3];
    [a3 block];
    v6 = *(a3 + 10);
    if (!v6)
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      *(a3 + 10) = v6;
    }

    [v6 addObject:self];
    *(a3 + 48) = 1;
  }
}

- (void)removePendingClaims:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [a3 countByEnumeratingWithState:&v11 objects:v10 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(a3);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([(NSMutableOrderedSet *)self->_pendingClaims containsObject:v9])
        {
          [v9[10] removeObject:self];
          [v9 unblock];
        }
      }

      v6 = [a3 countByEnumeratingWithState:&v11 objects:v10 count:16];
    }

    while (v6);
  }

  [(NSMutableOrderedSet *)self->_pendingClaims removeObjectsInArray:a3];
}

- (void)ensureProvidersOfItemsAtReadingLocations:(id)a3 writingLocations:(id)a4 thenContinue:(id)a5
{
  if ([a3 count] || objc_msgSend(a4, "count"))
  {
    v10 = objc_opt_new();
    if (a3)
    {
      [v10 addObjectsFromArray:a3];
    }

    if (a4)
    {
      [v10 addObjectsFromArray:a4];
    }

    [NSFileAccessArbiter ensureProvidersIfNecessaryForClaim:self user:[(NSXPCConnection *)self->_client effectiveUserIdentifier] atLocations:v10 queue:self->_arbiterQueue thenContinue:a5];
  }

  else
  {
    v9 = *(a5 + 2);

    v9(a5);
  }
}

- (BOOL)shouldMakeProviderProvideItemAtLocation:(id)a3 withOptions:(unint64_t)a4
{
  v4 = a4;
  v6 = [a3 itemProvider];
  if (v6)
  {
    LOBYTE(v6) = !-[NSString isEqual:](self->_purposeIDOrNil, "isEqual:", [v6 reactorID]) && !self->_cameFromSuperarbiter && (v4 & 4) == 0;
  }

  return v6;
}

- (void)makeProviderOfItemAtLocation:(id)a3 provideIfNecessaryWithOptions:(unint64_t)a4 thenContinue:(id)a5
{
  v23 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_arbiterQueue);
  if ([(NSFileAccessClaim *)self shouldMakeProviderProvideItemAtLocation:a3 withOptions:a4])
  {
    v9 = [a3 itemProvider];
    v10 = [v9 reactorID];
    v11 = _NSFCClaimsLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      claimID = self->_claimID;
      *buf = 138543618;
      *&buf[4] = claimID;
      *&buf[12] = 2114;
      *&buf[14] = v10;
      _os_log_impl(&dword_18075C000, v11, OS_LOG_TYPE_DEFAULT, "Claimer for %{public}@ is waiting for provider %{public}@ to provide", buf, 0x16u);
    }

    v13 = [NSString stringWithFormat:@"Waiting for provider %@ to provide", v10];
    [(NSFileAccessClaim *)self blockClaimerForReason:v13];
    [(NSFileAccessClaim *)self addBlockingReactorID:v10];
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3052000000;
    v20 = __Block_byref_object_copy__27;
    v21 = __Block_byref_object_dispose__27;
    v22 = 0;
    v14 = [a3 url];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __93__NSFileAccessClaim_makeProviderOfItemAtLocation_provideIfNecessaryWithOptions_thenContinue___block_invoke;
    v18[3] = &unk_1E69F8058;
    v18[4] = v10;
    v18[5] = self;
    v18[7] = a5;
    v18[8] = buf;
    v18[6] = v13;
    v15 = [v9 provideItemAtURL:v14 withOptions:a4 forAccessClaim:self completionHandler:v18];
    *(*&buf[8] + 40) = v15;
    if (v15)
    {
      if (!self->_providerCancellationProcedures)
      {
        self->_providerCancellationProcedures = objc_opt_new();
        v15 = *(*&buf[8] + 40);
      }

      v16 = [v15 copy];
      [(NSMutableArray *)self->_providerCancellationProcedures addObject:v16];
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v17 = *(a5 + 2);

    v17(a5, 1);
  }
}

uint64_t __93__NSFileAccessClaim_makeProviderOfItemAtLocation_provideIfNecessaryWithOptions_thenContinue___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = _NSFCClaimsLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = *(*(a1 + 40) + 16);
    v16 = 138543618;
    v17 = v5;
    v18 = 2114;
    v19 = v6;
    _os_log_impl(&dword_18075C000, v4, OS_LOG_TYPE_DEFAULT, "Provider %{public}@ finished, unblocking claimer for %{public}@", &v16, 0x16u);
  }

  v7 = [a2 sandboxToken];
  if (v7)
  {
    v8 = v7;
    v9 = *(*(a1 + 40) + 176);
    if (!v9)
    {
      *(*(a1 + 40) + 176) = objc_opt_new();
      v9 = *(*(a1 + 40) + 176);
    }

    [v9 addObject:v8];
  }

  [*(a1 + 40) removeBlockingReactorID:*(a1 + 32)];
  if (*(*(*(a1 + 64) + 8) + 40))
  {
    [*(*(a1 + 40) + 96) removeObject:?];
  }

  v10 = [a2 error];
  if (v10)
  {
    v11 = v10;
    v12 = _NSFCClaimsLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v14 = *(a1 + 32);
      v15 = [*(a1 + 40) claimID];
      v16 = 138543874;
      v17 = v14;
      v18 = 2114;
      v19 = v15;
      v20 = 2112;
      v21 = v11;
      _os_log_error_impl(&dword_18075C000, v12, OS_LOG_TYPE_ERROR, "Provider %{public}@, while providing for claim %{public}@, returned an error: %@", &v16, 0x20u);
    }

    [*(a1 + 40) setClaimerError:v11];
  }

  (*(*(a1 + 56) + 16))(*(a1 + 56), [*(a1 + 40) claimerError] == 0);
  return [*(a1 + 40) unblockClaimerForReason:*(a1 + 48)];
}

- (void)_checkIfMovingRequiresProvidingAmongWritingLocations:(id)a3 options:(unint64_t *)a4 thenContinue:(id)a5
{
  v64 = *MEMORY[0x1E69E9840];
  if ([a3 count] < 2)
  {
    v37 = *(a5 + 2);

    v37(a5, 0);
  }

  else
  {
    v39 = a5;
    v9 = objc_opt_new();
    v10 = objc_opt_new();
    v11 = objc_opt_new();
    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = __95__NSFileAccessClaim__checkIfMovingRequiresProvidingAmongWritingLocations_options_thenContinue___block_invoke;
    v48[3] = &unk_1E69F8080;
    v48[4] = v10;
    v48[5] = v11;
    v48[6] = v9;
    v48[7] = a4;
    [a3 enumerateObjectsUsingBlock:v48];

    v42 = [MEMORY[0x1E695DFA8] set];
    obj = objc_opt_new();
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v12 = [v11 countByEnumeratingWithState:&v60 objects:v59 count:16];
    if (v12)
    {
      v13 = *v61;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v61 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v60 + 1) + 8 * i);
          v16 = [v15 objectAtIndexedSubscript:0];
          v17 = [v15 objectAtIndexedSubscript:1];
          v18 = [(NSFileAccessClaim *)self shouldMakeProviderProvideItemAtLocation:v16 withOptions:0];
          if (v16 != v17 && v18)
          {
            v20 = [v16 itemProvider];
            v21 = [v17 itemProvider];
            if (v20 == v21 || [objc_msgSend(v20 "reactorID")])
            {
              [obj addObject:v15];
            }

            else
            {
              [v42 addObject:v16];
            }
          }
        }

        v12 = [v11 countByEnumeratingWithState:&v60 objects:v59 count:16];
      }

      while (v12);
    }

    if ([obj count])
    {
      v22 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Checking with provider about %ld moving items", [obj count]);
      [(NSFileAccessClaim *)self blockClaimerForReason:v22];
      v38 = v22;
      v46[0] = 0;
      v46[1] = v46;
      v46[2] = 0x2810000000;
      v46[3] = &unk_181543D8B;
      v47 = 0;
      v23 = dispatch_group_create();
      v43 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(obj, "count")}];
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v24 = [obj countByEnumeratingWithState:&v55 objects:v54 count:16];
      if (v24)
      {
        v40 = *v56;
        do
        {
          for (j = 0; j != v24; ++j)
          {
            if (*v56 != v40)
            {
              objc_enumerationMutation(obj);
            }

            v26 = *(*(&v55 + 1) + 8 * j);
            v27 = [v26 objectAtIndexedSubscript:0];
            v28 = [v26 objectAtIndexedSubscript:1];
            dispatch_group_enter(v23);
            v29 = [v27 itemProvider];
            [v43 addObject:{objc_msgSend(v29, "reactorID")}];
            v30 = [v27 standardizedURL];
            v31 = [objc_msgSend(v28 "parent")];
            v32 = [v28 name];
            v45[0] = MEMORY[0x1E69E9820];
            v45[1] = 3221225472;
            v45[2] = __95__NSFileAccessClaim__checkIfMovingRequiresProvidingAmongWritingLocations_options_thenContinue___block_invoke_2;
            v45[3] = &unk_1E69F80A8;
            v45[7] = v23;
            v45[8] = v46;
            v45[4] = v42;
            v45[5] = v27;
            v45[6] = self;
            [v29 movingItemAtURL:v30 requiresProvidingWithDestinationDirectoryURL:v31 newFileName:v32 completionHandler:v45];
          }

          v24 = [obj countByEnumeratingWithState:&v55 objects:v54 count:16];
        }

        while (v24);
      }

      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v33 = [v43 countByEnumeratingWithState:&v50 objects:v49 count:16];
      if (v33)
      {
        v34 = *v51;
        do
        {
          for (k = 0; k != v33; ++k)
          {
            if (*v51 != v34)
            {
              objc_enumerationMutation(v43);
            }

            [(NSFileAccessClaim *)self addBlockingReactorID:*(*(&v50 + 1) + 8 * k)];
          }

          v33 = [v43 countByEnumeratingWithState:&v50 objects:v49 count:16];
        }

        while (v33);
      }

      arbiterQueue = self->_arbiterQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __95__NSFileAccessClaim__checkIfMovingRequiresProvidingAmongWritingLocations_options_thenContinue___block_invoke_3;
      block[3] = &unk_1E69F80D0;
      block[4] = v42;
      block[5] = self;
      block[6] = v38;
      block[7] = v43;
      block[8] = v39;
      dispatch_group_notify(v23, arbiterQueue, block);
      dispatch_release(v23);
      _Block_object_dispose(v46, 8);
    }

    else
    {
      v39[2](v39, v42);
    }
  }
}

uint64_t __95__NSFileAccessClaim__checkIfMovingRequiresProvidingAmongWritingLocations_options_thenContinue___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11[2] = *MEMORY[0x1E69E9840];
  if ((*(*(a1 + 56) + 8 * a3) & 2) != 0)
  {
    if ([*(a1 + 32) count])
    {
      v11[0] = a2;
      v7 = *(a1 + 40);
      v11[1] = [*(a1 + 32) firstObject];
      [v7 addObject:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v11, 2)}];
      v6 = *(a1 + 32);
      return [v6 removeObjectAtIndex:0];
    }

    v9 = *(a1 + 48);
  }

  else
  {
    if ([*(a1 + 48) count])
    {
      v5 = *(a1 + 40);
      v10[0] = [*(a1 + 48) firstObject];
      v10[1] = a2;
      [v5 addObject:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v10, 2)}];
      v6 = *(a1 + 48);
      return [v6 removeObjectAtIndex:0];
    }

    v9 = *(a1 + 32);
  }

  return [v9 addObject:a2];
}

void __95__NSFileAccessClaim__checkIfMovingRequiresProvidingAmongWritingLocations_options_thenContinue___block_invoke_2(uint64_t a1, void *a2)
{
  os_unfair_lock_lock_with_options();
  if ([a2 requiresProviding])
  {
    [*(a1 + 32) addObject:*(a1 + 40)];
  }

  if ([a2 requiresAccessorBlockMaterializationPolicy])
  {
    [*(a1 + 48) setShouldEnableMaterializationDuringAccessorBlock:1];
  }

  os_unfair_lock_unlock((*(*(a1 + 64) + 8) + 32));
  v4 = *(a1 + 56);

  dispatch_group_leave(v4);
}

void __95__NSFileAccessClaim__checkIfMovingRequiresProvidingAmongWritingLocations_options_thenContinue___block_invoke_3(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  (*(*(a1 + 64) + 16))();
  [*(a1 + 40) unblockClaimerForReason:*(a1 + 48)];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = *(a1 + 56);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v7 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(a1 + 40) removeBlockingReactorID:*(*(&v8 + 1) + 8 * i)];
      }

      v4 = [v2 countByEnumeratingWithState:&v8 objects:v7 count:16];
    }

    while (v4);
  }
}

- (void)makeProvidersProvideItemsForReadingLocations:(id)a3 options:(unint64_t *)a4 andWritingLocationsIfNecessary:(id)a5 options:(unint64_t *)a6 thenContinue:(id)a7
{
  v13[10] = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_arbiterQueue);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __126__NSFileAccessClaim_makeProvidersProvideItemsForReadingLocations_options_andWritingLocationsIfNecessary_options_thenContinue___block_invoke;
  v13[3] = &unk_1E69F8198;
  v13[4] = self;
  v13[5] = a5;
  v13[6] = a3;
  v13[7] = a7;
  v13[8] = a6;
  v13[9] = a4;
  [(NSFileAccessClaim *)self ensureProvidersOfItemsAtReadingLocations:a3 writingLocations:a5 thenContinue:v13];
}

uint64_t __126__NSFileAccessClaim_makeProvidersProvideItemsForReadingLocations_options_andWritingLocationsIfNecessary_options_thenContinue___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) isRevoked])
  {
    v2 = *(*(a1 + 56) + 16);

    return v2();
  }

  else
  {
    v4 = *(a1 + 32);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __126__NSFileAccessClaim_makeProvidersProvideItemsForReadingLocations_options_andWritingLocationsIfNecessary_options_thenContinue___block_invoke_2;
    v7[3] = &unk_1E69F8170;
    v7[4] = v4;
    v5 = *(a1 + 40);
    v8 = vextq_s8(v5, v5, 8uLL);
    v6 = *(a1 + 64);
    v10 = vextq_s8(v6, v6, 8uLL);
    v9 = *(a1 + 56);
    return [v4 _checkIfMovingRequiresProvidingAmongWritingLocations:v5.i64[0] options:v6.i64[0] thenContinue:v7];
  }
}

void __126__NSFileAccessClaim_makeProvidersProvideItemsForReadingLocations_options_andWritingLocationsIfNecessary_options_thenContinue___block_invoke_2(uint64_t a1, void *a2)
{
  v63 = *MEMORY[0x1E69E9840];
  if ([a2 count])
  {
    [*(a1 + 32) setShouldEnableMaterializationDuringAccessorBlock:1];
  }

  v4 = objc_opt_new();
  v44 = 0;
  v45 = &v44;
  v46 = 0x2020000000;
  v47 = 0;
  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v43 = 0;
  v38[0] = 0;
  v38[1] = v38;
  v38[2] = 0x2020000000;
  v39 = 1;
  v5 = dispatch_group_create();
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v32 = __126__NSFileAccessClaim_makeProvidersProvideItemsForReadingLocations_options_andWritingLocationsIfNecessary_options_thenContinue___block_invoke_3;
  v33 = &unk_1E69F8120;
  v34 = v4;
  v35 = v5;
  v36 = *(a1 + 32);
  v37 = v38;
  v6 = [a2 mutableCopy];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __126__NSFileAccessClaim_makeProvidersProvideItemsForReadingLocations_options_andWritingLocationsIfNecessary_options_thenContinue___block_invoke_5;
  v29[3] = &unk_1E69F8148;
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v29[4] = *(a1 + 32);
  v29[5] = v8;
  v30 = *(a1 + 64);
  v29[6] = a2;
  v29[7] = v6;
  v29[8] = v31;
  v29[9] = &v40;
  v29[10] = &v44;
  [v7 enumerateObjectsUsingBlock:v29];
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v9 = [v6 countByEnumeratingWithState:&v59 objects:v58 count:16];
  if (v9)
  {
    v10 = *v60;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v60 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v32(v31, *(*(&v59 + 1) + 8 * i), 0x20000, v41 + 3);
      }

      v9 = [v6 countByEnumeratingWithState:&v59 objects:v58 count:16];
    }

    while (v9);
  }

  v26 = v5;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = *(a1 + 48);
  v12 = [obj countByEnumeratingWithState:&v54 objects:v53 count:16];
  if (v12)
  {
    v13 = *v55;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v55 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v54 + 1) + 8 * j);
        v16 = [v15 parent];
        v17 = a1;
        if ([*(a1 + 32) shouldMakeProviderProvideItemAtLocation:v16 withOptions:0] && (objc_msgSend(v4, "containsObject:", v16) & 1) == 0 && (objc_msgSend(v4, "containsObject:", v15) & 1) == 0)
        {
          v51 = 0u;
          v52 = 0u;
          v49 = 0u;
          v50 = 0u;
          v18 = [v4 countByEnumeratingWithState:&v49 objects:v48 count:16];
          if (v18)
          {
            v19 = *v50;
LABEL_20:
            v20 = 0;
            while (1)
            {
              if (*v50 != v19)
              {
                objc_enumerationMutation(v4);
              }

              if ([*(*(&v49 + 1) + 8 * v20) itemIsInItemAtLocation:v16])
              {
                break;
              }

              if (v18 == ++v20)
              {
                v18 = [v4 countByEnumeratingWithState:&v49 objects:v48 count:16];
                if (v18)
                {
                  goto LABEL_20;
                }

                goto LABEL_26;
              }
            }
          }

          else
          {
LABEL_26:
            v21 = [v15 parent];
            v32(v31, v21, 0x20000000, v41 + 3);
          }
        }

        a1 = v17;
      }

      v12 = [obj countByEnumeratingWithState:&v54 objects:v53 count:16];
    }

    while (v12);
  }

  v22 = v41[3];
  if (v45[3] | v22)
  {
    v23 = [NSString stringWithFormat:@"Providing for %ld readers and %ld writers", v45[3], v22];
    [*(a1 + 32) blockClaimerForReason:v23];
    v24 = *(a1 + 32);
    v25 = *(v24 + 184);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __126__NSFileAccessClaim_makeProvidersProvideItemsForReadingLocations_options_andWritingLocationsIfNecessary_options_thenContinue___block_invoke_6;
    block[3] = &unk_1E69F8870;
    block[6] = *(a1 + 56);
    block[7] = v38;
    block[4] = v24;
    block[5] = v23;
    dispatch_group_notify(v26, v25, block);
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }

  dispatch_release(v26);
  _Block_object_dispose(v38, 8);
  _Block_object_dispose(&v40, 8);
  _Block_object_dispose(&v44, 8);
}

uint64_t __126__NSFileAccessClaim_makeProvidersProvideItemsForReadingLocations_options_andWritingLocationsIfNecessary_options_thenContinue___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v10[6] = *MEMORY[0x1E69E9840];
  ++*a4;
  [*(a1 + 32) addObject:a2];
  dispatch_group_enter(*(a1 + 40));
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __126__NSFileAccessClaim_makeProvidersProvideItemsForReadingLocations_options_andWritingLocationsIfNecessary_options_thenContinue___block_invoke_4;
  v10[3] = &unk_1E69F80F8;
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v10[4] = *(a1 + 40);
  v10[5] = v8;
  return [v7 makeProviderOfItemAtLocation:a2 provideIfNecessaryWithOptions:a3 thenContinue:v10];
}

void __126__NSFileAccessClaim_makeProvidersProvideItemsForReadingLocations_options_andWritingLocationsIfNecessary_options_thenContinue___block_invoke_4(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  dispatch_group_leave(*(a1 + 32));
}

uint64_t __126__NSFileAccessClaim_makeProvidersProvideItemsForReadingLocations_options_andWritingLocationsIfNecessary_options_thenContinue___block_invoke_5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a1 + 88) + 8 * a3);
  result = [*(a1 + 32) shouldMakeProviderProvideItemAtLocation:a2 withOptions:v5];
  v7 = result;
  if (result)
  {
    v8 = (v5 & 0x20000) == 0;
  }

  else
  {
    v8 = 0;
  }

  if (!v8)
  {
LABEL_8:
    if (!v7)
    {
      return result;
    }

    goto LABEL_9;
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    result = [v9 indexOfObjectIdenticalTo:a2];
    if (result != 0x7FFFFFFFFFFFFFFFLL)
    {
      if (*(*(a1 + 96) + 8 * result) != 2)
      {
        return result;
      }

      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_9:
  if ([*(a1 + 48) containsObject:a2])
  {
    [*(a1 + 56) removeObject:a2];
    ++*(*(*(a1 + 72) + 8) + 24);
  }

  v10 = *(*(a1 + 64) + 16);

  return v10();
}

uint64_t __126__NSFileAccessClaim_makeProvidersProvideItemsForReadingLocations_options_andWritingLocationsIfNecessary_options_thenContinue___block_invoke_6(void *a1)
{
  (*(a1[6] + 16))();
  v2 = a1[4];
  v3 = a1[5];

  return [v2 unblockClaimerForReason:v3];
}

- (void)makeProviderOfItemAtLocation:(id)a3 providePhysicalURLThenContinue:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v7 = [a3 itemProvider];
  v8 = [v7 reactorID];
  if (!v7 || (v9 = v8, [(NSString *)self->_purposeIDOrNil isEqual:v8]) || self->_cameFromSuperarbiter || [(NSFileAccessClaim *)self claimerError])
  {
    v10 = *(a4 + 2);

    v10(a4, 0);
  }

  else
  {
    v11 = _NSFCClaimsLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      claimID = self->_claimID;
      *buf = 138543618;
      v17 = claimID;
      v18 = 2114;
      v19 = v9;
      _os_log_impl(&dword_18075C000, v11, OS_LOG_TYPE_DEFAULT, "Claimer for %{public}@ is waiting for provider %{public}@ to provide a physical URL", buf, 0x16u);
    }

    v13 = [NSString stringWithFormat:@"Waiting for provider %@ to provide a physical URL", v9];
    [(NSMutableArray *)self->_claimerBlockageReasons addObject:v13];
    [(NSFileAccessClaim *)self addBlockingReactorID:v9];
    v14 = [a3 standardizedURL];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __81__NSFileAccessClaim_makeProviderOfItemAtLocation_providePhysicalURLThenContinue___block_invoke;
    v15[3] = &unk_1E69F81C0;
    v15[4] = v9;
    v15[5] = self;
    v15[6] = v13;
    v15[7] = a4;
    [v7 providePhysicalURLForURL:v14 completionHandler:v15];
  }
}

uint64_t __81__NSFileAccessClaim_makeProviderOfItemAtLocation_providePhysicalURLThenContinue___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = _NSFCClaimsLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(*(a1 + 40) + 16);
    v6 = 138543618;
    v7 = v3;
    v8 = 2114;
    v9 = v4;
    _os_log_impl(&dword_18075C000, v2, OS_LOG_TYPE_DEFAULT, "Provider %{public}@ has finished providing a physical URL, unblocking claimer for %{public}@", &v6, 0x16u);
  }

  [*(a1 + 40) removeBlockingReactorID:*(a1 + 32)];
  [*(*(a1 + 40) + 56) removeObject:*(a1 + 48)];
  return (*(*(a1 + 56) + 16))();
}

- (void)makeProviderOfItemAtLocation:(id)a3 provideOrAttachPhysicalURLIfNecessaryForPurposeID:(id)a4 readingOptions:(unint64_t)a5 thenContinue:(id)a6
{
  v7 = a5;
  v16 = *MEMORY[0x1E69E9840];
  v11 = [a3 itemProvider];
  if (v11 && (v12 = [objc_msgSend(v11 "reactorID")], (v7 & 4) != 0) && (v12 & 1) == 0)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __128__NSFileAccessClaim_makeProviderOfItemAtLocation_provideOrAttachPhysicalURLIfNecessaryForPurposeID_readingOptions_thenContinue___block_invoke;
    v14[3] = &unk_1E69F81E8;
    v15 = 1;
    v14[4] = a3;
    v14[5] = a6;
    [(NSFileAccessClaim *)self makeProviderOfItemAtLocation:a3 providePhysicalURLThenContinue:v14];
  }

  else
  {
    v13 = *(a6 + 2);

    v13(a6, 0);
  }
}

uint64_t __128__NSFileAccessClaim_makeProviderOfItemAtLocation_provideOrAttachPhysicalURLIfNecessaryForPurposeID_readingOptions_thenContinue___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2 && *(a1 + 48) == 1)
  {
    [*(a1 + 32) standardizedURL];
    _CFURLPromiseSetPhysicalURL();
  }

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

- (void)makeProviderOfItemAtLocation:(id)a3 provideOrAttachPhysicalURLIfNecessaryForPurposeID:(id)a4 writingOptions:(unint64_t)a5 thenContinue:(id)a6
{
  v7 = a5;
  v16 = *MEMORY[0x1E69E9840];
  v11 = [a3 itemProvider];
  if (v11 && (v12 = [objc_msgSend(v11 "reactorID")], (v7 & 0x13) != 0) && (v12 & 1) == 0)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __128__NSFileAccessClaim_makeProviderOfItemAtLocation_provideOrAttachPhysicalURLIfNecessaryForPurposeID_writingOptions_thenContinue___block_invoke;
    v14[3] = &unk_1E69F81E8;
    v15 = (v7 & 0x11) == 0;
    v14[4] = a3;
    v14[5] = a6;
    [(NSFileAccessClaim *)self makeProviderOfItemAtLocation:a3 providePhysicalURLThenContinue:v14];
  }

  else
  {
    v13 = *(a6 + 2);

    v13(a6, 0);
  }
}

uint64_t __128__NSFileAccessClaim_makeProviderOfItemAtLocation_provideOrAttachPhysicalURLIfNecessaryForPurposeID_writingOptions_thenContinue___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2 && *(a1 + 48) == 1)
  {
    [*(a1 + 32) standardizedURL];
    _CFURLPromiseSetPhysicalURL();
  }

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

- (void)addReacquirer:(id)a3 forPresenterID:(id)a4
{
  v11[6] = *MEMORY[0x1E69E9840];
  reacquisitionProceduresByPresenterID = self->_reacquisitionProceduresByPresenterID;
  if (!reacquisitionProceduresByPresenterID)
  {
    reacquisitionProceduresByPresenterID = objc_alloc_init(MEMORY[0x1E695DF90]);
    self->_reacquisitionProceduresByPresenterID = reacquisitionProceduresByPresenterID;
  }

  v8 = [(NSMutableDictionary *)reacquisitionProceduresByPresenterID objectForKey:a4];
  if (v8)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __50__NSFileAccessClaim_addReacquirer_forPresenterID___block_invoke;
    v11[3] = &unk_1E69F8210;
    v11[4] = a3;
    v11[5] = v8;
    v9 = v11;
  }

  else
  {
    v9 = a3;
  }

  v10 = [v9 copy];
  [(NSMutableDictionary *)self->_reacquisitionProceduresByPresenterID setObject:v10 forKey:a4];
}

uint64_t __50__NSFileAccessClaim_addReacquirer_forPresenterID___block_invoke(uint64_t a1, uint64_t a2)
{
  v4[6] = *MEMORY[0x1E69E9840];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __50__NSFileAccessClaim_addReacquirer_forPresenterID___block_invoke_2;
  v4[3] = &unk_1E69F7D90;
  v2 = *(a1 + 32);
  v4[4] = *(a1 + 40);
  v4[5] = a2;
  return (*(v2 + 16))(v2, v4);
}

- (id)prepareAndBlockOnClaimRelinquishmentForPresentersOfItemAtLocation:(id)a3 orContainedItem:(BOOL)a4 withRelinquishProcedureGetter:(id)a5
{
  v38 = *MEMORY[0x1E69E9840];
  v22 = [MEMORY[0x1E695DF70] array];
  if (!self->_cameFromSuperarbiter)
  {
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __133__NSFileAccessClaim_prepareAndBlockOnClaimRelinquishmentForPresentersOfItemAtLocation_orContainedItem_withRelinquishProcedureGetter___block_invoke;
    v26[3] = &unk_1E69F8260;
    v26[4] = self;
    v26[5] = a3;
    v26[6] = v22;
    v26[7] = a5;
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __133__NSFileAccessClaim_prepareAndBlockOnClaimRelinquishmentForPresentersOfItemAtLocation_orContainedItem_withRelinquishProcedureGetter___block_invoke_3;
    v25[3] = &unk_1E69F8288;
    v25[4] = a3;
    v25[5] = v26;
    [a3 forEachPresenterOfContainingFilePackagePerformProcedure:v25];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __133__NSFileAccessClaim_prepareAndBlockOnClaimRelinquishmentForPresentersOfItemAtLocation_orContainedItem_withRelinquishProcedureGetter___block_invoke_4;
    v24[3] = &unk_1E69F82B0;
    v24[4] = v26;
    [a3 forEachPresenterOfItemPerformProcedure:v24];
    if (a4 || [a3 itemIsFilePackage])
    {
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __133__NSFileAccessClaim_prepareAndBlockOnClaimRelinquishmentForPresentersOfItemAtLocation_orContainedItem_withRelinquishProcedureGetter___block_invoke_5;
      v23[3] = &unk_1E69F82B0;
      v23[4] = v26;
      [a3 forEachPresenterOfContainedItemPerformProcedure:v23];
    }

    v9 = [MEMORY[0x1E695DEC8] arrayWithArray:{-[NSFileAccessClaim pendingClaims](self, "pendingClaims")}];
    if ([v9 count])
    {
      v10 = _NSFCClaimsLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        claimID = self->_claimID;
        *buf = 138543362;
        v28 = claimID;
        _os_log_impl(&dword_18075C000, v10, OS_LOG_TYPE_INFO, "Re-evaluating claims pending %{public}@", buf, 0xCu);
      }
    }

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v12 = [v9 countByEnumeratingWithState:&v34 objects:v33 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v35;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v35 != v14)
          {
            objc_enumerationMutation(v9);
          }

          v16 = *(*(&v34 + 1) + 8 * i);
          v17 = v16[24];
          if (v17 && [(NSFileAccessClaim *)self claimerInvokingIsBlockedByReactorWithID:v16[24]])
          {
            v18 = _NSFCClaimsLog();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              v19 = [v16 claimID];
              v20 = self->_claimID;
              *buf = 138543874;
              v28 = v19;
              v29 = 2114;
              v30 = v20;
              v31 = 2114;
              v32 = v17;
              _os_log_impl(&dword_18075C000, v18, OS_LOG_TYPE_DEFAULT, "Letting claim %{public}@ go before blocking claim %{public}@ because the latter is blocked by a reactor with the former's purposeID: %{public}@", buf, 0x20u);
            }

            [(NSFileAccessClaim *)self givePriorityToClaim:v16];
          }
        }

        v13 = [v9 countByEnumeratingWithState:&v34 objects:v33 count:16];
      }

      while (v13);
    }
  }

  return v22;
}

void __133__NSFileAccessClaim_prepareAndBlockOnClaimRelinquishmentForPresentersOfItemAtLocation_orContainedItem_withRelinquishProcedureGetter___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 1;
  v7 = [*(a1 + 32) purposeID];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __133__NSFileAccessClaim_prepareAndBlockOnClaimRelinquishmentForPresentersOfItemAtLocation_orContainedItem_withRelinquishProcedureGetter___block_invoke_2;
  v12[3] = &unk_1E69F8238;
  v8 = *(a1 + 40);
  v12[4] = *(a1 + 32);
  v12[5] = v7;
  v12[6] = &v13;
  [v8 forEachAccessClaimOnItemOrContainedItemPerformProcedure:v12];
  if (*(v14 + 24) == 1)
  {
    v9 = [a2 reactorID];
    v10 = (*(*(a1 + 56) + 16))();
    if (v10)
    {
      v11 = [[_NSFileAccessClaimPresenterRelinquishment alloc] initWithClaim:*(a1 + 32) presenterID:v9 relinquisher:v10];
      [*(a1 + 48) addObject:v11];
      [(_NSFileAccessClaimPresenterRelinquishment *)v11 blockClaimForPresenterAt:a4];
    }
  }

  _Block_object_dispose(&v13, 8);
}

uint64_t __133__NSFileAccessClaim_prepareAndBlockOnClaimRelinquishmentForPresentersOfItemAtLocation_orContainedItem_withRelinquishProcedureGetter___block_invoke_2(uint64_t result, void *a2)
{
  if (*(result + 32) != a2)
  {
    v2 = result;
    result = [a2 claimerInvokingIsBlockedByReactorWithID:*(result + 40)];
    if (result)
    {
      *(*(*(v2 + 48) + 8) + 24) = 0;
    }
  }

  return result;
}

void __133__NSFileAccessClaim_prepareAndBlockOnClaimRelinquishmentForPresentersOfItemAtLocation_orContainedItem_withRelinquishProcedureGetter___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = objc_autoreleasePoolPush();
  [*(a1 + 32) pathFromAncestor:a3];
  (*(*(a1 + 40) + 16))();

  objc_autoreleasePoolPop(v5);
}

void __133__NSFileAccessClaim_prepareAndBlockOnClaimRelinquishmentForPresentersOfItemAtLocation_orContainedItem_withRelinquishProcedureGetter___block_invoke_4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

void __133__NSFileAccessClaim_prepareAndBlockOnClaimRelinquishmentForPresentersOfItemAtLocation_orContainedItem_withRelinquishProcedureGetter___block_invoke_5(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

- (BOOL)canAccessLocations:(id)a3 forReading:(BOOL)a4 error:(id *)a5
{
  v18 = a4;
  v33 = *MEMORY[0x1E69E9840];
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 1;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v8 = [a3 countByEnumeratingWithState:&v29 objects:v28 count:16];
  if (v8)
  {
    v9 = *v30;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v30 != v9)
        {
          objc_enumerationMutation(a3);
        }

        v11 = *(*(&v29 + 1) + 8 * i);
        v19[0] = MEMORY[0x1E69E9820];
        v19[1] = 3221225472;
        v19[2] = __57__NSFileAccessClaim_canAccessLocations_forReading_error___block_invoke;
        v19[3] = &unk_1E69F82D8;
        v19[4] = self;
        v19[5] = &v20;
        [v11 forEachPresenterOfItemPerformProcedure:v19];
      }

      v8 = [a3 countByEnumeratingWithState:&v29 objects:v28 count:16];
    }

    while (v8);
  }

  if ((v21[3] & 1) == 0)
  {
    v12 = _NSFCClaimsLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      claimID = self->_claimID;
      purposeIDOrNil = self->_purposeIDOrNil;
      *buf = 138543618;
      v25 = claimID;
      v26 = 2114;
      v27 = purposeIDOrNil;
      _os_log_error_impl(&dword_18075C000, v12, OS_LOG_TYPE_ERROR, "Denying access for claim %{public}@ because the presenter (reactor ID: %{public}@) performing it has been disconnected", buf, 0x16u);
      if (!a5)
      {
        goto LABEL_15;
      }
    }

    else if (!a5)
    {
      goto LABEL_15;
    }

    if (v18)
    {
      v13 = 257;
    }

    else
    {
      v13 = 513;
    }

    *a5 = [NSError errorWithDomain:@"NSCocoaErrorDomain" code:v13 userInfo:0];
  }

LABEL_15:
  v14 = *(v21 + 24);
  _Block_object_dispose(&v20, 8);
  return v14;
}

uint64_t __57__NSFileAccessClaim_canAccessLocations_forReading_error___block_invoke(uint64_t result, void *a2)
{
  if (*(*(*(result + 40) + 8) + 24) == 1)
  {
    v3 = result;
    result = [objc_msgSend(a2 "reactorID")];
    if (result)
    {
      result = [a2 disconnected];
      *(*(*(v3 + 40) + 8) + 24) = result ^ 1;
    }
  }

  return result;
}

- (BOOL)_writeArchiveOfDirectoryAtURL:(id)a3 toURL:(id)a4 error:(id *)a5
{
  v59 = *MEMORY[0x1E69E9840];
  v8 = [a3 path];
  v9 = [a3 fileSystemRepresentation];
  v10 = [a4 fileSystemRepresentation];
  if (!v8 || !v9 || !v10)
  {
    if (!a5)
    {
      return 0;
    }

    v55[0] = @"NSSourceFilePathErrorKey";
    v55[1] = @"NSDestinationFilePath";
    v56[0] = a3;
    v56[1] = a4;
    v16 = 0;
    *a5 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", @"NSCocoaErrorDomain", 256, [MEMORY[0x1E695DF20] dictionaryWithObjects:v56 forKeys:v55 count:2]);
    return v16;
  }

  v11 = archive_write_new();
  archive_write_set_format_zip();
  v54 = a4;
  v52 = a3;
  if (archive_write_open_filename())
  {
    if (a5)
    {
      v12 = __error();
      *a5 = _NSErrorWithFilePathErrnoVariantAndExtraUserInfo(*v12, a4, 0, 0, 0);
    }

    free(v11);
    disk_new = 0;
    v11 = 0;
    v14 = 0;
    v15 = 0;
    v57 = v9;
    v58 = 0;
  }

  else
  {
    disk_new = archive_read_disk_new();
    archive_read_disk_set_standard_lookup();
    v57 = v9;
    v58 = 0;
    v17 = fts_open(&v57, 84, 0);
    if (v17)
    {
      v14 = v17;
      v15 = 1;
    }

    else if (a5)
    {
      v18 = __error();
      v14 = 0;
      v15 = 0;
      *a5 = _NSErrorWithFilePathErrnoVariantAndExtraUserInfo(*v18, v52, 1, 0, 0);
    }

    else
    {
      v14 = 0;
      v15 = 0;
    }
  }

  v19 = [objc_msgSend(v8 "stringByDeletingLastPathComponent")];
  if (!v15)
  {
    v16 = 0;
    v40 = 0;
    if (v14)
    {
      goto LABEL_60;
    }

    goto LABEL_64;
  }

  v20 = strlen(v19);
  v21 = fts_read(v14);
  v16 = 1;
  if (!v21)
  {
    goto LABEL_59;
  }

  v22 = v21;
  v50 = v20 + 1;
  v51 = disk_new;
  while (1)
  {
    fts_info = v22->fts_info;
    if (fts_info <= 0xE)
    {
      v24 = 1 << fts_info;
      if ((v24 & 0x4266) != 0)
      {
        goto LABEL_21;
      }

      if ((v24 & 0x490) != 0)
      {
        if (a5)
        {
          v41 = *__error();
          v16 = 0;
          *a5 = _NSErrorWithFilePathErrnoVariantAndExtraUserInfo(v41, [MEMORY[0x1E695DFF8] fileURLWithFileSystemRepresentation:v22->fts_path isDirectory:0 relativeToURL:{0, v50}], 1, 0, 0);
          goto LABEL_59;
        }

LABEL_49:
        v16 = 0;
        goto LABEL_59;
      }
    }

    v25 = a5;
    fts_accpath = v22->fts_accpath;
    v27 = _NSOpenFileDescriptor(fts_accpath, 0, 0);
    if (!v27)
    {
      break;
    }

    v28 = v27;
    archive_entry_new();
    archive_entry_set_pathname();
    if (archive_read_disk_entry_from_file())
    {
      if (v25)
      {
        v43 = archive_errno();
        v44 = [MEMORY[0x1E695DFF8] fileURLWithFileSystemRepresentation:fts_accpath isDirectory:0 relativeToURL:{0, v50}];
        v45 = v43;
        v46 = 1;
        goto LABEL_57;
      }

LABEL_58:
      archive_entry_free();
      close(v28);
      v16 = 0;
      a5 = v25;
      disk_new = v51;
      goto LABEL_59;
    }

    if (archive_write_header())
    {
      if (v25)
      {
        v45 = archive_errno();
        v44 = v54;
        v46 = 0;
LABEL_57:
        *v25 = _NSErrorWithFilePathErrnoVariantAndExtraUserInfo(v45, v44, v46, 0, 0);
      }

      goto LABEL_58;
    }

    v29 = _NSPreferredChunkSizeForFileDescriptor(v28);
    st_size = v22->fts_statp->st_size;
    if (v29 < st_size)
    {
      v29 = _NSPreferredChunkSizeForFileDescriptor(v28);
      st_size = v29;
    }

    v53 = &v50;
    MEMORY[0x1EEE9AC00](v29);
    v33 = &v50 - v32;
    if (st_size > 0x100)
    {
      v33 = malloc_type_malloc(v31, 0x100004077774924uLL);
    }

    else
    {
      bzero(&v50 - v32, v31);
    }

    while (1)
    {
      v34 = _NSReadFromFileDescriptorWithProgress(v28, v33, st_size, 0, 0);
      if (v34 < 1)
      {
        break;
      }

      if (archive_write_data() == -1)
      {
        if (v25)
        {
          v35 = v25;
          v36 = archive_errno();
          v37 = _NSErrorWithFilePathErrnoVariantAndExtraUserInfo(v36, v54, 0, 0, 0);
LABEL_39:
          v38 = 0;
          *v35 = v37;
          goto LABEL_41;
        }

        v38 = 0;
        goto LABEL_41;
      }
    }

    v38 = v34 == 0;
    if (v25 && v34)
    {
      v39 = *__error();
      v37 = _NSErrorWithFilePathErrnoVariantAndExtraUserInfo(v39, [MEMORY[0x1E695DFF8] fileURLWithFileSystemRepresentation:fts_accpath isDirectory:0 relativeToURL:{0, v50}], 1, 0, 0);
      v35 = v25;
      goto LABEL_39;
    }

LABEL_41:
    if (st_size >= 0x101)
    {
      free(v33);
    }

    archive_entry_free();
    close(v28);
    a5 = v25;
    disk_new = v51;
    if (!v38)
    {
      goto LABEL_49;
    }

LABEL_21:
    v22 = fts_read(v14);
    if (!v22)
    {
      v16 = 1;
      goto LABEL_59;
    }
  }

  if (a5)
  {
    v42 = *__error();
    *a5 = _NSErrorWithFilePathErrnoVariantAndExtraUserInfo(v42, [MEMORY[0x1E695DFF8] fileURLWithFileSystemRepresentation:fts_accpath isDirectory:0 relativeToURL:{0, v50}], 1, 0, 0);
  }

  close(0);
  v16 = 0;
LABEL_59:
  v40 = !v16;
  if (!v14)
  {
    goto LABEL_64;
  }

LABEL_60:
  if (v40 || !*__error())
  {
LABEL_64:
    if (!v11)
    {
      goto LABEL_70;
    }

    goto LABEL_65;
  }

  if (a5)
  {
    v47 = __error();
    v16 = 0;
    *a5 = _NSErrorWithFilePathErrnoVariantAndExtraUserInfo(*v47, v52, 1, 0, 0);
    goto LABEL_64;
  }

  v16 = 0;
  if (v11)
  {
LABEL_65:
    if (archive_write_free())
    {
      if (a5)
      {
        v48 = archive_errno();
        v16 = 0;
        *a5 = _NSErrorWithFilePathErrnoVariantAndExtraUserInfo(v48, v54, 0, 0, 0);
      }

      else
      {
        v16 = 0;
      }
    }
  }

LABEL_70:
  if (disk_new)
  {
    archive_read_free();
  }

  if (v14)
  {
    fts_close(v14);
  }

  return v16;
}

- (void)prepareItemForUploadingFromURL:(id)a3 thenContinue:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
  [(NSFileAccessClaim *)self blockClaimerForReason:@"Zipping"];
  v7 = [(NSFileAccessClaim *)self claimID];
  v8 = _NSFCClaimsLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138543619;
    *&buf[4] = v7;
    v27 = 2113;
    v28 = [a3 path];
    _os_log_impl(&dword_18075C000, v8, OS_LOG_TYPE_INFO, "Claim %{public}@ is waiting for file %{private}@ to be prepared for uploading", buf, 0x16u);
  }

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v20 = __65__NSFileAccessClaim_prepareItemForUploadingFromURL_thenContinue___block_invoke;
  v21 = &unk_1E69F8300;
  v23 = self;
  v24 = a4;
  v22 = v7;
  *buf = 0;
  v9 = [[(NSString *)NSTemporaryDirectory() stringByAppendingPathComponent:@"CoordinatedZipFileXXXXXX"] fileSystemRepresentation];
  v10 = strdup(v9);
  if (![+[NSFileManager createDirectoryAtPath:"createDirectoryAtPath:withIntermediateDirectories:attributes:error:"]
  {
    v14 = *buf;
LABEL_9:
    v20(v19, 0, v14);
    goto LABEL_10;
  }

  if (!v10 || !mkdtemp(v10))
  {
    v14 = [NSError errorWithDomain:@"NSCocoaErrorDomain" code:256 userInfo:0];
    goto LABEL_9;
  }

  v11 = [+[NSFileManager defaultManager](NSFileManager stringWithFileSystemRepresentation:"stringWithFileSystemRepresentation:length:" length:v10, strlen(v10)];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __65__NSFileAccessClaim_prepareItemForUploadingFromURL_thenContinue___block_invoke_101;
  v18[3] = &unk_1E69F2C00;
  v18[4] = v11;
  [(NSFileAccessClaim *)self whenFinishedPerformProcedure:v18];
  v17 = 0;
  v12 = *MEMORY[0x1E695DC68];
  v25[0] = *MEMORY[0x1E695DB78];
  v25[1] = v12;
  v13 = [a3 resourceValuesForKeys:objc_msgSend(MEMORY[0x1E695DEC8] error:{"arrayWithObjects:count:", v25, 2), &v17}];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __65__NSFileAccessClaim_prepareItemForUploadingFromURL_thenContinue___block_invoke_102;
  v16[3] = &unk_1E69F7CA0;
  v16[4] = v13;
  v16[5] = a3;
  v16[6] = self;
  v16[7] = v11;
  v16[8] = v19;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __65__NSFileAccessClaim_prepareItemForUploadingFromURL_thenContinue___block_invoke_127;
  v15[3] = &unk_1E69F8328;
  v15[4] = v13;
  v15[5] = v11;
  v15[6] = a3;
  v15[7] = self;
  v15[8] = v17;
  v15[9] = v19;
  __65__NSFileAccessClaim_prepareItemForUploadingFromURL_thenContinue___block_invoke_102(v16, v15);
LABEL_10:
  free(v10);
}

uint64_t __65__NSFileAccessClaim_prepareItemForUploadingFromURL_thenContinue___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = _NSFCClaimsLog();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 32);
      v11 = 138543619;
      v12 = v8;
      v13 = 2113;
      v14 = a2;
      _os_log_impl(&dword_18075C000, v7, OS_LOG_TYPE_INFO, "Upload preparation for claim %{public}@ completed with resulting URL: %{private}@", &v11, 0x16u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v10 = *(a1 + 32);
    v11 = 138543619;
    v12 = v10;
    v13 = 2113;
    v14 = a3;
    _os_log_error_impl(&dword_18075C000, v7, OS_LOG_TYPE_ERROR, "Upload preparation for claim %{public}@ completed with error: %{private}@", &v11, 0x16u);
  }

  (*(*(a1 + 48) + 16))();
  return [*(a1 + 40) unblockClaimerForReason:@"Zipping"];
}

void __65__NSFileAccessClaim_prepareItemForUploadingFromURL_thenContinue___block_invoke_101(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = 0;
  if (([objc_opt_new() removeItemAtPath:*(a1 + 32) error:&v2] & 1) == 0 && objc_msgSend(v2, "code") != 4)
  {
    v1 = _NSFCClaimsLog();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v4 = v2;
      _os_log_error_impl(&dword_18075C000, v1, OS_LOG_TYPE_ERROR, "Failed to remove file created for uploading: %{public}@", buf, 0xCu);
    }
  }
}

void __65__NSFileAccessClaim_prepareItemForUploadingFromURL_thenContinue___block_invoke_102(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = [objc_msgSend(*(a1 + 32) objectForKey:{*MEMORY[0x1E695DC68]), "hasPrefix:", @"com.apple.iwork"}];
  v5 = [objc_msgSend(*(a1 + 40) "lastPathComponent")];
  if ((v4 & 1) != 0 || v5)
  {
    if (v4)
    {
      if (NSFileAccessClaimInitialBlockageReason_block_invoke_onceToken != -1)
      {
        dispatch_once(&NSFileAccessClaimInitialBlockageReason_block_invoke_onceToken, &__block_literal_global_76);
      }

      v7 = @"com.apple.iWorkFileFormat";
    }

    else if (v5)
    {
      v7 = @"com.apple.foundationtests.NSFileCoordinationPrepareForUploadTestService";
    }

    else
    {
      v7 = 0;
    }

    v8 = [[NSXPCConnection alloc] initWithServiceName:v7];
    [(NSXPCConnection *)v8 setRemoteObjectInterface:[NSXPCInterface interfaceWithProtocol:&unk_1EEF9CF58]];
    [(NSXPCConnection *)v8 _setQueue:*(*(a1 + 48) + 184)];
    [(NSXPCConnection *)v8 resume];
    v9 = _NSFCClaimsLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v20 = [*(a1 + 40) path];
      *buf = 138543619;
      v24 = v7;
      v25 = 2113;
      v26 = v20;
      _os_log_debug_impl(&dword_18075C000, v9, OS_LOG_TYPE_DEBUG, "Asking service named %{public}@ to prepare file %{private}@ for uploading", buf, 0x16u);
    }

    [*(a1 + 40) fileSystemRepresentation];
    v10 = sandbox_extension_issue_file();
    [*(a1 + 56) fileSystemRepresentation];
    v11 = sandbox_extension_issue_file();
    if (v10)
    {
      v12 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:v10 length:strlen(v10) + 1 freeWhenDone:1];
    }

    else
    {
      v12 = [MEMORY[0x1E695DEF0] data];
    }

    v13 = v12;
    if (v11)
    {
      v14 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:v11 length:strlen(v11) + 1 freeWhenDone:1];
    }

    else
    {
      v14 = [MEMORY[0x1E695DEF0] data];
    }

    v15 = v14;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __65__NSFileAccessClaim_prepareItemForUploadingFromURL_thenContinue___block_invoke_124;
    v22[3] = &unk_1E69F61A0;
    v22[4] = v7;
    v22[5] = a2;
    v16 = [(NSXPCConnection *)v8 remoteObjectProxyWithErrorHandler:v22];
    v17 = *(a1 + 40);
    v18 = [MEMORY[0x1E695DFF8] fileURLWithPath:*(a1 + 56)];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __65__NSFileAccessClaim_prepareItemForUploadingFromURL_thenContinue___block_invoke_126;
    v21[3] = &unk_1E69F7F98;
    v19 = *(a1 + 40);
    v21[4] = v7;
    v21[5] = v19;
    v21[6] = *(a1 + 64);
    v21[7] = a2;
    [v16 prepareFileForUploadingAtURL:v17 originalURLExtension:v13 inDirectory:v18 destinationSandboxExtension:v15 completionHandler:v21];
  }

  else
  {
    v6 = *(a2 + 16);

    v6(a2);
  }
}

uint64_t __65__NSFileAccessClaim_prepareItemForUploadingFromURL_thenContinue___block_invoke_2()
{
  xpc_add_bundle();

  return xpc_add_bundle();
}

uint64_t __65__NSFileAccessClaim_prepareItemForUploadingFromURL_thenContinue___block_invoke_124(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = _NSFCClaimsLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = 138543618;
    v8 = v6;
    v9 = 2114;
    v10 = a2;
    _os_log_error_impl(&dword_18075C000, v4, OS_LOG_TYPE_ERROR, "Error communicating with service named: %{public}@. %{public}@", &v7, 0x16u);
  }

  return (*(*(a1 + 40) + 16))();
}

uint64_t __65__NSFileAccessClaim_prepareItemForUploadingFromURL_thenContinue___block_invoke_126(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2 | a3;
  v6 = _NSFCClaimsLog();
  v7 = v6;
  if (v5)
  {
    if (a2)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        v8 = *(a1 + 32);
        v9 = [*(a1 + 40) path];
        v15 = 138543875;
        v16 = v8;
        v17 = 2113;
        v18 = v9;
        v19 = 2113;
        v20 = [a2 path];
        _os_log_debug_impl(&dword_18075C000, v7, OS_LOG_TYPE_DEBUG, "Service %{public}@ succeeded in preparing file %{private}@ for uploading. Resulting path: %{private}@", &v15, 0x20u);
      }
    }

    else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 32);
      v14 = [*(a1 + 40) path];
      v15 = 138543875;
      v16 = v13;
      v17 = 2113;
      v18 = v14;
      v19 = 2113;
      v20 = [0 path];
      _os_log_error_impl(&dword_18075C000, v7, OS_LOG_TYPE_ERROR, "Service %{public}@ failed to prepare file %{private}@ for uploading. Error: %{private}@", &v15, 0x20u);
    }

    return (*(*(a1 + 48) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v11 = *(a1 + 32);
      v12 = [*(a1 + 40) path];
      v15 = 138543619;
      v16 = v11;
      v17 = 2113;
      v18 = v12;
      _os_log_debug_impl(&dword_18075C000, v7, OS_LOG_TYPE_DEBUG, "Service %{public}@ has requested we fall back to the standard procedure to prepare file %{private}@ for uploading.", &v15, 0x16u);
    }

    return (*(*(a1 + 56) + 16))();
  }
}

uint64_t __65__NSFileAccessClaim_prepareItemForUploadingFromURL_thenContinue___block_invoke_127(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v25 = 0;
  v2 = [*(a1 + 32) objectForKey:*MEMORY[0x1E695DB78]];
  if (v2)
  {
    v3 = [v2 BOOLValue];
    v4 = [*(a1 + 40) stringByAppendingPathComponent:{objc_msgSend(*(a1 + 48), "lastPathComponent")}];
    v5 = v4;
    if (v3)
    {
      v6 = [v4 lastPathComponent];
      v7 = [v6 fileSystemRepresentation];
      if (v7)
      {
        v8 = strlen(v7);
        if (v8 - 252 <= 0xFFFFFFFFFFFFFEFFLL)
        {
          v9 = v8;
          v10 = [v6 stringByDeletingPathExtension];
          v11 = [v10 length] - v9;
          v12 = [v10 rangeOfComposedCharacterSequencesForRange:{0, v11 + 251}];
          v14 = v11 != -251 && v13 > v11 + 251;
          if (v14)
          {
            v20 = v11 + 250;
            do
            {
              v15 = [v10 rangeOfComposedCharacterSequencesForRange:{0, v20}];
              v16 = v21;
              if (!v20)
              {
                break;
              }

              v14 = v21 > v20--;
            }

            while (v14);
          }

          else
          {
            v15 = v12;
            v16 = v13;
          }

          v5 = [objc_msgSend(objc_msgSend(v5 "stringByDeletingLastPathComponent")];
        }

        v5 = [v5 stringByAppendingPathExtension:@"zip"];
      }

      v22 = [MEMORY[0x1E695DFF8] fileURLWithPath:v5 isDirectory:0];
      v23 = _NSFCClaimsLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_18075C000, v23, OS_LOG_TYPE_INFO, "(ReadingForUploading) Creating zip archive of coordinated directory", buf, 2u);
      }

      [*(a1 + 56) _writeArchiveOfDirectoryAtURL:*(a1 + 48) toURL:v22 error:&v25];
    }

    else
    {
      v18 = [MEMORY[0x1E695DFF8] fileURLWithPath:v4 isDirectory:0];
      v19 = _NSFCClaimsLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_18075C000, v19, OS_LOG_TYPE_INFO, "(ReadingForUploading) Copying cordinated flat file", buf, 2u);
      }

      [objc_opt_new() copyItemAtURL:*(a1 + 48) toURL:v18 error:&v25];
    }
  }

  else
  {
    v17 = *(a1 + 64);
    if (!v17)
    {
      v17 = [NSError errorWithDomain:@"NSCocoaErrorDomain" code:256 userInfo:0];
    }

    v25 = v17;
  }

  return (*(*(a1 + 72) + 16))();
}

uint64_t __28__NSFileAccessClaim_revoked__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *MEMORY[0x1E69E9840];
  ++*(*(*(a1 + 40) + 8) + 24);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __28__NSFileAccessClaim_revoked__block_invoke_2;
  v4[3] = &unk_1E69F6900;
  v5 = *(a1 + 32);
  return (*(a3 + 16))(a3, v4);
}

uint64_t __28__NSFileAccessClaim_revoked__block_invoke_2(uint64_t result)
{
  if (!--*(*(*(result + 40) + 8) + 24))
  {
    return [*(result + 32) devalueSelf];
  }

  return result;
}

- (id)descriptionWithIndenting:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  client = self->_client;
  if (client)
  {
    v6 = [(NSXPCConnection *)client processIdentifier];
    v7 = proc_name(v6, buffer, 0x100u);
    if (v7 < 1)
    {
      v8 = 0;
    }

    else
    {
      v8 = [[NSString alloc] initWithBytes:buffer length:v7 encoding:4];
    }

    v9 = [NSString stringWithFormat:@"%@ (%i)", v8, v6];
  }

  else
  {
    v9 = @"<this process>";
  }

  v10 = +[(NSString *)NSMutableString];
  v11 = [a3 stringByAppendingString:@"    "];
  [(NSString *)v10 appendFormat:@"%@<%@ %p> client: %@, claim ID: %@", a3, objc_opt_class(), self, v9, self->_claimID];
  if (self->_cameFromSuperarbiter)
  {
    [(NSString *)v10 appendString:@" - came from superabiter"];
  }

  purposeIDOrNil = self->_purposeIDOrNil;
  if (!purposeIDOrNil)
  {
    purposeIDOrNil = @"<nil>";
  }

  [(NSString *)v10 appendFormat:@"\n%@purposeID: %@", v11, purposeIDOrNil];
  blockageCount = self->_blockageCount;
  if (blockageCount)
  {
    [(NSString *)v10 appendFormat:@"\n%@blockage count: %i", v11, blockageCount];
  }

  if (self->_pendingClaims)
  {
    [(NSString *)v10 appendFormat:@"\n%@pending claims:", v11];
    v14 = [v11 stringByAppendingString:@"    "];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    pendingClaims = self->_pendingClaims;
    v16 = [(NSMutableOrderedSet *)pendingClaims countByEnumeratingWithState:&v33 objects:v32 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v34;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v34 != v18)
          {
            objc_enumerationMutation(pendingClaims);
          }

          -[NSString appendFormat:](v10, "appendFormat:", @"\n%@", [*(*(&v33 + 1) + 8 * i) descriptionWithIndenting:v14]);
        }

        v17 = [(NSMutableOrderedSet *)pendingClaims countByEnumeratingWithState:&v33 objects:v32 count:16];
      }

      while (v17);
    }
  }

  if ([(NSMutableArray *)self->_claimerBlockageReasons count])
  {
    [(NSString *)v10 appendFormat:@"\n%@claimer blockage reasons:", v11];
    v20 = [v11 stringByAppendingString:@"    "];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    claimerBlockageReasons = self->_claimerBlockageReasons;
    v22 = [(NSMutableArray *)claimerBlockageReasons countByEnumeratingWithState:&v28 objects:v27 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v29;
      do
      {
        for (j = 0; j != v23; ++j)
        {
          if (*v29 != v24)
          {
            objc_enumerationMutation(claimerBlockageReasons);
          }

          [(NSString *)v10 appendFormat:@"\n%@%@", v20, *(*(&v28 + 1) + 8 * j)];
        }

        v23 = [(NSMutableArray *)claimerBlockageReasons countByEnumeratingWithState:&v28 objects:v27 count:16];
      }

      while (v23);
    }
  }

  return v10;
}

- (BOOL)checkIfSymbolicLinkAtURL:(id)a3 withResolutionCount:(int64_t *)a4 andIfSoThenReevaluateSelf:(id)a5
{
  v27 = *MEMORY[0x1E69E9840];
  if (self->_claimerError)
  {
    return 0;
  }

  v24 = 0;
  if (![a3 getResourceValue:&v24 forKey:*MEMORY[0x1E695DBC8] error:0] || !objc_msgSend(v24, "BOOLValue"))
  {
    return 0;
  }

  v9 = (*a4)++;
  if (v9 > 31)
  {
    v20 = _NSFCClaimsLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v22 = [(NSFileAccessClaim *)self claimID];
      *buf = 138543362;
      v26 = v22;
      _os_log_error_impl(&dword_18075C000, v20, OS_LOG_TYPE_ERROR, "Claim %{public}@ failed symbolic link resolution due to an apparent link cycle", buf, 0xCu);
    }

    [(NSFileAccessClaim *)self setClaimerError:_NSErrorWithFilePathErrnoVariantAndExtraUserInfo(62, a3, 1, 0, 0)];
    return 0;
  }

  v10 = [a3 path];
  if (!v10)
  {
    return 0;
  }

  v11 = v10;
  v12 = objc_alloc_init(NSFileManager);
  v13 = [(NSFileManager *)v12 destinationOfSymbolicLinkAtPath:v11 error:0];
  if (v13 && (v14 = [MEMORY[0x1E695DFF8] fileURLWithPath:v13 relativeToURL:a3]) != 0)
  {
    v15 = v14;
    if (self->_blockageCount || [(NSMutableArray *)self->_claimerBlockageReasons count])
    {
      v16 = _NSFCClaimsLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        claimID = self->_claimID;
        *buf = 138543362;
        v26 = claimID;
        _os_log_error_impl(&dword_18075C000, v16, OS_LOG_TYPE_ERROR, "claim %{public}@ is trying to resolve a symbolic link too early", buf, 0xCu);
      }
    }

    ++self->_blockageCount;
    [(NSMutableArray *)self->_claimerBlockageReasons addObject:@"Initial blockage"];
    v17 = _NSFCClaimsLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = self->_claimID;
      *buf = 138543362;
      v26 = v18;
      _os_log_impl(&dword_18075C000, v17, OS_LOG_TYPE_DEFAULT, "claim %{public}@ is re-evaluating after resolving a symlink", buf, 0xCu);
    }

    [(NSFileAccessClaim *)self devalueSelf];
    (*(a5 + 2))(a5, v15);
    [(NSFileAccessClaim *)self unblock];
    v19 = 1;
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (id)purposeIDOfClaimOnItemAtLocation:(id)a3 forMessagingPresenter:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v11 = &v10;
  v12 = 0x3052000000;
  v13 = __Block_byref_object_copy__172;
  v14 = __Block_byref_object_dispose__173;
  v15 = [(NSFileAccessClaim *)self purposeID];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __76__NSFileAccessClaim_purposeIDOfClaimOnItemAtLocation_forMessagingPresenter___block_invoke;
  v9[3] = &unk_1E69F8378;
  v9[4] = self;
  v9[5] = a4;
  v9[6] = &v10;
  [a3 forEachRelevantAccessClaimPerformProcedure:v9];
  v7 = v11[5];
  _Block_object_dispose(&v10, 8);
  return v7;
}

uint64_t __76__NSFileAccessClaim_purposeIDOfClaimOnItemAtLocation_forMessagingPresenter___block_invoke(uint64_t result, id *a2)
{
  if (*(result + 32) != a2)
  {
    v3 = result;
    v4 = [a2 purposeID];
    result = [v4 isEqual:{objc_msgSend(*(v3 + 40), "reactorID")}];
    if (result)
    {
      result = [a2[11] containsObject:*(*(*(v3 + 48) + 8) + 40)];
      if (result)
      {
        *(*(*(v3 + 48) + 8) + 40) = v4;
      }
    }
  }

  return result;
}

- (void)disavowed
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = _NSFCClaimsLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    claimID = self->_claimID;
    v6 = 138543362;
    v7 = claimID;
    _os_log_impl(&dword_18075C000, v3, OS_LOG_TYPE_INFO, "Disavowing claim %{public}@ that was never granted", &v6, 0xCu);
  }

  if ([(NSMutableArray *)self->_revocationProcedures count])
  {

    self->_revocationProcedures = 0;
  }

  if ([(NSMutableOrderedSet *)self->_pendingClaims count])
  {

    self->_pendingClaims = 0;
  }

  if ([(NSMutableSet *)self->_blockingClaims count])
  {

    self->_blockingClaims = 0;
  }

  serverClaimerOrNil = self->_serverClaimerOrNil;
  if (serverClaimerOrNil)
  {

    self->_serverClaimerOrNil = 0;
  }
}

- (void)_protectIfNecessaryFileAtURL:(id)a3 withOptions:(unint64_t)a4 forReading:(BOOL)a5
{
  v11[1] = *MEMORY[0x1E69E9840];
  v7 = (a4 >> 2) & 1;
  if (!a4)
  {
    LODWORD(v7) = 1;
  }

  if (a5)
  {
    v8 = (a4 & 0xC) == 0;
  }

  else
  {
    v8 = v7;
  }

  if (![(NSMutableDictionary *)self->_fileHandlesForEvictionProtection objectForKey:?])
  {
    v11[0] = 0;
    if ([a3 getResourceValue:v11 forKey:*MEMORY[0x1E695DDA8] error:0])
    {
      if ((v8 & [v11[0] BOOLValue] & 1) == 0)
      {
        return;
      }
    }

    else if (!v8)
    {
      return;
    }

    if (!self->_fileHandlesForEvictionProtection)
    {
      self->_fileHandlesForEvictionProtection = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    if ([a3 fileSystemRepresentation])
    {
      v9 = open([a3 fileSystemRepresentation], 0x8000);
      if (v9 == -1)
      {
        [(NSMutableDictionary *)self->_fileHandlesForEvictionProtection setObject:+[NSFileHandle forKey:"fileHandleWithNullDevice"], a3];
      }

      else
      {
        v10 = [[NSFileHandle alloc] initWithFileDescriptor:v9 closeOnDealloc:1];
        [(NSMutableDictionary *)self->_fileHandlesForEvictionProtection setObject:v10 forKey:a3];
      }
    }
  }
}

@end
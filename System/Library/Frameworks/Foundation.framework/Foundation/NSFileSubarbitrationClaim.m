@interface NSFileSubarbitrationClaim
- (BOOL)evaluateSelfWithRootNode:(id)a3 checkSubarbitrability:(BOOL)a4;
- (NSFileSubarbitrationClaim)initWithCoder:(id)a3;
- (NSFileSubarbitrationClaim)initWithReadingURLs:(id)a3 options:(unint64_t)a4 writingURLs:(id)a5 options:(unint64_t)a6 claimer:(id)a7;
- (id)descriptionWithIndenting:(id)a3;
- (id)relinquishmentForWrite:(BOOL)a3 toPresenterForID:(id)a4;
- (void)dealloc;
- (void)devalueOldClaim:(id)a3;
- (void)devalueSelf;
- (void)encodeWithCoder:(id)a3;
- (void)evaluateNewClaim:(id)a3;
- (void)forwardReacquisitionForWritingClaim:(BOOL)a3 withID:(id)a4 toPresenterForID:(id)a5 usingReplySender:(id)a6;
- (void)forwardRelinquishmentForWritingClaim:(BOOL)a3 withID:(id)a4 options:(unint64_t)a5 purposeID:(id)a6 subitemURL:(id)a7 toPresenter:(id)a8 usingReplySender:(id)a9;
- (void)forwardUsingConnection:(id)a3 withServer:(id)a4 crashHandler:(id)a5;
- (void)granted;
- (void)invokeClaimer;
- (void)revoked;
@end

@implementation NSFileSubarbitrationClaim

- (NSFileSubarbitrationClaim)initWithReadingURLs:(id)a3 options:(unint64_t)a4 writingURLs:(id)a5 options:(unint64_t)a6 claimer:(id)a7
{
  v12 = [(NSFileAccessClaim *)self initWithClient:0 claimID:0 purposeID:0];
  if (v12)
  {
    v12->_readingURLs = [a3 copy];
    v12->_readingOptions = a4;
    v12->_writingURLs = [a5 copy];
    v12->_writingOptions = a6;
    v12->super._claimerOrNil = [a7 copy];
  }

  return v12;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSFileSubarbitrationClaim;
  [(NSFileAccessClaim *)&v3 dealloc];
}

- (void)encodeWithCoder:(id)a3
{
  v6 = *MEMORY[0x1E69E9840];
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"NSFileAccessClaims should only ever be encoded by XPC" userInfo:0]);
  }

  [a3 encodeObject:self->_readingURLs forKey:@"NSReadingURLsKey"];
  [a3 encodeObject:+[NSNumber numberWithUnsignedInteger:](NSNumber forKey:{"numberWithUnsignedInteger:", self->_readingOptions), @"NSReadingOptionsKey"}];
  [a3 encodeObject:self->_writingURLs forKey:@"NSWritingURLsKey"];
  [a3 encodeObject:+[NSNumber numberWithUnsignedInteger:](NSNumber forKey:{"numberWithUnsignedInteger:", self->_writingOptions), @"NSWritingOptionsKey"}];
  v5.receiver = self;
  v5.super_class = NSFileSubarbitrationClaim;
  [(NSFileAccessClaim *)&v5 encodeWithCoder:a3];
}

- (NSFileSubarbitrationClaim)initWithCoder:(id)a3
{
  v16[2] = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = NSFileSubarbitrationClaim;
  v4 = [(NSFileAccessClaim *)&v15 initWithCoder:?];
  if (v4)
  {
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"NSFileAccessClaims should only ever be decoded by XPC" userInfo:0]);
    }

    v5 = [a3 allowedClasses];
    v6 = MEMORY[0x1E695DFD8];
    v16[0] = objc_opt_class();
    v16[1] = objc_opt_class();
    v7 = [v5 setByAddingObjectsFromSet:{objc_msgSend(v6, "setWithArray:", objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v16, 2))}];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v10 = __43__NSFileSubarbitrationClaim_initWithCoder___block_invoke;
    v11 = &unk_1E69F9BA8;
    v12 = a3;
    v13 = v7;
    v14 = v4;
    v4->_readingURLs = [__43__NSFileSubarbitrationClaim_initWithCoder___block_invoke(v9 @"NSReadingURLsKey")];
    v4->_writingURLs = [v10(v9 @"NSWritingURLsKey")];
    v4->_readingOptions = [objc_msgSend(a3 decodeObjectOfClass:objc_opt_class() forKey:{@"NSReadingOptionsKey", "unsignedIntegerValue"}];
    v4->_writingOptions = [objc_msgSend(a3 decodeObjectOfClass:objc_opt_class() forKey:{@"NSWritingOptionsKey", "unsignedIntegerValue"}];
    v4->_forwardedClaimIDs = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v4->_readRelinquishmentsByPresenterID = objc_alloc_init(MEMORY[0x1E695DF90]);
    v4->_writeRelinquishmentsByPresenterID = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  return v4;
}

void *__43__NSFileSubarbitrationClaim_initWithCoder___block_invoke(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = [*(a1 + 32) decodeObjectOfClasses:*(a1 + 40) forKey:a2];
  if (v4)
  {
    if ((_NSIsNSArray() & 1) == 0)
    {
      v10 = [NSString stringWithFormat:@"NSFileSubarbitrationClaim decoded the wrong class for key %@", a2];
LABEL_13:
      v11 = v10;

      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:v11 userInfo:0]);
    }

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v13 objects:v12 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v14;
      do
      {
        v8 = 0;
        do
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v4);
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v10 = [NSString stringWithFormat:@"NSFileSubarbitrationClaim decoded the wrong class for contents of %@", a2];
            goto LABEL_13;
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v13 objects:v12 count:16];
      }

      while (v6);
    }
  }

  return v4;
}

- (id)descriptionWithIndenting:(id)a3
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = NSFileSubarbitrationClaim;
  result = [(NSFileAccessClaim *)&v6 descriptionWithIndenting:?];
  if (self->_nullified)
  {
    return [result stringByAppendingFormat:@"\n%@    (nullified)", a3];
  }

  return result;
}

- (void)forwardUsingConnection:(id)a3 withServer:(id)a4 crashHandler:(id)a5
{
  v16 = *MEMORY[0x1E69E9840];
  v9 = _NSFCClaimsLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543362;
    v15 = [(NSFileAccessClaim *)self claimID];
    _os_log_debug_impl(&dword_18075C000, v9, OS_LOG_TYPE_DEBUG, "Subarbitration claim %{public}@ blocked pending grantAccessClaim", buf, 0xCu);
  }

  [(NSFileAccessClaim *)self block];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __76__NSFileSubarbitrationClaim_forwardUsingConnection_withServer_crashHandler___block_invoke;
  v13[3] = &unk_1E69F61A0;
  v13[4] = self;
  v13[5] = a5;
  v10 = [a3 remoteObjectProxyWithErrorHandler:v13];
  v11 = [a4 endpoint];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __76__NSFileSubarbitrationClaim_forwardUsingConnection_withServer_crashHandler___block_invoke_44;
  v12[3] = &unk_1E69F3A28;
  v12[4] = self;
  [v10 grantSubarbitrationClaim:self withServer:v11 reply:v12];
}

uint64_t __76__NSFileSubarbitrationClaim_forwardUsingConnection_withServer_crashHandler___block_invoke(uint64_t a1, uint64_t a2)
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
    v9 = @"grantSubarbitrationClaim";
    v10 = 2114;
    v11 = a2;
    _os_log_error_impl(&dword_18075C000, v5, OS_LOG_TYPE_ERROR, "Sending of a '%{public}@' message was interrupted: %{public}@", &v8, 0x16u);
  }

  if ((*(*(a1 + 40) + 16))())
  {
    [*(a1 + 32) setClaimerError:{+[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", @"NSCocoaErrorDomain", 255, 0)}];
  }

  return [*(a1 + 32) unblock];
}

uint64_t __76__NSFileSubarbitrationClaim_forwardUsingConnection_withServer_crashHandler___block_invoke_44(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = _NSFCClaimsLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v6 = [*(a1 + 32) claimID];
    v7 = 138543362;
    v8 = v6;
    _os_log_debug_impl(&dword_18075C000, v4, OS_LOG_TYPE_DEBUG, "%{public}@ received grantAccessClaim reply", &v7, 0xCu);
    if (!a2)
    {
      return [*(a1 + 32) unblock];
    }

    goto LABEL_3;
  }

  if (a2)
  {
LABEL_3:
    [*(a1 + 32) setClaimerError:a2];
  }

  return [*(a1 + 32) unblock];
}

- (BOOL)evaluateSelfWithRootNode:(id)a3 checkSubarbitrability:(BOOL)a4
{
  v94 = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v90 = 0u;
    v91 = 0u;
    v92 = 0u;
    v93 = 0u;
    readingURLs = self->_readingURLs;
    v8 = [(NSArray *)readingURLs countByEnumeratingWithState:&v90 objects:v89 count:16];
    if (v8)
    {
      v9 = *v91;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v91 != v9)
          {
            objc_enumerationMutation(readingURLs);
          }

          v11 = [a3 descendantForFileURL:*(*(&v90 + 1) + 8 * i)];
          if (v11)
          {
            [v6 addObject:v11];
            [v11 addAccessClaim:self];
          }
        }

        v8 = [(NSArray *)readingURLs countByEnumeratingWithState:&v90 objects:v89 count:16];
      }

      while (v8);
    }

    self->_readingLocations = [v6 copy];

    v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v87 = 0u;
    v88 = 0u;
    v85 = 0u;
    v86 = 0u;
    writingURLs = self->_writingURLs;
    v14 = [(NSArray *)writingURLs countByEnumeratingWithState:&v85 objects:v84 count:16];
    if (v14)
    {
      v15 = *v86;
      do
      {
        for (j = 0; j != v14; ++j)
        {
          if (*v86 != v15)
          {
            objc_enumerationMutation(writingURLs);
          }

          v17 = [a3 descendantForFileURL:*(*(&v85 + 1) + 8 * j)];
          if (v17)
          {
            [v12 addObject:v17];
            [v17 addAccessClaim:self];
          }
        }

        v14 = [(NSArray *)writingURLs countByEnumeratingWithState:&v85 objects:v84 count:16];
      }

      while (v14);
    }

    self->_writingLocations = [v12 copy];

    v18 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v57[0] = 0;
    v57[1] = v57;
    v57[2] = 0x2020000000;
    v58 = 0;
    v56[0] = MEMORY[0x1E69E9820];
    v56[1] = 3221225472;
    v56[2] = __76__NSFileSubarbitrationClaim_evaluateSelfWithRootNode_checkSubarbitrability___block_invoke;
    v56[3] = &unk_1E69F9BF8;
    v56[4] = v18;
    v56[5] = self;
    v56[6] = v57;
    v42 = v18;
    if ((self->_writingOptions & 9) != 0)
    {
      v82 = 0u;
      v83 = 0u;
      v80 = 0u;
      v81 = 0u;
      obj = self->_writingLocations;
      v19 = [(NSArray *)obj countByEnumeratingWithState:&v80 objects:v79 count:16];
      if (v19)
      {
        v20 = *v81;
        do
        {
          for (k = 0; k != v19; ++k)
          {
            if (*v81 != v20)
            {
              objc_enumerationMutation(obj);
            }

            v22 = *(*(&v80 + 1) + 8 * k);
            v55[0] = MEMORY[0x1E69E9820];
            v55[1] = 3221225472;
            v55[2] = __76__NSFileSubarbitrationClaim_evaluateSelfWithRootNode_checkSubarbitrability___block_invoke_51;
            v55[3] = &unk_1E69F82B0;
            v55[4] = v56;
            [v22 forEachPresenterOfItemOrContainedItemPerformProcedure:v55];
            v54[0] = MEMORY[0x1E69E9820];
            v54[1] = 3221225472;
            v54[2] = __76__NSFileSubarbitrationClaim_evaluateSelfWithRootNode_checkSubarbitrability___block_invoke_3;
            v54[3] = &unk_1E69F8288;
            v54[4] = v22;
            v54[5] = v56;
            [v22 forEachPresenterOfContainingFilePackagePerformProcedure:v54];
          }

          v19 = [(NSArray *)obj countByEnumeratingWithState:&v80 objects:v79 count:16];
        }

        while (v19);
      }
    }

    if ((self->_readingOptions & 1) == 0)
    {
      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      obja = self->_readingLocations;
      v23 = [(NSArray *)obja countByEnumeratingWithState:&v75 objects:v74 count:16];
      if (v23)
      {
        v24 = *v76;
        do
        {
          for (m = 0; m != v23; ++m)
          {
            if (*v76 != v24)
            {
              objc_enumerationMutation(obja);
            }

            v26 = *(*(&v75 + 1) + 8 * m);
            v53[0] = MEMORY[0x1E69E9820];
            v53[1] = 3221225472;
            v53[2] = __76__NSFileSubarbitrationClaim_evaluateSelfWithRootNode_checkSubarbitrability___block_invoke_5;
            v53[3] = &unk_1E69F82B0;
            v53[4] = v56;
            [v26 forEachPresenterOfItemOrContainedItemPerformProcedure:v53];
            v52[0] = MEMORY[0x1E69E9820];
            v52[1] = 3221225472;
            v52[2] = __76__NSFileSubarbitrationClaim_evaluateSelfWithRootNode_checkSubarbitrability___block_invoke_7;
            v52[3] = &unk_1E69F9C70;
            v52[4] = v56;
            [v26 forEachPresenterOfContainingFilePackagePerformProcedure:v52];
          }

          v23 = [(NSArray *)obja countByEnumeratingWithState:&v75 objects:v74 count:16];
        }

        while (v23);
      }
    }

    if ((self->_writingOptions & 4) != 0)
    {
      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      objb = self->_writingLocations;
      v27 = [(NSArray *)objb countByEnumeratingWithState:&v70 objects:v69 count:16];
      if (v27)
      {
        v28 = *v71;
        do
        {
          for (n = 0; n != v27; ++n)
          {
            if (*v71 != v28)
            {
              objc_enumerationMutation(objb);
            }

            v30 = *(*(&v70 + 1) + 8 * n);
            v51[0] = MEMORY[0x1E69E9820];
            v51[1] = 3221225472;
            v51[2] = __76__NSFileSubarbitrationClaim_evaluateSelfWithRootNode_checkSubarbitrability___block_invoke_9;
            v51[3] = &unk_1E69F82B0;
            v51[4] = v56;
            [v30 forEachPresenterOfItemOrContainedItemPerformProcedure:v51];
            v50[0] = MEMORY[0x1E69E9820];
            v50[1] = 3221225472;
            v50[2] = __76__NSFileSubarbitrationClaim_evaluateSelfWithRootNode_checkSubarbitrability___block_invoke_11;
            v50[3] = &unk_1E69F9C70;
            v50[4] = v56;
            [v30 forEachPresenterOfContainingFilePackagePerformProcedure:v50];
          }

          v27 = [(NSArray *)objb countByEnumeratingWithState:&v70 objects:v69 count:16];
        }

        while (v27);
      }
    }

    self->_rootNode = a3;
    v49[0] = MEMORY[0x1E69E9820];
    v49[1] = 3221225472;
    v49[2] = __76__NSFileSubarbitrationClaim_evaluateSelfWithRootNode_checkSubarbitrability___block_invoke_13;
    v49[3] = &unk_1E69F9C98;
    v49[4] = self;
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    readingLocations = self->_readingLocations;
    v32 = [(NSArray *)readingLocations countByEnumeratingWithState:&v65 objects:v64 count:16];
    if (v32)
    {
      v33 = *v66;
      do
      {
        for (ii = 0; ii != v32; ++ii)
        {
          if (*v66 != v33)
          {
            objc_enumerationMutation(readingLocations);
          }

          v35 = *(*(&v65 + 1) + 8 * ii);
          v48[0] = MEMORY[0x1E69E9820];
          v48[1] = 3221225472;
          v48[2] = __76__NSFileSubarbitrationClaim_evaluateSelfWithRootNode_checkSubarbitrability___block_invoke_65;
          v48[3] = &unk_1E69F9A88;
          v48[4] = self;
          v48[5] = v49;
          [v35 forEachRelevantAccessClaimPerformProcedure:v48];
        }

        v32 = [(NSArray *)readingLocations countByEnumeratingWithState:&v65 objects:v64 count:16];
      }

      while (v32);
    }

    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    writingLocations = self->_writingLocations;
    v37 = [(NSArray *)writingLocations countByEnumeratingWithState:&v60 objects:v59 count:16];
    if (v37)
    {
      v38 = *v61;
      do
      {
        for (jj = 0; jj != v37; ++jj)
        {
          if (*v61 != v38)
          {
            objc_enumerationMutation(writingLocations);
          }

          v40 = *(*(&v60 + 1) + 8 * jj);
          v47[0] = MEMORY[0x1E69E9820];
          v47[1] = 3221225472;
          v47[2] = __76__NSFileSubarbitrationClaim_evaluateSelfWithRootNode_checkSubarbitrability___block_invoke_2_67;
          v47[3] = &unk_1E69F9A88;
          v47[4] = self;
          v47[5] = v49;
          [v40 forEachRelevantAccessClaimPerformProcedure:v47];
        }

        v37 = [(NSArray *)writingLocations countByEnumeratingWithState:&v60 objects:v59 count:16];
      }

      while (v37);
    }

    _Block_object_dispose(v57, 8);
  }

  return !a4;
}

uint64_t __76__NSFileSubarbitrationClaim_evaluateSelfWithRootNode_checkSubarbitrability___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v21 = *MEMORY[0x1E69E9840];
  v7 = [a2 reactorID];
  result = [*(a1 + 32) containsObject:v7];
  if ((result & 1) == 0)
  {
    v9 = _NSFCClaimsLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [*(a1 + 40) claimID];
      *buf = 138543874;
      v16 = v10;
      v17 = 2114;
      v18 = a3;
      v19 = 2114;
      v20 = v7;
      _os_log_impl(&dword_18075C000, v9, OS_LOG_TYPE_DEFAULT, "Subarbitration claimer %{public}@ is waiting for %{public}@ response from presenter: %{public}@", buf, 0x20u);
    }

    [*(a1 + 32) addObject:v7];
    v11 = [NSString stringWithFormat:@"Waiting for %@ response from presenter: %@", a3, v7];
    [*(a1 + 40) blockClaimerForReason:v11];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __76__NSFileSubarbitrationClaim_evaluateSelfWithRootNode_checkSubarbitrability___block_invoke_49;
    v14[3] = &unk_1E69F9BD0;
    v14[4] = v7;
    v14[5] = a3;
    v12 = *(a1 + 40);
    v13 = *(a1 + 48);
    v14[7] = v11;
    v14[8] = v13;
    v14[6] = v12;
    return (*(a4 + 16))(a4, v14);
  }

  return result;
}

uint64_t __76__NSFileSubarbitrationClaim_evaluateSelfWithRootNode_checkSubarbitrability___block_invoke_49(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = _NSFCClaimsLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = [*(a1 + 48) claimID];
    v9 = 138543874;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    v13 = 2114;
    v14 = v7;
    _os_log_impl(&dword_18075C000, v4, OS_LOG_TYPE_DEFAULT, "Presenter %{public}@ has sent a %@ response, unblocking subarbitration claimer: %{public}@", &v9, 0x20u);
  }

  if (a2 && (*(*(*(a1 + 64) + 8) + 24) & 1) == 0)
  {
    [*(a1 + 48) setClaimerError:a2];
    *(*(*(a1 + 64) + 8) + 24) = 1;
  }

  return [*(a1 + 48) unblockClaimerForReason:*(a1 + 56)];
}

uint64_t __76__NSFileSubarbitrationClaim_evaluateSelfWithRootNode_checkSubarbitrability___block_invoke_51(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8[5] = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __76__NSFileSubarbitrationClaim_evaluateSelfWithRootNode_checkSubarbitrability___block_invoke_2;
  v8[3] = &unk_1E69F9C20;
  v8[4] = a2;
  return (*(v6 + 16))(v6, a2, @"Accommodate Deletion", v8, a5, a6);
}

uint64_t __76__NSFileSubarbitrationClaim_evaluateSelfWithRootNode_checkSubarbitrability___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v7[6] = *MEMORY[0x1E69E9840];
  v4 = [*(a1 + 32) pathFromAncestor:?];
  v5 = *(a1 + 40);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __76__NSFileSubarbitrationClaim_evaluateSelfWithRootNode_checkSubarbitrability___block_invoke_4;
  v7[3] = &unk_1E69F9C48;
  v7[4] = a2;
  v7[5] = v4;
  return (*(v5 + 16))(v5, a2, @"Accommodate Deletion", v7);
}

uint64_t __76__NSFileSubarbitrationClaim_evaluateSelfWithRootNode_checkSubarbitrability___block_invoke_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8[5] = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __76__NSFileSubarbitrationClaim_evaluateSelfWithRootNode_checkSubarbitrability___block_invoke_6;
  v8[3] = &unk_1E69F9C20;
  v8[4] = a2;
  return (*(v6 + 16))(v6, a2, @"Save Changes", v8, a5, a6);
}

uint64_t __76__NSFileSubarbitrationClaim_evaluateSelfWithRootNode_checkSubarbitrability___block_invoke_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8[5] = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __76__NSFileSubarbitrationClaim_evaluateSelfWithRootNode_checkSubarbitrability___block_invoke_8;
  v8[3] = &unk_1E69F9C20;
  v8[4] = a2;
  return (*(v6 + 16))(v6, a2, @"Save Changes", v8, a5, a6);
}

uint64_t __76__NSFileSubarbitrationClaim_evaluateSelfWithRootNode_checkSubarbitrability___block_invoke_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8[5] = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __76__NSFileSubarbitrationClaim_evaluateSelfWithRootNode_checkSubarbitrability___block_invoke_10;
  v8[3] = &unk_1E69F9C20;
  v8[4] = a2;
  return (*(v6 + 16))(v6, a2, @"Save Changes", v8, a5, a6);
}

uint64_t __76__NSFileSubarbitrationClaim_evaluateSelfWithRootNode_checkSubarbitrability___block_invoke_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8[5] = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __76__NSFileSubarbitrationClaim_evaluateSelfWithRootNode_checkSubarbitrability___block_invoke_12;
  v8[3] = &unk_1E69F9C20;
  v8[4] = a2;
  return (*(v6 + 16))(v6, a2, @"Save Changes", v8, a5, a6);
}

uint64_t __76__NSFileSubarbitrationClaim_evaluateSelfWithRootNode_checkSubarbitrability___block_invoke_13(uint64_t a1, int a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a2 && [*(*(a1 + 32) + 248) count] == 1 && (objc_opt_isKindOfClass() & 1) != 0 && objc_msgSend(objc_msgSend(a3, "purposeID"), "isEqualToString:", @"com.apple.desktopservices.copyengine"))
  {
    v5 = _NSFCClaimsLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*(a1 + 32) claimID];
      v10 = 138543618;
      v11 = v6;
      v12 = 2114;
      v13 = [a3 claimID];
      v7 = "Nullified subarbitration claim %{public}@ to work around a deadlock with claim: %{public}@";
LABEL_11:
      _os_log_impl(&dword_18075C000, v5, OS_LOG_TYPE_DEFAULT, v7, &v10, 0x16u);
      return 1;
    }

    return 1;
  }

  if (*(a1 + 32) != a3 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v5 = _NSFCClaimsLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 32) claimID];
      v10 = 138543618;
      v11 = v8;
      v12 = 2114;
      v13 = [a3 claimID];
      v7 = "Nullified subarbitration claim %{public}@ to because of a blocking subarbitration claim: %{public}@";
      goto LABEL_11;
    }

    return 1;
  }

  return 0;
}

uint64_t __76__NSFileSubarbitrationClaim_evaluateSelfWithRootNode_checkSubarbitrability___block_invoke_65(uint64_t a1, void *a2)
{
  result = (*(*(a1 + 40) + 16))();
  v5 = *(a1 + 32);
  if (result)
  {
    *(v5 + 296) = 1;
  }

  else
  {

    return [a2 evaluateNewClaim:v5];
  }

  return result;
}

uint64_t __76__NSFileSubarbitrationClaim_evaluateSelfWithRootNode_checkSubarbitrability___block_invoke_2_67(uint64_t a1, void *a2)
{
  result = (*(*(a1 + 40) + 16))();
  v5 = *(a1 + 32);
  if (result)
  {
    *(v5 + 296) = 1;
  }

  else
  {

    return [a2 evaluateNewClaim:v5];
  }

  return result;
}

- (void)evaluateNewClaim:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  if (a3 != self && ![(NSFileSubarbitrationClaim *)self nullified])
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = _NSFCClaimsLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 138543618;
        v12 = [a3 claimID];
        v13 = 2114;
        v14 = [(NSFileAccessClaim *)self claimID];
        _os_log_impl(&dword_18075C000, v5, OS_LOG_TYPE_DEFAULT, "New subarbitration claim %{public}@ is blocked by subarbitration claim %{public}@", &v11, 0x16u);
      }

      v6 = self;
      v7 = a3;
LABEL_15:
      [v6 addPendingClaim:v7];
      return;
    }

    if (![(NSFileAccessClaim *)self isGranted])
    {
      v10 = _NSFCClaimsLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 138543618;
        v12 = [a3 claimID];
        v13 = 2114;
        v14 = [(NSFileAccessClaim *)self claimID];
        _os_log_impl(&dword_18075C000, v10, OS_LOG_TYPE_DEFAULT, "Claim %{public}@ is blocked by subarbitration claim %{public}@", &v11, 0x16u);
      }

      v6 = a3;
      v7 = self;
      goto LABEL_15;
    }

    v8 = [a3 claimID];
    if (([(NSMutableSet *)self->_forwardedClaimIDs containsObject:v8]& 1) == 0)
    {
      [(NSMutableSet *)self->_forwardedClaimIDs addObject:v8];
      v9 = _NSFCClaimsLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 138543618;
        v12 = [a3 claimID];
        v13 = 2114;
        v14 = [(NSFileAccessClaim *)self claimID];
        _os_log_impl(&dword_18075C000, v9, OS_LOG_TYPE_DEFAULT, "Forwarding claim %{public}@ to subarbiter for claim %{public}@ for evaluation there", &v11, 0x16u);
      }

      [a3 forwardUsingConnection:self->_subarbiterConnection crashHandler:&__block_literal_global_80];
    }
  }
}

- (void)devalueOldClaim:(id)a3
{
  if (a3 != self)
  {
    v4 = [a3 claimID];
    if ([(NSMutableSet *)self->_forwardedClaimIDs containsObject:v4])
    {
      [-[NSXPCConnection remoteObjectProxy](self->_subarbiterConnection "remoteObjectProxy")];
      forwardedClaimIDs = self->_forwardedClaimIDs;

      [(NSMutableSet *)forwardedClaimIDs removeObject:v4];
    }
  }
}

- (void)granted
{
  v20 = *MEMORY[0x1E69E9840];
  rootNode = self->_rootNode;
  v4 = _NSFCClaimsLog();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (rootNode)
  {
    if (v5)
    {
      LODWORD(buf) = 138543362;
      *(&buf + 4) = [(NSFileAccessClaim *)self claimID];
      _os_log_impl(&dword_18075C000, v4, OS_LOG_TYPE_DEFAULT, "Subarbitration claim %{public}@ granted in server", &buf, 0xCu);
    }

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __36__NSFileSubarbitrationClaim_granted__block_invoke;
    v11[3] = &unk_1E69F2C00;
    v11[4] = self;
    if ((self->_readingOptions & 0x20000) != 0)
    {
      *&buf = 0;
      *(&buf + 1) = &buf;
      v18 = 0x2020000000;
      v19 = [(NSArray *)self->_readingLocations count];
      if (*(*(&buf + 1) + 24))
      {
        v10[0] = MEMORY[0x1E69E9820];
        v10[1] = 3221225472;
        v10[2] = __36__NSFileSubarbitrationClaim_granted__block_invoke_2;
        v10[3] = &unk_1E69F9CE8;
        v10[4] = v11;
        v10[5] = &buf;
        v13 = 0u;
        v14 = 0u;
        v15 = 0u;
        v16 = 0u;
        readingLocations = self->_readingLocations;
        v7 = [(NSArray *)readingLocations countByEnumeratingWithState:&v13 objects:v12 count:16];
        if (v7)
        {
          v8 = *v14;
          do
          {
            for (i = 0; i != v7; ++i)
            {
              if (*v14 != v8)
              {
                objc_enumerationMutation(readingLocations);
              }

              [(NSFileAccessClaim *)self makeProviderOfItemAtLocation:*(*(&v13 + 1) + 8 * i) provideIfNecessaryWithOptions:self->_readingOptions thenContinue:v10];
            }

            v7 = [(NSArray *)readingLocations countByEnumeratingWithState:&v13 objects:v12 count:16];
          }

          while (v7);
        }
      }

      _Block_object_dispose(&buf, 8);
    }

    else
    {
      __36__NSFileSubarbitrationClaim_granted__block_invoke(v11);
    }
  }

  else
  {
    if (v5)
    {
      LODWORD(buf) = 138543362;
      *(&buf + 4) = [(NSFileAccessClaim *)self claimID];
      _os_log_impl(&dword_18075C000, v4, OS_LOG_TYPE_DEFAULT, "Subarbitration claim %{public}@ granted in client", &buf, 0xCu);
    }

    [(NSFileAccessClaim *)self unblockClaimerForReason:0x1EEF1EA90];
  }
}

uint64_t __36__NSFileSubarbitrationClaim_granted__block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (*(v2 + 296) == 1)
  {
    v3 = _NSFCClaimsLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [*(a1 + 32) claimID];
      *buf = 138543362;
      v32 = v4;
      _os_log_impl(&dword_18075C000, v3, OS_LOG_TYPE_DEFAULT, "Subarbitration claim %{public}@ was nullified", buf, 0xCu);
    }

    return [*(a1 + 32) unblockClaimerForReason:0x1EEF1EA90];
  }

  else
  {
    v6 = *(v2 + 264);
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __36__NSFileSubarbitrationClaim_granted__block_invoke_69;
    v30[3] = &unk_1E69F9CC0;
    v30[4] = v2;
    [v6 forEachReactorToItemOrContainedItemPerformProcedure:v30];
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v8 = v7;
    v9 = *(a1 + 32);
    if (*(v9 + 208))
    {
      [v7 addObjectsFromArray:?];
      v9 = *(a1 + 32);
    }

    if (*(v9 + 224))
    {
      [v8 addObjectsFromArray:?];
      v9 = *(a1 + 32);
    }

    [objc_msgSend(*(v9 + 240) "remoteObjectProxy")];

    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v11 = [*(a1 + 32) pendingClaims];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v12 = [v11 countByEnumeratingWithState:&v36 objects:v35 count:16];
    if (v12)
    {
      v14 = v12;
      v15 = *v37;
      *&v13 = 138543618;
      v25 = v13;
      v26 = v10;
      v27 = v11;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v37 != v15)
          {
            objc_enumerationMutation(v11);
          }

          v17 = *(*(&v36 + 1) + 8 * i);
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (([v17 isRevoked] & 1) == 0)
            {
              v18 = [v17 claimID];
              if (([*(*(a1 + 32) + 272) containsObject:v18] & 1) == 0)
              {
                v19 = _NSFCClaimsLog();
                if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
                {
                  v20 = [v17 claimID];
                  v21 = [*(a1 + 32) claimID];
                  *buf = v25;
                  v32 = v20;
                  v10 = v26;
                  v33 = 2114;
                  v34 = v21;
                  _os_log_impl(&dword_18075C000, v19, OS_LOG_TYPE_DEFAULT, "Forwarding pending claim %{public}@ to subarbiter for claim %{public}@ for evaluation there", buf, 0x16u);
                }

                [*(*(a1 + 32) + 272) addObject:{v18, v25, v26}];
                [v17 forwardUsingConnection:*(*(a1 + 32) + 240) crashHandler:&__block_literal_global_73];
                v11 = v27;
              }
            }

            [v10 addObject:{v17, v25, v26}];
          }
        }

        v14 = [v11 countByEnumeratingWithState:&v36 objects:v35 count:16];
      }

      while (v14);
    }

    [*(a1 + 32) removePendingClaims:{v10, v25, v26}];

    v22 = *(a1 + 32);
    v23 = *(v22 + 240);
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __36__NSFileSubarbitrationClaim_granted__block_invoke_74;
    v29[3] = &unk_1E69F3A28;
    v29[4] = v22;
    v24 = [v23 remoteObjectProxyWithErrorHandler:v29];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __36__NSFileSubarbitrationClaim_granted__block_invoke_78;
    v28[3] = &unk_1E69F2C00;
    v28[4] = *(a1 + 32);
    return [v24 startArbitratingWithReply:v28];
  }
}

uint64_t __36__NSFileSubarbitrationClaim_granted__block_invoke_69(uint64_t a1, void *a2)
{
  v3 = [*(*(a1 + 32) + 240) remoteObjectProxy];

  return [a2 forwardUsingProxy:v3];
}

uint64_t __36__NSFileSubarbitrationClaim_granted__block_invoke_71()
{
  v3 = *MEMORY[0x1E69E9840];
  v0 = _NSOSLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    *v2 = 0;
    _os_log_error_impl(&dword_18075C000, v0, OS_LOG_TYPE_ERROR, "A process invoked [NSFileCoordinator prepareForReadingItemsAtURLs:options:writingItemsAtURLs:options:error:byAccessor:] but stopped listening. Letting other process' file access claims proceed.", v2, 2u);
  }

  return 0;
}

uint64_t __36__NSFileSubarbitrationClaim_granted__block_invoke_74(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = _NSFCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 138543618;
    v7 = @"startArbitrating";
    v8 = 2114;
    v9 = a2;
    _os_log_error_impl(&dword_18075C000, v4, OS_LOG_TYPE_ERROR, "Sending of a '%{public}@' message was interrupted: %{public}@", &v6, 0x16u);
  }

  return [*(a1 + 32) unblockClaimerForReason:0x1EEF1EA90];
}

uint64_t __36__NSFileSubarbitrationClaim_granted__block_invoke_2(uint64_t result)
{
  v1 = *(*(result + 40) + 8);
  v2 = *(v1 + 24) - 1;
  *(v1 + 24) = v2;
  if (!v2)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

- (void)invokeClaimer
{
  v9 = *MEMORY[0x1E69E9840];
  if (self->super._claimerOrNil)
  {
    v3 = _NSFCClaimsLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v8 = [(NSFileAccessClaim *)self claimID];
      _os_log_impl(&dword_18075C000, v3, OS_LOG_TYPE_DEFAULT, "Subarbitration claim %{public}@ invoked in client", buf, 0xCu);
    }

    (*(self->super._claimerOrNil + 2))(self->super._claimerOrNil, self, [(NSFileAccessClaim *)self claimerError]);

    self->super._claimerOrNil = 0;
  }

  if (self->super._serverClaimerOrNil)
  {
    v4 = _NSFCClaimsLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [(NSFileAccessClaim *)self claimID];
      *buf = 138543362;
      v8 = v5;
      _os_log_impl(&dword_18075C000, v4, OS_LOG_TYPE_DEFAULT, "Subarbitration claim %{public}@ invoked in server", buf, 0xCu);
    }

    (*(self->super._serverClaimerOrNil + 2))(self->super._serverClaimerOrNil, 0, 0, 0, 0, [(NSFileAccessClaim *)self claimerError]);

    self->super._serverClaimerOrNil = 0;
  }

  v6.receiver = self;
  v6.super_class = NSFileSubarbitrationClaim;
  [(NSFileAccessClaim *)&v6 invokeClaimer];
}

- (void)revoked
{
  v4 = *MEMORY[0x1E69E9840];
  [(NSMutableDictionary *)self->_readRelinquishmentsByPresenterID enumerateKeysAndObjectsUsingBlock:&__block_literal_global_85];

  self->_readRelinquishmentsByPresenterID = 0;
  [(NSMutableDictionary *)self->_writeRelinquishmentsByPresenterID enumerateKeysAndObjectsUsingBlock:&__block_literal_global_87];

  self->_writeRelinquishmentsByPresenterID = 0;
  v3.receiver = self;
  v3.super_class = NSFileSubarbitrationClaim;
  [(NSFileAccessClaim *)&v3 revoked];
}

- (void)devalueSelf
{
  v24 = *MEMORY[0x1E69E9840];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  readingLocations = self->_readingLocations;
  v4 = [(NSArray *)readingLocations countByEnumeratingWithState:&v20 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v21;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(readingLocations);
        }

        [*(*(&v20 + 1) + 8 * i) removeAccessClaim:self];
      }

      v5 = [(NSArray *)readingLocations countByEnumeratingWithState:&v20 objects:v19 count:16];
    }

    while (v5);
  }

  self->_readingLocations = 0;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  writingLocations = self->_writingLocations;
  v9 = [(NSArray *)writingLocations countByEnumeratingWithState:&v15 objects:v14 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (j = 0; j != v10; ++j)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(writingLocations);
        }

        [*(*(&v15 + 1) + 8 * j) removeAccessClaim:self];
      }

      v10 = [(NSArray *)writingLocations countByEnumeratingWithState:&v15 objects:v14 count:16];
    }

    while (v10);
  }

  self->_writingLocations = 0;
  v13.receiver = self;
  v13.super_class = NSFileSubarbitrationClaim;
  [(NSFileAccessClaim *)&v13 devalueSelf];
}

- (id)relinquishmentForWrite:(BOOL)a3 toPresenterForID:(id)a4
{
  if (a3)
  {
    v5 = 288;
  }

  else
  {
    v5 = 280;
  }

  v6 = (&self->super.super.isa + v5);
  v7 = [*(&self->super.super.isa + v5) objectForKey:a4];
  if (v7)
  {
    return v7;
  }

  v8 = objc_alloc_init(NSFilePresenterRelinquishment);
  [*v6 setObject:v8 forKey:a4];
  v9 = v8;
  return v8;
}

- (void)forwardRelinquishmentForWritingClaim:(BOOL)a3 withID:(id)a4 options:(unint64_t)a5 purposeID:(id)a6 subitemURL:(id)a7 toPresenter:(id)a8 usingReplySender:(id)a9
{
  v19[6] = *MEMORY[0x1E69E9840];
  v15 = -[NSFileSubarbitrationClaim relinquishmentForWrite:toPresenterForID:](self, "relinquishmentForWrite:toPresenterForID:", a3, [a8 reactorID]);
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x3052000000;
  v19[3] = __Block_byref_object_copy__30;
  v19[4] = __Block_byref_object_dispose__30;
  v19[5] = 0;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __131__NSFileSubarbitrationClaim_forwardRelinquishmentForWritingClaim_withID_options_purposeID_subitemURL_toPresenter_usingReplySender___block_invoke;
  v17[3] = &unk_1E69F9D58;
  v18 = a3;
  v17[4] = a8;
  v17[5] = a4;
  v17[6] = a6;
  v17[7] = a7;
  v17[9] = v19;
  v17[10] = a5;
  v17[8] = v15;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __131__NSFileSubarbitrationClaim_forwardRelinquishmentForWritingClaim_withID_options_purposeID_subitemURL_toPresenter_usingReplySender___block_invoke_3;
  v16[3] = &unk_1E69F9D80;
  v16[4] = a9;
  v16[5] = v19;
  [v15 performRelinquishmentToAccessClaimIfNecessary:a4 usingBlock:v17 withReply:v16];
  _Block_object_dispose(v19, 8);
}

uint64_t __131__NSFileSubarbitrationClaim_forwardRelinquishmentForWritingClaim_withID_options_purposeID_subitemURL_toPresenter_usingReplySender___block_invoke(uint64_t a1, uint64_t a2)
{
  v11[7] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 88);
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __131__NSFileSubarbitrationClaim_forwardRelinquishmentForWritingClaim_withID_options_purposeID_subitemURL_toPresenter_usingReplySender___block_invoke_2;
  v11[3] = &unk_1E69F9D30;
  v7 = *(a1 + 64);
  v9 = *(a1 + 72);
  v8 = *(a1 + 80);
  v11[5] = a2;
  v11[6] = v9;
  v11[4] = v7;
  return [v4 forwardRelinquishmentForWritingClaim:v2 withID:v3 purposeID:v5 subitemURL:v6 options:v8 completionHandler:v11];
}

uint64_t __131__NSFileSubarbitrationClaim_forwardRelinquishmentForWritingClaim_withID_options_purposeID_subitemURL_toPresenter_usingReplySender___block_invoke_2(uint64_t a1, int a2, void *a3, uint64_t a4)
{
  [*(a1 + 32) setReacquirer:a4];
  if (a2)
  {
    v7 = a3;
  }

  else
  {
    v7 = 0;
  }

  *(*(*(a1 + 48) + 8) + 40) = v7;
  v8 = *(*(a1 + 40) + 16);

  return v8();
}

void __131__NSFileSubarbitrationClaim_forwardRelinquishmentForWritingClaim_withID_options_purposeID_subitemURL_toPresenter_usingReplySender___block_invoke_3(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();

  *(*(*(a1 + 40) + 8) + 40) = 0;
}

- (void)forwardReacquisitionForWritingClaim:(BOOL)a3 withID:(id)a4 toPresenterForID:(id)a5 usingReplySender:(id)a6
{
  v10[5] = *MEMORY[0x1E69E9840];
  v8 = [(NSFileSubarbitrationClaim *)self relinquishmentForWrite:a3 toPresenterForID:a5];
  if (v8)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __106__NSFileSubarbitrationClaim_forwardReacquisitionForWritingClaim_withID_toPresenterForID_usingReplySender___block_invoke;
    v10[3] = &unk_1E69F40C0;
    v10[4] = a6;
    [v8 removeBlockingAccessClaimID:a4 thenContinue:v10];
  }

  else if (a6)
  {
    v9 = *(a6 + 2);

    v9(a6);
  }
}

uint64_t __106__NSFileSubarbitrationClaim_forwardReacquisitionForWritingClaim_withID_toPresenterForID_usingReplySender___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

@end
@interface NSFileMultipleAccessClaim
- (BOOL)blocksClaim:(id)claim;
- (BOOL)evaluateSelfWithRootNode:(id)node checkSubarbitrability:(BOOL)subarbitrability;
- (BOOL)isBlockedByReadingItemAtLocation:(id)location options:(unint64_t)options;
- (BOOL)isBlockedByWritingItemAtLocation:(id)location options:(unint64_t)options;
- (BOOL)shouldBeRevokedPriorToInvokingAccessor;
- (BOOL)shouldCancelInsteadOfWaiting;
- (NSFileMultipleAccessClaim)initWithCoder:(id)coder;
- (NSFileMultipleAccessClaim)initWithPurposeID:(id)d intents:(id)intents claimer:(id)claimer;
- (id)allURLs;
- (void)dealloc;
- (void)devalueSelf;
- (void)encodeWithCoder:(id)coder;
- (void)forwardUsingConnection:(id)connection crashHandler:(id)handler;
- (void)granted;
- (void)invokeClaimer;
- (void)itemAtLocation:(id)location wasReplacedByItemAtLocation:(id)atLocation;
- (void)protectFilesAgainstEviction;
- (void)resolveURLsThenMaybeContinueInvokingClaimer:(id)claimer;
@end

@implementation NSFileMultipleAccessClaim

- (NSFileMultipleAccessClaim)initWithPurposeID:(id)d intents:(id)intents claimer:(id)claimer
{
  v23 = *MEMORY[0x1E69E9840];
  v7 = [(NSFileAccessClaim *)self initWithClient:0 claimID:0 purposeID:d];
  if (v7)
  {
    v7->super._claimerOrNil = [claimer copy];
    v7->_readingURLs = objc_opt_new();
    v7->_writingURLs = objc_opt_new();
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __63__NSFileMultipleAccessClaim_initWithPurposeID_intents_claimer___block_invoke;
    v17[3] = &unk_1E69F8640;
    v17[4] = v7;
    [intents enumerateObjectsUsingBlock:v17];
    v7->_readingURLsDidChange = malloc_type_calloc(1uLL, [(NSMutableArray *)v7->_readingURLs count], 0x509CE79AuLL);
    v7->_writingURLsDidChange = malloc_type_calloc(1uLL, [(NSMutableArray *)v7->_writingURLs count], 0xC7731C4AuLL);
    v7->_readingOptions = malloc_type_calloc(8uLL, [(NSMutableArray *)v7->_readingURLs count], 0x6D0E1DE6uLL);
    v7->_writingOptions = malloc_type_calloc(8uLL, [(NSMutableArray *)v7->_writingURLs count], 0x74E2AA09uLL);
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v8 = [intents countByEnumeratingWithState:&v19 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      v11 = 0;
      v12 = *v20;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(intents);
          }

          v14 = *(*(&v19 + 1) + 8 * i);
          if ([v14 isRead])
          {
            readingOptions = [v14 readingOptions];
            v7->_readingOptions[v10++] = (readingOptions << 14) & 0x20000 | readingOptions;
          }

          else
          {
            v7->_writingOptions[v11++] = [v14 writingOptions];
          }
        }

        v9 = [intents countByEnumeratingWithState:&v19 objects:v18 count:16];
      }

      while (v9);
    }
  }

  return v7;
}

uint64_t __63__NSFileMultipleAccessClaim_initWithPurposeID_intents_claimer___block_invoke(uint64_t a1, void *a2)
{
  v4 = [a2 isRead];
  v5 = 29;
  if (v4)
  {
    v5 = 28;
  }

  v6 = *(*(a1 + 32) + OBJC_IVAR___NSFileReadingClaim__url[v5]);
  v7 = [a2 URL];

  return [v6 addObject:v7];
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  free(self->_readingOptions);
  free(self->_writingOptions);
  free(self->_readingURLsDidChange);
  free(self->_writingURLsDidChange);

  v3.receiver = self;
  v3.super_class = NSFileMultipleAccessClaim;
  [(NSFileAccessClaim *)&v3 dealloc];
}

- (void)encodeWithCoder:(id)coder
{
  v6 = *MEMORY[0x1E69E9840];
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"NSFileAccessClaims should only ever be encoded by XPC" userInfo:0]);
  }

  [coder encodeObject:pairsForURLs(self->_readingURLs) forKey:@"NSReadingURLPairsKey"];
  [coder encodeBytes:self->_readingOptions length:8 * -[NSMutableArray count](self->_readingURLs forKey:{"count"), @"NSReadingOptionsKey"}];
  [coder encodeObject:pairsForURLs(self->_writingURLs) forKey:@"NSWritingURLPairsKey"];
  [coder encodeBytes:self->_writingOptions length:8 * -[NSMutableArray count](self->_writingURLs forKey:{"count"), @"NSWritingOptionsKey"}];
  v5.receiver = self;
  v5.super_class = NSFileMultipleAccessClaim;
  [(NSFileAccessClaim *)&v5 encodeWithCoder:coder];
}

- (NSFileMultipleAccessClaim)initWithCoder:(id)coder
{
  v28[2] = *MEMORY[0x1E69E9840];
  v27.receiver = self;
  v27.super_class = NSFileMultipleAccessClaim;
  v4 = [(NSFileAccessClaim *)&v27 initWithCoder:?];
  if (v4)
  {
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

      v17 = MEMORY[0x1E695DF30];
      v18 = *MEMORY[0x1E695D930];
      v19 = @"NSFileAccessClaims should only ever be decoded by XPC";
      goto LABEL_16;
    }

    allowedClasses = [coder allowedClasses];
    v6 = MEMORY[0x1E695DFD8];
    v28[0] = objc_opt_class();
    v28[1] = objc_opt_class();
    v7 = [allowedClasses setByAddingObjectsFromSet:{objc_msgSend(v6, "setWithArray:", objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v28, 2))}];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v22 = __43__NSFileMultipleAccessClaim_initWithCoder___block_invoke;
    v23 = &unk_1E69F8668;
    coderCopy = coder;
    v25 = v7;
    v26 = v4;
    v4->_readingURLs = [__43__NSFileMultipleAccessClaim_initWithCoder___block_invoke(v21 @"NSReadingURLPairsKey")];
    v4->_writingURLs = [v22(v21 @"NSWritingURLPairsKey")];
    v8 = 8 * [(NSMutableArray *)v4->_readingURLs count];
    if (v8)
    {
      v20 = 0;
      v9 = [coder decodeBytesForKey:@"NSReadingOptionsKey" returnedLength:&v20];
      if (v20 != v8)
      {

        v17 = MEMORY[0x1E695DF30];
        v18 = *MEMORY[0x1E695D930];
        v19 = @"NSFileMultipleAccessClaim failed to properly decode NSReadingOptionsKey";
        goto LABEL_16;
      }

      v10 = v9;
      v11 = malloc_type_malloc(v8, 0x17B37729uLL);
      v4->_readingOptions = v11;
      if (v11)
      {
        memcpy(v11, v10, v8);
      }
    }

    v12 = 8 * [(NSMutableArray *)v4->_writingURLs count];
    if (!v12)
    {
LABEL_11:
      v4->_readingURLsDidChange = malloc_type_calloc(1uLL, [(NSMutableArray *)v4->_readingURLs count], 0x7C0CC14CuLL);
      v4->_writingURLsDidChange = malloc_type_calloc(1uLL, [(NSMutableArray *)v4->_writingURLs count], 0x6512CDBAuLL);
      return v4;
    }

    v20 = 0;
    v13 = [coder decodeBytesForKey:@"NSWritingOptionsKey" returnedLength:&v20];
    if (v20 == v12)
    {
      v14 = v13;
      v15 = malloc_type_malloc(v12, 0x35CA26CFuLL);
      v4->_writingOptions = v15;
      if (v15)
      {
        memcpy(v15, v14, v12);
      }

      goto LABEL_11;
    }

    v17 = MEMORY[0x1E695DF30];
    v18 = *MEMORY[0x1E695D930];
    v19 = @"NSFileMultipleAccessClaim failed to properly decode NSWritingOptionsKey";
LABEL_16:
    objc_exception_throw([v17 exceptionWithName:v18 reason:v19 userInfo:0]);
  }

  return v4;
}

void *__43__NSFileMultipleAccessClaim_initWithCoder___block_invoke(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = [*(a1 + 32) decodeObjectOfClasses:*(a1 + 40) forKey:a2];
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  if (v4)
  {
    if ((_NSIsNSArray() & 1) == 0)
    {
      v12 = [NSString stringWithFormat:@"NSFileMultipleAccessClaim decoded the wrong class for key %@", a2];
LABEL_13:
      v13 = v12;

      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:v13 userInfo:0]);
    }

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = [v4 countByEnumeratingWithState:&v15 objects:v14 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      do
      {
        v9 = 0;
        do
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v4);
          }

          v10 = *(*(&v15 + 1) + 8 * v9);
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v12 = [NSString stringWithFormat:@"NSFileMultipleAccessClaim decoded the wrong class for contents of %@", a2];
            goto LABEL_13;
          }

          [v5 addObject:{objc_msgSend(v10, "URL")}];
          ++v9;
        }

        while (v7 != v9);
        v7 = [v4 countByEnumeratingWithState:&v15 objects:v14 count:16];
      }

      while (v7);
    }
  }

  return v5;
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
  v10[2] = __65__NSFileMultipleAccessClaim_forwardUsingConnection_crashHandler___block_invoke;
  v10[3] = &unk_1E69F61A0;
  v10[4] = self;
  v10[5] = handler;
  v8 = [connection remoteObjectProxyWithErrorHandler:v10];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __65__NSFileMultipleAccessClaim_forwardUsingConnection_crashHandler___block_invoke_474;
  v9[3] = &unk_1E69F83C0;
  v9[4] = self;
  [v8 grantAccessClaim:self withReply:v9];
}

uint64_t __65__NSFileMultipleAccessClaim_forwardUsingConnection_crashHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = _NSFCClaimsLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v9 = [*(a1 + 32) claimID];
    v10 = 138543618;
    v11 = v9;
    v12 = 2114;
    v13 = a2;
    _os_log_error_impl(&dword_18075C000, v4, OS_LOG_TYPE_ERROR, "%{public}@ grantAccessClaim message failed: %{public}@", &v10, 0x16u);
  }

  v5 = _NSFCLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v10 = 138543618;
    v11 = @"grantAccessClaim";
    v12 = 2114;
    v13 = a2;
    _os_log_error_impl(&dword_18075C000, v5, OS_LOG_TYPE_ERROR, "Sending of a '%{public}@' message was interrupted: %{public}@", &v10, 0x16u);
  }

  if ((*(*(a1 + 40) + 16))())
  {
    v6 = 208;
    if ([*(*(a1 + 32) + 208) count])
    {
      v7 = 256;
    }

    else
    {
      v6 = 232;
      v7 = 512;
    }

    [*(a1 + 32) setClaimerError:{_NSErrorWithFilePath(v7, objc_msgSend(*(*(a1 + 32) + v6), "objectAtIndex:", 0))}];
  }

  return [*(a1 + 32) unblock];
}

uint64_t __65__NSFileMultipleAccessClaim_forwardUsingConnection_crashHandler___block_invoke_474(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v23 = *MEMORY[0x1E69E9840];
  v12 = _NSFCClaimsLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v14 = [*(a1 + 32) claimID];
    *buf = 138543362;
    v20 = v14;
    _os_log_debug_impl(&dword_18075C000, v12, OS_LOG_TYPE_DEBUG, "%{public}@ received grantAccessClaim reply", buf, 0xCu);
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
      v16 = [*(a1 + 32) claimID];
      *buf = 138543618;
      v20 = v16;
      v21 = 2114;
      v22 = a6;
      _os_log_error_impl(&dword_18075C000, v13, OS_LOG_TYPE_ERROR, "%{public}@ grantAccessClaim reply is an error: %{public}@", buf, 0x16u);
    }

    [*(a1 + 32) setClaimerError:a6];
    return [*(a1 + 32) unblock];
  }

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __65__NSFileMultipleAccessClaim_forwardUsingConnection_crashHandler___block_invoke_475;
  v18[3] = &unk_1E69F8690;
  v18[4] = *(a1 + 32);
  [a2 enumerateObjectsUsingBlock:v18];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __65__NSFileMultipleAccessClaim_forwardUsingConnection_crashHandler___block_invoke_2;
  v17[3] = &unk_1E69F8690;
  v17[4] = *(a1 + 32);
  [a3 enumerateObjectsUsingBlock:v17];
  if (a4)
  {

    *(*(a1 + 32) + 176) = [a4 copy];
  }

  [*(a1 + 32) setShouldEnableMaterializationDuringAccessorBlock:a5];
  return [*(a1 + 32) unblock];
}

uint64_t __65__NSFileMultipleAccessClaim_forwardUsingConnection_crashHandler___block_invoke_475(uint64_t a1, void *a2, uint64_t a3)
{
  result = objc_opt_isKindOfClass();
  if (result)
  {
    result = [*(*(a1 + 32) + 208) replaceObjectAtIndex:a3 withObject:{objc_msgSend(a2, "URL")}];
    *(*(*(a1 + 32) + 224) + a3) = 1;
  }

  return result;
}

uint64_t __65__NSFileMultipleAccessClaim_forwardUsingConnection_crashHandler___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  result = objc_opt_isKindOfClass();
  if (result)
  {
    result = [*(*(a1 + 32) + 232) replaceObjectAtIndex:a3 withObject:{objc_msgSend(a2, "URL")}];
    *(*(*(a1 + 32) + 248) + a3) = 1;
  }

  return result;
}

- (BOOL)evaluateSelfWithRootNode:(id)node checkSubarbitrability:(BOOL)subarbitrability
{
  subarbitrabilityCopy = subarbitrability;
  v84 = *MEMORY[0x1E69E9840];
  v49 = *&byte_1EEEFD650[16];
  v50 = *byte_1EEEFD650;
  callBacks = *byte_1EEEFD650;
  v7 = *&byte_1EEEFD650[32];
  v8 = CFArrayCreateMutable(0, 0, &callBacks);
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  readingURLs = self->_readingURLs;
  v10 = [(NSMutableArray *)readingURLs countByEnumeratingWithState:&v80 objects:v79 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v81;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v81 != v12)
        {
          objc_enumerationMutation(readingURLs);
        }

        v14 = [node descendantForFileURL:*(*(&v80 + 1) + 8 * i)];
        if (v14)
        {
          v15 = v14;
          if (subarbitrabilityCopy && ![v14 itemIsSubarbitrable])
          {
            v35 = v15;
LABEL_46:
            [v35 removeSelfIfUseless];
            return 0;
          }

          [(__CFArray *)v8 addObject:v15];
        }
      }

      v11 = [(NSMutableArray *)readingURLs countByEnumeratingWithState:&v80 objects:v79 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  *&callBacks.version = v50;
  *&callBacks.release = v49;
  callBacks.equal = v7;
  v16 = CFArrayCreateMutable(0, 0, &callBacks);
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  writingURLs = self->_writingURLs;
  v18 = [(NSMutableArray *)writingURLs countByEnumeratingWithState:&v75 objects:v74 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v76;
    while (2)
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v76 != v20)
        {
          objc_enumerationMutation(writingURLs);
        }

        v22 = [node descendantForFileURL:*(*(&v75 + 1) + 8 * j)];
        if (v22)
        {
          v23 = v22;
          if (subarbitrabilityCopy && ![v22 itemIsSubarbitrable])
          {
            v35 = v23;
            goto LABEL_46;
          }

          [(__CFArray *)v16 addObject:v23];
        }
      }

      v19 = [(NSMutableArray *)writingURLs countByEnumeratingWithState:&v75 objects:v74 count:16];
      if (v19)
      {
        continue;
      }

      break;
    }
  }

  callBacks.version = 0;
  if (![(NSFileAccessClaim *)self canAccessLocations:v8 forReading:1 error:&callBacks]|| ![(NSFileAccessClaim *)self canAccessLocations:v16 forReading:0 error:&callBacks])
  {
    [(NSFileAccessClaim *)self setClaimerError:callBacks.version];
    return 1;
  }

  self->_readingLocations = v8;
  self->_writingLocations = v16;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  readingLocations = self->_readingLocations;
  v25 = [(NSMutableArray *)readingLocations countByEnumeratingWithState:&v70 objects:v69 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v71;
    do
    {
      for (k = 0; k != v26; ++k)
      {
        if (*v71 != v27)
        {
          objc_enumerationMutation(readingLocations);
        }

        [*(*(&v70 + 1) + 8 * k) addAccessClaim:self];
      }

      v26 = [(NSMutableArray *)readingLocations countByEnumeratingWithState:&v70 objects:v69 count:16];
    }

    while (v26);
  }

  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  writingLocations = self->_writingLocations;
  v30 = [(NSMutableArray *)writingLocations countByEnumeratingWithState:&v65 objects:v64 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v66;
    do
    {
      for (m = 0; m != v31; ++m)
      {
        if (*v66 != v32)
        {
          objc_enumerationMutation(writingLocations);
        }

        [*(*(&v65 + 1) + 8 * m) addAccessClaim:self];
      }

      v31 = [(NSMutableArray *)writingLocations countByEnumeratingWithState:&v65 objects:v64 count:16];
    }

    while (v31);
  }

  if ([(NSMutableArray *)self->_readingURLs count])
  {
    v34 = 0;
    while ((self->_readingOptions[v34] & 2) == 0)
    {
      if (++v34 >= [(NSMutableArray *)self->_readingURLs count])
      {
        goto LABEL_50;
      }
    }

    self->_rootNode = node;
  }

LABEL_50:
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v37 = self->_readingLocations;
  v38 = [(NSMutableArray *)v37 countByEnumeratingWithState:&v60 objects:v59 count:16];
  if (v38)
  {
    v39 = v38;
    v40 = *v61;
    do
    {
      for (n = 0; n != v39; ++n)
      {
        if (*v61 != v40)
        {
          objc_enumerationMutation(v37);
        }

        v42 = *(*(&v60 + 1) + 8 * n);
        v52[0] = MEMORY[0x1E69E9820];
        v52[1] = 3221225472;
        v52[2] = __76__NSFileMultipleAccessClaim_evaluateSelfWithRootNode_checkSubarbitrability___block_invoke;
        v52[3] = &unk_1E69F83E8;
        v52[4] = self;
        [v42 forEachRelevantAccessClaimForEvaluatingAgainstClaim:self performProcedure:v52];
      }

      v39 = [(NSMutableArray *)v37 countByEnumeratingWithState:&v60 objects:v59 count:16];
    }

    while (v39);
  }

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v43 = self->_writingLocations;
  v44 = [(NSMutableArray *)v43 countByEnumeratingWithState:&v55 objects:v54 count:16];
  if (!v44)
  {
    return 1;
  }

  v45 = v44;
  v46 = *v56;
  do
  {
    for (ii = 0; ii != v45; ++ii)
    {
      if (*v56 != v46)
      {
        objc_enumerationMutation(v43);
      }

      v48 = *(*(&v55 + 1) + 8 * ii);
      v51[0] = MEMORY[0x1E69E9820];
      v51[1] = 3221225472;
      v51[2] = __76__NSFileMultipleAccessClaim_evaluateSelfWithRootNode_checkSubarbitrability___block_invoke_2;
      v51[3] = &unk_1E69F83E8;
      v51[4] = self;
      [v48 forEachRelevantAccessClaimForEvaluatingAgainstClaim:self performProcedure:v51];
    }

    v45 = [(NSMutableArray *)v43 countByEnumeratingWithState:&v55 objects:v54 count:16];
    result = 1;
  }

  while (v45);
  return result;
}

- (BOOL)isBlockedByReadingItemAtLocation:(id)location options:(unint64_t)options
{
  v12 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  writingLocations = self->_writingLocations;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __70__NSFileMultipleAccessClaim_isBlockedByReadingItemAtLocation_options___block_invoke;
  v7[3] = &unk_1E69F86B8;
  v7[4] = self;
  v7[5] = location;
  v7[6] = &v8;
  v7[7] = options;
  [(NSMutableArray *)writingLocations enumerateObjectsUsingBlock:v7];
  v5 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v5;
}

uint64_t __70__NSFileMultipleAccessClaim_isBlockedByReadingItemAtLocation_options___block_invoke(void *a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = [objc_opt_class() canReadingItemAtLocation:a1[5] options:a1[7] safelyOverlapNewWriting:1 ofItemAtLocation:a2 options:*(*(a1[4] + 240) + 8 * a3)];
  if ((result & 1) == 0)
  {
    *(*(a1[6] + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

- (BOOL)isBlockedByWritingItemAtLocation:(id)location options:(unint64_t)options
{
  v18 = *MEMORY[0x1E69E9840];
  v7 = objc_opt_class();
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  readingLocations = self->_readingLocations;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __70__NSFileMultipleAccessClaim_isBlockedByWritingItemAtLocation_options___block_invoke;
  v13[3] = &unk_1E69F86E0;
  v13[4] = v7;
  v13[5] = self;
  v13[7] = &v14;
  v13[8] = options;
  v13[6] = location;
  [(NSMutableArray *)readingLocations enumerateObjectsUsingBlock:v13];
  if (v15[3])
  {
    v9 = 1;
  }

  else
  {
    writingLocations = self->_writingLocations;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __70__NSFileMultipleAccessClaim_isBlockedByWritingItemAtLocation_options___block_invoke_2;
    v12[3] = &unk_1E69F86E0;
    v12[4] = v7;
    v12[5] = self;
    v12[6] = location;
    v12[7] = &v14;
    v12[8] = options;
    [(NSMutableArray *)writingLocations enumerateObjectsUsingBlock:v12];
    v9 = *(v15 + 24);
  }

  _Block_object_dispose(&v14, 8);
  return v9 & 1;
}

uint64_t __70__NSFileMultipleAccessClaim_isBlockedByWritingItemAtLocation_options___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = [*(a1 + 32) canReadingItemAtLocation:a2 options:*(*(*(a1 + 40) + 216) + 8 * a3) safelyOverlapNewWriting:0 ofItemAtLocation:*(a1 + 48) options:*(a1 + 64)];
  if ((result & 1) == 0)
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

uint64_t __70__NSFileMultipleAccessClaim_isBlockedByWritingItemAtLocation_options___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = [*(a1 + 32) canNewWriteOfItemAtLocation:a2 options:*(*(*(a1 + 40) + 240) + 8 * a3) safelyOverlapExistingWriteOfItemAtLocation:*(a1 + 48) options:*(a1 + 64)];
  if ((result & 1) == 0)
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

- (void)granted
{
  v26 = *MEMORY[0x1E69E9840];
  if (self->_readingLocations || self->_writingLocations)
  {
    v3 = atomic_load(&_NSFCSubarbitrationCount);
    if (v3 < 1 || (v17 = atomic_load(_NSFCDisableLogSuppression), (v17 & 1) != 0) || (v18 = atomic_load(&_NSFCSubarbitratedClaimCount), v18 <= 99))
    {
      v4 = _NSFCClaimsLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        claimID = [(NSFileAccessClaim *)self claimID];
        _os_log_impl(&dword_18075C000, v4, OS_LOG_TYPE_DEFAULT, "Claim %{public}@ granted in server", buf, 0xCu);
      }
    }

    array = [MEMORY[0x1E695DF70] array];
    v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    writingLocations = self->_writingLocations;
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __36__NSFileMultipleAccessClaim_granted__block_invoke;
    v23[3] = &unk_1E69F8758;
    v23[4] = self;
    v23[5] = v6;
    v23[6] = array;
    [(NSMutableArray *)writingLocations enumerateObjectsUsingBlock:v23];
    readingLocations = self->_readingLocations;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __36__NSFileMultipleAccessClaim_granted__block_invoke_4;
    v22[3] = &unk_1E69F8758;
    v22[4] = self;
    v22[5] = v6;
    v22[6] = array;
    [(NSMutableArray *)readingLocations enumerateObjectsUsingBlock:v22];

    v9 = self->_readingLocations;
    readingOptions = self->_readingOptions;
    v11 = self->_writingLocations;
    writingOptions = self->_writingOptions;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __36__NSFileMultipleAccessClaim_granted__block_invoke_7;
    v21[3] = &unk_1E69F8460;
    v21[4] = array;
    [(NSFileAccessClaim *)self makeProvidersProvideItemsForReadingLocations:v9 options:readingOptions andWritingLocationsIfNecessary:v11 options:writingOptions thenContinue:v21];
    if (self->_writingLocations)
    {
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __36__NSFileMultipleAccessClaim_granted__block_invoke_8;
      v20[3] = &unk_1E69F2C00;
      v20[4] = self;
      [(NSFileAccessClaim *)self whenRevokedPerformProcedure:v20];
    }
  }

  else
  {
    client = self->super._client;
    v14 = _NSFCClaimsLog();
    v15 = v14;
    if (client)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        claimID = [(NSFileAccessClaim *)self claimID];
        _os_log_error_impl(&dword_18075C000, v15, OS_LOG_TYPE_ERROR, "Claim %{public}@ can't be granted in daemon", buf, 0xCu);
      }
    }

    else
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        claimID = [(NSFileAccessClaim *)self claimID];
        _os_log_impl(&dword_18075C000, v15, OS_LOG_TYPE_DEFAULT, "Claim %{public}@ granted in client", buf, 0xCu);
      }

      v16 = [MEMORY[0x1E695DEC8] arrayWithArray:self->_readingURLs];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __36__NSFileMultipleAccessClaim_granted__block_invoke_477;
      v19[3] = &unk_1E69F8640;
      v19[4] = self;
      [v16 enumerateObjectsUsingBlock:v19];
    }
  }

  [(NSFileAccessClaim *)self unblockClaimerForReason:@"Initial blockage"];
}

uint64_t __36__NSFileMultipleAccessClaim_granted__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = *(a1 + 32);
  v6 = *(v5[30] + 8 * a3);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __36__NSFileMultipleAccessClaim_granted__block_invoke_2;
  v8[3] = &unk_1E69F8730;
  v9 = v4;
  v10 = a2;
  v11 = v6;
  return [*(a1 + 48) addObjectsFromArray:{objc_msgSend(v5, "prepareAndBlockOnClaimRelinquishmentForPresentersOfItemAtLocation:orContainedItem:withRelinquishProcedureGetter:", a2, (v6 & 0x13000B) != 0, v8)}];
}

id __36__NSFileMultipleAccessClaim_granted__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v9[9] = *MEMORY[0x1E69E9840];
  if (![*(a1 + 32) shouldWritingWithOptions:*(a1 + 56) causePresenterToRelinquish:a2])
  {
    return 0;
  }

  [*(a1 + 40) addObject:{objc_msgSend(a2, "reactorID")}];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __36__NSFileMultipleAccessClaim_granted__block_invoke_3;
  v9[3] = &unk_1E69F8708;
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v9[4] = *(a1 + 32);
  v9[5] = v6;
  v9[7] = a3;
  v9[8] = v7;
  v9[6] = a2;
  return [v9 copy];
}

uint64_t __36__NSFileMultipleAccessClaim_granted__block_invoke_3(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) purposeIDOfClaimOnItemAtLocation:*(a1 + 40) forMessagingPresenter:*(a1 + 48)];
  v5 = *(a1 + 48);
  v6 = [*(a1 + 32) claimID];
  v8 = *(a1 + 56);
  v7 = *(a1 + 64);

  return [v5 relinquishToWritingClaimWithID:v6 options:v7 purposeID:v4 subitemPath:v8 resultHandler:a2];
}

uint64_t __36__NSFileMultipleAccessClaim_granted__block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = *(a1 + 32);
  v6 = *(v5[27] + 8 * a3);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __36__NSFileMultipleAccessClaim_granted__block_invoke_5;
  v8[3] = &unk_1E69F87A8;
  v10 = v6;
  v9 = v4;
  return [*(a1 + 48) addObjectsFromArray:{objc_msgSend(v5, "prepareAndBlockOnClaimRelinquishmentForPresentersOfItemAtLocation:orContainedItem:withRelinquishProcedureGetter:", a2, 0, v8)}];
}

id __36__NSFileMultipleAccessClaim_granted__block_invoke_5(uint64_t a1, void *a2)
{
  v6[7] = *MEMORY[0x1E69E9840];
  if (![*(a1 + 32) shouldReadingWithOptions:*(a1 + 48) causePresenterToRelinquish:a2] || (objc_msgSend(*(a1 + 40), "containsObject:", objc_msgSend(a2, "reactorID")) & 1) != 0)
  {
    return 0;
  }

  [*(a1 + 40) addObject:{objc_msgSend(a2, "reactorID")}];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __36__NSFileMultipleAccessClaim_granted__block_invoke_6;
  v6[3] = &unk_1E69F8780;
  v5 = *(a1 + 32);
  v6[4] = a2;
  v6[5] = v5;
  v6[6] = *(a1 + 48);
  return [v6 copy];
}

uint64_t __36__NSFileMultipleAccessClaim_granted__block_invoke_6(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) claimID];
  v6 = *(a1 + 48);
  v7 = [*(a1 + 40) purposeID];

  return [v4 relinquishToReadingClaimWithID:v5 options:v6 purposeID:v7 resultHandler:a2];
}

uint64_t __36__NSFileMultipleAccessClaim_granted__block_invoke_7(uint64_t a1, int a2)
{
  v2 = &selRef_performRelinquish;
  v3 = *(a1 + 32);
  if (!a2)
  {
    v2 = &selRef_abandon;
  }

  return [v3 makeObjectsPerformSelector:*v2];
}

uint64_t __36__NSFileMultipleAccessClaim_granted__block_invoke_8(uint64_t a1)
{
  v4[5] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = *(v1 + 264);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __36__NSFileMultipleAccessClaim_granted__block_invoke_9;
  v4[3] = &unk_1E69F87D0;
  v4[4] = v1;
  return [v2 enumerateObjectsUsingBlock:v4];
}

uint64_t __36__NSFileMultipleAccessClaim_granted__block_invoke_9(uint64_t a1, void *a2, uint64_t a3)
{
  result = [*(a1 + 32) shouldInformProvidersAboutEndOfWriteWithOptions:*(*(*(a1 + 32) + 240) + 8 * a3)];
  if (result)
  {
    v6 = [a2 itemProvider];
    v7 = *(a1 + 32);

    return [v6 observeEndOfWriteAtLocation:a2 forAccessClaim:v7];
  }

  return result;
}

void *__36__NSFileMultipleAccessClaim_granted__block_invoke_477(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = *MEMORY[0x1E69E9840];
  result = *(a1 + 32);
  if ((*(result[27] + 8 * a3) & 8) != 0)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __36__NSFileMultipleAccessClaim_granted__block_invoke_2_478;
    v4[3] = &unk_1E69F6820;
    v4[4] = result;
    v4[5] = a3;
    return [result prepareItemForUploadingFromURL:a2 thenContinue:v4];
  }

  return result;
}

uint64_t __36__NSFileMultipleAccessClaim_granted__block_invoke_2_478(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    *(*(*(a1 + 32) + 224) + *(a1 + 40)) = 1;
    v4 = *(*(a1 + 32) + 208);

    return [v4 replaceObjectAtIndex:? withObject:?];
  }

  else
  {
    v7 = _NSFCClaimsLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [*(a1 + 32) claimID];
      v9 = 138543618;
      v10 = v8;
      v11 = 2112;
      v12 = a3;
      _os_log_error_impl(&dword_18075C000, v7, OS_LOG_TYPE_ERROR, "Claim %{public}@ failed during preparing for uploading due to error: %@", &v9, 0x16u);
    }

    return [*(a1 + 32) setClaimerError:a3];
  }
}

- (void)resolveURLsThenMaybeContinueInvokingClaimer:(id)claimer
{
  v10[5] = *MEMORY[0x1E69E9840];
  if ([(NSFileAccessClaim *)self didWait])
  {
    readingLocations = self->_readingLocations;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __73__NSFileMultipleAccessClaim_resolveURLsThenMaybeContinueInvokingClaimer___block_invoke;
    v10[3] = &unk_1E69F8640;
    v10[4] = self;
    [(NSMutableArray *)readingLocations enumerateObjectsUsingBlock:v10];
    writingLocations = self->_writingLocations;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __73__NSFileMultipleAccessClaim_resolveURLsThenMaybeContinueInvokingClaimer___block_invoke_2;
    v9[3] = &unk_1E69F8640;
    v9[4] = self;
    [(NSMutableArray *)writingLocations enumerateObjectsUsingBlock:v9];
  }

  if ([(NSFileAccessClaim *)self claimerError])
  {
    (*(claimer + 2))(claimer, 0, 0);
  }

  else
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __73__NSFileMultipleAccessClaim_resolveURLsThenMaybeContinueInvokingClaimer___block_invoke_3;
    v8[3] = &unk_1E69F84B0;
    v8[4] = self;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __73__NSFileMultipleAccessClaim_resolveURLsThenMaybeContinueInvokingClaimer___block_invoke_6;
    v7[3] = &unk_1E69F5678;
    v7[4] = self;
    v7[5] = claimer;
    __73__NSFileMultipleAccessClaim_resolveURLsThenMaybeContinueInvokingClaimer___block_invoke_3(v8, v7);
  }
}

uint64_t __73__NSFileMultipleAccessClaim_resolveURLsThenMaybeContinueInvokingClaimer___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  result = [a2 standardizedURL];
  if (result)
  {
    result = [*(*(a1 + 32) + 208) replaceObjectAtIndex:a3 withObject:result];
  }

  *(*(*(a1 + 32) + 224) + a3) = 1;
  return result;
}

uint64_t __73__NSFileMultipleAccessClaim_resolveURLsThenMaybeContinueInvokingClaimer___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  result = [a2 standardizedURL];
  if (result)
  {
    result = [*(*(a1 + 32) + 232) replaceObjectAtIndex:a3 withObject:result];
  }

  *(*(*(a1 + 32) + 248) + a3) = 1;
  return result;
}

void __73__NSFileMultipleAccessClaim_resolveURLsThenMaybeContinueInvokingClaimer___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v3 = *(a1 + 32);
  if (!*(v3 + 272) || (v5 = [*(v3 + 208) copy], v6[0] = MEMORY[0x1E69E9820], v6[1] = 3221225472, v6[2] = __73__NSFileMultipleAccessClaim_resolveURLsThenMaybeContinueInvokingClaimer___block_invoke_4, v6[3] = &unk_1E69F8820, v6[4] = *(a1 + 32), v6[5] = &v7, objc_msgSend(v5, "enumerateObjectsUsingBlock:", v6), (v8[3] & 1) == 0))
  {
    (*(a2 + 16))(a2);
  }

  _Block_object_dispose(&v7, 8);
}

void *__73__NSFileMultipleAccessClaim_resolveURLsThenMaybeContinueInvokingClaimer___block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v7[6] = *MEMORY[0x1E69E9840];
  result = *(a1 + 32);
  if (result[35] == a3)
  {
    if ((*(result[27] + 8 * a3) & 2) != 0)
    {
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __73__NSFileMultipleAccessClaim_resolveURLsThenMaybeContinueInvokingClaimer___block_invoke_5;
      v7[3] = &unk_1E69F87F8;
      v7[4] = result;
      v7[5] = a3;
      result = [result checkIfSymbolicLinkAtURL:a2 withResolutionCount:result + 36 andIfSoThenReevaluateSelf:v7];
      *(*(*(a1 + 40) + 8) + 24) = result;
      if (*(*(*(a1 + 40) + 8) + 24) == 1)
      {
        *a4 = 1;
      }

      else
      {
        ++*(*(a1 + 32) + 280);
        *(*(a1 + 32) + 288) = 0;
      }
    }

    else
    {
      result[35] = a3 + 1;
    }
  }

  return result;
}

uint64_t __73__NSFileMultipleAccessClaim_resolveURLsThenMaybeContinueInvokingClaimer___block_invoke_5(uint64_t a1, uint64_t a2)
{
  [*(*(a1 + 32) + 208) replaceObjectAtIndex:*(a1 + 40) withObject:a2];
  *(*(*(a1 + 32) + 224) + *(a1 + 40)) = 1;
  v3 = *(a1 + 32);
  v4 = v3[34];

  return [v3 evaluateSelfWithRootNode:v4 checkSubarbitrability:0];
}

void __73__NSFileMultipleAccessClaim_resolveURLsThenMaybeContinueInvokingClaimer___block_invoke_6(uint64_t a1)
{
  v24[6] = *MEMORY[0x1E69E9840];
  v2 = (a1 + 32);
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(*(*(a1 + 32) + 208), "count")}];
  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(*(*v2 + 232), "count")}];
  v5 = *v2;
  v6 = *(*v2 + 208);
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __73__NSFileMultipleAccessClaim_resolveURLsThenMaybeContinueInvokingClaimer___block_invoke_7;
  v24[3] = &unk_1E69F8848;
  v24[4] = v5;
  v24[5] = v3;
  [v6 enumerateObjectsUsingBlock:v24];
  v7 = *v2;
  v8 = *(*v2 + 232);
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __73__NSFileMultipleAccessClaim_resolveURLsThenMaybeContinueInvokingClaimer___block_invoke_8;
  v23[3] = &unk_1E69F8848;
  v23[4] = v7;
  v23[5] = v4;
  [v8 enumerateObjectsUsingBlock:v23];
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v9 = [*(*v2 + 256) count];
  v22 = [*(*v2 + 264) count] + v9;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __73__NSFileMultipleAccessClaim_resolveURLsThenMaybeContinueInvokingClaimer___block_invoke_9;
  v18[3] = &unk_1E69F8870;
  v10 = *(a1 + 40);
  v18[6] = v10;
  v18[7] = &v19;
  v18[4] = v3;
  v18[5] = v4;
  if (v20[3])
  {
    v11 = [*(a1 + 32) purposeID];
    v12 = *(a1 + 32);
    v13 = *(v12 + 256);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __73__NSFileMultipleAccessClaim_resolveURLsThenMaybeContinueInvokingClaimer___block_invoke_10;
    v17[3] = &unk_1E69F88C0;
    v17[4] = v12;
    v17[5] = v11;
    v17[6] = v3;
    v17[7] = v18;
    [v13 enumerateObjectsUsingBlock:v17];
    v14 = *(a1 + 32);
    v15 = *(v14 + 264);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __73__NSFileMultipleAccessClaim_resolveURLsThenMaybeContinueInvokingClaimer___block_invoke_12;
    v16[3] = &unk_1E69F88C0;
    v16[4] = v14;
    v16[5] = v11;
    v16[6] = v4;
    v16[7] = v18;
    [v15 enumerateObjectsUsingBlock:v16];
  }

  else
  {
    (*(v10 + 16))(v10, v3, v4);
  }

  _Block_object_dispose(&v19, 8);
}

uint64_t __73__NSFileMultipleAccessClaim_resolveURLsThenMaybeContinueInvokingClaimer___block_invoke_7(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  if ((*(*(*(a1 + 32) + 224) + a3) & 1) == 0)
  {
    a2 = [MEMORY[0x1E695DFB0] null];
  }

  return [v3 addObject:a2];
}

uint64_t __73__NSFileMultipleAccessClaim_resolveURLsThenMaybeContinueInvokingClaimer___block_invoke_8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  if ((*(*(*(a1 + 32) + 248) + a3) & 1) == 0)
  {
    a2 = [MEMORY[0x1E695DFB0] null];
  }

  return [v3 addObject:a2];
}

void *__73__NSFileMultipleAccessClaim_resolveURLsThenMaybeContinueInvokingClaimer___block_invoke_9(void *result)
{
  v1 = *(result[7] + 8);
  v2 = *(v1 + 24) - 1;
  *(v1 + 24) = v2;
  if (!v2)
  {
    return (*(result[6] + 16))(result[6], result[4], result[5]);
  }

  return result;
}

uint64_t __73__NSFileMultipleAccessClaim_resolveURLsThenMaybeContinueInvokingClaimer___block_invoke_10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *(v4[27] + 8 * a3);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __73__NSFileMultipleAccessClaim_resolveURLsThenMaybeContinueInvokingClaimer___block_invoke_11;
  v7[3] = &unk_1E69F8898;
  v9 = a3;
  v8 = *(a1 + 48);
  return [v4 makeProviderOfItemAtLocation:a2 provideOrAttachPhysicalURLIfNecessaryForPurposeID:v3 readingOptions:v5 thenContinue:v7];
}

uint64_t __73__NSFileMultipleAccessClaim_resolveURLsThenMaybeContinueInvokingClaimer___block_invoke_11(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) replaceObjectAtIndex:*(a1 + 48) withObject:a2];
  }

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

uint64_t __73__NSFileMultipleAccessClaim_resolveURLsThenMaybeContinueInvokingClaimer___block_invoke_12(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *(v4[30] + 8 * a3);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __73__NSFileMultipleAccessClaim_resolveURLsThenMaybeContinueInvokingClaimer___block_invoke_13;
  v7[3] = &unk_1E69F8898;
  v9 = a3;
  v8 = *(a1 + 48);
  return [v4 makeProviderOfItemAtLocation:a2 provideOrAttachPhysicalURLIfNecessaryForPurposeID:v3 writingOptions:v5 thenContinue:v7];
}

uint64_t __73__NSFileMultipleAccessClaim_resolveURLsThenMaybeContinueInvokingClaimer___block_invoke_13(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) replaceObjectAtIndex:*(a1 + 48) withObject:a2];
  }

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

- (void)invokeClaimer
{
  v2[5] = *MEMORY[0x1E69E9840];
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __42__NSFileMultipleAccessClaim_invokeClaimer__block_invoke;
  v2[3] = &unk_1E69F88E8;
  v2[4] = self;
  [(NSFileMultipleAccessClaim *)self resolveURLsThenMaybeContinueInvokingClaimer:v2];
}

id __42__NSFileMultipleAccessClaim_invokeClaimer__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  if (v6[20])
  {
    v7 = atomic_load(&_NSFCSubarbitrationCount);
    if (v7 < 1 || (v17 = atomic_load(_NSFCDisableLogSuppression), (v17 & 1) != 0) || (v18 = atomic_load(&_NSFCSubarbitratedClaimCount), v18 <= 99))
    {
      v8 = _NSFCClaimsLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [*(a1 + 32) claimID];
        *buf = 138543362;
        v23 = v9;
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
    if (v10 < 1 || (v19 = atomic_load(_NSFCDisableLogSuppression), (v19 & 1) != 0) || (v20 = atomic_load(&_NSFCSubarbitratedClaimCount), v20 <= 99))
    {
      v11 = _NSFCClaimsLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [*(a1 + 32) claimID];
        *buf = 138543362;
        v23 = v12;
        _os_log_impl(&dword_18075C000, v11, OS_LOG_TYPE_DEFAULT, "Claim %{public}@ invoked in server", buf, 0xCu);
      }
    }

    v13 = *(*(a1 + 32) + 168);
    v14 = pairsForURLs(a2);
    v15 = pairsForURLs(a3);
    (*(v13 + 16))(v13, v14, v15, *(*(a1 + 32) + 176), [*(a1 + 32) shouldEnableMaterializationDuringAccessorBlock], objc_msgSend(*(a1 + 32), "claimerError"));

    *(*(a1 + 32) + 168) = 0;
    v6 = *(a1 + 32);
  }

  v21.receiver = v6;
  v21.super_class = NSFileMultipleAccessClaim;
  return objc_msgSendSuper2(&v21, sel_invokeClaimer);
}

- (void)devalueSelf
{
  v48 = *MEMORY[0x1E69E9840];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  readingLocations = self->_readingLocations;
  v4 = [(NSMutableArray *)readingLocations countByEnumeratingWithState:&v44 objects:v43 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v45;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v45 != v6)
        {
          objc_enumerationMutation(readingLocations);
        }

        v8 = *(*(&v44 + 1) + 8 * i);
        v27[0] = MEMORY[0x1E69E9820];
        v27[1] = 3221225472;
        v27[2] = __40__NSFileMultipleAccessClaim_devalueSelf__block_invoke;
        v27[3] = &unk_1E69F83E8;
        v27[4] = self;
        [v8 forEachRelevantAccessClaimPerformProcedure:v27];
      }

      v5 = [(NSMutableArray *)readingLocations countByEnumeratingWithState:&v44 objects:v43 count:16];
    }

    while (v5);
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  writingLocations = self->_writingLocations;
  v10 = [(NSMutableArray *)writingLocations countByEnumeratingWithState:&v39 objects:v38 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v40;
    do
    {
      for (j = 0; j != v11; ++j)
      {
        if (*v40 != v12)
        {
          objc_enumerationMutation(writingLocations);
        }

        v14 = *(*(&v39 + 1) + 8 * j);
        v26[0] = MEMORY[0x1E69E9820];
        v26[1] = 3221225472;
        v26[2] = __40__NSFileMultipleAccessClaim_devalueSelf__block_invoke_2;
        v26[3] = &unk_1E69F83E8;
        v26[4] = self;
        [v14 forEachRelevantAccessClaimPerformProcedure:v26];
      }

      v11 = [(NSMutableArray *)writingLocations countByEnumeratingWithState:&v39 objects:v38 count:16];
    }

    while (v11);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v15 = self->_readingLocations;
  v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v34 objects:v33 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v35;
    do
    {
      for (k = 0; k != v17; ++k)
      {
        if (*v35 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [*(*(&v34 + 1) + 8 * k) removeAccessClaim:self];
      }

      v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v34 objects:v33 count:16];
    }

    while (v17);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v20 = self->_writingLocations;
  v21 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v29 objects:v28 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v30;
    do
    {
      for (m = 0; m != v22; ++m)
      {
        if (*v30 != v23)
        {
          objc_enumerationMutation(v20);
        }

        [*(*(&v29 + 1) + 8 * m) removeAccessClaim:self];
      }

      v22 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v29 objects:v28 count:16];
    }

    while (v22);
  }

  self->_readingLocations = 0;
  self->_writingLocations = 0;
  v25.receiver = self;
  v25.super_class = NSFileMultipleAccessClaim;
  [(NSFileAccessClaim *)&v25 devalueSelf];
}

- (void)itemAtLocation:(id)location wasReplacedByItemAtLocation:(id)atLocation
{
  v14[5] = *MEMORY[0x1E69E9840];
  writingLocations = self->_writingLocations;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __72__NSFileMultipleAccessClaim_itemAtLocation_wasReplacedByItemAtLocation___block_invoke;
  v14[3] = &unk_1E69F8910;
  v14[4] = location;
  v8 = [(NSMutableArray *)writingLocations indexesOfObjectsPassingTest:v14];
  readingLocations = self->_readingLocations;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __72__NSFileMultipleAccessClaim_itemAtLocation_wasReplacedByItemAtLocation___block_invoke_2;
  v13[3] = &unk_1E69F8910;
  v13[4] = location;
  v10 = [(NSMutableArray *)readingLocations indexesOfObjectsPassingTest:v13];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __72__NSFileMultipleAccessClaim_itemAtLocation_wasReplacedByItemAtLocation___block_invoke_3;
  v12[3] = &unk_1E69F8938;
  v12[4] = atLocation;
  v12[5] = self;
  v12[6] = location;
  [v8 enumerateIndexesUsingBlock:v12];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __72__NSFileMultipleAccessClaim_itemAtLocation_wasReplacedByItemAtLocation___block_invoke_4;
  v11[3] = &unk_1E69F8938;
  v11[4] = atLocation;
  v11[5] = self;
  v11[6] = location;
  [v10 enumerateIndexesUsingBlock:v11];
}

uint64_t __72__NSFileMultipleAccessClaim_itemAtLocation_wasReplacedByItemAtLocation___block_invoke_3(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) addAccessClaim:*(a1 + 40)];
  [*(a1 + 48) removeAccessClaim:*(a1 + 40)];
  v4 = *(a1 + 32);
  v5 = *(*(a1 + 40) + 264);

  return [v5 replaceObjectAtIndex:a2 withObject:v4];
}

uint64_t __72__NSFileMultipleAccessClaim_itemAtLocation_wasReplacedByItemAtLocation___block_invoke_4(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) addAccessClaim:*(a1 + 40)];
  [*(a1 + 48) removeAccessClaim:*(a1 + 40)];
  v4 = *(a1 + 32);
  v5 = *(*(a1 + 40) + 256);

  return [v5 replaceObjectAtIndex:a2 withObject:v4];
}

- (BOOL)blocksClaim:(id)claim
{
  v15 = *MEMORY[0x1E69E9840];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  readingLocations = self->_readingLocations;
  v14 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __41__NSFileMultipleAccessClaim_blocksClaim___block_invoke;
  v10[3] = &unk_1E69F8960;
  v10[4] = claim;
  v10[5] = self;
  v10[6] = &v11;
  [(NSMutableArray *)readingLocations enumerateObjectsUsingBlock:v10];
  if (v12[3])
  {
    v6 = 1;
  }

  else
  {
    writingLocations = self->_writingLocations;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __41__NSFileMultipleAccessClaim_blocksClaim___block_invoke_2;
    v9[3] = &unk_1E69F8960;
    v9[4] = claim;
    v9[5] = self;
    v9[6] = &v11;
    [(NSMutableArray *)writingLocations enumerateObjectsUsingBlock:v9];
    v6 = *(v12 + 24);
  }

  _Block_object_dispose(&v11, 8);
  return v6 & 1;
}

uint64_t __41__NSFileMultipleAccessClaim_blocksClaim___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = [*(a1 + 32) isBlockedByReadingItemAtLocation:a2 options:*(*(*(a1 + 40) + 216) + 8 * a3)];
  if (result)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

uint64_t __41__NSFileMultipleAccessClaim_blocksClaim___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = [*(a1 + 32) isBlockedByWritingItemAtLocation:a2 options:*(*(*(a1 + 40) + 240) + 8 * a3)];
  if (result)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

- (BOOL)shouldBeRevokedPriorToInvokingAccessor
{
  v3 = [(NSMutableArray *)self->_readingURLs count];
  if ([(NSMutableArray *)self->_writingURLs count])
  {
    LOBYTE(v4) = 0;
  }

  else if (v3)
  {
    readingOptions = self->_readingOptions;
    v6 = v3 - 1;
    do
    {
      v8 = *readingOptions++;
      v7 = v8;
      v4 = (v8 >> 3) & 1;
      v10 = v6-- != 0;
    }

    while ((v7 & 8) != 0 && v10);
  }

  else
  {
    LOBYTE(v4) = 1;
  }

  return v4;
}

- (id)allURLs
{
  array = [MEMORY[0x1E695DF70] array];
  v4 = array;
  if (self->_readingURLs)
  {
    [array addObjectsFromArray:?];
  }

  if (self->_writingURLs)
  {
    [v4 addObjectsFromArray:?];
  }

  return v4;
}

- (BOOL)shouldCancelInsteadOfWaiting
{
  v3 = [(NSMutableArray *)self->_readingURLs count];
  if (v3)
  {
    readingOptions = self->_readingOptions;
    if ((*(readingOptions + 2) & 8) != 0)
    {
      LOBYTE(v3) = 1;
    }

    else
    {
      v5 = 1;
      do
      {
        v6 = v5;
        if (v3 == v5)
        {
          break;
        }

        v7 = readingOptions[v5++];
      }

      while ((v7 & 0x80000) == 0);
      LOBYTE(v3) = v6 < v3;
    }
  }

  return v3;
}

- (void)protectFilesAgainstEviction
{
  v6[5] = *MEMORY[0x1E69E9840];
  readingURLs = self->_readingURLs;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __56__NSFileMultipleAccessClaim_protectFilesAgainstEviction__block_invoke;
  v6[3] = &unk_1E69F8988;
  v6[4] = self;
  [(NSMutableArray *)readingURLs enumerateObjectsUsingBlock:v6];
  writingURLs = self->_writingURLs;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __56__NSFileMultipleAccessClaim_protectFilesAgainstEviction__block_invoke_2;
  v5[3] = &unk_1E69F8988;
  v5[4] = self;
  [(NSMutableArray *)writingURLs enumerateObjectsUsingBlock:v5];
}

@end
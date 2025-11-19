@interface NSFileAccessArbiter
+ (id)entitlementForConnection:(id)a3 key:(id)a4;
+ (void)_wakeUpFileProviderWithUID:(unsigned int)a3 urls:(id)a4 queue:(id)a5 thenContinue:(id)a6;
+ (void)ensureProvidersIfNecessaryForClaim:(id)a3 user:(unsigned int)a4 atLocations:(id)a5 queue:(id)a6 thenContinue:(id)a7;
- (BOOL)_addPresenter:(id)a3 ofItemAtURL:(id)a4 watchingFile:(BOOL)a5 withLastEventID:(id)a6;
- (BOOL)_addProvider:(id)a3 ofItemsAtURL:(id)a4;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (NSFileAccessArbiter)initWithQueue:(id)a3 isSubarbiter:(BOOL)a4 listener:(id)a5;
- (NSXPCConnection)superarbitrationConnection;
- (id)rootNode;
- (void)_enumerateSubarbitersUsingBlock:(id)a3;
- (void)_grantAccessClaim:(id)a3;
- (void)_grantSubarbitrationClaim:(id)a3 withServer:(id)a4;
- (void)_handleCanceledClient:(id)a3;
- (void)_registerForDebugInfoRequests;
- (void)_removeReactorForID:(id)a3;
- (void)_revokeAccessClaimForID:(id)a3 fromLocal:(BOOL)a4;
- (void)_startArbitratingItemsAtURLs:(id)a3 withSuperarbitrationServer:(id)a4;
- (void)_willRemoveReactor:(id)a3;
- (void)_writerWithPurposeID:(id)a3 didMoveItemAtURL:(id)a4 toURL:(id)a5 withFSID:(fsid)a6 andFileID:(unint64_t)a7;
- (void)addPresenter:(id)a3 withID:(id)a4 fileURL:(id)a5 lastPresentedItemEventIdentifier:(id)a6 ubiquityAttributes:(id)a7 options:(unint64_t)a8 responses:(unint64_t)a9;
- (void)addProvider:(id)a3 withID:(id)a4 uniqueID:(id)a5 forProvidedItemsURL:(id)a6 options:(unint64_t)a7 withServer:(id)a8 reply:(id)a9;
- (void)cancelAccessClaimForID:(id)a3;
- (void)cancelMaterializationWithRequestID:(id)a3;
- (void)dealloc;
- (void)getDebugInformationIncludingEverything:(BOOL)a3 withString:(id)a4 fromPid:(int)a5 thenContinue:(id)a6;
- (void)getItemHasPresentersAtURL:(id)a3 completionHandler:(id)a4;
- (void)grantAccessClaim:(id)a3 withReply:(id)a4;
- (void)grantSubarbitrationClaim:(id)a3 withServer:(id)a4 reply:(id)a5;
- (void)makeProviderMaterializeFileAtURL:(id)a3 kernelInfo:(id)a4 withRequestID:(id)a5 fromProcess:(id *)a6 completionHandler:(id)a7;
- (void)performMateralizationOfURL:(id)a3 withProvider:(id)a4 fakeClaim:(id)a5 kernelInfo:(id)a6 requestID:(id)a7 fromProcess:(id *)a8 completionHandler:(id)a9;
- (void)prepareToArbitrateForURLs:(id)a3;
- (void)provideDebugInfoWithLocalInfo:(id)a3 completionHandler:(id)a4;
- (void)provideSubarbiterDebugInfoIncludingEverything:(BOOL)a3 completionHandler:(id)a4;
- (void)removePresenterWithID:(id)a3;
- (void)removeProviderWithID:(id)a3 uniqueID:(id)a4;
- (void)resolveReparentRequestOfFileAtURL:(id)a3 toDestinationDirectory:(id)a4 withRequestID:(id)a5 operation:(unsigned int)a6 fromProcess:(id *)a7 completionHandler:(id)a8;
- (void)stopArbitrating;
- (void)tiePresenterForID:(id)a3 toItemAtURL:(id)a4;
- (void)writerWithPurposeID:(id)a3 didChangeItemAtURL:(id)a4;
- (void)writerWithPurposeID:(id)a3 didChangeSharingOfItemAtURL:(id)a4;
- (void)writerWithPurposeID:(id)a3 didChangeUbiquityAttributes:(id)a4 ofItemAtURL:(id)a5;
- (void)writerWithPurposeID:(id)a3 didChangeUbiquityOfItemAtURL:(id)a4;
- (void)writerWithPurposeID:(id)a3 didDisconnectItemAtURL:(id)a4;
- (void)writerWithPurposeID:(id)a3 didMakeItemDisappearAtURL:(id)a4;
- (void)writerWithPurposeID:(id)a3 didMoveItemAtURL:(id)a4 toURL:(id)a5 withFSID:(fsid)a6 andFileID:(unint64_t)a7;
- (void)writerWithPurposeID:(id)a3 didReconnectItemAtURL:(id)a4;
- (void)writerWithPurposeID:(id)a3 didVersionChangeOfKind:(id)a4 toItemAtURL:(id)a5 withClientID:(id)a6 name:(id)a7;
@end

@implementation NSFileAccessArbiter

- (NSFileAccessArbiter)initWithQueue:(id)a3 isSubarbiter:(BOOL)a4 listener:(id)a5
{
  v16 = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = NSFileAccessArbiter;
  v8 = [(NSFileAccessArbiter *)&v15 init];
  v9 = v8;
  if (v8)
  {
    v8->_queue = a3;
    dispatch_retain(a3);
    v9->_listenerConnection = a5;
    v9->_isSubarbiter = a4;
    v9->_accessClaimsByID = objc_alloc_init(MEMORY[0x1E695DF90]);
    v9->_accessClaimTransactionsByID = objc_alloc_init(MEMORY[0x1E695DF90]);
    v9->_subarbitrationClaimsByID = objc_alloc_init(MEMORY[0x1E695DF90]);
    v9->_reactorsByID = objc_alloc_init(MEMORY[0x1E695DF90]);
    v9->_reactorTransactionsByID = objc_alloc_init(MEMORY[0x1E695DF90]);
    v9->_kernelMaterializationClaimCancellers = objc_alloc_init(MEMORY[0x1E695DF90]);
    v9->_kernelMaterializationClaimTransactions = objc_alloc_init(MEMORY[0x1E695DF90]);
    v9->_rootNode = [[NSFileAccessNode alloc] initWithParent:0 name:@"/" normalizedName:@"/"];
    v10 = objc_autoreleasePoolPush();
    v11 = -[NSFileAccessNode descendantForFileURL:](v9->_rootNode, "descendantForFileURL:", [MEMORY[0x1E695DFF8] fileURLWithPath:@"/etc" isDirectory:1]);
    [v11 setSymbolicLinkDestination:{-[NSFileAccessNode descendantForFileURL:](v9->_rootNode, "descendantForFileURL:", objc_msgSend(MEMORY[0x1E695DFF8], "fileURLWithPath:isDirectory:", @"/private/etc", 1))}];
    v12 = -[NSFileAccessNode descendantForFileURL:](v9->_rootNode, "descendantForFileURL:", [MEMORY[0x1E695DFF8] fileURLWithPath:@"/tmp" isDirectory:1]);
    [v12 setSymbolicLinkDestination:{-[NSFileAccessNode descendantForFileURL:](v9->_rootNode, "descendantForFileURL:", objc_msgSend(MEMORY[0x1E695DFF8], "fileURLWithPath:isDirectory:", @"/private/tmp", 1))}];
    v13 = -[NSFileAccessNode descendantForFileURL:](v9->_rootNode, "descendantForFileURL:", [MEMORY[0x1E695DFF8] fileURLWithPath:@"/var" isDirectory:1]);
    [v13 setSymbolicLinkDestination:{-[NSFileAccessNode descendantForFileURL:](v9->_rootNode, "descendantForFileURL:", objc_msgSend(MEMORY[0x1E695DFF8], "fileURLWithPath:isDirectory:", @"/private/var", 1))}];
    objc_autoreleasePoolPop(v10);
    if (!v9->_isSubarbiter)
    {
      [(NSFileAccessArbiter *)v9 _registerForDebugInfoRequests];
    }
  }

  return v9;
}

- (void)dealloc
{
  v15 = *MEMORY[0x1E69E9840];

  [(NSMutableDictionary *)self->_accessClaimsByID enumerateKeysAndObjectsUsingBlock:&__block_literal_global_77];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  kernelMaterializationClaimCancellers = self->_kernelMaterializationClaimCancellers;
  v4 = [(NSMutableDictionary *)kernelMaterializationClaimCancellers countByEnumeratingWithState:&v11 objects:v10 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(kernelMaterializationClaimCancellers);
        }

        (*(*(*(&v11 + 1) + 8 * i) + 16))();
      }

      v5 = [(NSMutableDictionary *)kernelMaterializationClaimCancellers countByEnumeratingWithState:&v11 objects:v10 count:16];
    }

    while (v5);
  }

  dispatch_release(self->_queue);
  debugSignalSource = self->_debugSignalSource;
  if (debugSignalSource)
  {
    dispatch_source_cancel(debugSignalSource);
    dispatch_release(self->_debugSignalSource);
  }

  v9.receiver = self;
  v9.super_class = NSFileAccessArbiter;
  [(NSFileAccessArbiter *)&v9 dealloc];
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v7[6] = *MEMORY[0x1E69E9840];
  [a4 setExportedObject:self];
  [a4 setExportedInterface:{+[NSFileCoordinator _fileAccessArbiterInterface](NSFileCoordinator, "_fileAccessArbiterInterface")}];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58__NSFileAccessArbiter_listener_shouldAcceptNewConnection___block_invoke;
  v7[3] = &unk_1E69F2080;
  v7[4] = self;
  v7[5] = a4;
  [a4 setInvalidationHandler:v7];
  [a4 _setQueue:self->_queue];
  [a4 resume];
  return 1;
}

- (void)_grantAccessClaim:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = [a3 claimID];
  v6 = atomic_load(&_NSFCSubarbitrationCount);
  if (v6 < 1 || (v11 = atomic_load(_NSFCDisableLogSuppression), (v11 & 1) != 0) || (v12 = atomic_load(&_NSFCSubarbitratedClaimCount), v12 <= 99))
  {
    v7 = _NSFCClaimsLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v14 = v5;
      _os_log_impl(&dword_18075C000, v7, OS_LOG_TYPE_DEFAULT, "Received claim %{public}@", buf, 0xCu);
    }
  }

  if (self->_superarbitrationServer)
  {
    v8 = [a3 cameFromSuperarbiter] ^ 1;
  }

  else
  {
    v8 = 0;
  }

  if ([a3 evaluateSelfWithRootNode:self->_rootNode checkSubarbitrability:v8])
  {
    [(NSMutableDictionary *)self->_accessClaimsByID setObject:a3 forKey:v5];
    [a3 startObservingClientState];
    -[NSString UTF8String](+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Claim: %@ (%d)", [v5 description], -[NSXPCConnection processIdentifier](+[NSXPCConnection currentConnection](NSXPCConnection, "currentConnection"), "processIdentifier")), "UTF8String");
    v9 = os_transaction_create();
    [(NSMutableDictionary *)self->_accessClaimTransactionsByID setObject:v9 forKey:v5];
  }

  else
  {
    v10 = _NSFCClaimsLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v14 = v5;
      _os_log_impl(&dword_18075C000, v10, OS_LOG_TYPE_INFO, "Claim %{public}@ forwarded to superarbiter", buf, 0xCu);
    }

    [a3 forwardUsingConnection:self->_superarbitrationServer crashHandler:&__block_literal_global_33];
  }

  [a3 unblock];
}

uint64_t __41__NSFileAccessArbiter__grantAccessClaim___block_invoke()
{
  v3 = *MEMORY[0x1E69E9840];
  v0 = _NSOSLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    *v2 = 0;
    _os_log_error_impl(&dword_18075C000, v0, OS_LOG_TYPE_ERROR, "A process invoked one of the [NSFileCoordinator coordinate...] methods but filecoordinationd crashed. Returning an error.", v2, 2u);
  }

  return 1;
}

- (void)_revokeAccessClaimForID:(id)a3 fromLocal:(BOOL)a4
{
  v4 = a4;
  v14 = *MEMORY[0x1E69E9840];
  v7 = [(NSMutableDictionary *)self->_accessClaimsByID objectForKey:?];
  if (v7)
  {
    v8 = v7;
    if (!v4 || ([v7 cameFromSuperarbiter] & 1) == 0)
    {
      [v8 revoked];
      [(NSMutableDictionary *)self->_accessClaimsByID removeObjectForKey:a3];
      [(NSMutableDictionary *)self->_subarbitrationClaimsByID removeObjectForKey:a3];
      accessClaimTransactionsByID = self->_accessClaimTransactionsByID;

      [(NSMutableDictionary *)accessClaimTransactionsByID removeObjectForKey:a3];
      return;
    }
  }

  else if (!v4)
  {
    return;
  }

  superarbitrationServer = self->_superarbitrationServer;
  if (superarbitrationServer)
  {
    v11 = [(NSXPCConnection *)superarbitrationServer remoteObjectProxy];

    [v11 revokeAccessClaimForID:a3];
  }

  else
  {
    v12 = _NSFCClaimsLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      *v13 = 0;
      _os_log_fault_impl(&dword_18075C000, v12, OS_LOG_TYPE_FAULT, "A subarbiter is trying to forward a claim revocation to its superarbiter, but the connection is already gone, which is a surprise.", v13, 2u);
    }
  }
}

- (void)_grantSubarbitrationClaim:(id)a3 withServer:(id)a4
{
  v8[7] = *MEMORY[0x1E69E9840];
  v7 = a4;
  [a4 setRemoteObjectInterface:{+[NSFileCoordinator _fileAccessArbiterInterface](NSFileCoordinator, "_fileAccessArbiterInterface")}];
  [a3 setSubarbiterConnection:a4];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __60__NSFileAccessArbiter__grantSubarbitrationClaim_withServer___block_invoke;
  v8[3] = &unk_1E69F68D8;
  v8[4] = a3;
  v8[5] = a4;
  v8[6] = self;
  [a4 setInterruptionHandler:v8];
  [a4 setUserInfo:a3];
  [a4 _setQueue:self->_queue];
  [a4 resume];
  -[NSMutableDictionary setObject:forKey:](self->_subarbitrationClaimsByID, "setObject:forKey:", a3, [a3 claimID]);
  [(NSFileAccessArbiter *)self _grantAccessClaim:a3];
}

void __60__NSFileAccessArbiter__grantSubarbitrationClaim_withServer___block_invoke(id *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = _NSFCClaimsLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [a1[4] claimID];
    v4 = 138543362;
    v5 = v3;
    _os_log_impl(&dword_18075C000, v2, OS_LOG_TYPE_DEFAULT, "cancelling a connection for subarbitration claim %{public}@", &v4, 0xCu);
  }

  [a1[5] setUserInfo:0];
  [a1[5] invalidate];
  [a1[6] _handleCanceledClient:a1[5]];
}

- (void)_writerWithPurposeID:(id)a3 didMoveItemAtURL:(id)a4 toURL:(id)a5 withFSID:(fsid)a6 andFileID:(unint64_t)a7
{
  v128[9] = *MEMORY[0x1E69E9840];
  v111 = 0;
  v110 = 0;
  p_rootNode = &self->_rootNode;
  v14 = -[NSFileAccessNode pathToDescendantForFileURL:componentRange:](self->_rootNode, "pathToDescendantForFileURL:componentRange:", [a4 logicalURL], &v110);
  v109 = 0;
  v108 = 0;
  v15 = -[NSFileAccessNode pathToDescendantForFileURL:componentRange:](*p_rootNode, "pathToDescendantForFileURL:componentRange:", [a5 logicalURL], &v108);
  if (v14)
  {
    v16 = v15;
    if (v15)
    {
      v17 = [(NSFileAccessNode *)self->_rootNode descendantAtPath:v14 componentRange:v110 create:v111, 0];
      v18 = [(NSFileAccessNode *)self->_rootNode descendantAtPath:v16 componentRange:v108 create:v109, 0];
      if (v18 == v17)
      {
        v21 = [a4 physicalURL];
        v22 = [a5 physicalURL];
        v23 = v22;
        if (v21)
        {
          v24 = _CFURLIsItemPromiseAtURL();
          v25 = v24 != 0;
          if (v23)
          {
            v26 = v24 != 0;
            v27 = _CFURLIsItemPromiseAtURL() != 0;
            if (v26 == v27)
            {
              return;
            }
          }

          else
          {
            if (!v24)
            {
              return;
            }

            LOBYTE(v27) = 0;
            v25 = 1;
          }
        }

        else
        {
          if (!v22 || !_CFURLIsItemPromiseAtURL())
          {
            return;
          }

          v25 = 0;
          LOBYTE(v27) = 1;
        }

        v55[0] = MEMORY[0x1E69E9820];
        v55[1] = 3221225472;
        v55[2] = __86__NSFileAccessArbiter__writerWithPurposeID_didMoveItemAtURL_toURL_withFSID_andFileID___block_invoke_52;
        v55[3] = &__block_descriptor_34_e30_v16__0__NSFilePresenterProxy_8l;
        v56 = v25;
        v57 = v27;
        [v17 forEachPresenterOfItemPerformProcedure:v55];
        return;
      }

      if (v17)
      {
        if (self->_isSubarbiter || (v128[0] = MEMORY[0x1E69E9820], v128[1] = 3221225472, v128[2] = __86__NSFileAccessArbiter__writerWithPurposeID_didMoveItemAtURL_toURL_withFSID_andFileID___block_invoke, v128[3] = &unk_1E69F8A48, v128[4] = a4, v128[5] = a5, v128[7] = a7, v128[8] = a6, v128[6] = a3, [v17 forEachPresenterOfContainingItemPerformProcedure:v128], v19 = objc_msgSend(v17, "itemProvider"), (v53 = v19) == 0))
        {
          v53 = 0;
          v20 = [(NSFileAccessNode *)self->_rootNode descendantAtPath:v16 componentRange:v108 forAddingLeafNode:v109 - 1 create:v17, 1, 0];
        }

        else
        {
          v48 = [v17 pathFromAncestor:{objc_msgSend(v19, "itemLocation")}];
          v20 = [(NSFileAccessNode *)self->_rootNode descendantAtPath:v16 componentRange:v108 forAddingLeafNode:v109 - 1 create:v17, 1, v48];
        }

        v54 = v20;
        v102 = 0;
        v103 = &v102;
        v104 = 0x3052000000;
        v105 = __Block_byref_object_copy__28;
        v106 = __Block_byref_object_dispose__28;
        v107 = 0;
        if ([v17 parent] != v20)
        {
          v101[0] = MEMORY[0x1E69E9820];
          v101[1] = 3221225472;
          v101[2] = __86__NSFileAccessArbiter__writerWithPurposeID_didMoveItemAtURL_toURL_withFSID_andFileID___block_invoke_35;
          v101[3] = &unk_1E69F8A70;
          v101[4] = &v102;
          [v17 forEachProgressPublisherOfItemPerformProcedure:v101];
        }

        v50 = a3;
        v51 = a6;
        v52 = a7;
        v126 = 0u;
        v127 = 0u;
        v124 = 0u;
        v125 = 0u;
        v28 = v103[5];
        v29 = [v28 countByEnumeratingWithState:&v124 objects:v123 count:16];
        if (v29)
        {
          v30 = *v125;
          do
          {
            for (i = 0; i != v29; ++i)
            {
              if (*v125 != v30)
              {
                objc_enumerationMutation(v28);
              }

              [*(*(&v124 + 1) + 8 * i) setItemLocation:0];
            }

            v29 = [v28 countByEnumeratingWithState:&v124 objects:v123 count:16];
          }

          while (v29);
        }

        v32 = v18;
        [v17 setParent:v54 name:{objc_msgSend(v16, "objectAtIndex:", v108 + v109 - 1)}];
        v95 = 0;
        v96 = &v95;
        v97 = 0x3052000000;
        v98 = __Block_byref_object_copy__28;
        v99 = __Block_byref_object_dispose__28;
        v100 = 0;
        v94[0] = MEMORY[0x1E69E9820];
        v94[1] = 3221225472;
        v94[2] = __86__NSFileAccessArbiter__writerWithPurposeID_didMoveItemAtURL_toURL_withFSID_andFileID___block_invoke_2;
        v94[3] = &unk_1E69F8A98;
        v94[4] = &v95;
        [v17 forEachPresenterOfItemOrContainedItemPerformProcedure:v94];
        v122 = 0u;
        v121 = 0u;
        v120 = 0u;
        v119 = 0u;
        v33 = v96[5];
        v34 = [v33 countByEnumeratingWithState:&v119 objects:v118 count:16];
        if (v34)
        {
          v35 = *v120;
          do
          {
            for (j = 0; j != v34; ++j)
            {
              if (*v120 != v35)
              {
                objc_enumerationMutation(v33);
              }

              v37 = *(*(&v119 + 1) + 8 * j);
              v38 = [objc_msgSend(v37 "itemLocation")];
              [v37 setItemLocation:{objc_msgSend(v17, "descendantAtPath:componentRange:create:", v38, 0, objc_msgSend(v38, "count"), 1)}];
            }

            v34 = [v33 countByEnumeratingWithState:&v119 objects:v118 count:16];
          }

          while (v34);
        }

        if (!self->_isSubarbiter)
        {
          v117[0] = MEMORY[0x1E69E9820];
          v117[1] = 3221225472;
          v117[2] = __86__NSFileAccessArbiter__writerWithPurposeID_didMoveItemAtURL_toURL_withFSID_andFileID___block_invoke_3;
          v117[3] = &unk_1E69F8AC0;
          v117[4] = v50;
          v117[5] = a5;
          v117[7] = v51;
          v117[6] = v52;
          [v17 forEachPresenterOfItemOrContainedItemPerformProcedure:v117];
          v39 = [v17 itemProvider];
          if (v53 | v39)
          {
            v93[0] = MEMORY[0x1E69E9820];
            v93[1] = 3221225472;
            v93[2] = __86__NSFileAccessArbiter__writerWithPurposeID_didMoveItemAtURL_toURL_withFSID_andFileID___block_invoke_4;
            v93[3] = &unk_1E69F8AE8;
            v93[4] = v53;
            v93[5] = v49;
            v93[6] = v17;
            v93[7] = v39;
            [v17 forEachPresenterOfItemOrContainedItemPerformProcedure:v93];
          }
        }

        if (v18)
        {
          v87 = 0;
          v88 = &v87;
          v89 = 0x3052000000;
          v90 = __Block_byref_object_copy__28;
          v91 = __Block_byref_object_dispose__28;
          v92 = 0;
          v86[0] = MEMORY[0x1E69E9820];
          v86[1] = 3221225472;
          v86[2] = __86__NSFileAccessArbiter__writerWithPurposeID_didMoveItemAtURL_toURL_withFSID_andFileID___block_invoke_5;
          v86[3] = &unk_1E69F8A98;
          v86[4] = &v87;
          [v18 forEachPresenterOfItemOrContainedItemPerformProcedure:v86];
          v115 = 0u;
          v116 = 0u;
          v113 = 0u;
          v114 = 0u;
          v40 = v88[5];
          v41 = [v40 countByEnumeratingWithState:&v113 objects:v112 count:16];
          if (v41)
          {
            v42 = *v114;
            do
            {
              for (k = 0; k != v41; ++k)
              {
                if (*v114 != v42)
                {
                  objc_enumerationMutation(v40);
                }

                v44 = *(*(&v113 + 1) + 8 * k);
                v45 = [objc_msgSend(v44 "itemLocation")];
                [v44 setItemLocation:{objc_msgSend(v17, "descendantAtPath:componentRange:create:", v45, 0, objc_msgSend(v45, "count"), 1)}];
              }

              v41 = [v40 countByEnumeratingWithState:&v113 objects:v112 count:16];
            }

            while (v41);
          }

          v80 = 0;
          v81 = &v80;
          v82 = 0x3052000000;
          v83 = __Block_byref_object_copy__28;
          v84 = __Block_byref_object_dispose__28;
          v85 = 0;
          v74 = 0;
          v75 = &v74;
          v76 = 0x3052000000;
          v77 = __Block_byref_object_copy__28;
          v78 = __Block_byref_object_dispose__28;
          v79 = 0;
          v73[0] = MEMORY[0x1E69E9820];
          v73[1] = 3221225472;
          v73[2] = __86__NSFileAccessArbiter__writerWithPurposeID_didMoveItemAtURL_toURL_withFSID_andFileID___block_invoke_6;
          v73[3] = &unk_1E69F8B10;
          v73[4] = &v80;
          v73[5] = &v74;
          [v18 forEachAccessClaimOnItemOrContainedItemPerformProcedure:v73];
          v46 = v81[5];
          v72[0] = MEMORY[0x1E69E9820];
          v72[1] = 3221225472;
          v72[2] = __86__NSFileAccessArbiter__writerWithPurposeID_didMoveItemAtURL_toURL_withFSID_andFileID___block_invoke_7;
          v72[3] = &unk_1E69F8B38;
          v72[5] = v17;
          v72[6] = &v74;
          v72[4] = v18;
          [v46 enumerateObjectsUsingBlock:v72];

          v66 = 0;
          v67 = &v66;
          v68 = 0x3052000000;
          v69 = __Block_byref_object_copy__28;
          v70 = __Block_byref_object_dispose__28;
          v71 = 0;
          v60 = 0;
          v61 = &v60;
          v62 = 0x3052000000;
          v63 = __Block_byref_object_copy__28;
          v64 = __Block_byref_object_dispose__28;
          v65 = 0;
          v59[0] = MEMORY[0x1E69E9820];
          v59[1] = 3221225472;
          v59[2] = __86__NSFileAccessArbiter__writerWithPurposeID_didMoveItemAtURL_toURL_withFSID_andFileID___block_invoke_49;
          v59[3] = &unk_1E69F8B60;
          v59[4] = &v66;
          v59[5] = &v60;
          [v18 forEachProgressThingOfItemOrContainedItemPerformProcedure:v59];
          v47 = v67[5];
          v58[0] = MEMORY[0x1E69E9820];
          v58[1] = 3221225472;
          v58[2] = __86__NSFileAccessArbiter__writerWithPurposeID_didMoveItemAtURL_toURL_withFSID_andFileID___block_invoke_2_51;
          v58[3] = &unk_1E69F8B38;
          v58[5] = v17;
          v58[6] = &v60;
          v58[4] = v18;
          [v47 enumerateObjectsUsingBlock:v58];

          _Block_object_dispose(&v60, 8);
          _Block_object_dispose(&v66, 8);
          _Block_object_dispose(&v74, 8);
          _Block_object_dispose(&v80, 8);
          _Block_object_dispose(&v87, 8);
        }

        _Block_object_dispose(&v95, 8);
        _Block_object_dispose(&v102, 8);
      }
    }
  }
}

uint64_t __86__NSFileAccessArbiter__writerWithPurposeID_didMoveItemAtURL_toURL_withFSID_andFileID___block_invoke_35(uint64_t a1, uint64_t a2)
{
  v4 = *(*(*(a1 + 32) + 8) + 40);
  if (!v4)
  {
    *(*(*(a1 + 32) + 8) + 40) = objc_alloc_init(MEMORY[0x1E695DF70]);
    v4 = *(*(*(a1 + 32) + 8) + 40);
  }

  return [v4 addObject:a2];
}

uint64_t __86__NSFileAccessArbiter__writerWithPurposeID_didMoveItemAtURL_toURL_withFSID_andFileID___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = *(*(*(a1 + 32) + 8) + 40);
  if (!v4)
  {
    *(*(*(a1 + 32) + 8) + 40) = objc_alloc_init(MEMORY[0x1E695DF70]);
    v4 = *(*(*(a1 + 32) + 8) + 40);
  }

  return [v4 addObject:a2];
}

uint64_t __86__NSFileAccessArbiter__writerWithPurposeID_didMoveItemAtURL_toURL_withFSID_andFileID___block_invoke_3(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) physicalURL];
  v7 = *(a1 + 48);
  v6 = *(a1 + 56);

  return [a2 observeMoveByWriterWithPurposeID:v4 withPhysicalDestinationURL:v5 withFSID:v6 andFileID:v7];
}

uint64_t __86__NSFileAccessArbiter__writerWithPurposeID_didMoveItemAtURL_toURL_withFSID_andFileID___block_invoke_4(uint64_t a1, void *a2)
{
  v4 = [a2 itemLocation];
  v5 = [objc_msgSend(*(a1 + 32) "itemLocation")];
  v6 = *(a1 + 56);
  if (v6)
  {
    v7 = [v4 url];
    v6 = *(a1 + 56);
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a1 + 32);
  if (v6 == v8)
  {
    v9 = @"itemMoved";
    v10 = a2;
    v11 = v5;
    v12 = v7;
  }

  else
  {
    [v8 observePresentationChangeOfKind:@"removed" withPresenter:a2 url:v5 newURL:0];
    v9 = @"added";
    v8 = *(a1 + 56);
    v10 = a2;
    v11 = v7;
    v12 = 0;
  }

  return [v8 observePresentationChangeOfKind:v9 withPresenter:v10 url:v11 newURL:v12];
}

uint64_t __86__NSFileAccessArbiter__writerWithPurposeID_didMoveItemAtURL_toURL_withFSID_andFileID___block_invoke_5(uint64_t a1, uint64_t a2)
{
  v4 = *(*(*(a1 + 32) + 8) + 40);
  if (!v4)
  {
    *(*(*(a1 + 32) + 8) + 40) = objc_alloc_init(MEMORY[0x1E695DF70]);
    v4 = *(*(*(a1 + 32) + 8) + 40);
  }

  return [v4 addObject:a2];
}

uint64_t __86__NSFileAccessArbiter__writerWithPurposeID_didMoveItemAtURL_toURL_withFSID_andFileID___block_invoke_6(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(*(a1 + 32) + 8) + 40);
  if (!v6)
  {
    *(*(*(a1 + 32) + 8) + 40) = objc_alloc_init(MEMORY[0x1E695DF70]);
    v6 = *(*(*(a1 + 32) + 8) + 40);
  }

  [v6 addObject:a2];
  v7 = *(*(*(a1 + 40) + 8) + 40);
  if (!v7)
  {
    *(*(*(a1 + 40) + 8) + 40) = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = *(*(*(a1 + 40) + 8) + 40);
  }

  return [v7 addObject:a3];
}

void __86__NSFileAccessArbiter__writerWithPurposeID_didMoveItemAtURL_toURL_withFSID_andFileID___block_invoke_7(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = [*(*(*(a1 + 48) + 8) + 40) objectAtIndex:?];
  v5 = [v4 pathFromAncestor:*(a1 + 32)];
  v6 = [*(a1 + 40) descendantAtPath:v5 componentRange:0 create:{objc_msgSend(v5, "count"), 1}];
  if (v6 == v4)
  {
    v7 = _NSFCClaimsLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      *v8 = 0;
      _os_log_fault_impl(&dword_18075C000, v7, OS_LOG_TYPE_FAULT, "An arbiter is confusing itself after a file was moved while telling claims about node replacement", v8, 2u);
    }
  }

  else
  {

    [a2 itemAtLocation:v4 wasReplacedByItemAtLocation:v6];
  }
}

uint64_t __86__NSFileAccessArbiter__writerWithPurposeID_didMoveItemAtURL_toURL_withFSID_andFileID___block_invoke_49(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(*(a1 + 32) + 8) + 40);
  if (!v6)
  {
    *(*(*(a1 + 32) + 8) + 40) = objc_alloc_init(MEMORY[0x1E695DF70]);
    v6 = *(*(*(a1 + 32) + 8) + 40);
  }

  [v6 addObject:a2];
  v7 = *(*(*(a1 + 40) + 8) + 40);
  if (!v7)
  {
    *(*(*(a1 + 40) + 8) + 40) = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = *(*(*(a1 + 40) + 8) + 40);
  }

  return [v7 addObject:a3];
}

void __86__NSFileAccessArbiter__writerWithPurposeID_didMoveItemAtURL_toURL_withFSID_andFileID___block_invoke_2_51(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = [*(*(*(a1 + 48) + 8) + 40) objectAtIndex:?];
  v5 = [v4 pathFromAncestor:*(a1 + 32)];
  v6 = [*(a1 + 40) descendantAtPath:v5 componentRange:0 create:{objc_msgSend(v5, "count"), 1}];
  if (v6 == v4)
  {
    v7 = _NSFCClaimsLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      *v8 = 0;
      _os_log_fault_impl(&dword_18075C000, v7, OS_LOG_TYPE_FAULT, "An arbiter is confusing itself after a file was moved while telling progress things about node replacement", v8, 2u);
    }
  }

  else
  {

    [a2 setItemLocation:v6];
  }
}

uint64_t __86__NSFileAccessArbiter__writerWithPurposeID_didMoveItemAtURL_toURL_withFSID_andFileID___block_invoke_52(uint64_t result, void *a2)
{
  if (*(result + 32) == 1)
  {
    if ((*(result + 33) & 1) == 0)
    {
      return [a2 promisedFileWasFulfilled];
    }
  }

  else if (*(result + 33))
  {
    return [a2 localFileWasEvicted];
  }

  return result;
}

- (BOOL)_addPresenter:(id)a3 ofItemAtURL:(id)a4 watchingFile:(BOOL)a5 withLastEventID:(id)a6
{
  v7 = a5;
  v22 = *MEMORY[0x1E69E9840];
  v11 = [a3 reactorID];
  v12 = [(NSMutableDictionary *)self->_reactorsByID objectForKey:v11];
  if (v12)
  {
    if (!self->_isSubarbiter)
    {
      v13 = _NSFCPresenterLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v21 = v11;
        _os_log_impl(&dword_18075C000, v13, OS_LOG_TYPE_DEFAULT, "Ignored new presenter %{public}@, because one with the same ID already exists", buf, 0xCu);
      }
    }
  }

  else
  {
    if (!self->_isSubarbiter)
    {
      v14 = _NSFCPresenterLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v21 = v11;
        _os_log_impl(&dword_18075C000, v14, OS_LOG_TYPE_DEFAULT, "Added presenter %{public}@", buf, 0xCu);
      }
    }

    [(NSMutableDictionary *)self->_reactorsByID setObject:a3 forKey:v11];
    if (self->_isSubarbiter)
    {
      [a3 setInSubarbiter:1];
    }

    -[NSString UTF8String](+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Presenter: %@ (%d)", [v11 description], -[NSXPCConnection processIdentifier](+[NSXPCConnection currentConnection](NSXPCConnection, "currentConnection"), "processIdentifier")), "UTF8String");
    v15 = os_transaction_create();
    [(NSMutableDictionary *)self->_reactorTransactionsByID setObject:v15 forKey:v11];

    if (a4)
    {
      v16 = [(NSFileAccessNode *)self->_rootNode descendantForFileURL:a4];
      if (v16)
      {
        [a3 setItemLocation:v16];
      }
    }

    if (v7 && ([a3 inSubarbiter] & 1) == 0)
    {
      queue = self->_queue;
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __78__NSFileAccessArbiter__addPresenter_ofItemAtURL_watchingFile_withLastEventID___block_invoke;
      v19[3] = &unk_1E69F8BD0;
      v19[4] = self;
      [a3 startWatchingWithQueue:queue lastEventID:a6 unannouncedMoveHandler:v19];
    }

    if (!self->_isSubarbiter)
    {
      [a3 startObservingApplicationStateWithQueue:self->_queue];
    }
  }

  return v12 == 0;
}

uint64_t __78__NSFileAccessArbiter__addPresenter_ofItemAtURL_watchingFile_withLastEventID___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v20 = *MEMORY[0x1E69E9840];
  v12 = _NSFCLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v19 = a2;
    _os_log_impl(&dword_18075C000, v12, OS_LOG_TYPE_INFO, "Detected file move on behalf of writing claim %{public}@", buf, 0xCu);
  }

  v13 = [NSURLPromisePair pairWithLogicalURL:a3 physicalURL:0];
  v14 = [NSURLPromisePair pairWithLogicalURL:a4 physicalURL:0];
  [*(a1 + 32) _writerWithPurposeID:a2 didMoveItemAtURL:v13 toURL:v14 withFSID:a5 andFileID:a6];
  v15 = *(a1 + 32);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __78__NSFileAccessArbiter__addPresenter_ofItemAtURL_watchingFile_withLastEventID___block_invoke_57;
  v17[3] = &unk_1E69F8BA8;
  v17[4] = a2;
  v17[5] = v13;
  v17[7] = a6;
  v17[8] = a5;
  v17[6] = v14;
  return [v15 _enumerateSubarbitersUsingBlock:v17];
}

- (BOOL)_addProvider:(id)a3 ofItemsAtURL:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v7 = [a3 reactorID];
  v8 = [a3 uniqueID];
  if (!self->_isSubarbiter)
  {
    v9 = _NSFCProviderLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v18 = v7;
      _os_log_impl(&dword_18075C000, v9, OS_LOG_TYPE_DEFAULT, "Added provider %{public}@", buf, 0xCu);
    }
  }

  v10 = [(NSFileAccessNode *)self->_rootNode descendantForFileURL:a4];
  if (v10)
  {
    v11 = v10;
    [a3 setItemLocation:v10];
    if ([a3 itemLocation] == v11)
    {
      [(NSMutableDictionary *)self->_reactorsByID setObject:a3 forKey:v8];
      -[NSString UTF8String](+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Provider: %@ (%d)", [v7 description], -[NSXPCConnection processIdentifier](+[NSXPCConnection currentConnection](NSXPCConnection, "currentConnection"), "processIdentifier")), "UTF8String");
      v15 = os_transaction_create();
      [(NSMutableDictionary *)self->_reactorTransactionsByID setObject:v15 forKey:v8];

      LOBYTE(v13) = 1;
      return v13;
    }

    v12 = _NSFCProviderLog();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    if (v13)
    {
      *buf = 138543362;
      v18 = v7;
      v14 = "Added provider %{public}@ failed because -setItemLocation: failed";
LABEL_10:
      _os_log_impl(&dword_18075C000, v12, OS_LOG_TYPE_DEFAULT, v14, buf, 0xCu);
      LOBYTE(v13) = 0;
    }
  }

  else
  {
    v12 = _NSFCProviderLog();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    if (v13)
    {
      *buf = 138543362;
      v18 = v7;
      v14 = "Added provider %{public}@ failed because no node was found";
      goto LABEL_10;
    }
  }

  return v13;
}

- (void)_willRemoveReactor:(id)a3
{
  if (object_getClass(a3) == NSFilePresenterProxy)
  {
    [a3 stopObservingApplicationState];
    v5 = [a3 reactorID];
  }

  else
  {
    if (object_getClass(a3) != NSFileProviderProxy)
    {
      qword_1EA7BB378 = "Unexpected type as argument to _willRemoveReactor";
      __break(1u);
      return;
    }

    v5 = [a3 uniqueID];
  }

  v6 = v5;
  [a3 setItemLocation:0];
  [a3 invalidate];
  reactorTransactionsByID = self->_reactorTransactionsByID;

  [(NSMutableDictionary *)reactorTransactionsByID removeObjectForKey:v6];
}

- (void)_removeReactorForID:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = [(NSMutableDictionary *)self->_reactorsByID objectForKey:?];
  if (v5)
  {
    v6 = v5;
    if (object_getClass(v5) == NSFileProviderProxy)
    {
      v7 = _NSFCProviderLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 138543362;
        *&v9[4] = [v6 reactorID];
        v8 = "Removed provider %{public}@";
        goto LABEL_7;
      }
    }

    else
    {
      v7 = _NSFCPresenterLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 138543362;
        *&v9[4] = [v6 reactorID];
        v8 = "Removed presenter %{public}@";
LABEL_7:
        _os_log_impl(&dword_18075C000, v7, OS_LOG_TYPE_DEFAULT, v8, v9, 0xCu);
      }
    }

    [(NSFileAccessArbiter *)self _willRemoveReactor:v6, *v9];
    [(NSMutableDictionary *)self->_reactorsByID removeObjectForKey:a3];
  }
}

- (void)_startArbitratingItemsAtURLs:(id)a3 withSuperarbitrationServer:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v7 = _NSFCClaimsLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v21 = [a3 count];
    _os_log_impl(&dword_18075C000, v7, OS_LOG_TYPE_INFO, "Starting subarbitration for %lu URLs", buf, 0xCu);
  }

  if (!self->_isSubarbiter)
  {
    v8 = _NSFCClaimsLog();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_8;
    }

    *buf = 0;
    v9 = "NSFileCoordinator: A superarbiter was told to start arbitrating, which is a surprise.";
    goto LABEL_19;
  }

  if (self->_superarbitrationServer)
  {
    v8 = _NSFCClaimsLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      v9 = "NSFileCoordinator: A subarbiter was told by a superarbiter to start subarbitrating twice, which is a surprise.";
LABEL_19:
      _os_log_fault_impl(&dword_18075C000, v8, OS_LOG_TYPE_FAULT, v9, buf, 2u);
    }
  }

LABEL_8:
  self->_superarbitrationServer = a4;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = [a3 countByEnumeratingWithState:&v16 objects:v15 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(a3);
        }

        v14 = [(NSFileAccessNode *)self->_rootNode descendantForFileURL:*(*(&v16 + 1) + 8 * i)];
        if (v14)
        {
          [v14 setArbitrationBoundary];
        }
      }

      v11 = [a3 countByEnumeratingWithState:&v16 objects:v15 count:16];
    }

    while (v11);
  }
}

- (void)stopArbitrating
{
  v3[5] = *MEMORY[0x1E69E9840];
  queue = self->_queue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __38__NSFileAccessArbiter_stopArbitrating__block_invoke;
  v3[3] = &unk_1E69F2C00;
  v3[4] = self;
  dispatch_sync(queue, v3);
}

uint64_t __38__NSFileAccessArbiter_stopArbitrating__block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = _NSFCClaimsLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_18075C000, v2, OS_LOG_TYPE_INFO, "Stopping subarbitration", buf, 2u);
  }

  *(*(a1 + 32) + 24) = 1;
  [*(*(a1 + 32) + 16) invalidate];

  *(*(a1 + 32) + 96) = 0;
  v3 = *(*(a1 + 32) + 104);
  if (v3)
  {
    dispatch_source_cancel(v3);
    dispatch_release(*(*(a1 + 32) + 104));
    *(*(a1 + 32) + 104) = 0;
  }

  v4 = [MEMORY[0x1E695DF70] array];
  v5 = *(a1 + 32);
  v6 = *(v5 + 88);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __38__NSFileAccessArbiter_stopArbitrating__block_invoke_64;
  v11[3] = &unk_1E69F8BF8;
  v11[4] = v4;
  v11[5] = v5;
  [v6 forEachAccessClaimOnItemOrContainedItemPerformProcedure:v11];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  result = [v4 countByEnumeratingWithState:&v14 objects:v13 count:16];
  if (result)
  {
    v8 = result;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v14 + 1) + 8 * v10++) revoked];
      }

      while (v8 != v10);
      result = [v4 countByEnumeratingWithState:&v14 objects:v13 count:16];
      v8 = result;
    }

    while (result);
  }

  return result;
}

uint64_t __38__NSFileAccessArbiter_stopArbitrating__block_invoke_64(uint64_t a1, void *a2)
{
  v6[5] = *MEMORY[0x1E69E9840];
  if ([a2 cameFromSuperarbiter])
  {
    v4 = *(a1 + 32);

    return [v4 addObject:a2];
  }

  else
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __38__NSFileAccessArbiter_stopArbitrating__block_invoke_2;
    v6[3] = &unk_1E69F2C00;
    v6[4] = *(a1 + 40);
    return [a2 whenDevaluedPerformProcedure:v6];
  }
}

- (id)rootNode
{
  v2 = self->_rootNode;

  return v2;
}

- (NSXPCConnection)superarbitrationConnection
{
  v2 = self->_superarbitrationServer;

  return v2;
}

- (void)_enumerateSubarbitersUsingBlock:(id)a3
{
  v4[5] = *MEMORY[0x1E69E9840];
  subarbitrationClaimsByID = self->_subarbitrationClaimsByID;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __55__NSFileAccessArbiter__enumerateSubarbitersUsingBlock___block_invoke;
  v4[3] = &unk_1E69F8C20;
  v4[4] = a3;
  [(NSMutableDictionary *)subarbitrationClaimsByID enumerateKeysAndObjectsUsingBlock:v4];
}

uint64_t __55__NSFileAccessArbiter__enumerateSubarbitersUsingBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  result = [a3 isGranted];
  if (result)
  {
    result = [a3 nullified];
    if ((result & 1) == 0)
    {
      v6 = *(a1 + 32);
      v7 = [objc_msgSend(a3 "subarbiterConnection")];
      v8 = *(v6 + 16);

      return v8(v6, v7);
    }
  }

  return result;
}

- (void)grantAccessClaim:(id)a3 withReply:(id)a4
{
  v13 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v7 = +[NSXPCConnection currentConnection];
    [a3 acceptClaimFromClient:v7 arbiterQueue:self->_queue grantHandler:a4];
    superarbitrationServer = self->_superarbitrationServer;
    if (superarbitrationServer)
    {
      if (v7 == superarbitrationServer)
      {
        [a3 setCameFromSuperarbiter];
      }

      else
      {
        v9 = _NSFCClaimsLog();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
        {
          v11 = 138543362;
          v12 = [a3 claimID];
          _os_log_fault_impl(&dword_18075C000, v9, OS_LOG_TYPE_FAULT, "A subarbiter is being asked to grant a claim (%{public}@) by something other than its superarbiter, which is a surprise.", &v11, 0xCu);
        }
      }
    }

    [(NSFileAccessArbiter *)self _grantAccessClaim:a3];
  }

  else
  {
    v10 = _NSFCClaimsLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      LOWORD(v11) = 0;
      _os_log_fault_impl(&dword_18075C000, v10, OS_LOG_TYPE_FAULT, "Received a request to grant an access claim, but received no access claim instance.", &v11, 2u);
    }
  }
}

- (void)grantSubarbitrationClaim:(id)a3 withServer:(id)a4 reply:(id)a5
{
  v12[5] = *MEMORY[0x1E69E9840];
  v9 = +[NSXPCConnection currentConnection];
  queue = self->_queue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __65__NSFileAccessArbiter_grantSubarbitrationClaim_withServer_reply___block_invoke;
  v12[3] = &unk_1E69F8C48;
  v12[4] = a5;
  [a3 acceptClaimFromClient:v9 arbiterQueue:queue grantHandler:v12];
  v11 = [[NSXPCConnection alloc] initWithListenerEndpoint:a4];
  [(NSXPCConnection *)v11 setExportedObject:self];
  [(NSXPCConnection *)v11 setExportedInterface:+[NSFileCoordinator _fileAccessArbiterInterface]];
  [(NSFileAccessArbiter *)self _grantSubarbitrationClaim:a3 withServer:v11];
}

- (void)performMateralizationOfURL:(id)a3 withProvider:(id)a4 fakeClaim:(id)a5 kernelInfo:(id)a6 requestID:(id)a7 fromProcess:(id *)a8 completionHandler:(id)a9
{
  v21 = *MEMORY[0x1E69E9840];
  -[NSString UTF8String](+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Nspace Materialization: %@ (%d)", [a5 claimID], a8->var0[5]), "UTF8String");
  v16 = os_transaction_create();
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __124__NSFileAccessArbiter_performMateralizationOfURL_withProvider_fakeClaim_kernelInfo_requestID_fromProcess_completionHandler___block_invoke;
  v19[3] = &unk_1E69F8C70;
  v19[4] = a5;
  v19[5] = a7;
  v19[6] = self;
  v19[7] = a9;
  v17 = *&a8->var0[4];
  v20[0] = *a8->var0;
  v20[1] = v17;
  v18 = [a4 provideItemForKernelRequestWithInfo:a6 atURL:a3 forProcess:v20 withOptions:0x40000000 completionHandler:v19];
  if (a7)
  {
    [(NSMutableDictionary *)self->_kernelMaterializationClaimCancellers setObject:v18 forKey:a7];
    [(NSMutableDictionary *)self->_kernelMaterializationClaimTransactions setObject:v16 forKey:a7];
  }
}

uint64_t __124__NSFileAccessArbiter_performMateralizationOfURL_withProvider_fakeClaim_kernelInfo_requestID_fromProcess_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  [*(a1 + 32) revoked];
  if (*(a1 + 40))
  {
    [*(*(a1 + 48) + 72) removeObjectForKey:?];
    [*(*(a1 + 48) + 80) removeObjectForKey:*(a1 + 40)];
  }

  v4 = *(a1 + 56);
  v5 = [a2 providedItemRecursiveGenerationCount];
  v6 = [a2 error];
  v7 = *(v4 + 16);

  return v7(v4, v5, v6);
}

- (void)makeProviderMaterializeFileAtURL:(id)a3 kernelInfo:(id)a4 withRequestID:(id)a5 fromProcess:(id *)a6 completionHandler:(id)a7
{
  v22 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_not_V2(self->_queue);
  v17 = 0;
  v16 = 0;
  if (_NSFCGetFileProviderUIDFOrURL(a3, &v16, &v17))
  {
    v13 = os_transaction_create();
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    v15 = *&a6->var0[4];
    v20 = *a6->var0;
    block[2] = __111__NSFileAccessArbiter_makeProviderMaterializeFileAtURL_kernelInfo_withRequestID_fromProcess_completionHandler___block_invoke;
    block[3] = &unk_1E69F8CC0;
    block[4] = self;
    block[5] = a3;
    v19 = v16;
    block[6] = a4;
    block[7] = a5;
    v21 = v15;
    block[8] = v13;
    block[9] = a7;
    dispatch_async(queue, block);
  }

  else
  {
    (*(a7 + 2))(a7, 0, v17);
  }
}

void __111__NSFileAccessArbiter_makeProviderMaterializeFileAtURL_kernelInfo_withRequestID_fromProcess_completionHandler___block_invoke(uint64_t a1)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v2 = [objc_msgSend(*(a1 + 32) "rootNode")];
  v3 = [[NSFileReadingClaim alloc] initWithPurposeID:@"kernel-provider-materialization" url:*(a1 + 40) options:0 claimer:0];
  v4 = objc_opt_class();
  v5 = *(a1 + 80);
  v19[0] = v2;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
  v12[0] = MEMORY[0x1E69E9820];
  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  v9 = *(*(a1 + 32) + 8);
  v12[1] = 3221225472;
  v12[2] = __111__NSFileAccessArbiter_makeProviderMaterializeFileAtURL_kernelInfo_withRequestID_fromProcess_completionHandler___block_invoke_2;
  v12[3] = &unk_1E69F8C98;
  v12[4] = v2;
  v13 = v7;
  v14 = v3;
  v10 = *(a1 + 100);
  v17 = *(a1 + 84);
  v18 = v10;
  v11 = *(a1 + 64);
  v15 = v8;
  v16 = v11;
  [v4 ensureProvidersIfNecessaryForClaim:v3 user:v5 atLocations:v6 queue:v9 thenContinue:v12];
}

void __111__NSFileAccessArbiter_makeProviderMaterializeFileAtURL_kernelInfo_withRequestID_fromProcess_completionHandler___block_invoke_2(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) itemProvider];
  if (v2)
  {
    v3 = v2;
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v6 = *(a1 + 56);
    v7 = *(a1 + 64);
    v8 = *(a1 + 72);
    v9 = *(a1 + 88);
    v10 = *(a1 + 112);
    *buf = *(a1 + 96);
    *&buf[16] = v10;
    [v4 performMateralizationOfURL:v5 withProvider:v3 fakeClaim:v6 kernelInfo:v7 requestID:v8 fromProcess:buf completionHandler:v9];
  }

  else
  {
    v11 = _NSFCLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = [*(a1 + 72) intValue];
      *buf = 67109120;
      *&buf[4] = v12;
      _os_log_impl(&dword_18075C000, v11, OS_LOG_TYPE_INFO, "No provider found for materialization - req: %d", buf, 8u);
    }

    v21 = 0;
    v22 = 0;
    if ([*(a1 + 48) getResourceValue:&v22 forKey:*MEMORY[0x1E695DB78] error:&v21])
    {
      if ([v22 BOOLValue])
      {
        v13 = _NSFCLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v20 = [*(a1 + 72) intValue];
          *buf = 67109120;
          *&buf[4] = v20;
          _os_log_error_impl(&dword_18075C000, v13, OS_LOG_TYPE_ERROR, "Not materializing provider-less directory - req: %d", buf, 8u);
        }

        v14 = @"NSPOSIXErrorDomain";
        v15 = 60;
      }

      else
      {
        v14 = @"NSCocoaErrorDomain";
        v15 = 256;
      }

      v21 = [NSError errorWithDomain:v14 code:v15 userInfo:0];
    }

    else
    {
      v16 = _NSFCLog();
      v17 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
      v18 = v21;
      if (v17)
      {
        v19 = [*(a1 + 72) intValue];
        *buf = 138412546;
        *&buf[4] = v18;
        *&buf[12] = 1024;
        *&buf[14] = v19;
        _os_log_error_impl(&dword_18075C000, v16, OS_LOG_TYPE_ERROR, "Unable to determine if provider-less fault is a directory: %@ - req: %d", buf, 0x12u);
      }
    }

    (*(*(a1 + 88) + 16))();
  }
}

- (void)resolveReparentRequestOfFileAtURL:(id)a3 toDestinationDirectory:(id)a4 withRequestID:(id)a5 operation:(unsigned int)a6 fromProcess:(id *)a7 completionHandler:(id)a8
{
  v25 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_not_V2(self->_queue);
  v19 = 0;
  v18 = 0;
  if (_NSFCGetFileProviderUIDFOrURL(a3, &v18, &v19))
  {
    v15 = os_transaction_create();
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    v17 = *&a7->var0[4];
    v23 = *a7->var0;
    block[2] = __134__NSFileAccessArbiter_resolveReparentRequestOfFileAtURL_toDestinationDirectory_withRequestID_operation_fromProcess_completionHandler___block_invoke;
    block[3] = &unk_1E69F8D60;
    block[4] = self;
    block[5] = a3;
    v21 = v18;
    v22 = a6;
    block[6] = a4;
    block[7] = a5;
    v24 = v17;
    block[8] = v15;
    block[9] = a8;
    dispatch_async(queue, block);
  }

  else
  {
    (*(a8 + 2))(a8, 0, 0, v19);
  }
}

void __134__NSFileAccessArbiter_resolveReparentRequestOfFileAtURL_toDestinationDirectory_withRequestID_operation_fromProcess_completionHandler___block_invoke(uint64_t a1)
{
  v19[2] = *MEMORY[0x1E69E9840];
  v2 = [objc_msgSend(*(a1 + 32) "rootNode")];
  v19[0] = [NSFileAccessIntent readingIntentWithURL:*(a1 + 40) options:0];
  v19[1] = [NSFileAccessIntent readingIntentWithURL:*(a1 + 48) options:0];
  v3 = -[NSFileMultipleAccessClaim initWithPurposeID:intents:claimer:]([NSFileMultipleAccessClaim alloc], "initWithPurposeID:intents:claimer:", @"kernel-provider-reparent", [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2], 0);
  v4 = objc_opt_class();
  v5 = *(a1 + 80);
  v18 = v2;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1];
  v7 = *(a1 + 32);
  v8 = *(v7 + 8);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __134__NSFileAccessArbiter_resolveReparentRequestOfFileAtURL_toDestinationDirectory_withRequestID_operation_fromProcess_completionHandler___block_invoke_2;
  v9[3] = &unk_1E69F8D38;
  v9[4] = v2;
  v10 = *(a1 + 40);
  v15 = *(a1 + 84);
  v11 = v7;
  v12 = v3;
  v17 = *(a1 + 104);
  v16 = *(a1 + 88);
  v14 = *(a1 + 72);
  v13 = *(a1 + 56);
  [v4 ensureProvidersIfNecessaryForClaim:v3 user:v5 atLocations:v6 queue:v8 thenContinue:v9];
}

void __134__NSFileAccessArbiter_resolveReparentRequestOfFileAtURL_toDestinationDirectory_withRequestID_operation_fromProcess_completionHandler___block_invoke_2(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) itemProvider];
  if (v2)
  {
    v3 = *(a1 + 40);
    v7 = MEMORY[0x1E69E9820];
    v8 = 3221225472;
    v9 = __134__NSFileAccessArbiter_resolveReparentRequestOfFileAtURL_toDestinationDirectory_withRequestID_operation_fromProcess_completionHandler___block_invoke_3;
    v10 = &unk_1E69F8D10;
    v16 = *(a1 + 96);
    v11 = *(a1 + 56);
    v12 = v3;
    v13 = v2;
    v14 = *(a1 + 64);
    v17 = *(a1 + 100);
    v18 = *(a1 + 116);
    v15 = *(a1 + 88);
    [v2 movingItemAtURL:? requiresProvidingWithDestinationDirectoryURL:? newFileName:? completionHandler:?];
  }

  else
  {
    v4 = _NSFCLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = [*(a1 + 72) intValue];
      v6[0] = 67109120;
      v6[1] = v5;
      _os_log_error_impl(&dword_18075C000, v4, OS_LOG_TYPE_ERROR, "No provider found for reparent request - req: %d", v6, 8u);
    }

    (*(*(a1 + 88) + 16))(*(a1 + 88), 0, 0, [NSError errorWithDomain:@"NSCocoaErrorDomain" code:256 userInfo:0]);
  }
}

uint64_t __134__NSFileAccessArbiter_resolveReparentRequestOfFileAtURL_toDestinationDirectory_withRequestID_operation_fromProcess_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (([a2 requiresProviding] & 1) != 0 || objc_msgSend(objc_msgSend(a2, "syncRootID"), "unsignedLongLongValue") == -1)
  {
    v8 = [NSFileProviderKernelMaterializationInfo kernelMaterializationInfoWithOperation:*(a1 + 80)];
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = *(a1 + 48);
    v12 = *(a1 + 56);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __134__NSFileAccessArbiter_resolveReparentRequestOfFileAtURL_toDestinationDirectory_withRequestID_operation_fromProcess_completionHandler___block_invoke_4;
    v15[3] = &unk_1E69F8CE8;
    v13 = *(a1 + 64);
    v15[4] = *(a1 + 72);
    v14 = *(a1 + 100);
    v16[0] = *(a1 + 84);
    v16[1] = v14;
    return [v9 performMateralizationOfURL:v10 withProvider:v11 fakeClaim:v12 kernelInfo:v8 requestID:v13 fromProcess:v16 completionHandler:v15];
  }

  else
  {
    v4 = *(a1 + 72);
    v5 = [objc_msgSend(a2 "syncRootID")];
    v6 = *(v4 + 16);

    return v6(v4, v5, 0, 0);
  }
}

- (void)cancelMaterializationWithRequestID:(id)a3
{
  block[6] = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_not_V2(self->_queue);
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__NSFileAccessArbiter_cancelMaterializationWithRequestID___block_invoke;
  block[3] = &unk_1E69F2080;
  block[4] = self;
  block[5] = a3;
  dispatch_async(queue, block);
}

uint64_t __58__NSFileAccessArbiter_cancelMaterializationWithRequestID___block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 72) objectForKey:*(a1 + 40)];
  if (result)
  {
    (*(result + 16))();
    [*(*(a1 + 32) + 72) removeObjectForKey:*(a1 + 40)];
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 32) + 80);

    return [v4 removeObjectForKey:v3];
  }

  return result;
}

- (void)addPresenter:(id)a3 withID:(id)a4 fileURL:(id)a5 lastPresentedItemEventIdentifier:(id)a6 ubiquityAttributes:(id)a7 options:(unint64_t)a8 responses:(unint64_t)a9
{
  v15[5] = *MEMORY[0x1E69E9840];
  v14 = [[NSFilePresenterProxy alloc] initWithClient:+[NSXPCConnection remotePresenter:"currentConnection"]reactorID:a3, a4];
  [(NSFilePresenterProxy *)v14 setUsesMainThreadDuringReliquishing:(a8 >> 1) & 1];
  [(NSFilePresenterProxy *)v14 setFilePresenterResponses:a9];
  [(NSFilePresenterProxy *)v14 setObservedUbiquityAttributes:a7];
  -[NSFileReactorProxy setEffectiveUserIdentifier:](v14, "setEffectiveUserIdentifier:", [+[NSXPCConnection currentConnection](NSXPCConnection effectiveUserIdentifier]);
  if (!a5 || self->_isSubarbiter || [(NSFilePresenterProxy *)v14 allowedForURL:a5])
  {
    if ([(NSFileAccessArbiter *)self _addPresenter:v14 ofItemAtURL:a5 watchingFile:a8 & 1 withLastEventID:a6])
    {
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __121__NSFileAccessArbiter_addPresenter_withID_fileURL_lastPresentedItemEventIdentifier_ubiquityAttributes_options_responses___block_invoke;
      v15[3] = &unk_1E69F8D88;
      v15[4] = v14;
      [(NSFileAccessArbiter *)self _enumerateSubarbitersUsingBlock:v15];
    }
  }
}

- (void)removePresenterWithID:(id)a3
{
  v5[5] = *MEMORY[0x1E69E9840];
  [(NSFileAccessArbiter *)self _removeReactorForID:?];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __45__NSFileAccessArbiter_removePresenterWithID___block_invoke;
  v5[3] = &unk_1E69F8D88;
  v5[4] = a3;
  [(NSFileAccessArbiter *)self _enumerateSubarbitersUsingBlock:v5];
}

+ (id)entitlementForConnection:(id)a3 key:(id)a4
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = [objc_getAssociatedObject(a3 &NSFCXPCEntitlements)];
  if (v6 == [MEMORY[0x1E695DFB0] null])
  {
    return 0;
  }

  if (!v6)
  {
    v7 = _NSFCLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9 = 138543618;
      v10 = a4;
      v11 = 2114;
      v12 = a3;
      _os_log_impl(&dword_18075C000, v7, OS_LOG_TYPE_INFO, "Add key: %{public}@ to entitlement cache for connection: %{public}@", &v9, 0x16u);
    }

    return [a3 valueForEntitlement:a4];
  }

  return v6;
}

- (void)addProvider:(id)a3 withID:(id)a4 uniqueID:(id)a5 forProvidedItemsURL:(id)a6 options:(unint64_t)a7 withServer:(id)a8 reply:(id)a9
{
  v10 = a7;
  v40 = *MEMORY[0x1E69E9840];
  v15 = +[NSXPCConnection currentConnection];
  v34[0] = @"com.apple.private.foundation.fileprovideridentifier";
  v34[1] = @"application-identifier";
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:2];
  if (!objc_getAssociatedObject(v15, &NSFCXPCEntitlements))
  {
    v27 = a5;
    v28 = v10;
    v29 = a6;
    v17 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v16, "count")}];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v18 = [v16 countByEnumeratingWithState:&v36 objects:v35 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v37;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v37 != v20)
          {
            objc_enumerationMutation(v16);
          }

          v22 = *(*(&v36 + 1) + 8 * i);
          v23 = [(NSXPCConnection *)v15 valueForEntitlement:v22];
          if (!v23)
          {
            v23 = [MEMORY[0x1E695DFB0] null];
          }

          [v17 setValue:v23 forKey:v22];
        }

        v19 = [v16 countByEnumeratingWithState:&v36 objects:v35 count:16];
      }

      while (v19);
    }

    objc_setAssociatedObject(v15, &NSFCXPCEntitlements, v17, 0x303);
    a6 = v29;
    a5 = v27;
    v10 = v28;
  }

  if (v15)
  {
    [(_NSXPCConnectionImportInfo *)v15->_importInfo _clearEntitlementCache];
  }

  if (self->_isSubarbiter)
  {
    v24 = 0;
  }

  else
  {
    v24 = [NSFileAccessArbiter entitlementForConnection:v15 key:@"com.apple.private.foundation.fileprovideridentifier"];
    if (!_NSIsNSString())
    {
      v24 = 0;
    }
  }

  v25 = [[NSFileProviderProxy alloc] initWithClient:v15 remoteProvider:a3 reactorID:a4 secureID:v24 uniqueID:a5];
  [(NSFileProviderProxy *)v25 setWantsWriteNotifications:v10 & 1];
  [(NSFileReactorProxy *)v25 setEffectiveUserIdentifier:[(NSXPCConnection *)v15 effectiveUserIdentifier]];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __96__NSFileAccessArbiter_addProvider_withID_uniqueID_forProvidedItemsURL_options_withServer_reply___block_invoke;
  v33[3] = &unk_1E69F8DB0;
  v33[4] = self;
  v33[5] = v25;
  v33[6] = a6;
  v33[7] = a9;
  if (a8)
  {
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __96__NSFileAccessArbiter_addProvider_withID_uniqueID_forProvidedItemsURL_options_withServer_reply___block_invoke_3;
    v32[3] = &unk_1E69F3938;
    v32[4] = v33;
    v26 = [a3 remoteObjectProxyWithErrorHandler:v32];
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __96__NSFileAccessArbiter_addProvider_withID_uniqueID_forProvidedItemsURL_options_withServer_reply___block_invoke_102;
    v31[3] = &unk_1E69F8DD8;
    v31[4] = v33;
    [v26 checkInProviderWithReply:v31];
  }

  else
  {
    __96__NSFileAccessArbiter_addProvider_withID_uniqueID_forProvidedItemsURL_options_withServer_reply___block_invoke(v33, 1);
  }
}

uint64_t __96__NSFileAccessArbiter_addProvider_withID_uniqueID_forProvidedItemsURL_options_withServer_reply___block_invoke(uint64_t a1, int a2)
{
  v6[5] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = *(a1 + 32);
    if ((v3[25] & 1) == 0)
    {
      if (![*(a1 + 40) allowedForURL:*(a1 + 48)])
      {
        goto LABEL_7;
      }

      v3 = *(a1 + 32);
    }

    if ([v3 _addProvider:*(a1 + 40) ofItemsAtURL:*(a1 + 48)])
    {
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __96__NSFileAccessArbiter_addProvider_withID_uniqueID_forProvidedItemsURL_options_withServer_reply___block_invoke_2;
      v6[3] = &unk_1E69F8D88;
      v4 = *(a1 + 32);
      v6[4] = *(a1 + 40);
      [v4 _enumerateSubarbitersUsingBlock:v6];
    }
  }

LABEL_7:

  return (*(*(a1 + 56) + 16))();
}

uint64_t __96__NSFileAccessArbiter_addProvider_withID_uniqueID_forProvidedItemsURL_options_withServer_reply___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = _NSFCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 138543618;
    v7 = @"checkIn";
    v8 = 2114;
    v9 = a2;
    _os_log_error_impl(&dword_18075C000, v4, OS_LOG_TYPE_ERROR, "Sending of a '%{public}@' message was interrupted: %{public}@", &v6, 0x16u);
  }

  return (*(*(a1 + 32) + 16))();
}

- (void)removeProviderWithID:(id)a3 uniqueID:(id)a4
{
  v7[6] = *MEMORY[0x1E69E9840];
  [(NSFileAccessArbiter *)self _removeReactorForID:a4];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__NSFileAccessArbiter_removeProviderWithID_uniqueID___block_invoke;
  v7[3] = &unk_1E69F8E00;
  v7[4] = a3;
  v7[5] = a4;
  [(NSFileAccessArbiter *)self _enumerateSubarbitersUsingBlock:v7];
}

- (void)prepareToArbitrateForURLs:(id)a3
{
  v5 = +[NSXPCConnection currentConnection];
  [(NSXPCConnection *)v5 setRemoteObjectInterface:+[NSFileCoordinator _fileAccessArbiterInterface]];

  [(NSFileAccessArbiter *)self _startArbitratingItemsAtURLs:a3 withSuperarbitrationServer:v5];
}

- (void)provideDebugInfoWithLocalInfo:(id)a3 completionHandler:(id)a4
{
  v12[5] = *MEMORY[0x1E69E9840];
  v7 = +[NSXPCConnection currentConnection];
  v8 = [(NSXPCConnection *)v7 processIdentifier];
  if ((_NSFCIP & 1) != 0 || (v9 = -[NSXPCConnection valueForEntitlement:](v7, "valueForEntitlement:", @"com.apple.private.foundation.filecoordination-debug"), _NSIsNSNumber()) && ([v9 BOOLValue] & 1) != 0 || !-[NSXPCConnection effectiveUserIdentifier](v7, "effectiveUserIdentifier"))
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __71__NSFileAccessArbiter_provideDebugInfoWithLocalInfo_completionHandler___block_invoke;
    v12[3] = &unk_1E69F8E28;
    v12[4] = a4;
    [(NSFileAccessArbiter *)self getDebugInformationIncludingEverything:0 withString:a3 fromPid:v8 thenContinue:v12];
  }

  else
  {
    v10 = [NSError errorWithDomain:@"NSPOSIXErrorDomain" code:1 userInfo:0];
    v11 = *(a4 + 2);

    v11(a4, 0, v10);
  }
}

- (void)provideSubarbiterDebugInfoIncludingEverything:(BOOL)a3 completionHandler:(id)a4
{
  v5 = a3;
  v13[5] = *MEMORY[0x1E69E9840];
  v7 = +[NSXPCConnection currentConnection];
  if ((_NSFCIP & 1) != 0 || (v8 = v7, ![(NSXPCConnection *)v7 effectiveUserIdentifier]))
  {
    v10 = 1;
    goto LABEL_7;
  }

  v9 = [(NSXPCConnection *)v8 valueForEntitlement:@"com.apple.private.foundation.filecoordination-debug"];
  if (_NSIsNSNumber() && [v9 BOOLValue])
  {
    v10 = 0;
LABEL_7:
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __87__NSFileAccessArbiter_provideSubarbiterDebugInfoIncludingEverything_completionHandler___block_invoke;
    v13[3] = &unk_1E69F8E28;
    v13[4] = a4;
    [(NSFileAccessArbiter *)self getDebugInformationIncludingEverything:v10 & v5 withString:0 fromPid:0 thenContinue:v13];
    return;
  }

  v11 = [NSError errorWithDomain:@"NSPOSIXErrorDomain" code:1 userInfo:0];
  v12 = *(a4 + 2);

  v12(a4, 0, v11);
}

- (void)_handleCanceledClient:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = _NSFCClaimsLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_18075C000, v5, OS_LOG_TYPE_INFO, "A file coordination client died", buf, 2u);
  }

  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  accessClaimsByID = self->_accessClaimsByID;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __45__NSFileAccessArbiter__handleCanceledClient___block_invoke;
  v16[3] = &unk_1E69F8E50;
  v16[4] = a3;
  v16[5] = v7;
  v16[6] = self;
  v16[7] = v6;
  [(NSMutableDictionary *)accessClaimsByID enumerateKeysAndObjectsUsingBlock:v16];
  [(NSMutableDictionary *)self->_accessClaimsByID removeObjectsForKeys:v7];
  [(NSMutableDictionary *)self->_subarbitrationClaimsByID removeObjectsForKeys:v7];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = [v6 countByEnumeratingWithState:&v19 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    do
    {
      v12 = 0;
      do
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v19 + 1) + 8 * v12++) unblock];
      }

      while (v10 != v12);
      v10 = [v6 countByEnumeratingWithState:&v19 objects:v18 count:16];
    }

    while (v10);
  }

  v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
  reactorsByID = self->_reactorsByID;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __45__NSFileAccessArbiter__handleCanceledClient___block_invoke_107;
  v15[3] = &unk_1E69F8E78;
  v15[4] = a3;
  v15[5] = v13;
  v15[6] = self;
  [(NSMutableDictionary *)reactorsByID enumerateKeysAndObjectsUsingBlock:v15];
  [(NSMutableDictionary *)self->_reactorsByID removeObjectsForKeys:v13];
}

uint64_t __45__NSFileAccessArbiter__handleCanceledClient___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  result = [a3 client];
  if (result == *(a1 + 32))
  {
    [*(a1 + 40) addObject:a2];
    [*(*(a1 + 48) + 40) removeObjectForKey:a2];
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = [a3 pendingClaims];
    v8 = [v7 countByEnumeratingWithState:&v17 objects:v16 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v17 + 1) + 8 * i);
          [*(a1 + 56) addObject:v12];
          [v12 block];
        }

        v9 = [v7 countByEnumeratingWithState:&v17 objects:v16 count:16];
      }

      while (v9);
    }

    v13 = _NSFCClaimsLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138543362;
      v15 = a2;
      _os_log_impl(&dword_18075C000, v13, OS_LOG_TYPE_DEFAULT, "Revoking claim %{public}@ because client died", &v14, 0xCu);
    }

    return [a3 revoked];
  }

  return result;
}

uint64_t __45__NSFileAccessArbiter__handleCanceledClient___block_invoke_107(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  result = [a3 client];
  if (result == *(a1 + 32))
  {
    if (object_getClass(a3) == NSFileProviderProxy)
    {
      v7 = _NSFCProviderLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 138543362;
        *&v9[4] = [a3 reactorID];
        v8 = "Removed provider %{public}@";
        goto LABEL_7;
      }
    }

    else
    {
      v7 = _NSFCPresenterLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 138543362;
        *&v9[4] = [a3 reactorID];
        v8 = "Removed presenter %{public}@";
LABEL_7:
        _os_log_impl(&dword_18075C000, v7, OS_LOG_TYPE_DEFAULT, v8, v9, 0xCu);
      }
    }

    [*(a1 + 40) addObject:{a2, *v9}];
    return [*(a1 + 48) _willRemoveReactor:a3];
  }

  return result;
}

- (void)getItemHasPresentersAtURL:(id)a3 completionHandler:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v18 = 0u;
  v19 = 0u;
  v7 = +[NSXPCConnection currentConnection];
  if (v7)
  {
    [(NSXPCConnection *)v7 auditToken];
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
  }

  v16 = v18;
  v17 = v19;
  if (!sandbox_check_by_audit_token() || (v8 = [a3 fileSystemRepresentation]) != 0 && (v16 = v18, v17 = v19, v10 = v8, !sandbox_check_by_audit_token()))
  {
    v9 = [(NSFileAccessNode *)self->_rootNode descendantForFileURL:a3, v10];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __67__NSFileAccessArbiter_getItemHasPresentersAtURL_completionHandler___block_invoke;
    v11[3] = &unk_1E69F8A98;
    v11[4] = &v12;
    [v9 forEachPresenterOfItemPerformProcedure:v11];
  }

  (*(a4 + 2))(a4, *(v13 + 24));
  _Block_object_dispose(&v12, 8);
}

- (void)getDebugInformationIncludingEverything:(BOOL)a3 withString:(id)a4 fromPid:(int)a5 thenContinue:(id)a6
{
  v7 = a3;
  v26 = *MEMORY[0x1E69E9840];
  if (self->_isSubarbiter)
  {
    v9 = [(NSFileAccessArbiter *)self rootNode:a3];
    if (v7)
    {
      v10 = [v9 subarbiterDescription];
    }

    else
    {
      v10 = [v9 sensitiveSubarbiterDescription];
    }

    (*(a6 + 2))(a6, v10);
  }

  else
  {
    v11 = *&a5;
    v13 = [MEMORY[0x1E695DF90] dictionary];
    if (a4)
    {
      [v13 setObject:a4 forKey:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", v11)}];
    }

    v14 = [(NSMutableDictionary *)self->_subarbitrationClaimsByID copy];
    v15 = [MEMORY[0x1E695DF90] dictionary];
    v24[0] = 0;
    v24[1] = v24;
    v24[2] = 0x2020000000;
    v25 = 0;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __94__NSFileAccessArbiter_getDebugInformationIncludingEverything_withString_fromPid_thenContinue___block_invoke;
    block[3] = &unk_1E69F8EC8;
    v23 = v7;
    block[4] = self;
    block[5] = v15;
    block[6] = v14;
    block[7] = v13;
    block[8] = a6;
    block[9] = v24;
    v16 = dispatch_time(0, 2000000000);
    dispatch_after(v16, MEMORY[0x1E69E96A0], block);
    v17 = dispatch_group_create();
    rootNode = self->_rootNode;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __94__NSFileAccessArbiter_getDebugInformationIncludingEverything_withString_fromPid_thenContinue___block_invoke_4;
    v21[3] = &unk_1E69F8F40;
    v21[4] = v13;
    v21[5] = v17;
    v21[6] = self;
    [(NSFileAccessNode *)rootNode forEachReactorToItemOrContainedItemPerformProcedure:v21];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __94__NSFileAccessArbiter_getDebugInformationIncludingEverything_withString_fromPid_thenContinue___block_invoke_7;
    v19[3] = &unk_1E69F8FB8;
    v19[4] = v17;
    v19[5] = v15;
    v20 = v7;
    [v14 enumerateKeysAndObjectsUsingBlock:v19];
    dispatch_group_notify(v17, self->_queue, block);
    dispatch_release(v17);
    _Block_object_dispose(v24, 8);
  }
}

uint64_t __94__NSFileAccessArbiter_getDebugInformationIncludingEverything_withString_fromPid_thenContinue___block_invoke(uint64_t result)
{
  v9[6] = *MEMORY[0x1E69E9840];
  v1 = *(*(result + 72) + 8);
  if ((*(v1 + 24) & 1) == 0)
  {
    v2 = result;
    *(v1 + 24) = 1;
    v3 = +[(NSString *)NSMutableString];
    [(NSString *)v3 appendString:@"Server Information:\n\n"];
    v4 = [*(v2 + 32) rootNode];
    if (*(v2 + 80) == 1)
    {
      v5 = [v4 description];
    }

    else
    {
      v5 = [v4 sensitiveDescription];
    }

    [(NSString *)v3 appendString:v5];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __94__NSFileAccessArbiter_getDebugInformationIncludingEverything_withString_fromPid_thenContinue___block_invoke_2;
    v9[3] = &unk_1E69F8EA0;
    v6 = *(v2 + 40);
    v9[4] = *(v2 + 48);
    v9[5] = v3;
    [v6 enumerateKeysAndObjectsUsingBlock:v9];
    [(NSString *)v3 appendString:@"\n\nApplication Information:\n\n"];
    v7 = *(v2 + 56);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __94__NSFileAccessArbiter_getDebugInformationIncludingEverything_withString_fromPid_thenContinue___block_invoke_3;
    v8[3] = &unk_1E69F3270;
    v8[4] = v3;
    [v7 enumerateKeysAndObjectsUsingBlock:v8];
    return (*(*(v2 + 64) + 16))();
  }

  return result;
}

uint64_t __94__NSFileAccessArbiter_getDebugInformationIncludingEverything_withString_fromPid_thenContinue___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = [*(a1 + 32) objectForKey:a2];
  v6 = proc_name([objc_msgSend(v5 "subarbiterConnection")], buffer, 0x100u);
  if (v6 < 1)
  {
    v7 = 0;
  }

  else
  {
    v7 = [[NSString alloc] initWithBytes:buffer length:v6 encoding:4];
  }

  return [*(a1 + 40) appendFormat:@"\n\nSubarbiter Information — %@ (%i):\n\n%@", v7, objc_msgSend(objc_msgSend(v5, "subarbiterConnection"), "processIdentifier"), a3];
}

uint64_t __94__NSFileAccessArbiter_getDebugInformationIncludingEverything_withString_fromPid_thenContinue___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = proc_name([a2 intValue], buffer, 0x100u);
  if (v6 < 1)
  {
    v7 = 0;
  }

  else
  {
    v7 = [[NSString alloc] initWithBytes:buffer length:v6 encoding:4];
  }

  return [*(a1 + 32) appendFormat:@"%@ (%i):\n%@\n", v7, objc_msgSend(a2, "intValue"), a3];
}

uint64_t __94__NSFileAccessArbiter_getDebugInformationIncludingEverything_withString_fromPid_thenContinue___block_invoke_4(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = [objc_msgSend(a2 "client")];
  result = [*(a1 + 32) objectForKey:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", v4)}];
  if (!result)
  {
    [*(a1 + 32) setObject:@"Unknown\n" forKey:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", v4)}];
    dispatch_group_enter(*(a1 + 40));
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __94__NSFileAccessArbiter_getDebugInformationIncludingEverything_withString_fromPid_thenContinue___block_invoke_5;
    v6[3] = &unk_1E69F8F18;
    v6[4] = *(a1 + 48);
    v8 = v4;
    v7 = *(a1 + 32);
    return [a2 collectDebuggingInformationWithCompletionHandler:v6];
  }

  return result;
}

void __94__NSFileAccessArbiter_getDebugInformationIncludingEverything_withString_fromPid_thenContinue___block_invoke_5(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __94__NSFileAccessArbiter_getDebugInformationIncludingEverything_withString_fromPid_thenContinue___block_invoke_6;
  block[3] = &unk_1E69F8EF0;
  v3 = *(a1 + 48);
  block[4] = *(a1 + 40);
  block[5] = a2;
  v5 = *(a1 + 56);
  block[6] = v3;
  dispatch_async(v2, block);
}

void __94__NSFileAccessArbiter_getDebugInformationIncludingEverything_withString_fromPid_thenContinue___block_invoke_6(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v2 = *(a1 + 40);
  }

  else
  {
    v2 = &stru_1EEEFDF90;
  }

  [*(a1 + 32) setObject:v2 forKey:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", *(a1 + 56))}];
  v3 = *(a1 + 48);

  dispatch_group_leave(v3);
}

uint64_t __94__NSFileAccessArbiter_getDebugInformationIncludingEverything_withString_fromPid_thenContinue___block_invoke_7(uint64_t a1, uint64_t a2, void *a3)
{
  v12[7] = *MEMORY[0x1E69E9840];
  dispatch_group_enter(*(a1 + 32));
  v5 = [a3 subarbiterConnection];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __94__NSFileAccessArbiter_getDebugInformationIncludingEverything_withString_fromPid_thenContinue___block_invoke_8;
  v12[3] = &unk_1E69F8F68;
  v6 = *(a1 + 32);
  v12[4] = *(a1 + 40);
  v12[5] = a3;
  v12[6] = v6;
  v7 = [v5 remoteObjectProxyWithErrorHandler:v12];
  v8 = *(a1 + 48);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __94__NSFileAccessArbiter_getDebugInformationIncludingEverything_withString_fromPid_thenContinue___block_invoke_9;
  v11[3] = &unk_1E69F8F90;
  v9 = *(a1 + 32);
  v11[4] = *(a1 + 40);
  v11[5] = a3;
  v11[6] = v9;
  return [v7 provideSubarbiterDebugInfoIncludingEverything:v8 completionHandler:v11];
}

void __94__NSFileAccessArbiter_getDebugInformationIncludingEverything_withString_fromPid_thenContinue___block_invoke_8(uint64_t a1)
{
  [*(a1 + 32) setObject:@"Error\n" forKey:{objc_msgSend(*(a1 + 40), "claimID")}];
  v2 = *(a1 + 48);

  dispatch_group_leave(v2);
}

void __94__NSFileAccessArbiter_getDebugInformationIncludingEverything_withString_fromPid_thenContinue___block_invoke_9(uint64_t a1, __CFString *a2, uint64_t a3)
{
  v4 = &stru_1EEEFDF90;
  if (a2)
  {
    v4 = a2;
  }

  if (a3)
  {
    v5 = @"Error\n";
  }

  else
  {
    v5 = v4;
  }

  [*(a1 + 32) setObject:v5 forKey:{objc_msgSend(*(a1 + 40), "claimID")}];
  v6 = *(a1 + 48);

  dispatch_group_leave(v6);
}

- (void)_registerForDebugInfoRequests
{
  v4[5] = *MEMORY[0x1E69E9840];
  signal(30, 1);
  v3 = dispatch_source_create(MEMORY[0x1E69E9700], 0x1EuLL, 0, self->_queue);
  self->_debugSignalSource = v3;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __52__NSFileAccessArbiter__registerForDebugInfoRequests__block_invoke;
  v4[3] = &unk_1E69F2C00;
  v4[4] = self;
  dispatch_source_set_event_handler(v3, v4);
  dispatch_resume(self->_debugSignalSource);
}

void __52__NSFileAccessArbiter__registerForDebugInfoRequests__block_invoke(uint64_t a1)
{
  v5[5] = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = os_transaction_create();
  v4 = *(a1 + 32);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __52__NSFileAccessArbiter__registerForDebugInfoRequests__block_invoke_2;
  v5[3] = &unk_1E69F8FE0;
  v5[4] = v3;
  [v4 getDebugInformationIncludingEverything:1 withString:0 fromPid:0 thenContinue:v5];
  objc_autoreleasePoolPop(v2);
}

void __52__NSFileAccessArbiter__registerForDebugInfoRequests__block_invoke_2(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = NSTemporaryDirectory();
    v5 = [(NSString *)v4 stringByAppendingPathComponent:[NSString stringWithFormat:@"filecoordination_%d_dump.txt", getpid()]];
    v6 = open([(NSString *)v5 UTF8String], 1793, 448);
    v7 = v6;
    if (v6 < 1)
    {
      v9 = _NSOSLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v13 = __error();
        v14 = strerror(*v13);
        *buf = 138412546;
        v16 = v5;
        v17 = 2080;
        v18 = v14;
        _os_log_error_impl(&dword_18075C000, v9, OS_LOG_TYPE_ERROR, "Failed to open %@ for filecoordinationd dump file: %s", buf, 0x16u);
      }
    }

    else
    {
      if (fchown(v6, 0, 0) || fchmod(v7, 0x180u))
      {
        v8 = _NSOSLog();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v16 = v5;
          _os_log_error_impl(&dword_18075C000, v8, OS_LOG_TYPE_ERROR, "Failed to set correct permissions for filecoordinationd dump file at %@", buf, 0xCu);
        }
      }

      else
      {
        v10 = [[NSFileHandle alloc] initWithFileDescriptor:v7];
        v11 = [a2 dataUsingEncoding:4];
        if (v11)
        {
          [(NSFileHandle *)v10 writeData:v11];
          v12 = _NSOSLog();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v16 = v5;
            _os_log_impl(&dword_18075C000, v12, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
          }
        }
      }

      close(v7);
    }
  }
}

- (void)cancelAccessClaimForID:(id)a3
{
  v7[5] = *MEMORY[0x1E69E9840];
  v5 = [(NSMutableDictionary *)self->_accessClaimsByID objectForKey:?];
  if (v5)
  {
    v6 = v5;
    if ([v5 isGranted])
    {
      [v6 cancelled];
    }

    else if (([v6 isRevoked] & 1) == 0)
    {
      [v6 revoked];
      [(NSMutableDictionary *)self->_accessClaimsByID removeObjectForKey:a3];
      [(NSMutableDictionary *)self->_subarbitrationClaimsByID removeObjectForKey:a3];
      [(NSMutableDictionary *)self->_accessClaimTransactionsByID removeObjectForKey:a3];
    }
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__NSFileAccessArbiter_cancelAccessClaimForID___block_invoke;
  v7[3] = &unk_1E69F8D88;
  v7[4] = a3;
  [(NSFileAccessArbiter *)self _enumerateSubarbitersUsingBlock:v7];
}

- (void)writerWithPurposeID:(id)a3 didMoveItemAtURL:(id)a4 toURL:(id)a5 withFSID:(fsid)a6 andFileID:(unint64_t)a7
{
  v23 = *MEMORY[0x1E69E9840];
  v13 = _NSFCClaimsLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 138544131;
    v16 = a3;
    v17 = 2113;
    v18 = [a4 logicalURL];
    v19 = 2113;
    v20 = [a5 logicalURL];
    v21 = 2048;
    v22 = a7;
    _os_log_impl(&dword_18075C000, v13, OS_LOG_TYPE_INFO, "Received item move hint with purpose %{public}@ -- %{private}@ -> %{private}@ (fileID: %llu)", buf, 0x2Au);
  }

  [(NSFileAccessArbiter *)self _writerWithPurposeID:a3 didMoveItemAtURL:a4 toURL:a5 withFSID:a6 andFileID:a7];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __85__NSFileAccessArbiter_writerWithPurposeID_didMoveItemAtURL_toURL_withFSID_andFileID___block_invoke;
  v14[3] = &unk_1E69F8BA8;
  v14[4] = a3;
  v14[5] = a4;
  v14[7] = a7;
  v14[8] = a6;
  v14[6] = a5;
  [(NSFileAccessArbiter *)self _enumerateSubarbitersUsingBlock:v14];
}

- (void)writerWithPurposeID:(id)a3 didDisconnectItemAtURL:(id)a4
{
  v14 = *MEMORY[0x1E69E9840];
  v7 = _NSFCClaimsLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138543619;
    *&buf[4] = a3;
    *&buf[12] = 2113;
    *&buf[14] = [a4 logicalURL];
    _os_log_impl(&dword_18075C000, v7, OS_LOG_TYPE_INFO, "Received item disconnection hint with purpose %{public}@ -- %{private}@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = 0;
  v8 = -[NSFileAccessNode pathToDescendantForFileURL:componentRange:](self->_rootNode, "pathToDescendantForFileURL:componentRange:", [a4 logicalURL], buf);
  if (v8)
  {
    v9 = [(NSFileAccessNode *)self->_rootNode descendantAtPath:v8 componentRange:*buf create:*&buf[8], 0];
    if (v9)
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __66__NSFileAccessArbiter_writerWithPurposeID_didDisconnectItemAtURL___block_invoke;
      v11[3] = &unk_1E69F9008;
      v11[4] = a3;
      [v9 forEachPresenterOfItemOrContainedItemPerformProcedure:v11];
    }
  }

  if (self->_isSubarbiter)
  {
    v10 = _NSFCLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      *v12 = 0;
      _os_log_fault_impl(&dword_18075C000, v10, OS_LOG_TYPE_FAULT, "A subarbiter was told by a superarbiter about a file disconnection, which is a surprise.", v12, 2u);
    }
  }
}

- (void)writerWithPurposeID:(id)a3 didReconnectItemAtURL:(id)a4
{
  v14 = *MEMORY[0x1E69E9840];
  v7 = _NSFCClaimsLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138543619;
    *&buf[4] = a3;
    *&buf[12] = 2113;
    *&buf[14] = [a4 logicalURL];
    _os_log_impl(&dword_18075C000, v7, OS_LOG_TYPE_INFO, "Received item reconnection hint with purpose %{public}@ -- %{private}@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = 0;
  v8 = -[NSFileAccessNode pathToDescendantForFileURL:componentRange:](self->_rootNode, "pathToDescendantForFileURL:componentRange:", [a4 logicalURL], buf);
  if (v8)
  {
    v9 = [(NSFileAccessNode *)self->_rootNode descendantAtPath:v8 componentRange:*buf create:*&buf[8], 0];
    if (v9)
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __65__NSFileAccessArbiter_writerWithPurposeID_didReconnectItemAtURL___block_invoke;
      v11[3] = &unk_1E69F9008;
      v11[4] = a3;
      [v9 forEachPresenterOfItemOrContainedItemPerformProcedure:v11];
    }
  }

  if (self->_isSubarbiter)
  {
    v10 = _NSFCLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      *v12 = 0;
      _os_log_fault_impl(&dword_18075C000, v10, OS_LOG_TYPE_FAULT, "A subarbiter was told by a superarbiter about a file reconnection, which is a surprise.", v12, 2u);
    }
  }
}

- (void)writerWithPurposeID:(id)a3 didChangeUbiquityOfItemAtURL:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v7 = _NSFCClaimsLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138543619;
    v13 = a3;
    v14 = 2113;
    v15 = [a4 logicalURL];
    _os_log_impl(&dword_18075C000, v7, OS_LOG_TYPE_INFO, "Received item ubiquity change hint with purpose %{public}@ -- %{private}@", buf, 0x16u);
  }

  v8 = -[NSFileAccessNode descendantForFileURL:](self->_rootNode, "descendantForFileURL:", [a4 logicalURL]);
  if (v8)
  {
    v9 = v8;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __72__NSFileAccessArbiter_writerWithPurposeID_didChangeUbiquityOfItemAtURL___block_invoke;
    v11[3] = &unk_1E69F9030;
    v11[4] = v8;
    v11[5] = a4;
    [v8 forEachPresenterOfItemOrContainingItemPerformProcedure:v11];
    [v9 removeSelfIfUseless];
  }

  if (self->_isSubarbiter)
  {
    v10 = _NSFCLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_18075C000, v10, OS_LOG_TYPE_FAULT, "A subarbiter was told by a superarbiter about a file ubiquity change, which is a surprise.", buf, 2u);
    }
  }
}

uint64_t __72__NSFileAccessArbiter_writerWithPurposeID_didChangeUbiquityOfItemAtURL___block_invoke(uint64_t a1, void *a2)
{
  v4 = [*(a1 + 32) pathFromAncestor:?];
  v5 = [*(a1 + 40) physicalURL];

  return [a2 observeUbiquityChangeAtSubitemPath:v4 withPhysicalURL:v5];
}

- (void)writerWithPurposeID:(id)a3 didChangeSharingOfItemAtURL:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v7 = _NSFCClaimsLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138543619;
    v13 = a3;
    v14 = 2113;
    v15 = [a4 logicalURL];
    _os_log_impl(&dword_18075C000, v7, OS_LOG_TYPE_INFO, "Received item sharing change hint with purpose %{public}@ -- %{private}@", buf, 0x16u);
  }

  v8 = -[NSFileAccessNode descendantForFileURL:](self->_rootNode, "descendantForFileURL:", [a4 logicalURL]);
  if (v8)
  {
    v9 = v8;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __71__NSFileAccessArbiter_writerWithPurposeID_didChangeSharingOfItemAtURL___block_invoke;
    v11[3] = &unk_1E69F9030;
    v11[4] = v8;
    v11[5] = a4;
    [v8 forEachPresenterOfItemOrContainingItemPerformProcedure:v11];
    [v9 removeSelfIfUseless];
  }

  if (self->_isSubarbiter)
  {
    v10 = _NSFCLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_18075C000, v10, OS_LOG_TYPE_FAULT, "A subarbiter was told by a superarbiter about a sharing change, which is a surprise.", buf, 2u);
    }
  }
}

uint64_t __71__NSFileAccessArbiter_writerWithPurposeID_didChangeSharingOfItemAtURL___block_invoke(uint64_t a1, void *a2)
{
  v4 = [*(a1 + 32) pathFromAncestor:?];
  v5 = [*(a1 + 40) physicalURL];

  return [a2 observeSharingChangeAtSubitemPath:v4 withPhysicalURL:v5];
}

- (void)writerWithPurposeID:(id)a3 didChangeUbiquityAttributes:(id)a4 ofItemAtURL:(id)a5
{
  v20 = *MEMORY[0x1E69E9840];
  v9 = _NSFCClaimsLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 138543875;
    v15 = a3;
    v16 = 2113;
    v17 = [a5 logicalURL];
    v18 = 2114;
    v19 = a4;
    _os_log_impl(&dword_18075C000, v9, OS_LOG_TYPE_INFO, "Received item ubiquity attributes change hint with purpose %{public}@ -- %{private}@. Attributes: %{public}@", buf, 0x20u);
  }

  v10 = -[NSFileAccessNode descendantForFileURL:](self->_rootNode, "descendantForFileURL:", [a5 logicalURL]);
  if (v10)
  {
    v11 = v10;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __83__NSFileAccessArbiter_writerWithPurposeID_didChangeUbiquityAttributes_ofItemAtURL___block_invoke;
    v13[3] = &unk_1E69F9008;
    v13[4] = a4;
    [v10 forEachPresenterOfItemPerformProcedure:v13];
    [v11 removeSelfIfUseless];
  }

  if (self->_isSubarbiter)
  {
    v12 = _NSFCLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_18075C000, v12, OS_LOG_TYPE_FAULT, "A subarbiter was told by a superarbiter about a ubiquity attributes change, which is a surprise.", buf, 2u);
    }
  }
}

- (void)writerWithPurposeID:(id)a3 didMakeItemDisappearAtURL:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v7 = _NSFCClaimsLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138543619;
    v13 = a3;
    v14 = 2113;
    v15 = [a4 logicalURL];
    _os_log_impl(&dword_18075C000, v7, OS_LOG_TYPE_INFO, "Received item disappearance hint with purpose %{public}@ -- %{private}@", buf, 0x16u);
  }

  v8 = -[NSFileAccessNode descendantForFileURL:](self->_rootNode, "descendantForFileURL:", [a4 logicalURL]);
  if (v8)
  {
    v9 = v8;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __69__NSFileAccessArbiter_writerWithPurposeID_didMakeItemDisappearAtURL___block_invoke;
    v11[3] = &unk_1E69F9030;
    v11[4] = a3;
    v11[5] = v8;
    [v8 forEachPresenterOfItemOrContainingItemPerformProcedure:v11];
    [v9 removeSelfIfUseless];
  }

  if (self->_isSubarbiter)
  {
    v10 = _NSFCLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_18075C000, v10, OS_LOG_TYPE_FAULT, "A subarbiter was told by a superarbiter about a file disappearance, which is a surprise.", buf, 2u);
    }
  }
}

uint64_t __69__NSFileAccessArbiter_writerWithPurposeID_didMakeItemDisappearAtURL___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  result = [*(a1 + 32) isEqual:{objc_msgSend(a2, "reactorID")}];
  if ((result & 1) == 0)
  {
    v7 = [*(a1 + 40) pathFromAncestor:a3];

    return [a2 observeDisappearanceAtSubitemPath:v7];
  }

  return result;
}

- (void)writerWithPurposeID:(id)a3 didChangeItemAtURL:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v7 = _NSFCClaimsLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138543619;
    v13 = a3;
    v14 = 2113;
    v15 = [a4 logicalURL];
    _os_log_impl(&dword_18075C000, v7, OS_LOG_TYPE_INFO, "Received item change hint with purpose %{public}@ -- %{private}@", buf, 0x16u);
  }

  v8 = -[NSFileAccessNode descendantForFileURL:](self->_rootNode, "descendantForFileURL:", [a4 logicalURL]);
  if (v8)
  {
    v9 = v8;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __62__NSFileAccessArbiter_writerWithPurposeID_didChangeItemAtURL___block_invoke;
    v11[3] = &unk_1E69F9030;
    v11[4] = a3;
    v11[5] = v8;
    [v8 forEachPresenterOfItemOrContainingItemPerformProcedure:v11];
    [v9 removeSelfIfUseless];
  }

  if (self->_isSubarbiter)
  {
    v10 = _NSFCLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_18075C000, v10, OS_LOG_TYPE_FAULT, "A subarbiter was told by a superarbiter about a file change, which is a surprise.", buf, 2u);
    }
  }
}

uint64_t __62__NSFileAccessArbiter_writerWithPurposeID_didChangeItemAtURL___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  result = [*(a1 + 32) isEqual:{objc_msgSend(a2, "reactorID")}];
  if ((result & 1) == 0)
  {
    v7 = [*(a1 + 40) pathFromAncestor:a3];

    return [a2 observeChangeAtSubitemPath:v7];
  }

  return result;
}

- (void)writerWithPurposeID:(id)a3 didVersionChangeOfKind:(id)a4 toItemAtURL:(id)a5 withClientID:(id)a6 name:(id)a7
{
  v24 = *MEMORY[0x1E69E9840];
  v13 = _NSFCClaimsLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 138543875;
    v19 = a4;
    v20 = 2114;
    v21 = a3;
    v22 = 2113;
    v23 = [a5 logicalURL];
    _os_log_impl(&dword_18075C000, v13, OS_LOG_TYPE_INFO, "Received item version change hint of kind %{public}@ with purpose %{public}@ -- %{private}@", buf, 0x20u);
  }

  v14 = -[NSFileAccessNode descendantForFileURL:](self->_rootNode, "descendantForFileURL:", [a5 logicalURL]);
  if (v14)
  {
    v15 = v14;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __96__NSFileAccessArbiter_writerWithPurposeID_didVersionChangeOfKind_toItemAtURL_withClientID_name___block_invoke;
    v17[3] = &unk_1E69F9058;
    v17[4] = v14;
    v17[5] = a4;
    v17[6] = a6;
    v17[7] = a7;
    [v14 forEachPresenterOfItemOrContainingItemPerformProcedure:v17];
    [v15 removeSelfIfUseless];
  }

  if (self->_isSubarbiter)
  {
    v16 = _NSFCLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_18075C000, v16, OS_LOG_TYPE_FAULT, "A subarbiter was told by a superarbiter about a file version change, which is a surprise.", buf, 2u);
    }
  }
}

uint64_t __96__NSFileAccessArbiter_writerWithPurposeID_didVersionChangeOfKind_toItemAtURL_withClientID_name___block_invoke(uint64_t a1, void *a2)
{
  v4 = [*(a1 + 32) pathFromAncestor:?];
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);

  return [a2 observeVersionChangeOfKind:v5 withClientID:v6 name:v7 subitemPath:v4];
}

- (void)tiePresenterForID:(id)a3 toItemAtURL:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v7 = [(NSMutableDictionary *)self->_reactorsByID objectForKey:?];
  if (self->_isSubarbiter || [v7 allowedForURL:{objc_msgSend(a4, "logicalURL")}])
  {
    if (![v7 itemLocation])
    {
      v8 = _NSFCPresenterLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543619;
        v13 = a3;
        v14 = 2113;
        v15 = [a4 logicalURL];
        _os_log_impl(&dword_18075C000, v8, OS_LOG_TYPE_DEFAULT, "Presenter %{public}@ has been tied to a URL for the first time -- %{private}@", buf, 0x16u);
      }
    }

    v9 = -[NSFileAccessNode descendantForFileURL:](self->_rootNode, "descendantForFileURL:", [a4 logicalURL]);
    if (v9)
    {
      [v7 setItemLocation:v9];
    }
  }

  else if (v7)
  {
    v10 = _NSFCPresenterLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543619;
      v13 = a3;
      v14 = 2113;
      v15 = [a4 logicalURL];
      _os_log_impl(&dword_18075C000, v10, OS_LOG_TYPE_DEFAULT, "Presenter %{public}@ not allowed to tie to URL -- %{private}@", buf, 0x16u);
    }
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __53__NSFileAccessArbiter_tiePresenterForID_toItemAtURL___block_invoke;
  v11[3] = &unk_1E69F8E00;
  v11[4] = a3;
  v11[5] = a4;
  [(NSFileAccessArbiter *)self _enumerateSubarbitersUsingBlock:v11];
}

+ (void)_wakeUpFileProviderWithUID:(unsigned int)a3 urls:(id)a4 queue:(id)a5 thenContinue:(id)a6
{
  v9 = *&a3;
  v18 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(a5);
  if (_NSFCIPPB)
  {
    block[5] = MEMORY[0x1E69E9820];
    block[6] = 3221225472;
    block[7] = __88__NSFileAccessArbiter_FileProvider___wakeUpFileProviderWithUID_urls_queue_thenContinue___block_invoke;
    block[8] = &unk_1E69F90A8;
    block[9] = a5;
    block[10] = a6;
    (*(_NSFCIPPB + 16))();
  }

  else if (_NSFCIP == 1)
  {
    v10 = *(a6 + 2);

    v10(a6, 1, 0);
  }

  else
  {
    if (qword_1ED43DAE0 != -1)
    {
      dispatch_once(&qword_1ED43DAE0, &__block_literal_global_300);
    }

    v11 = [+[NSFileManager defaultManager](NSFileManager _processCanAccessUbiquityIdentityToken];
    if (v9 != -2 && v9 && v11 && off_1ED43DAD8)
    {
      v12 = _NSFCProviderLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        v17 = v9;
        _os_log_impl(&dword_18075C000, v12, OS_LOG_TYPE_INFO, "Waking up fileproviderd (%d) to prepare providers", buf, 8u);
      }

      ++_MergedGlobals_17;
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __88__NSFileAccessArbiter_FileProvider___wakeUpFileProviderWithUID_urls_queue_thenContinue___block_invoke_304;
      v13[3] = &unk_1E69F90F8;
      v14 = v9;
      v13[4] = a5;
      v13[5] = a6;
      off_1ED43DAD8(v9, a4, v13);
    }

    else
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __88__NSFileAccessArbiter_FileProvider___wakeUpFileProviderWithUID_urls_queue_thenContinue___block_invoke_4;
      block[3] = &unk_1E69F40C0;
      block[4] = a6;
      dispatch_async(a5, block);
    }
  }
}

void __88__NSFileAccessArbiter_FileProvider___wakeUpFileProviderWithUID_urls_queue_thenContinue___block_invoke(uint64_t a1, char a2)
{
  v5 = *MEMORY[0x1E69E9840];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __88__NSFileAccessArbiter_FileProvider___wakeUpFileProviderWithUID_urls_queue_thenContinue___block_invoke_2;
  block[3] = &unk_1E69F9080;
  v2 = *(a1 + 32);
  block[4] = *(a1 + 40);
  v4 = a2;
  dispatch_async(v2, block);
}

void *__88__NSFileAccessArbiter_FileProvider___wakeUpFileProviderWithUID_urls_queue_thenContinue___block_invoke_3()
{
  result = dlopen("/System/Library/Frameworks/FileProvider.framework/FileProvider", 256);
  if (result)
  {
    result = dlsym(result, "FPRegisterFileProvidersForUserAtURLs");
    off_1ED43DAD8 = result;
  }

  return result;
}

void __88__NSFileAccessArbiter_FileProvider___wakeUpFileProviderWithUID_urls_queue_thenContinue___block_invoke_304(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = _NSFCProviderLog();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 48);
      *buf = 67109378;
      v15 = v8;
      v16 = 2114;
      v17 = a2;
      _os_log_error_impl(&dword_18075C000, v7, OS_LOG_TYPE_ERROR, "Error occurred while asking fileproviderd (%d) to prepare providers: %{public}@", buf, 0x12u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v9 = *(a1 + 48);
    *buf = 67109120;
    v15 = v9;
    _os_log_impl(&dword_18075C000, v7, OS_LOG_TYPE_INFO, "fileproviderd (%d) finished preparing providers", buf, 8u);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __88__NSFileAccessArbiter_FileProvider___wakeUpFileProviderWithUID_urls_queue_thenContinue___block_invoke_305;
  block[3] = &unk_1E69F90D0;
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v13 = a2 == 0;
  block[4] = v11;
  block[5] = a3;
  dispatch_async(v10, block);
}

+ (void)ensureProvidersIfNecessaryForClaim:(id)a3 user:(unsigned int)a4 atLocations:(id)a5 queue:(id)a6 thenContinue:(id)a7
{
  v10 = *&a4;
  v24 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(a6);
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v13 = [a5 countByEnumeratingWithState:&v20 objects:v19 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v21;
LABEL_3:
    v16 = 0;
    while (1)
    {
      if (*v21 != v15)
      {
        objc_enumerationMutation(a5);
      }

      if ([*(*(&v20 + 1) + 8 * v16) itemProvider])
      {
        break;
      }

      if (v14 == ++v16)
      {
        v14 = [a5 countByEnumeratingWithState:&v20 objects:v19 count:16];
        if (v14)
        {
          goto LABEL_3;
        }

        goto LABEL_11;
      }
    }

    if (_MergedGlobals_17)
    {
      goto LABEL_11;
    }

    (*(a7 + 2))(a7);
  }

  else
  {
LABEL_11:
    [a3 blockClaimerForReason:@"Preparing file providers"];
    v17 = [a3 allURLs];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __108__NSFileAccessArbiter_FileProvider__ensureProvidersIfNecessaryForClaim_user_atLocations_queue_thenContinue___block_invoke;
    v18[3] = &unk_1E69F9120;
    v18[4] = a6;
    v18[5] = a3;
    v18[6] = @"Preparing file providers";
    v18[7] = a7;
    [a1 _wakeUpFileProviderWithUID:v10 urls:v17 queue:a6 thenContinue:v18];
  }
}

uint64_t __108__NSFileAccessArbiter_FileProvider__ensureProvidersIfNecessaryForClaim_user_atLocations_queue_thenContinue___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  dispatch_assert_queue_V2(*(a1 + 32));
  if (a3)
  {
    [*(a1 + 40) whenDevaluedPerformProcedure:a3];
  }

  (*(*(a1 + 56) + 16))();
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);

  return [v5 unblockClaimerForReason:v6];
}

@end
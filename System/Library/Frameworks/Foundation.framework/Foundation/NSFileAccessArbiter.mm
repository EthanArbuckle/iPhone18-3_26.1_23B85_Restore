@interface NSFileAccessArbiter
+ (id)entitlementForConnection:(id)connection key:(id)key;
+ (void)_wakeUpFileProviderWithUID:(unsigned int)d urls:(id)urls queue:(id)queue thenContinue:(id)continue;
+ (void)ensureProvidersIfNecessaryForClaim:(id)claim user:(unsigned int)user atLocations:(id)locations queue:(id)queue thenContinue:(id)continue;
- (BOOL)_addPresenter:(id)presenter ofItemAtURL:(id)l watchingFile:(BOOL)file withLastEventID:(id)d;
- (BOOL)_addProvider:(id)provider ofItemsAtURL:(id)l;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (NSFileAccessArbiter)initWithQueue:(id)queue isSubarbiter:(BOOL)subarbiter listener:(id)listener;
- (NSXPCConnection)superarbitrationConnection;
- (id)rootNode;
- (void)_enumerateSubarbitersUsingBlock:(id)block;
- (void)_grantAccessClaim:(id)claim;
- (void)_grantSubarbitrationClaim:(id)claim withServer:(id)server;
- (void)_handleCanceledClient:(id)client;
- (void)_registerForDebugInfoRequests;
- (void)_removeReactorForID:(id)d;
- (void)_revokeAccessClaimForID:(id)d fromLocal:(BOOL)local;
- (void)_startArbitratingItemsAtURLs:(id)ls withSuperarbitrationServer:(id)server;
- (void)_willRemoveReactor:(id)reactor;
- (void)_writerWithPurposeID:(id)d didMoveItemAtURL:(id)l toURL:(id)rL withFSID:(fsid)iD andFileID:(unint64_t)fileID;
- (void)addPresenter:(id)presenter withID:(id)d fileURL:(id)l lastPresentedItemEventIdentifier:(id)identifier ubiquityAttributes:(id)attributes options:(unint64_t)options responses:(unint64_t)responses;
- (void)addProvider:(id)provider withID:(id)d uniqueID:(id)iD forProvidedItemsURL:(id)l options:(unint64_t)options withServer:(id)server reply:(id)reply;
- (void)cancelAccessClaimForID:(id)d;
- (void)cancelMaterializationWithRequestID:(id)d;
- (void)dealloc;
- (void)getDebugInformationIncludingEverything:(BOOL)everything withString:(id)string fromPid:(int)pid thenContinue:(id)continue;
- (void)getItemHasPresentersAtURL:(id)l completionHandler:(id)handler;
- (void)grantAccessClaim:(id)claim withReply:(id)reply;
- (void)grantSubarbitrationClaim:(id)claim withServer:(id)server reply:(id)reply;
- (void)makeProviderMaterializeFileAtURL:(id)l kernelInfo:(id)info withRequestID:(id)d fromProcess:(id *)process completionHandler:(id)handler;
- (void)performMateralizationOfURL:(id)l withProvider:(id)provider fakeClaim:(id)claim kernelInfo:(id)info requestID:(id)d fromProcess:(id *)process completionHandler:(id)handler;
- (void)prepareToArbitrateForURLs:(id)ls;
- (void)provideDebugInfoWithLocalInfo:(id)info completionHandler:(id)handler;
- (void)provideSubarbiterDebugInfoIncludingEverything:(BOOL)everything completionHandler:(id)handler;
- (void)removePresenterWithID:(id)d;
- (void)removeProviderWithID:(id)d uniqueID:(id)iD;
- (void)resolveReparentRequestOfFileAtURL:(id)l toDestinationDirectory:(id)directory withRequestID:(id)d operation:(unsigned int)operation fromProcess:(id *)process completionHandler:(id)handler;
- (void)stopArbitrating;
- (void)tiePresenterForID:(id)d toItemAtURL:(id)l;
- (void)writerWithPurposeID:(id)d didChangeItemAtURL:(id)l;
- (void)writerWithPurposeID:(id)d didChangeSharingOfItemAtURL:(id)l;
- (void)writerWithPurposeID:(id)d didChangeUbiquityAttributes:(id)attributes ofItemAtURL:(id)l;
- (void)writerWithPurposeID:(id)d didChangeUbiquityOfItemAtURL:(id)l;
- (void)writerWithPurposeID:(id)d didDisconnectItemAtURL:(id)l;
- (void)writerWithPurposeID:(id)d didMakeItemDisappearAtURL:(id)l;
- (void)writerWithPurposeID:(id)d didMoveItemAtURL:(id)l toURL:(id)rL withFSID:(fsid)iD andFileID:(unint64_t)fileID;
- (void)writerWithPurposeID:(id)d didReconnectItemAtURL:(id)l;
- (void)writerWithPurposeID:(id)d didVersionChangeOfKind:(id)kind toItemAtURL:(id)l withClientID:(id)iD name:(id)name;
@end

@implementation NSFileAccessArbiter

- (NSFileAccessArbiter)initWithQueue:(id)queue isSubarbiter:(BOOL)subarbiter listener:(id)listener
{
  v16 = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = NSFileAccessArbiter;
  v8 = [(NSFileAccessArbiter *)&v15 init];
  v9 = v8;
  if (v8)
  {
    v8->_queue = queue;
    dispatch_retain(queue);
    v9->_listenerConnection = listener;
    v9->_isSubarbiter = subarbiter;
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

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v7[6] = *MEMORY[0x1E69E9840];
  [connection setExportedObject:self];
  [connection setExportedInterface:{+[NSFileCoordinator _fileAccessArbiterInterface](NSFileCoordinator, "_fileAccessArbiterInterface")}];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58__NSFileAccessArbiter_listener_shouldAcceptNewConnection___block_invoke;
  v7[3] = &unk_1E69F2080;
  v7[4] = self;
  v7[5] = connection;
  [connection setInvalidationHandler:v7];
  [connection _setQueue:self->_queue];
  [connection resume];
  return 1;
}

- (void)_grantAccessClaim:(id)claim
{
  v15 = *MEMORY[0x1E69E9840];
  claimID = [claim claimID];
  v6 = atomic_load(&_NSFCSubarbitrationCount);
  if (v6 < 1 || (v11 = atomic_load(_NSFCDisableLogSuppression), (v11 & 1) != 0) || (v12 = atomic_load(&_NSFCSubarbitratedClaimCount), v12 <= 99))
  {
    v7 = _NSFCClaimsLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v14 = claimID;
      _os_log_impl(&dword_18075C000, v7, OS_LOG_TYPE_DEFAULT, "Received claim %{public}@", buf, 0xCu);
    }
  }

  if (self->_superarbitrationServer)
  {
    v8 = [claim cameFromSuperarbiter] ^ 1;
  }

  else
  {
    v8 = 0;
  }

  if ([claim evaluateSelfWithRootNode:self->_rootNode checkSubarbitrability:v8])
  {
    [(NSMutableDictionary *)self->_accessClaimsByID setObject:claim forKey:claimID];
    [claim startObservingClientState];
    -[NSString UTF8String](+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Claim: %@ (%d)", [claimID description], -[NSXPCConnection processIdentifier](+[NSXPCConnection currentConnection](NSXPCConnection, "currentConnection"), "processIdentifier")), "UTF8String");
    v9 = os_transaction_create();
    [(NSMutableDictionary *)self->_accessClaimTransactionsByID setObject:v9 forKey:claimID];
  }

  else
  {
    v10 = _NSFCClaimsLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v14 = claimID;
      _os_log_impl(&dword_18075C000, v10, OS_LOG_TYPE_INFO, "Claim %{public}@ forwarded to superarbiter", buf, 0xCu);
    }

    [claim forwardUsingConnection:self->_superarbitrationServer crashHandler:&__block_literal_global_33];
  }

  [claim unblock];
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

- (void)_revokeAccessClaimForID:(id)d fromLocal:(BOOL)local
{
  localCopy = local;
  v14 = *MEMORY[0x1E69E9840];
  v7 = [(NSMutableDictionary *)self->_accessClaimsByID objectForKey:?];
  if (v7)
  {
    v8 = v7;
    if (!localCopy || ([v7 cameFromSuperarbiter] & 1) == 0)
    {
      [v8 revoked];
      [(NSMutableDictionary *)self->_accessClaimsByID removeObjectForKey:d];
      [(NSMutableDictionary *)self->_subarbitrationClaimsByID removeObjectForKey:d];
      accessClaimTransactionsByID = self->_accessClaimTransactionsByID;

      [(NSMutableDictionary *)accessClaimTransactionsByID removeObjectForKey:d];
      return;
    }
  }

  else if (!localCopy)
  {
    return;
  }

  superarbitrationServer = self->_superarbitrationServer;
  if (superarbitrationServer)
  {
    remoteObjectProxy = [(NSXPCConnection *)superarbitrationServer remoteObjectProxy];

    [remoteObjectProxy revokeAccessClaimForID:d];
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

- (void)_grantSubarbitrationClaim:(id)claim withServer:(id)server
{
  v8[7] = *MEMORY[0x1E69E9840];
  serverCopy = server;
  [server setRemoteObjectInterface:{+[NSFileCoordinator _fileAccessArbiterInterface](NSFileCoordinator, "_fileAccessArbiterInterface")}];
  [claim setSubarbiterConnection:server];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __60__NSFileAccessArbiter__grantSubarbitrationClaim_withServer___block_invoke;
  v8[3] = &unk_1E69F68D8;
  v8[4] = claim;
  v8[5] = server;
  v8[6] = self;
  [server setInterruptionHandler:v8];
  [server setUserInfo:claim];
  [server _setQueue:self->_queue];
  [server resume];
  -[NSMutableDictionary setObject:forKey:](self->_subarbitrationClaimsByID, "setObject:forKey:", claim, [claim claimID]);
  [(NSFileAccessArbiter *)self _grantAccessClaim:claim];
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

- (void)_writerWithPurposeID:(id)d didMoveItemAtURL:(id)l toURL:(id)rL withFSID:(fsid)iD andFileID:(unint64_t)fileID
{
  v128[9] = *MEMORY[0x1E69E9840];
  v111 = 0;
  v110 = 0;
  p_rootNode = &self->_rootNode;
  v14 = -[NSFileAccessNode pathToDescendantForFileURL:componentRange:](self->_rootNode, "pathToDescendantForFileURL:componentRange:", [l logicalURL], &v110);
  v109 = 0;
  v108 = 0;
  v15 = -[NSFileAccessNode pathToDescendantForFileURL:componentRange:](*p_rootNode, "pathToDescendantForFileURL:componentRange:", [rL logicalURL], &v108);
  if (v14)
  {
    v16 = v15;
    if (v15)
    {
      v17 = [(NSFileAccessNode *)self->_rootNode descendantAtPath:v14 componentRange:v110 create:v111, 0];
      v18 = [(NSFileAccessNode *)self->_rootNode descendantAtPath:v16 componentRange:v108 create:v109, 0];
      if (v18 == v17)
      {
        physicalURL = [l physicalURL];
        physicalURL2 = [rL physicalURL];
        v23 = physicalURL2;
        if (physicalURL)
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
          if (!physicalURL2 || !_CFURLIsItemPromiseAtURL())
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
        if (self->_isSubarbiter || (v128[0] = MEMORY[0x1E69E9820], v128[1] = 3221225472, v128[2] = __86__NSFileAccessArbiter__writerWithPurposeID_didMoveItemAtURL_toURL_withFSID_andFileID___block_invoke, v128[3] = &unk_1E69F8A48, v128[4] = l, v128[5] = rL, v128[7] = fileID, v128[8] = iD, v128[6] = d, [v17 forEachPresenterOfContainingItemPerformProcedure:v128], v19 = objc_msgSend(v17, "itemProvider"), (v53 = v19) == 0))
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

        dCopy = d;
        iDCopy = iD;
        fileIDCopy = fileID;
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
          v117[4] = dCopy;
          v117[5] = rL;
          v117[7] = iDCopy;
          v117[6] = fileIDCopy;
          [v17 forEachPresenterOfItemOrContainedItemPerformProcedure:v117];
          itemProvider = [v17 itemProvider];
          if (v53 | itemProvider)
          {
            v93[0] = MEMORY[0x1E69E9820];
            v93[1] = 3221225472;
            v93[2] = __86__NSFileAccessArbiter__writerWithPurposeID_didMoveItemAtURL_toURL_withFSID_andFileID___block_invoke_4;
            v93[3] = &unk_1E69F8AE8;
            v93[4] = v53;
            v93[5] = v49;
            v93[6] = v17;
            v93[7] = itemProvider;
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

- (BOOL)_addPresenter:(id)presenter ofItemAtURL:(id)l watchingFile:(BOOL)file withLastEventID:(id)d
{
  fileCopy = file;
  v22 = *MEMORY[0x1E69E9840];
  reactorID = [presenter reactorID];
  v12 = [(NSMutableDictionary *)self->_reactorsByID objectForKey:reactorID];
  if (v12)
  {
    if (!self->_isSubarbiter)
    {
      v13 = _NSFCPresenterLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v21 = reactorID;
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
        v21 = reactorID;
        _os_log_impl(&dword_18075C000, v14, OS_LOG_TYPE_DEFAULT, "Added presenter %{public}@", buf, 0xCu);
      }
    }

    [(NSMutableDictionary *)self->_reactorsByID setObject:presenter forKey:reactorID];
    if (self->_isSubarbiter)
    {
      [presenter setInSubarbiter:1];
    }

    -[NSString UTF8String](+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Presenter: %@ (%d)", [reactorID description], -[NSXPCConnection processIdentifier](+[NSXPCConnection currentConnection](NSXPCConnection, "currentConnection"), "processIdentifier")), "UTF8String");
    v15 = os_transaction_create();
    [(NSMutableDictionary *)self->_reactorTransactionsByID setObject:v15 forKey:reactorID];

    if (l)
    {
      v16 = [(NSFileAccessNode *)self->_rootNode descendantForFileURL:l];
      if (v16)
      {
        [presenter setItemLocation:v16];
      }
    }

    if (fileCopy && ([presenter inSubarbiter] & 1) == 0)
    {
      queue = self->_queue;
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __78__NSFileAccessArbiter__addPresenter_ofItemAtURL_watchingFile_withLastEventID___block_invoke;
      v19[3] = &unk_1E69F8BD0;
      v19[4] = self;
      [presenter startWatchingWithQueue:queue lastEventID:d unannouncedMoveHandler:v19];
    }

    if (!self->_isSubarbiter)
    {
      [presenter startObservingApplicationStateWithQueue:self->_queue];
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

- (BOOL)_addProvider:(id)provider ofItemsAtURL:(id)l
{
  v19 = *MEMORY[0x1E69E9840];
  reactorID = [provider reactorID];
  uniqueID = [provider uniqueID];
  if (!self->_isSubarbiter)
  {
    v9 = _NSFCProviderLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v18 = reactorID;
      _os_log_impl(&dword_18075C000, v9, OS_LOG_TYPE_DEFAULT, "Added provider %{public}@", buf, 0xCu);
    }
  }

  v10 = [(NSFileAccessNode *)self->_rootNode descendantForFileURL:l];
  if (v10)
  {
    v11 = v10;
    [provider setItemLocation:v10];
    if ([provider itemLocation] == v11)
    {
      [(NSMutableDictionary *)self->_reactorsByID setObject:provider forKey:uniqueID];
      -[NSString UTF8String](+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Provider: %@ (%d)", [reactorID description], -[NSXPCConnection processIdentifier](+[NSXPCConnection currentConnection](NSXPCConnection, "currentConnection"), "processIdentifier")), "UTF8String");
      v15 = os_transaction_create();
      [(NSMutableDictionary *)self->_reactorTransactionsByID setObject:v15 forKey:uniqueID];

      LOBYTE(v13) = 1;
      return v13;
    }

    v12 = _NSFCProviderLog();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    if (v13)
    {
      *buf = 138543362;
      v18 = reactorID;
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
      v18 = reactorID;
      v14 = "Added provider %{public}@ failed because no node was found";
      goto LABEL_10;
    }
  }

  return v13;
}

- (void)_willRemoveReactor:(id)reactor
{
  if (object_getClass(reactor) == NSFilePresenterProxy)
  {
    [reactor stopObservingApplicationState];
    reactorID = [reactor reactorID];
  }

  else
  {
    if (object_getClass(reactor) != NSFileProviderProxy)
    {
      qword_1EA7BB378 = "Unexpected type as argument to _willRemoveReactor";
      __break(1u);
      return;
    }

    reactorID = [reactor uniqueID];
  }

  v6 = reactorID;
  [reactor setItemLocation:0];
  [reactor invalidate];
  reactorTransactionsByID = self->_reactorTransactionsByID;

  [(NSMutableDictionary *)reactorTransactionsByID removeObjectForKey:v6];
}

- (void)_removeReactorForID:(id)d
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
    [(NSMutableDictionary *)self->_reactorsByID removeObjectForKey:d];
  }
}

- (void)_startArbitratingItemsAtURLs:(id)ls withSuperarbitrationServer:(id)server
{
  v22 = *MEMORY[0x1E69E9840];
  v7 = _NSFCClaimsLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v21 = [ls count];
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
  self->_superarbitrationServer = server;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = [ls countByEnumeratingWithState:&v16 objects:v15 count:16];
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
          objc_enumerationMutation(ls);
        }

        v14 = [(NSFileAccessNode *)self->_rootNode descendantForFileURL:*(*(&v16 + 1) + 8 * i)];
        if (v14)
        {
          [v14 setArbitrationBoundary];
        }
      }

      v11 = [ls countByEnumeratingWithState:&v16 objects:v15 count:16];
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

- (void)_enumerateSubarbitersUsingBlock:(id)block
{
  v4[5] = *MEMORY[0x1E69E9840];
  subarbitrationClaimsByID = self->_subarbitrationClaimsByID;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __55__NSFileAccessArbiter__enumerateSubarbitersUsingBlock___block_invoke;
  v4[3] = &unk_1E69F8C20;
  v4[4] = block;
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

- (void)grantAccessClaim:(id)claim withReply:(id)reply
{
  v13 = *MEMORY[0x1E69E9840];
  if (claim)
  {
    v7 = +[NSXPCConnection currentConnection];
    [claim acceptClaimFromClient:v7 arbiterQueue:self->_queue grantHandler:reply];
    superarbitrationServer = self->_superarbitrationServer;
    if (superarbitrationServer)
    {
      if (v7 == superarbitrationServer)
      {
        [claim setCameFromSuperarbiter];
      }

      else
      {
        v9 = _NSFCClaimsLog();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
        {
          v11 = 138543362;
          claimID = [claim claimID];
          _os_log_fault_impl(&dword_18075C000, v9, OS_LOG_TYPE_FAULT, "A subarbiter is being asked to grant a claim (%{public}@) by something other than its superarbiter, which is a surprise.", &v11, 0xCu);
        }
      }
    }

    [(NSFileAccessArbiter *)self _grantAccessClaim:claim];
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

- (void)grantSubarbitrationClaim:(id)claim withServer:(id)server reply:(id)reply
{
  v12[5] = *MEMORY[0x1E69E9840];
  v9 = +[NSXPCConnection currentConnection];
  queue = self->_queue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __65__NSFileAccessArbiter_grantSubarbitrationClaim_withServer_reply___block_invoke;
  v12[3] = &unk_1E69F8C48;
  v12[4] = reply;
  [claim acceptClaimFromClient:v9 arbiterQueue:queue grantHandler:v12];
  v11 = [[NSXPCConnection alloc] initWithListenerEndpoint:server];
  [(NSXPCConnection *)v11 setExportedObject:self];
  [(NSXPCConnection *)v11 setExportedInterface:+[NSFileCoordinator _fileAccessArbiterInterface]];
  [(NSFileAccessArbiter *)self _grantSubarbitrationClaim:claim withServer:v11];
}

- (void)performMateralizationOfURL:(id)l withProvider:(id)provider fakeClaim:(id)claim kernelInfo:(id)info requestID:(id)d fromProcess:(id *)process completionHandler:(id)handler
{
  v21 = *MEMORY[0x1E69E9840];
  -[NSString UTF8String](+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Nspace Materialization: %@ (%d)", [claim claimID], process->var0[5]), "UTF8String");
  v16 = os_transaction_create();
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __124__NSFileAccessArbiter_performMateralizationOfURL_withProvider_fakeClaim_kernelInfo_requestID_fromProcess_completionHandler___block_invoke;
  v19[3] = &unk_1E69F8C70;
  v19[4] = claim;
  v19[5] = d;
  v19[6] = self;
  v19[7] = handler;
  v17 = *&process->var0[4];
  v20[0] = *process->var0;
  v20[1] = v17;
  v18 = [provider provideItemForKernelRequestWithInfo:info atURL:l forProcess:v20 withOptions:0x40000000 completionHandler:v19];
  if (d)
  {
    [(NSMutableDictionary *)self->_kernelMaterializationClaimCancellers setObject:v18 forKey:d];
    [(NSMutableDictionary *)self->_kernelMaterializationClaimTransactions setObject:v16 forKey:d];
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

- (void)makeProviderMaterializeFileAtURL:(id)l kernelInfo:(id)info withRequestID:(id)d fromProcess:(id *)process completionHandler:(id)handler
{
  v22 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_not_V2(self->_queue);
  v17 = 0;
  v16 = 0;
  if (_NSFCGetFileProviderUIDFOrURL(l, &v16, &v17))
  {
    v13 = os_transaction_create();
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    v15 = *&process->var0[4];
    v20 = *process->var0;
    block[2] = __111__NSFileAccessArbiter_makeProviderMaterializeFileAtURL_kernelInfo_withRequestID_fromProcess_completionHandler___block_invoke;
    block[3] = &unk_1E69F8CC0;
    block[4] = self;
    block[5] = l;
    v19 = v16;
    block[6] = info;
    block[7] = d;
    v21 = v15;
    block[8] = v13;
    block[9] = handler;
    dispatch_async(queue, block);
  }

  else
  {
    (*(handler + 2))(handler, 0, v17);
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

- (void)resolveReparentRequestOfFileAtURL:(id)l toDestinationDirectory:(id)directory withRequestID:(id)d operation:(unsigned int)operation fromProcess:(id *)process completionHandler:(id)handler
{
  v25 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_not_V2(self->_queue);
  v19 = 0;
  v18 = 0;
  if (_NSFCGetFileProviderUIDFOrURL(l, &v18, &v19))
  {
    v15 = os_transaction_create();
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    v17 = *&process->var0[4];
    v23 = *process->var0;
    block[2] = __134__NSFileAccessArbiter_resolveReparentRequestOfFileAtURL_toDestinationDirectory_withRequestID_operation_fromProcess_completionHandler___block_invoke;
    block[3] = &unk_1E69F8D60;
    block[4] = self;
    block[5] = l;
    v21 = v18;
    operationCopy = operation;
    block[6] = directory;
    block[7] = d;
    v24 = v17;
    block[8] = v15;
    block[9] = handler;
    dispatch_async(queue, block);
  }

  else
  {
    (*(handler + 2))(handler, 0, 0, v19);
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

- (void)cancelMaterializationWithRequestID:(id)d
{
  block[6] = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_not_V2(self->_queue);
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__NSFileAccessArbiter_cancelMaterializationWithRequestID___block_invoke;
  block[3] = &unk_1E69F2080;
  block[4] = self;
  block[5] = d;
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

- (void)addPresenter:(id)presenter withID:(id)d fileURL:(id)l lastPresentedItemEventIdentifier:(id)identifier ubiquityAttributes:(id)attributes options:(unint64_t)options responses:(unint64_t)responses
{
  v15[5] = *MEMORY[0x1E69E9840];
  v14 = [[NSFilePresenterProxy alloc] initWithClient:+[NSXPCConnection remotePresenter:"currentConnection"]reactorID:presenter, d];
  [(NSFilePresenterProxy *)v14 setUsesMainThreadDuringReliquishing:(options >> 1) & 1];
  [(NSFilePresenterProxy *)v14 setFilePresenterResponses:responses];
  [(NSFilePresenterProxy *)v14 setObservedUbiquityAttributes:attributes];
  -[NSFileReactorProxy setEffectiveUserIdentifier:](v14, "setEffectiveUserIdentifier:", [+[NSXPCConnection currentConnection](NSXPCConnection effectiveUserIdentifier]);
  if (!l || self->_isSubarbiter || [(NSFilePresenterProxy *)v14 allowedForURL:l])
  {
    if ([(NSFileAccessArbiter *)self _addPresenter:v14 ofItemAtURL:l watchingFile:options & 1 withLastEventID:identifier])
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

- (void)removePresenterWithID:(id)d
{
  v5[5] = *MEMORY[0x1E69E9840];
  [(NSFileAccessArbiter *)self _removeReactorForID:?];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __45__NSFileAccessArbiter_removePresenterWithID___block_invoke;
  v5[3] = &unk_1E69F8D88;
  v5[4] = d;
  [(NSFileAccessArbiter *)self _enumerateSubarbitersUsingBlock:v5];
}

+ (id)entitlementForConnection:(id)connection key:(id)key
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = [objc_getAssociatedObject(connection &NSFCXPCEntitlements)];
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
      keyCopy = key;
      v11 = 2114;
      connectionCopy = connection;
      _os_log_impl(&dword_18075C000, v7, OS_LOG_TYPE_INFO, "Add key: %{public}@ to entitlement cache for connection: %{public}@", &v9, 0x16u);
    }

    return [connection valueForEntitlement:key];
  }

  return v6;
}

- (void)addProvider:(id)provider withID:(id)d uniqueID:(id)iD forProvidedItemsURL:(id)l options:(unint64_t)options withServer:(id)server reply:(id)reply
{
  optionsCopy = options;
  v40 = *MEMORY[0x1E69E9840];
  v15 = +[NSXPCConnection currentConnection];
  v34[0] = @"com.apple.private.foundation.fileprovideridentifier";
  v34[1] = @"application-identifier";
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:2];
  if (!objc_getAssociatedObject(v15, &NSFCXPCEntitlements))
  {
    iDCopy = iD;
    v28 = optionsCopy;
    lCopy = l;
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
          null = [(NSXPCConnection *)v15 valueForEntitlement:v22];
          if (!null)
          {
            null = [MEMORY[0x1E695DFB0] null];
          }

          [v17 setValue:null forKey:v22];
        }

        v19 = [v16 countByEnumeratingWithState:&v36 objects:v35 count:16];
      }

      while (v19);
    }

    objc_setAssociatedObject(v15, &NSFCXPCEntitlements, v17, 0x303);
    l = lCopy;
    iD = iDCopy;
    optionsCopy = v28;
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

  v25 = [[NSFileProviderProxy alloc] initWithClient:v15 remoteProvider:provider reactorID:d secureID:v24 uniqueID:iD];
  [(NSFileProviderProxy *)v25 setWantsWriteNotifications:optionsCopy & 1];
  [(NSFileReactorProxy *)v25 setEffectiveUserIdentifier:[(NSXPCConnection *)v15 effectiveUserIdentifier]];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __96__NSFileAccessArbiter_addProvider_withID_uniqueID_forProvidedItemsURL_options_withServer_reply___block_invoke;
  v33[3] = &unk_1E69F8DB0;
  v33[4] = self;
  v33[5] = v25;
  v33[6] = l;
  v33[7] = reply;
  if (server)
  {
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __96__NSFileAccessArbiter_addProvider_withID_uniqueID_forProvidedItemsURL_options_withServer_reply___block_invoke_3;
    v32[3] = &unk_1E69F3938;
    v32[4] = v33;
    v26 = [provider remoteObjectProxyWithErrorHandler:v32];
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

- (void)removeProviderWithID:(id)d uniqueID:(id)iD
{
  v7[6] = *MEMORY[0x1E69E9840];
  [(NSFileAccessArbiter *)self _removeReactorForID:iD];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__NSFileAccessArbiter_removeProviderWithID_uniqueID___block_invoke;
  v7[3] = &unk_1E69F8E00;
  v7[4] = d;
  v7[5] = iD;
  [(NSFileAccessArbiter *)self _enumerateSubarbitersUsingBlock:v7];
}

- (void)prepareToArbitrateForURLs:(id)ls
{
  v5 = +[NSXPCConnection currentConnection];
  [(NSXPCConnection *)v5 setRemoteObjectInterface:+[NSFileCoordinator _fileAccessArbiterInterface]];

  [(NSFileAccessArbiter *)self _startArbitratingItemsAtURLs:ls withSuperarbitrationServer:v5];
}

- (void)provideDebugInfoWithLocalInfo:(id)info completionHandler:(id)handler
{
  v12[5] = *MEMORY[0x1E69E9840];
  v7 = +[NSXPCConnection currentConnection];
  processIdentifier = [(NSXPCConnection *)v7 processIdentifier];
  if ((_NSFCIP & 1) != 0 || (v9 = -[NSXPCConnection valueForEntitlement:](v7, "valueForEntitlement:", @"com.apple.private.foundation.filecoordination-debug"), _NSIsNSNumber()) && ([v9 BOOLValue] & 1) != 0 || !-[NSXPCConnection effectiveUserIdentifier](v7, "effectiveUserIdentifier"))
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __71__NSFileAccessArbiter_provideDebugInfoWithLocalInfo_completionHandler___block_invoke;
    v12[3] = &unk_1E69F8E28;
    v12[4] = handler;
    [(NSFileAccessArbiter *)self getDebugInformationIncludingEverything:0 withString:info fromPid:processIdentifier thenContinue:v12];
  }

  else
  {
    v10 = [NSError errorWithDomain:@"NSPOSIXErrorDomain" code:1 userInfo:0];
    v11 = *(handler + 2);

    v11(handler, 0, v10);
  }
}

- (void)provideSubarbiterDebugInfoIncludingEverything:(BOOL)everything completionHandler:(id)handler
{
  everythingCopy = everything;
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
    v13[4] = handler;
    [(NSFileAccessArbiter *)self getDebugInformationIncludingEverything:v10 & everythingCopy withString:0 fromPid:0 thenContinue:v13];
    return;
  }

  v11 = [NSError errorWithDomain:@"NSPOSIXErrorDomain" code:1 userInfo:0];
  v12 = *(handler + 2);

  v12(handler, 0, v11);
}

- (void)_handleCanceledClient:(id)client
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
  v16[4] = client;
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
  v15[4] = client;
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

- (void)getItemHasPresentersAtURL:(id)l completionHandler:(id)handler
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
  if (!sandbox_check_by_audit_token() || (v8 = [l fileSystemRepresentation]) != 0 && (v16 = v18, v17 = v19, v10 = v8, !sandbox_check_by_audit_token()))
  {
    v9 = [(NSFileAccessNode *)self->_rootNode descendantForFileURL:l, v10];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __67__NSFileAccessArbiter_getItemHasPresentersAtURL_completionHandler___block_invoke;
    v11[3] = &unk_1E69F8A98;
    v11[4] = &v12;
    [v9 forEachPresenterOfItemPerformProcedure:v11];
  }

  (*(handler + 2))(handler, *(v13 + 24));
  _Block_object_dispose(&v12, 8);
}

- (void)getDebugInformationIncludingEverything:(BOOL)everything withString:(id)string fromPid:(int)pid thenContinue:(id)continue
{
  everythingCopy = everything;
  v26 = *MEMORY[0x1E69E9840];
  if (self->_isSubarbiter)
  {
    v9 = [(NSFileAccessArbiter *)self rootNode:everything];
    if (everythingCopy)
    {
      subarbiterDescription = [v9 subarbiterDescription];
    }

    else
    {
      subarbiterDescription = [v9 sensitiveSubarbiterDescription];
    }

    (*(continue + 2))(continue, subarbiterDescription);
  }

  else
  {
    v11 = *&pid;
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    if (string)
    {
      [dictionary setObject:string forKey:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", v11)}];
    }

    v14 = [(NSMutableDictionary *)self->_subarbitrationClaimsByID copy];
    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    v24[0] = 0;
    v24[1] = v24;
    v24[2] = 0x2020000000;
    v25 = 0;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __94__NSFileAccessArbiter_getDebugInformationIncludingEverything_withString_fromPid_thenContinue___block_invoke;
    block[3] = &unk_1E69F8EC8;
    v23 = everythingCopy;
    block[4] = self;
    block[5] = dictionary2;
    block[6] = v14;
    block[7] = dictionary;
    block[8] = continue;
    block[9] = v24;
    v16 = dispatch_time(0, 2000000000);
    dispatch_after(v16, MEMORY[0x1E69E96A0], block);
    v17 = dispatch_group_create();
    rootNode = self->_rootNode;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __94__NSFileAccessArbiter_getDebugInformationIncludingEverything_withString_fromPid_thenContinue___block_invoke_4;
    v21[3] = &unk_1E69F8F40;
    v21[4] = dictionary;
    v21[5] = v17;
    v21[6] = self;
    [(NSFileAccessNode *)rootNode forEachReactorToItemOrContainedItemPerformProcedure:v21];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __94__NSFileAccessArbiter_getDebugInformationIncludingEverything_withString_fromPid_thenContinue___block_invoke_7;
    v19[3] = &unk_1E69F8FB8;
    v19[4] = v17;
    v19[5] = dictionary2;
    v20 = everythingCopy;
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

- (void)cancelAccessClaimForID:(id)d
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
      [(NSMutableDictionary *)self->_accessClaimsByID removeObjectForKey:d];
      [(NSMutableDictionary *)self->_subarbitrationClaimsByID removeObjectForKey:d];
      [(NSMutableDictionary *)self->_accessClaimTransactionsByID removeObjectForKey:d];
    }
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__NSFileAccessArbiter_cancelAccessClaimForID___block_invoke;
  v7[3] = &unk_1E69F8D88;
  v7[4] = d;
  [(NSFileAccessArbiter *)self _enumerateSubarbitersUsingBlock:v7];
}

- (void)writerWithPurposeID:(id)d didMoveItemAtURL:(id)l toURL:(id)rL withFSID:(fsid)iD andFileID:(unint64_t)fileID
{
  v23 = *MEMORY[0x1E69E9840];
  v13 = _NSFCClaimsLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 138544131;
    dCopy = d;
    v17 = 2113;
    logicalURL = [l logicalURL];
    v19 = 2113;
    logicalURL2 = [rL logicalURL];
    v21 = 2048;
    fileIDCopy = fileID;
    _os_log_impl(&dword_18075C000, v13, OS_LOG_TYPE_INFO, "Received item move hint with purpose %{public}@ -- %{private}@ -> %{private}@ (fileID: %llu)", buf, 0x2Au);
  }

  [(NSFileAccessArbiter *)self _writerWithPurposeID:d didMoveItemAtURL:l toURL:rL withFSID:iD andFileID:fileID];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __85__NSFileAccessArbiter_writerWithPurposeID_didMoveItemAtURL_toURL_withFSID_andFileID___block_invoke;
  v14[3] = &unk_1E69F8BA8;
  v14[4] = d;
  v14[5] = l;
  v14[7] = fileID;
  v14[8] = iD;
  v14[6] = rL;
  [(NSFileAccessArbiter *)self _enumerateSubarbitersUsingBlock:v14];
}

- (void)writerWithPurposeID:(id)d didDisconnectItemAtURL:(id)l
{
  v14 = *MEMORY[0x1E69E9840];
  v7 = _NSFCClaimsLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138543619;
    *&buf[4] = d;
    *&buf[12] = 2113;
    *&buf[14] = [l logicalURL];
    _os_log_impl(&dword_18075C000, v7, OS_LOG_TYPE_INFO, "Received item disconnection hint with purpose %{public}@ -- %{private}@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = 0;
  v8 = -[NSFileAccessNode pathToDescendantForFileURL:componentRange:](self->_rootNode, "pathToDescendantForFileURL:componentRange:", [l logicalURL], buf);
  if (v8)
  {
    v9 = [(NSFileAccessNode *)self->_rootNode descendantAtPath:v8 componentRange:*buf create:*&buf[8], 0];
    if (v9)
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __66__NSFileAccessArbiter_writerWithPurposeID_didDisconnectItemAtURL___block_invoke;
      v11[3] = &unk_1E69F9008;
      v11[4] = d;
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

- (void)writerWithPurposeID:(id)d didReconnectItemAtURL:(id)l
{
  v14 = *MEMORY[0x1E69E9840];
  v7 = _NSFCClaimsLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138543619;
    *&buf[4] = d;
    *&buf[12] = 2113;
    *&buf[14] = [l logicalURL];
    _os_log_impl(&dword_18075C000, v7, OS_LOG_TYPE_INFO, "Received item reconnection hint with purpose %{public}@ -- %{private}@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = 0;
  v8 = -[NSFileAccessNode pathToDescendantForFileURL:componentRange:](self->_rootNode, "pathToDescendantForFileURL:componentRange:", [l logicalURL], buf);
  if (v8)
  {
    v9 = [(NSFileAccessNode *)self->_rootNode descendantAtPath:v8 componentRange:*buf create:*&buf[8], 0];
    if (v9)
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __65__NSFileAccessArbiter_writerWithPurposeID_didReconnectItemAtURL___block_invoke;
      v11[3] = &unk_1E69F9008;
      v11[4] = d;
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

- (void)writerWithPurposeID:(id)d didChangeUbiquityOfItemAtURL:(id)l
{
  v16 = *MEMORY[0x1E69E9840];
  v7 = _NSFCClaimsLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138543619;
    dCopy = d;
    v14 = 2113;
    logicalURL = [l logicalURL];
    _os_log_impl(&dword_18075C000, v7, OS_LOG_TYPE_INFO, "Received item ubiquity change hint with purpose %{public}@ -- %{private}@", buf, 0x16u);
  }

  v8 = -[NSFileAccessNode descendantForFileURL:](self->_rootNode, "descendantForFileURL:", [l logicalURL]);
  if (v8)
  {
    v9 = v8;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __72__NSFileAccessArbiter_writerWithPurposeID_didChangeUbiquityOfItemAtURL___block_invoke;
    v11[3] = &unk_1E69F9030;
    v11[4] = v8;
    v11[5] = l;
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

- (void)writerWithPurposeID:(id)d didChangeSharingOfItemAtURL:(id)l
{
  v16 = *MEMORY[0x1E69E9840];
  v7 = _NSFCClaimsLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138543619;
    dCopy = d;
    v14 = 2113;
    logicalURL = [l logicalURL];
    _os_log_impl(&dword_18075C000, v7, OS_LOG_TYPE_INFO, "Received item sharing change hint with purpose %{public}@ -- %{private}@", buf, 0x16u);
  }

  v8 = -[NSFileAccessNode descendantForFileURL:](self->_rootNode, "descendantForFileURL:", [l logicalURL]);
  if (v8)
  {
    v9 = v8;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __71__NSFileAccessArbiter_writerWithPurposeID_didChangeSharingOfItemAtURL___block_invoke;
    v11[3] = &unk_1E69F9030;
    v11[4] = v8;
    v11[5] = l;
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

- (void)writerWithPurposeID:(id)d didChangeUbiquityAttributes:(id)attributes ofItemAtURL:(id)l
{
  v20 = *MEMORY[0x1E69E9840];
  v9 = _NSFCClaimsLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 138543875;
    dCopy = d;
    v16 = 2113;
    logicalURL = [l logicalURL];
    v18 = 2114;
    attributesCopy = attributes;
    _os_log_impl(&dword_18075C000, v9, OS_LOG_TYPE_INFO, "Received item ubiquity attributes change hint with purpose %{public}@ -- %{private}@. Attributes: %{public}@", buf, 0x20u);
  }

  v10 = -[NSFileAccessNode descendantForFileURL:](self->_rootNode, "descendantForFileURL:", [l logicalURL]);
  if (v10)
  {
    v11 = v10;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __83__NSFileAccessArbiter_writerWithPurposeID_didChangeUbiquityAttributes_ofItemAtURL___block_invoke;
    v13[3] = &unk_1E69F9008;
    v13[4] = attributes;
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

- (void)writerWithPurposeID:(id)d didMakeItemDisappearAtURL:(id)l
{
  v16 = *MEMORY[0x1E69E9840];
  v7 = _NSFCClaimsLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138543619;
    dCopy = d;
    v14 = 2113;
    logicalURL = [l logicalURL];
    _os_log_impl(&dword_18075C000, v7, OS_LOG_TYPE_INFO, "Received item disappearance hint with purpose %{public}@ -- %{private}@", buf, 0x16u);
  }

  v8 = -[NSFileAccessNode descendantForFileURL:](self->_rootNode, "descendantForFileURL:", [l logicalURL]);
  if (v8)
  {
    v9 = v8;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __69__NSFileAccessArbiter_writerWithPurposeID_didMakeItemDisappearAtURL___block_invoke;
    v11[3] = &unk_1E69F9030;
    v11[4] = d;
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

- (void)writerWithPurposeID:(id)d didChangeItemAtURL:(id)l
{
  v16 = *MEMORY[0x1E69E9840];
  v7 = _NSFCClaimsLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138543619;
    dCopy = d;
    v14 = 2113;
    logicalURL = [l logicalURL];
    _os_log_impl(&dword_18075C000, v7, OS_LOG_TYPE_INFO, "Received item change hint with purpose %{public}@ -- %{private}@", buf, 0x16u);
  }

  v8 = -[NSFileAccessNode descendantForFileURL:](self->_rootNode, "descendantForFileURL:", [l logicalURL]);
  if (v8)
  {
    v9 = v8;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __62__NSFileAccessArbiter_writerWithPurposeID_didChangeItemAtURL___block_invoke;
    v11[3] = &unk_1E69F9030;
    v11[4] = d;
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

- (void)writerWithPurposeID:(id)d didVersionChangeOfKind:(id)kind toItemAtURL:(id)l withClientID:(id)iD name:(id)name
{
  v24 = *MEMORY[0x1E69E9840];
  v13 = _NSFCClaimsLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 138543875;
    kindCopy = kind;
    v20 = 2114;
    dCopy = d;
    v22 = 2113;
    logicalURL = [l logicalURL];
    _os_log_impl(&dword_18075C000, v13, OS_LOG_TYPE_INFO, "Received item version change hint of kind %{public}@ with purpose %{public}@ -- %{private}@", buf, 0x20u);
  }

  v14 = -[NSFileAccessNode descendantForFileURL:](self->_rootNode, "descendantForFileURL:", [l logicalURL]);
  if (v14)
  {
    v15 = v14;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __96__NSFileAccessArbiter_writerWithPurposeID_didVersionChangeOfKind_toItemAtURL_withClientID_name___block_invoke;
    v17[3] = &unk_1E69F9058;
    v17[4] = v14;
    v17[5] = kind;
    v17[6] = iD;
    v17[7] = name;
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

- (void)tiePresenterForID:(id)d toItemAtURL:(id)l
{
  v16 = *MEMORY[0x1E69E9840];
  v7 = [(NSMutableDictionary *)self->_reactorsByID objectForKey:?];
  if (self->_isSubarbiter || [v7 allowedForURL:{objc_msgSend(l, "logicalURL")}])
  {
    if (![v7 itemLocation])
    {
      v8 = _NSFCPresenterLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543619;
        dCopy2 = d;
        v14 = 2113;
        logicalURL = [l logicalURL];
        _os_log_impl(&dword_18075C000, v8, OS_LOG_TYPE_DEFAULT, "Presenter %{public}@ has been tied to a URL for the first time -- %{private}@", buf, 0x16u);
      }
    }

    v9 = -[NSFileAccessNode descendantForFileURL:](self->_rootNode, "descendantForFileURL:", [l logicalURL]);
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
      dCopy2 = d;
      v14 = 2113;
      logicalURL = [l logicalURL];
      _os_log_impl(&dword_18075C000, v10, OS_LOG_TYPE_DEFAULT, "Presenter %{public}@ not allowed to tie to URL -- %{private}@", buf, 0x16u);
    }
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __53__NSFileAccessArbiter_tiePresenterForID_toItemAtURL___block_invoke;
  v11[3] = &unk_1E69F8E00;
  v11[4] = d;
  v11[5] = l;
  [(NSFileAccessArbiter *)self _enumerateSubarbitersUsingBlock:v11];
}

+ (void)_wakeUpFileProviderWithUID:(unsigned int)d urls:(id)urls queue:(id)queue thenContinue:(id)continue
{
  v9 = *&d;
  v18 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(queue);
  if (_NSFCIPPB)
  {
    block[5] = MEMORY[0x1E69E9820];
    block[6] = 3221225472;
    block[7] = __88__NSFileAccessArbiter_FileProvider___wakeUpFileProviderWithUID_urls_queue_thenContinue___block_invoke;
    block[8] = &unk_1E69F90A8;
    block[9] = queue;
    block[10] = continue;
    (*(_NSFCIPPB + 16))();
  }

  else if (_NSFCIP == 1)
  {
    v10 = *(continue + 2);

    v10(continue, 1, 0);
  }

  else
  {
    if (qword_1ED43DAE0 != -1)
    {
      dispatch_once(&qword_1ED43DAE0, &__block_literal_global_300);
    }

    _processCanAccessUbiquityIdentityToken = [+[NSFileManager defaultManager](NSFileManager _processCanAccessUbiquityIdentityToken];
    if (v9 != -2 && v9 && _processCanAccessUbiquityIdentityToken && off_1ED43DAD8)
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
      v13[4] = queue;
      v13[5] = continue;
      off_1ED43DAD8(v9, urls, v13);
    }

    else
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __88__NSFileAccessArbiter_FileProvider___wakeUpFileProviderWithUID_urls_queue_thenContinue___block_invoke_4;
      block[3] = &unk_1E69F40C0;
      block[4] = continue;
      dispatch_async(queue, block);
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

+ (void)ensureProvidersIfNecessaryForClaim:(id)claim user:(unsigned int)user atLocations:(id)locations queue:(id)queue thenContinue:(id)continue
{
  v10 = *&user;
  v24 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(queue);
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v13 = [locations countByEnumeratingWithState:&v20 objects:v19 count:16];
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
        objc_enumerationMutation(locations);
      }

      if ([*(*(&v20 + 1) + 8 * v16) itemProvider])
      {
        break;
      }

      if (v14 == ++v16)
      {
        v14 = [locations countByEnumeratingWithState:&v20 objects:v19 count:16];
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

    (*(continue + 2))(continue);
  }

  else
  {
LABEL_11:
    [claim blockClaimerForReason:@"Preparing file providers"];
    allURLs = [claim allURLs];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __108__NSFileAccessArbiter_FileProvider__ensureProvidersIfNecessaryForClaim_user_atLocations_queue_thenContinue___block_invoke;
    v18[3] = &unk_1E69F9120;
    v18[4] = queue;
    v18[5] = claim;
    v18[6] = @"Preparing file providers";
    v18[7] = continue;
    [self _wakeUpFileProviderWithUID:v10 urls:allURLs queue:queue thenContinue:v18];
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
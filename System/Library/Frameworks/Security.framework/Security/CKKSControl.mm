@interface CKKSControl
- (CKKSControl)initWithConnection:(id)connection;
- (id)objectProxyWithErrorHandler:(id)handler;
- (void)dealloc;
- (void)deleteSEView:(id)view reply:(id)reply;
- (void)initialSyncStatus:(id)status reply:(id)reply;
- (void)modifyTLKSharesForSEView:(id)view adding:(id)adding deleting:(id)deleting reply:(id)reply;
- (void)pcsMirrorKeysForServices:(id)services reply:(id)reply;
- (void)proposeTLKForSEView:(id)view proposedTLK:(id)k wrappedOldTLK:(id)lK tlkShares:(id)shares reply:(id)reply;
- (void)rpcCKMetric:(id)metric attributes:(id)attributes reply:(id)reply;
- (void)rpcGetCKDeviceIDWithReply:(id)reply;
- (void)rpcKnownBadState:(id)state reply:(id)reply;
- (void)rpcKnownBadStateForViews:(id)views reply:(id)reply;
- (void)rpcPerformanceCounters:(id)counters;
- (void)rpcPushOutgoingChanges:(id)changes reply:(id)reply;
- (void)rpcResetCloudKit:(id)kit reason:(id)reason reply:(id)reply;
- (void)rpcResetLocal:(id)local reply:(id)reply;
- (void)rpcResync:(id)resync reply:(id)reply;
- (void)rpcResyncLocal:(id)local reply:(id)reply;
- (void)rpcTLKMissing:(id)missing reply:(id)reply;
- (void)toggleHavoc:(id)havoc;
@end

@implementation CKKSControl

- (void)initialSyncStatus:(id)status reply:(id)reply
{
  statusCopy = status;
  replyCopy = reply;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __39__CKKSControl_initialSyncStatus_reply___block_invoke;
  v16[3] = &unk_1E70DECC0;
  v8 = replyCopy;
  v17 = v8;
  v9 = [(CKKSControl *)self objectProxyWithErrorHandler:v16];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __39__CKKSControl_initialSyncStatus_reply___block_invoke_2;
  v12[3] = &unk_1E70D4B78;
  selfCopy = self;
  v15 = v8;
  v13 = statusCopy;
  v10 = v8;
  v11 = statusCopy;
  [v9 initialSyncStatus:v11 reply:v12];
}

void __39__CKKSControl_initialSyncStatus_reply___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = secLogObjForScope("ckkscontrol");
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      v8 = *(a1 + 32);
      v15 = 138412546;
      v16 = v8;
      v17 = 2112;
      v18 = v5;
      v9 = "Couldn't fetch initial sync status for view %@: %@";
      v10 = v6;
      v11 = 22;
LABEL_6:
      _os_log_impl(&dword_1887D2000, v10, OS_LOG_TYPE_DEFAULT, v9, &v15, v11);
    }
  }

  else if (v7)
  {
    v12 = *(a1 + 32);
    v15 = 138412546;
    v16 = v12;
    v17 = 1024;
    LODWORD(v18) = a2;
    v9 = "Initial sync completed for view %@: %{BOOL}d";
    v10 = v6;
    v11 = 18;
    goto LABEL_6;
  }

  (*(*(a1 + 48) + 16))(*(a1 + 48), a2, v5, v13);
  v14 = *MEMORY[0x1E69E9840];
}

- (void)pcsMirrorKeysForServices:(id)services reply:(id)reply
{
  replyCopy = reply;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __46__CKKSControl_pcsMirrorKeysForServices_reply___block_invoke;
  v13[3] = &unk_1E70DECC0;
  v7 = replyCopy;
  v14 = v7;
  servicesCopy = services;
  v9 = [(CKKSControl *)self objectProxyWithErrorHandler:v13];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __46__CKKSControl_pcsMirrorKeysForServices_reply___block_invoke_2;
  v11[3] = &unk_1E70D6960;
  v11[4] = self;
  v12 = v7;
  v10 = v7;
  [v9 pcsMirrorKeysForServices:servicesCopy reply:v11];
}

- (void)toggleHavoc:(id)havoc
{
  havocCopy = havoc;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __27__CKKSControl_toggleHavoc___block_invoke;
  v10[3] = &unk_1E70DECC0;
  v5 = havocCopy;
  v11 = v5;
  v6 = [(CKKSControl *)self objectProxyWithErrorHandler:v10];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __27__CKKSControl_toggleHavoc___block_invoke_2;
  v8[3] = &unk_1E70D4B50;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  [v6 toggleHavoc:v8];
}

- (void)deleteSEView:(id)view reply:(id)reply
{
  replyCopy = reply;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __34__CKKSControl_deleteSEView_reply___block_invoke;
  v13[3] = &unk_1E70DECC0;
  v7 = replyCopy;
  v14 = v7;
  viewCopy = view;
  v9 = [(CKKSControl *)self objectProxyWithErrorHandler:v13];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __34__CKKSControl_deleteSEView_reply___block_invoke_2;
  v11[3] = &unk_1E70D4A60;
  v11[4] = self;
  v12 = v7;
  v10 = v7;
  [v9 deleteSEView:viewCopy reply:v11];
}

- (void)modifyTLKSharesForSEView:(id)view adding:(id)adding deleting:(id)deleting reply:(id)reply
{
  replyCopy = reply;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __62__CKKSControl_modifyTLKSharesForSEView_adding_deleting_reply___block_invoke;
  v19[3] = &unk_1E70DECC0;
  v11 = replyCopy;
  v20 = v11;
  deletingCopy = deleting;
  addingCopy = adding;
  viewCopy = view;
  v15 = [(CKKSControl *)self objectProxyWithErrorHandler:v19];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __62__CKKSControl_modifyTLKSharesForSEView_adding_deleting_reply___block_invoke_2;
  v17[3] = &unk_1E70D4A60;
  v17[4] = self;
  v18 = v11;
  v16 = v11;
  [v15 modifyTLKSharesForSEView:viewCopy adding:addingCopy deleting:deletingCopy reply:v17];
}

- (void)proposeTLKForSEView:(id)view proposedTLK:(id)k wrappedOldTLK:(id)lK tlkShares:(id)shares reply:(id)reply
{
  replyCopy = reply;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __77__CKKSControl_proposeTLKForSEView_proposedTLK_wrappedOldTLK_tlkShares_reply___block_invoke;
  v22[3] = &unk_1E70DECC0;
  v13 = replyCopy;
  v23 = v13;
  sharesCopy = shares;
  lKCopy = lK;
  kCopy = k;
  viewCopy = view;
  v18 = [(CKKSControl *)self objectProxyWithErrorHandler:v22];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __77__CKKSControl_proposeTLKForSEView_proposedTLK_wrappedOldTLK_tlkShares_reply___block_invoke_2;
  v20[3] = &unk_1E70D4A60;
  v20[4] = self;
  v21 = v13;
  v19 = v13;
  [v18 proposeTLKForSEView:viewCopy proposedTLK:kCopy wrappedOldTLK:lKCopy tlkShares:sharesCopy reply:v20];
}

- (void)rpcKnownBadStateForViews:(id)views reply:(id)reply
{
  viewsCopy = views;
  replyCopy = reply;
  if ([viewsCopy count] == 1)
  {
    firstObject = [viewsCopy firstObject];
  }

  else
  {
    firstObject = 0;
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __46__CKKSControl_rpcKnownBadStateForViews_reply___block_invoke;
  v11[3] = &unk_1E70D4B00;
  v12 = viewsCopy;
  v13 = replyCopy;
  v9 = replyCopy;
  v10 = viewsCopy;
  [(CKKSControl *)self rpcFastStatus:firstObject reply:v11];
}

void __46__CKKSControl_rpcKnownBadStateForViews_reply___block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = a2;
  v2 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    v17 = 0;
    v20 = 0;
    v5 = *v22;
    v6 = @"view";
    v7 = @"keystate";
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v22 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v21 + 1) + 8 * i);
        v10 = [v9 objectForKeyedSubscript:{v6, v17}];
        v11 = [v9 objectForKeyedSubscript:v7];
        if (([v10 isEqualToString:@"global"] & 1) == 0)
        {
          v12 = *(a1 + 32);
          if (!v12 || [v12 containsObject:v10])
          {
            v13 = v7;
            v14 = v6;
            if (([v11 isEqualToString:@"waitfortlk"] & 1) != 0 || objc_msgSend(v11, "isEqualToString:", @"error"))
            {
              LODWORD(v17) = 1;
            }

            v15 = [v11 isEqualToString:{@"waitforunlock", v17}];
            if (([v11 isEqualToString:@"waitfortlkcreation"] & 1) != 0 || (objc_msgSend(v11, "isEqualToString:", @"waitfortlkupload") & 1) != 0 || objc_msgSend(v11, "isEqualToString:", @"waitfortrust"))
            {
              HIDWORD(v17) = 1;
            }

            v20 |= v15;
            v4 |= [v11 isEqualToString:@"loggedout"];
            v6 = v14;
            v7 = v13;
          }
        }
      }

      v3 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v3);
  }

  (*(*(a1 + 40) + 16))();

  v16 = *MEMORY[0x1E69E9840];
}

- (void)rpcKnownBadState:(id)state reply:(id)reply
{
  v13[1] = *MEMORY[0x1E69E9840];
  stateCopy = state;
  replyCopy = reply;
  if (stateCopy)
  {
    v13[0] = stateCopy;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  }

  else
  {
    v8 = 0;
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __38__CKKSControl_rpcKnownBadState_reply___block_invoke;
  v11[3] = &unk_1E70D4AD8;
  v12 = replyCopy;
  v9 = replyCopy;
  [(CKKSControl *)self rpcKnownBadStateForViews:v8 reply:v11];

  v10 = *MEMORY[0x1E69E9840];
}

- (void)rpcTLKMissing:(id)missing reply:(id)reply
{
  replyCopy = reply;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __35__CKKSControl_rpcTLKMissing_reply___block_invoke;
  v8[3] = &unk_1E70DDD30;
  v9 = replyCopy;
  v7 = replyCopy;
  [(CKKSControl *)self rpcFastStatus:missing reply:v8];
}

void __35__CKKSControl_rpcTLKMissing_reply___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        v8 = [v7 objectForKeyedSubscript:@"view"];
        v9 = [v7 objectForKeyedSubscript:@"keystate"];
        if (([v8 isEqualToString:@"global"] & 1) == 0 && (objc_msgSend(v9, "isEqualToString:", @"waitfortlk") & 1) == 0)
        {
          [v9 isEqualToString:@"error"];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  (*(*(a1 + 32) + 16))();

  v10 = *MEMORY[0x1E69E9840];
}

- (void)rpcGetCKDeviceIDWithReply:(id)reply
{
  replyCopy = reply;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __41__CKKSControl_rpcGetCKDeviceIDWithReply___block_invoke;
  v10[3] = &unk_1E70DECC0;
  v5 = replyCopy;
  v11 = v5;
  v6 = [(CKKSControl *)self objectProxyWithErrorHandler:v10];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __41__CKKSControl_rpcGetCKDeviceIDWithReply___block_invoke_2;
  v8[3] = &unk_1E70D4AB0;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  [v6 rpcGetCKDeviceIDWithReply:v8];
}

- (void)rpcPerformanceCounters:(id)counters
{
  countersCopy = counters;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __38__CKKSControl_rpcPerformanceCounters___block_invoke;
  v10[3] = &unk_1E70DECC0;
  v5 = countersCopy;
  v11 = v5;
  v6 = [(CKKSControl *)self objectProxyWithErrorHandler:v10];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __38__CKKSControl_rpcPerformanceCounters___block_invoke_2;
  v8[3] = &unk_1E70D4A88;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  [v6 performanceCounters:v8];
}

- (void)rpcCKMetric:(id)metric attributes:(id)attributes reply:(id)reply
{
  replyCopy = reply;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __44__CKKSControl_rpcCKMetric_attributes_reply___block_invoke;
  v16[3] = &unk_1E70DECC0;
  v9 = replyCopy;
  v17 = v9;
  attributesCopy = attributes;
  metricCopy = metric;
  v12 = [(CKKSControl *)self objectProxyWithErrorHandler:v16];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __44__CKKSControl_rpcCKMetric_attributes_reply___block_invoke_2;
  v14[3] = &unk_1E70D4A60;
  v14[4] = self;
  v15 = v9;
  v13 = v9;
  [v12 rpcCKMetric:metricCopy attributes:attributesCopy reply:v14];
}

- (void)rpcPushOutgoingChanges:(id)changes reply:(id)reply
{
  v19 = *MEMORY[0x1E69E9840];
  changesCopy = changes;
  replyCopy = reply;
  v8 = secLogObjForScope("ckkscontrol");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = changesCopy;
    _os_log_impl(&dword_1887D2000, v8, OS_LOG_TYPE_DEFAULT, "Requesting a push for view %@", buf, 0xCu);
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __44__CKKSControl_rpcPushOutgoingChanges_reply___block_invoke;
  v15[3] = &unk_1E70DECC0;
  v9 = replyCopy;
  v16 = v9;
  v10 = [(CKKSControl *)self objectProxyWithErrorHandler:v15];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __44__CKKSControl_rpcPushOutgoingChanges_reply___block_invoke_2;
  v13[3] = &unk_1E70D4A60;
  v13[4] = self;
  v14 = v9;
  v11 = v9;
  [v10 rpcPushOutgoingChanges:changesCopy reply:v13];

  v12 = *MEMORY[0x1E69E9840];
}

void __44__CKKSControl_rpcPushOutgoingChanges_reply___block_invoke_2(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = secLogObjForScope("ckkscontrol");
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v10 = 138412290;
      v11 = v3;
      v6 = "Push finished with error: %@";
      v7 = v4;
      v8 = 12;
LABEL_6:
      _os_log_impl(&dword_1887D2000, v7, OS_LOG_TYPE_DEFAULT, v6, &v10, v8);
    }
  }

  else if (v5)
  {
    LOWORD(v10) = 0;
    v6 = "Push finished successfully";
    v7 = v4;
    v8 = 2;
    goto LABEL_6;
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), v3);
  v9 = *MEMORY[0x1E69E9840];
}

void __74__CKKSControl_rpcFetchAndProcessChanges_classA_onlyIfNoRecentFetch_reply___block_invoke_2(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = secLogObjForScope("ckkscontrol");
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v10 = 138412290;
      v11 = v3;
      v6 = "Fetch finished with error: %@";
      v7 = v4;
      v8 = 12;
LABEL_6:
      _os_log_impl(&dword_1887D2000, v7, OS_LOG_TYPE_DEFAULT, v6, &v10, v8);
    }
  }

  else if (v5)
  {
    LOWORD(v10) = 0;
    v6 = "Fetch finished successfully";
    v7 = v4;
    v8 = 2;
    goto LABEL_6;
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), v3);
  v9 = *MEMORY[0x1E69E9840];
}

- (void)rpcResync:(id)resync reply:(id)reply
{
  v19 = *MEMORY[0x1E69E9840];
  resyncCopy = resync;
  replyCopy = reply;
  v8 = secLogObjForScope("ckkscontrol");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = resyncCopy;
    _os_log_impl(&dword_1887D2000, v8, OS_LOG_TYPE_DEFAULT, "Requesting a resync for view %@", buf, 0xCu);
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __31__CKKSControl_rpcResync_reply___block_invoke;
  v15[3] = &unk_1E70DECC0;
  v9 = replyCopy;
  v16 = v9;
  v10 = [(CKKSControl *)self objectProxyWithErrorHandler:v15];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __31__CKKSControl_rpcResync_reply___block_invoke_2;
  v13[3] = &unk_1E70D4A60;
  v13[4] = self;
  v14 = v9;
  v11 = v9;
  [v10 rpcResync:resyncCopy reply:v13];

  v12 = *MEMORY[0x1E69E9840];
}

void __31__CKKSControl_rpcResync_reply___block_invoke_2(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = secLogObjForScope("ckkscontrol");
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v10 = 138412290;
      v11 = v3;
      v6 = "Resync finished with error: %@";
      v7 = v4;
      v8 = 12;
LABEL_6:
      _os_log_impl(&dword_1887D2000, v7, OS_LOG_TYPE_DEFAULT, v6, &v10, v8);
    }
  }

  else if (v5)
  {
    LOWORD(v10) = 0;
    v6 = "Resync finished successfully";
    v7 = v4;
    v8 = 2;
    goto LABEL_6;
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), v3);
  v9 = *MEMORY[0x1E69E9840];
}

- (void)rpcResyncLocal:(id)local reply:(id)reply
{
  v19 = *MEMORY[0x1E69E9840];
  localCopy = local;
  replyCopy = reply;
  v8 = secLogObjForScope("ckkscontrol");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = localCopy;
    _os_log_impl(&dword_1887D2000, v8, OS_LOG_TYPE_DEFAULT, "Requesting a local resync for view %@", buf, 0xCu);
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __36__CKKSControl_rpcResyncLocal_reply___block_invoke;
  v15[3] = &unk_1E70DECC0;
  v9 = replyCopy;
  v16 = v9;
  v10 = [(CKKSControl *)self objectProxyWithErrorHandler:v15];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __36__CKKSControl_rpcResyncLocal_reply___block_invoke_2;
  v13[3] = &unk_1E70D4A60;
  v13[4] = self;
  v14 = v9;
  v11 = v9;
  [v10 rpcResyncLocal:localCopy reply:v13];

  v12 = *MEMORY[0x1E69E9840];
}

void __36__CKKSControl_rpcResyncLocal_reply___block_invoke_2(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = secLogObjForScope("ckkscontrol");
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v10 = 138412290;
      v11 = v3;
      v6 = "Local resync finished with error: %@";
      v7 = v4;
      v8 = 12;
LABEL_6:
      _os_log_impl(&dword_1887D2000, v7, OS_LOG_TYPE_DEFAULT, v6, &v10, v8);
    }
  }

  else if (v5)
  {
    LOWORD(v10) = 0;
    v6 = "Local resync finished successfully";
    v7 = v4;
    v8 = 2;
    goto LABEL_6;
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), v3);
  v9 = *MEMORY[0x1E69E9840];
}

- (void)rpcResetCloudKit:(id)kit reason:(id)reason reply:(id)reply
{
  v22 = *MEMORY[0x1E69E9840];
  kitCopy = kit;
  replyCopy = reply;
  reasonCopy = reason;
  v11 = secLogObjForScope("ckkscontrol");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v21 = kitCopy;
    _os_log_impl(&dword_1887D2000, v11, OS_LOG_TYPE_DEFAULT, "Requesting a CloudKit reset for view %@", buf, 0xCu);
  }

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __45__CKKSControl_rpcResetCloudKit_reason_reply___block_invoke;
  v18[3] = &unk_1E70DECC0;
  v12 = replyCopy;
  v19 = v12;
  v13 = [(CKKSControl *)self objectProxyWithErrorHandler:v18];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __45__CKKSControl_rpcResetCloudKit_reason_reply___block_invoke_2;
  v16[3] = &unk_1E70D4A60;
  v16[4] = self;
  v17 = v12;
  v14 = v12;
  [v13 rpcResetCloudKit:kitCopy reason:reasonCopy reply:v16];

  v15 = *MEMORY[0x1E69E9840];
}

void __45__CKKSControl_rpcResetCloudKit_reason_reply___block_invoke_2(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = secLogObjForScope("ckkscontrol");
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v10 = 138412290;
      v11 = v3;
      v6 = "CloudKit reset finished with error: %@";
      v7 = v4;
      v8 = 12;
LABEL_6:
      _os_log_impl(&dword_1887D2000, v7, OS_LOG_TYPE_DEFAULT, v6, &v10, v8);
    }
  }

  else if (v5)
  {
    LOWORD(v10) = 0;
    v6 = "CloudKit reset finished successfully";
    v7 = v4;
    v8 = 2;
    goto LABEL_6;
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), v3);
  v9 = *MEMORY[0x1E69E9840];
}

- (void)rpcResetLocal:(id)local reply:(id)reply
{
  v19 = *MEMORY[0x1E69E9840];
  localCopy = local;
  replyCopy = reply;
  v8 = secLogObjForScope("ckkscontrol");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = localCopy;
    _os_log_impl(&dword_1887D2000, v8, OS_LOG_TYPE_DEFAULT, "Requesting a local reset for view %@", buf, 0xCu);
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __35__CKKSControl_rpcResetLocal_reply___block_invoke;
  v15[3] = &unk_1E70DECC0;
  v9 = replyCopy;
  v16 = v9;
  v10 = [(CKKSControl *)self objectProxyWithErrorHandler:v15];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __35__CKKSControl_rpcResetLocal_reply___block_invoke_2;
  v13[3] = &unk_1E70D4A60;
  v13[4] = self;
  v14 = v9;
  v11 = v9;
  [v10 rpcResetLocal:localCopy reply:v13];

  v12 = *MEMORY[0x1E69E9840];
}

void __35__CKKSControl_rpcResetLocal_reply___block_invoke_2(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = secLogObjForScope("ckkscontrol");
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v10 = 138412290;
      v11 = v3;
      v6 = "Local reset finished with error: %@";
      v7 = v4;
      v8 = 12;
LABEL_6:
      _os_log_impl(&dword_1887D2000, v7, OS_LOG_TYPE_DEFAULT, v6, &v10, v8);
    }
  }

  else if (v5)
  {
    LOWORD(v10) = 0;
    v6 = "Local reset finished successfully";
    v7 = v4;
    v8 = 2;
    goto LABEL_6;
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), v3);
  v9 = *MEMORY[0x1E69E9840];
}

- (id)objectProxyWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  synchronous = [(CKKSControl *)self synchronous];
  connection = [(CKKSControl *)self connection];
  v7 = connection;
  if (synchronous)
  {
    [connection synchronousRemoteObjectProxyWithErrorHandler:handlerCopy];
  }

  else
  {
    [connection remoteObjectProxyWithErrorHandler:handlerCopy];
  }
  v8 = ;

  return v8;
}

- (void)dealloc
{
  connection = [(CKKSControl *)self connection];
  [connection invalidate];

  v4.receiver = self;
  v4.super_class = CKKSControl;
  [(CKKSControl *)&v4 dealloc];
}

- (CKKSControl)initWithConnection:(id)connection
{
  connectionCopy = connection;
  v9.receiver = self;
  v9.super_class = CKKSControl;
  v6 = [(CKKSControl *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connection, connection);
  }

  return v7;
}

@end
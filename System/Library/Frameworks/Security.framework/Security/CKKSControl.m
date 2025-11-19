@interface CKKSControl
- (CKKSControl)initWithConnection:(id)a3;
- (id)objectProxyWithErrorHandler:(id)a3;
- (void)dealloc;
- (void)deleteSEView:(id)a3 reply:(id)a4;
- (void)initialSyncStatus:(id)a3 reply:(id)a4;
- (void)modifyTLKSharesForSEView:(id)a3 adding:(id)a4 deleting:(id)a5 reply:(id)a6;
- (void)pcsMirrorKeysForServices:(id)a3 reply:(id)a4;
- (void)proposeTLKForSEView:(id)a3 proposedTLK:(id)a4 wrappedOldTLK:(id)a5 tlkShares:(id)a6 reply:(id)a7;
- (void)rpcCKMetric:(id)a3 attributes:(id)a4 reply:(id)a5;
- (void)rpcGetCKDeviceIDWithReply:(id)a3;
- (void)rpcKnownBadState:(id)a3 reply:(id)a4;
- (void)rpcKnownBadStateForViews:(id)a3 reply:(id)a4;
- (void)rpcPerformanceCounters:(id)a3;
- (void)rpcPushOutgoingChanges:(id)a3 reply:(id)a4;
- (void)rpcResetCloudKit:(id)a3 reason:(id)a4 reply:(id)a5;
- (void)rpcResetLocal:(id)a3 reply:(id)a4;
- (void)rpcResync:(id)a3 reply:(id)a4;
- (void)rpcResyncLocal:(id)a3 reply:(id)a4;
- (void)rpcTLKMissing:(id)a3 reply:(id)a4;
- (void)toggleHavoc:(id)a3;
@end

@implementation CKKSControl

- (void)initialSyncStatus:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __39__CKKSControl_initialSyncStatus_reply___block_invoke;
  v16[3] = &unk_1E70DECC0;
  v8 = v7;
  v17 = v8;
  v9 = [(CKKSControl *)self objectProxyWithErrorHandler:v16];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __39__CKKSControl_initialSyncStatus_reply___block_invoke_2;
  v12[3] = &unk_1E70D4B78;
  v14 = self;
  v15 = v8;
  v13 = v6;
  v10 = v8;
  v11 = v6;
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

- (void)pcsMirrorKeysForServices:(id)a3 reply:(id)a4
{
  v6 = a4;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __46__CKKSControl_pcsMirrorKeysForServices_reply___block_invoke;
  v13[3] = &unk_1E70DECC0;
  v7 = v6;
  v14 = v7;
  v8 = a3;
  v9 = [(CKKSControl *)self objectProxyWithErrorHandler:v13];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __46__CKKSControl_pcsMirrorKeysForServices_reply___block_invoke_2;
  v11[3] = &unk_1E70D6960;
  v11[4] = self;
  v12 = v7;
  v10 = v7;
  [v9 pcsMirrorKeysForServices:v8 reply:v11];
}

- (void)toggleHavoc:(id)a3
{
  v4 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __27__CKKSControl_toggleHavoc___block_invoke;
  v10[3] = &unk_1E70DECC0;
  v5 = v4;
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

- (void)deleteSEView:(id)a3 reply:(id)a4
{
  v6 = a4;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __34__CKKSControl_deleteSEView_reply___block_invoke;
  v13[3] = &unk_1E70DECC0;
  v7 = v6;
  v14 = v7;
  v8 = a3;
  v9 = [(CKKSControl *)self objectProxyWithErrorHandler:v13];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __34__CKKSControl_deleteSEView_reply___block_invoke_2;
  v11[3] = &unk_1E70D4A60;
  v11[4] = self;
  v12 = v7;
  v10 = v7;
  [v9 deleteSEView:v8 reply:v11];
}

- (void)modifyTLKSharesForSEView:(id)a3 adding:(id)a4 deleting:(id)a5 reply:(id)a6
{
  v10 = a6;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __62__CKKSControl_modifyTLKSharesForSEView_adding_deleting_reply___block_invoke;
  v19[3] = &unk_1E70DECC0;
  v11 = v10;
  v20 = v11;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = [(CKKSControl *)self objectProxyWithErrorHandler:v19];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __62__CKKSControl_modifyTLKSharesForSEView_adding_deleting_reply___block_invoke_2;
  v17[3] = &unk_1E70D4A60;
  v17[4] = self;
  v18 = v11;
  v16 = v11;
  [v15 modifyTLKSharesForSEView:v14 adding:v13 deleting:v12 reply:v17];
}

- (void)proposeTLKForSEView:(id)a3 proposedTLK:(id)a4 wrappedOldTLK:(id)a5 tlkShares:(id)a6 reply:(id)a7
{
  v12 = a7;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __77__CKKSControl_proposeTLKForSEView_proposedTLK_wrappedOldTLK_tlkShares_reply___block_invoke;
  v22[3] = &unk_1E70DECC0;
  v13 = v12;
  v23 = v13;
  v14 = a6;
  v15 = a5;
  v16 = a4;
  v17 = a3;
  v18 = [(CKKSControl *)self objectProxyWithErrorHandler:v22];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __77__CKKSControl_proposeTLKForSEView_proposedTLK_wrappedOldTLK_tlkShares_reply___block_invoke_2;
  v20[3] = &unk_1E70D4A60;
  v20[4] = self;
  v21 = v13;
  v19 = v13;
  [v18 proposeTLKForSEView:v17 proposedTLK:v16 wrappedOldTLK:v15 tlkShares:v14 reply:v20];
}

- (void)rpcKnownBadStateForViews:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 count] == 1)
  {
    v8 = [v6 firstObject];
  }

  else
  {
    v8 = 0;
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __46__CKKSControl_rpcKnownBadStateForViews_reply___block_invoke;
  v11[3] = &unk_1E70D4B00;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [(CKKSControl *)self rpcFastStatus:v8 reply:v11];
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

- (void)rpcKnownBadState:(id)a3 reply:(id)a4
{
  v13[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v13[0] = v6;
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
  v12 = v7;
  v9 = v7;
  [(CKKSControl *)self rpcKnownBadStateForViews:v8 reply:v11];

  v10 = *MEMORY[0x1E69E9840];
}

- (void)rpcTLKMissing:(id)a3 reply:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __35__CKKSControl_rpcTLKMissing_reply___block_invoke;
  v8[3] = &unk_1E70DDD30;
  v9 = v6;
  v7 = v6;
  [(CKKSControl *)self rpcFastStatus:a3 reply:v8];
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

- (void)rpcGetCKDeviceIDWithReply:(id)a3
{
  v4 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __41__CKKSControl_rpcGetCKDeviceIDWithReply___block_invoke;
  v10[3] = &unk_1E70DECC0;
  v5 = v4;
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

- (void)rpcPerformanceCounters:(id)a3
{
  v4 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __38__CKKSControl_rpcPerformanceCounters___block_invoke;
  v10[3] = &unk_1E70DECC0;
  v5 = v4;
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

- (void)rpcCKMetric:(id)a3 attributes:(id)a4 reply:(id)a5
{
  v8 = a5;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __44__CKKSControl_rpcCKMetric_attributes_reply___block_invoke;
  v16[3] = &unk_1E70DECC0;
  v9 = v8;
  v17 = v9;
  v10 = a4;
  v11 = a3;
  v12 = [(CKKSControl *)self objectProxyWithErrorHandler:v16];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __44__CKKSControl_rpcCKMetric_attributes_reply___block_invoke_2;
  v14[3] = &unk_1E70D4A60;
  v14[4] = self;
  v15 = v9;
  v13 = v9;
  [v12 rpcCKMetric:v11 attributes:v10 reply:v14];
}

- (void)rpcPushOutgoingChanges:(id)a3 reply:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = secLogObjForScope("ckkscontrol");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = v6;
    _os_log_impl(&dword_1887D2000, v8, OS_LOG_TYPE_DEFAULT, "Requesting a push for view %@", buf, 0xCu);
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __44__CKKSControl_rpcPushOutgoingChanges_reply___block_invoke;
  v15[3] = &unk_1E70DECC0;
  v9 = v7;
  v16 = v9;
  v10 = [(CKKSControl *)self objectProxyWithErrorHandler:v15];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __44__CKKSControl_rpcPushOutgoingChanges_reply___block_invoke_2;
  v13[3] = &unk_1E70D4A60;
  v13[4] = self;
  v14 = v9;
  v11 = v9;
  [v10 rpcPushOutgoingChanges:v6 reply:v13];

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

- (void)rpcResync:(id)a3 reply:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = secLogObjForScope("ckkscontrol");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = v6;
    _os_log_impl(&dword_1887D2000, v8, OS_LOG_TYPE_DEFAULT, "Requesting a resync for view %@", buf, 0xCu);
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __31__CKKSControl_rpcResync_reply___block_invoke;
  v15[3] = &unk_1E70DECC0;
  v9 = v7;
  v16 = v9;
  v10 = [(CKKSControl *)self objectProxyWithErrorHandler:v15];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __31__CKKSControl_rpcResync_reply___block_invoke_2;
  v13[3] = &unk_1E70D4A60;
  v13[4] = self;
  v14 = v9;
  v11 = v9;
  [v10 rpcResync:v6 reply:v13];

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

- (void)rpcResyncLocal:(id)a3 reply:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = secLogObjForScope("ckkscontrol");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = v6;
    _os_log_impl(&dword_1887D2000, v8, OS_LOG_TYPE_DEFAULT, "Requesting a local resync for view %@", buf, 0xCu);
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __36__CKKSControl_rpcResyncLocal_reply___block_invoke;
  v15[3] = &unk_1E70DECC0;
  v9 = v7;
  v16 = v9;
  v10 = [(CKKSControl *)self objectProxyWithErrorHandler:v15];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __36__CKKSControl_rpcResyncLocal_reply___block_invoke_2;
  v13[3] = &unk_1E70D4A60;
  v13[4] = self;
  v14 = v9;
  v11 = v9;
  [v10 rpcResyncLocal:v6 reply:v13];

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

- (void)rpcResetCloudKit:(id)a3 reason:(id)a4 reply:(id)a5
{
  v22 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = secLogObjForScope("ckkscontrol");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v21 = v8;
    _os_log_impl(&dword_1887D2000, v11, OS_LOG_TYPE_DEFAULT, "Requesting a CloudKit reset for view %@", buf, 0xCu);
  }

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __45__CKKSControl_rpcResetCloudKit_reason_reply___block_invoke;
  v18[3] = &unk_1E70DECC0;
  v12 = v9;
  v19 = v12;
  v13 = [(CKKSControl *)self objectProxyWithErrorHandler:v18];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __45__CKKSControl_rpcResetCloudKit_reason_reply___block_invoke_2;
  v16[3] = &unk_1E70D4A60;
  v16[4] = self;
  v17 = v12;
  v14 = v12;
  [v13 rpcResetCloudKit:v8 reason:v10 reply:v16];

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

- (void)rpcResetLocal:(id)a3 reply:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = secLogObjForScope("ckkscontrol");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = v6;
    _os_log_impl(&dword_1887D2000, v8, OS_LOG_TYPE_DEFAULT, "Requesting a local reset for view %@", buf, 0xCu);
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __35__CKKSControl_rpcResetLocal_reply___block_invoke;
  v15[3] = &unk_1E70DECC0;
  v9 = v7;
  v16 = v9;
  v10 = [(CKKSControl *)self objectProxyWithErrorHandler:v15];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __35__CKKSControl_rpcResetLocal_reply___block_invoke_2;
  v13[3] = &unk_1E70D4A60;
  v13[4] = self;
  v14 = v9;
  v11 = v9;
  [v10 rpcResetLocal:v6 reply:v13];

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

- (id)objectProxyWithErrorHandler:(id)a3
{
  v4 = a3;
  v5 = [(CKKSControl *)self synchronous];
  v6 = [(CKKSControl *)self connection];
  v7 = v6;
  if (v5)
  {
    [v6 synchronousRemoteObjectProxyWithErrorHandler:v4];
  }

  else
  {
    [v6 remoteObjectProxyWithErrorHandler:v4];
  }
  v8 = ;

  return v8;
}

- (void)dealloc
{
  v3 = [(CKKSControl *)self connection];
  [v3 invalidate];

  v4.receiver = self;
  v4.super_class = CKKSControl;
  [(CKKSControl *)&v4 dealloc];
}

- (CKKSControl)initWithConnection:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CKKSControl;
  v6 = [(CKKSControl *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connection, a3);
  }

  return v7;
}

@end
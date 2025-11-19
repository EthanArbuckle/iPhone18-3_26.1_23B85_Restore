@interface LSSharedWebCredentialsAppLink
@end

@implementation LSSharedWebCredentialsAppLink

void __88___LSSharedWebCredentialsAppLink_afterAppLinksBecomeAvailableForURL_limit_performBlock___block_invoke(uint64_t a1)
{
  v44 = *MEMORY[0x1E69E9840];
  v25 = [objc_alloc(MEMORY[0x1E696AF20]) initWithURL:*(a1 + 32) resolvingAgainstBaseURL:1];
  v2 = [v25 host];
  if (v2)
  {
    v3 = objc_alloc(_LSSWCServiceSpecifierClass());
    v4 = _LSSWCServiceTypeAppLinks();
    v5 = [v3 initWithServiceType:v4 applicationIdentifier:0 domain:v2];

    v24 = v5;
    v40 = 0;
    v6 = [_LSSWCServiceDetailsClass() serviceDetailsWithServiceSpecifier:v5 error:&v40];
    v23 = v40;
    if (v6)
    {
      v22 = v6;
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __88___LSSharedWebCredentialsAppLink_afterAppLinksBecomeAvailableForURL_limit_performBlock___block_invoke_2;
      v36[3] = &unk_1E6A1A4F8;
      v7 = *(a1 + 32);
      v9 = *(a1 + 40);
      v8 = *(a1 + 48);
      v37 = v7;
      v39 = v8;
      v38 = v9;
      block = MEMORY[0x1865D71B0](v36);
      if ([v6 count] == 1)
      {
        v10 = [v6 firstObject];
        v32[0] = MEMORY[0x1E69E9820];
        v32[1] = 3221225472;
        v32[2] = __88___LSSharedWebCredentialsAppLink_afterAppLinksBecomeAvailableForURL_limit_performBlock___block_invoke_3;
        v32[3] = &unk_1E6A1A570;
        v35 = *(a1 + 56);
        v33 = block;
        v34 = *(a1 + 40);
        [v10 waitForSiteApprovalWithCompletionHandler:v32];

        v11 = v33;
      }

      else
      {
        v11 = dispatch_group_create();
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v14 = v6;
        v15 = [v14 countByEnumeratingWithState:&v28 objects:v43 count:16];
        if (v15)
        {
          v16 = *v29;
          do
          {
            for (i = 0; i != v15; ++i)
            {
              if (*v29 != v16)
              {
                objc_enumerationMutation(v14);
              }

              v18 = *(*(&v28 + 1) + 8 * i);
              dispatch_group_enter(v11);
              v26[0] = MEMORY[0x1E69E9820];
              v26[1] = 3221225472;
              v26[2] = __88___LSSharedWebCredentialsAppLink_afterAppLinksBecomeAvailableForURL_limit_performBlock___block_invoke_4;
              v26[3] = &unk_1E6A1A598;
              v26[4] = v18;
              v27 = v11;
              [v18 waitForSiteApprovalWithCompletionHandler:v26];
            }

            v15 = [v14 countByEnumeratingWithState:&v28 objects:v43 count:16];
          }

          while (v15);
        }

        v19 = [*(a1 + 56) _dispatchQueue];
        dispatch_group_notify(v11, v19, block);
      }

      v6 = v22;
    }

    else
    {
      (*(*(a1 + 40) + 16))();
    }

    v13 = v23;
  }

  else
  {
    v12 = *(a1 + 40);
    v41 = *MEMORY[0x1E696A278];
    v42 = @"aURL";
    v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
    v13 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v24, "+[_LSSharedWebCredentialsAppLink afterAppLinksBecomeAvailableForURL:limit:performBlock:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSAppLinkPlugIn.mm", 315);
    (*(v12 + 16))(v12, 0, v13);
  }

  v20 = *MEMORY[0x1E69E9840];
}

void __88___LSSharedWebCredentialsAppLink_afterAppLinksBecomeAvailableForURL_limit_performBlock___block_invoke_2(void *a1)
{
  v2 = a1[4];
  v3 = a1[6];
  v6 = 0;
  v4 = [LSAppLink appLinksWithURL:v2 limit:v3 error:&v6];
  v5 = v6;
  (*(a1[5] + 16))();
}

void __88___LSSharedWebCredentialsAppLink_afterAppLinksBecomeAvailableForURL_limit_performBlock___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  if (a2)
  {
    v5 = [*(a1 + 48) _dispatchQueue];
    dispatch_async(v5, *(a1 + 32));
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void __88___LSSharedWebCredentialsAppLink_afterAppLinksBecomeAvailableForURL_limit_performBlock___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    v7 = _LSDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [*(a1 + 32) serviceSpecifier];
      __88___LSSharedWebCredentialsAppLink_afterAppLinksBecomeAvailableForURL_limit_performBlock___block_invoke_4_cold_1(v8, v6, v10, v7);
    }
  }

  dispatch_group_leave(*(a1 + 40));

  v9 = *MEMORY[0x1E69E9840];
}

void __88___LSSharedWebCredentialsAppLink_afterAppLinksBecomeAvailableForURL_limit_performBlock___block_invoke_4_cold_1(void *a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_18162D000, log, OS_LOG_TYPE_ERROR, "Error getting updated SWC service details for %@ (ignoring due to batch operation): %@", buf, 0x16u);
}

@end
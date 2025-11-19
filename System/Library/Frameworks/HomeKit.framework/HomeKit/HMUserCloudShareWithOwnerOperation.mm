@interface HMUserCloudShareWithOwnerOperation
+ (id)logCategory;
- (HMUserCloudShareWithOwnerOperation)initWithShare:(id)a3 container:(id)a4 ownerUser:(id)a5 allowWriteAccess:(BOOL)a6 currentUser:(id)a7 analyticsEventSender:(id)a8;
- (id)logIdentifier;
- (void)fetchParticipantForLookupInfo:(id)a3 completion:(id)a4;
- (void)main;
- (void)removeOwnerAsParticipant:(id)a3 completion:(id)a4;
- (void)saveShareAndObtainSavedOwner:(id)a3 completion:(id)a4;
- (void)sendShareToOwner:(id)a3 from:(id)a4 savedOwnerAsParticipant:(id)a5 share:(id)a6 completion:(id)a7;
@end

@implementation HMUserCloudShareWithOwnerOperation

- (id)logIdentifier
{
  v2 = [(HMUserCloudShareWithOwnerOperation *)self currentUser];
  v3 = [v2 uuid];
  v4 = [v3 UUIDString];

  return v4;
}

- (void)main
{
  v34 = *MEMORY[0x1E69E9840];
  v29.receiver = self;
  v29.super_class = HMUserCloudShareWithOwnerOperation;
  [(HMUserCloudShareWithOwnerOperation *)&v29 main];
  v3 = [(HMUserCloudShareWithOwnerOperation *)self completion];
  v4 = v3 == 0;

  if (v4)
  {
    v19 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Completion must be provided" userInfo:0];
    objc_exception_throw(v19);
  }

  v5 = [(HMUserCloudShareWithOwnerOperation *)self completion];
  [(HMUserCloudShareWithOwnerOperation *)self setCompletion:0];
  logger = self->_logger;
  if (os_signpost_enabled(logger))
  {
    v7 = logger;
    v8 = [(HMUserCloudShareWithOwnerOperation *)self operationID];
    v9 = [(HMUserCloudShareWithOwnerOperation *)self currentUser];
    v10 = [v9 uuid];
    v11 = [(HMUserCloudShareWithOwnerOperation *)self ownerUser];
    v12 = [v11 uuid];
    *buf = 138412802;
    *&buf[4] = v8;
    *&buf[12] = 2112;
    *&buf[14] = v10;
    *&buf[22] = 2112;
    v31 = v12;
    _os_signpost_emit_with_name_impl(&dword_19BB39000, v7, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "MultiUser.Share.Operation", "OperationID=%{signpost.description:attribute}@ User=%{signpost.description:attribute}@ Owner=%{signpost.description:attribute}@ ", buf, 0x20u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v31 = __Block_byref_object_copy__40884;
  v32 = __Block_byref_object_dispose__40885;
  v33 = [MEMORY[0x1E695DF90] dictionary];
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __42__HMUserCloudShareWithOwnerOperation_main__block_invoke;
  aBlock[3] = &unk_1E754BAF0;
  objc_copyWeak(v27, &location);
  v26 = buf;
  v27[1] = 0xEEEEB0B5B2B2EEEELL;
  v13 = v5;
  v25 = v13;
  v14 = _Block_copy(aBlock);
  v15 = self->_logger;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    *v23 = 0;
    _os_log_impl(&dword_19BB39000, v15, OS_LOG_TYPE_INFO, "Fetching lookup info for owner user.", v23, 2u);
  }

  [*(*&buf[8] + 40) setObject:&unk_1F0EFD148 forKeyedSubscript:@"stage"];
  v16 = [(HMUserCloudShareWithOwnerOperation *)self ownerUser];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __42__HMUserCloudShareWithOwnerOperation_main__block_invoke_77;
  v20[3] = &unk_1E754BB68;
  v17 = v14;
  v20[4] = self;
  v21 = v17;
  v22 = buf;
  [v16 fetchShareLookupInfo:v20];

  objc_destroyWeak(v27);
  objc_destroyWeak(&location);
  _Block_object_dispose(buf, 8);

  v18 = *MEMORY[0x1E69E9840];
}

void __42__HMUserCloudShareWithOwnerOperation_main__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    [*(*(*(a1 + 40) + 8) + 40) setObject:&unk_1F0EFD148 forKeyedSubscript:@"result"];
    if (v6)
    {
      [*(*(*(a1 + 40) + 8) + 40) setObject:&unk_1F0EFD160 forKeyedSubscript:@"result"];
      v8 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v6, "code")}];
      v9 = [v8 stringValue];
      [*(*(*(a1 + 40) + 8) + 40) setObject:v9 forKeyedSubscript:@"errorCode"];

      v10 = [v6 domain];
      v11 = v10;
      if (v10)
      {
        v12 = v10;
      }

      else
      {
        v12 = @"<No Domain>";
      }

      [*(*(*(a1 + 40) + 8) + 40) setObject:v12 forKeyedSubscript:@"errorDomain"];
    }

    v13 = [WeakRetained share];
    v14 = [v13 containerID];
    v15 = [v14 containerIdentifier];
    [*(*(*(a1 + 40) + 8) + 40) setObject:v15 forKeyedSubscript:@"client"];

    v16 = [WeakRetained analyticsEventSender];
    (v16)[2](v16, @"com.apple.HomeKit.MultiUserShareOperationResult", *(*(*(a1 + 40) + 8) + 40));

    v17 = WeakRetained[31];
    v18 = v17;
    v19 = *(a1 + 56);
    if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
    {
      v21 = 138412290;
      v22 = v6;
      _os_signpost_emit_with_name_impl(&dword_19BB39000, v18, OS_SIGNPOST_INTERVAL_END, v19, "MultiUser.Share.Operation", "Error=%{signpost.description:attribute}@ ", &v21, 0xCu);
    }
  }

  (*(*(a1 + 32) + 16))();

  v20 = *MEMORY[0x1E69E9840];
}

void __42__HMUserCloudShareWithOwnerOperation_main__block_invoke_77(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v7 = *(*(a1 + 32) + 248);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "Fetch CKParticipant for Owner User.", buf, 2u);
    }

    [*(*(*(a1 + 48) + 8) + 40) setObject:&unk_1F0EFD160 forKeyedSubscript:@"stage"];
    v8 = *(a1 + 32);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __42__HMUserCloudShareWithOwnerOperation_main__block_invoke_78;
    v11[3] = &unk_1E754BB40;
    v11[4] = v8;
    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    v12 = v9;
    v13 = v10;
    [v8 fetchParticipantForLookupInfo:v5 completion:v11];
  }
}

void __42__HMUserCloudShareWithOwnerOperation_main__block_invoke_78(uint64_t a1, void *a2, void *a3)
{
  v53 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if ([*(a1 + 32) allowWriteAccess])
  {
    v7 = *(*(a1 + 32) + 248);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "Setting permission to read/write.", buf, 2u);
    }

    [v5 setPermission:3];
  }

  if (v6)
  {
    v8 = *(*(a1 + 32) + 248);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v52 = v6;
      _os_log_error_impl(&dword_19BB39000, v8, OS_LOG_TYPE_ERROR, "Got error while fetching participant: %@", buf, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v9 = [*(a1 + 32) share];
    v10 = [v9 participants];

    v11 = [v10 countByEnumeratingWithState:&v46 objects:v50 count:16];
    if (!v11)
    {
      goto LABEL_17;
    }

    v12 = v11;
    v13 = *v47;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v47 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v46 + 1) + 8 * i);
        if ([v15 isEqual:v5])
        {
          v16 = *(*(a1 + 32) + 248);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v52 = v15;
            _os_log_debug_impl(&dword_19BB39000, v16, OS_LOG_TYPE_DEBUG, "Found owner in share. %@", buf, 0xCu);
          }

          v17 = v15;

          if (!v17)
          {
            goto LABEL_25;
          }

          if ([v17 invitationTokenStatus] == 3)
          {
            v18 = *(*(a1 + 32) + 248);
            if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_19BB39000, v18, OS_LOG_TYPE_INFO, "Owner needs a new token resending invite.", buf, 2u);
            }

            [*(*(*(a1 + 48) + 8) + 40) setObject:&unk_1F0EFD178 forKeyedSubscript:@"stage"];
            [v17 setWantsNewInvitationToken:1];
            v43[0] = MEMORY[0x1E69E9820];
            v43[1] = 3221225472;
            v43[2] = __42__HMUserCloudShareWithOwnerOperation_main__block_invoke_81;
            v43[3] = &unk_1E754BB40;
            v19 = *(a1 + 32);
            v20 = *(a1 + 40);
            v43[4] = *(a1 + 32);
            v44 = v20;
            v45 = *(a1 + 48);
            [v19 saveShareAndObtainSavedOwner:v5 completion:v43];
            v21 = v44;
          }

          else
          {
            if ([v17 acceptanceStatus] == 2)
            {
              [*(*(*(a1 + 48) + 8) + 40) setObject:&unk_1F0EFD1A8 forKeyedSubscript:@"stage"];
              v27 = *(*(a1 + 32) + 248);
              if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_19BB39000, v27, OS_LOG_TYPE_INFO, "Owner has already accepted the share.", buf, 2u);
              }

              v28 = [HMHomeCloudShareResponse alloc];
              v29 = [*(a1 + 32) ownerUser];
              v30 = [(HMHomeCloudShareResponse *)v28 initWithOwnerUser:v29 pariticipant:v17 clientInfo:0];

              (*(*(a1 + 40) + 16))();
              goto LABEL_36;
            }

            v31 = *(*(a1 + 32) + 248);
            if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_19BB39000, v31, OS_LOG_TYPE_INFO, "Owner exists in the share participants remove and re-invite.", buf, 2u);
            }

            [*(*(*(a1 + 48) + 8) + 40) setObject:&unk_1F0EFD1C0 forKeyedSubscript:@"stage"];
            v39[0] = MEMORY[0x1E69E9820];
            v39[1] = 3221225472;
            v39[2] = __42__HMUserCloudShareWithOwnerOperation_main__block_invoke_89;
            v39[3] = &unk_1E754BB18;
            v32 = *(a1 + 32);
            v33 = *(a1 + 40);
            v39[4] = *(a1 + 32);
            v34 = *(a1 + 48);
            v41 = v33;
            v42 = v34;
            v40 = v5;
            [v32 removeOwnerAsParticipant:v17 completion:v39];

            v21 = v41;
          }

          goto LABEL_36;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v46 objects:v50 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }

LABEL_17:

LABEL_25:
    v22 = *(a1 + 32);
    v23 = v22[31];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19BB39000, v23, OS_LOG_TYPE_INFO, "Owner not present on the share inviting.", buf, 2u);
      v22 = *(a1 + 32);
    }

    v24 = [v22 share];
    [v24 addParticipant:v5];

    [*(*(*(a1 + 48) + 8) + 40) setObject:&unk_1F0EFD1D8 forKeyedSubscript:@"stage"];
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __42__HMUserCloudShareWithOwnerOperation_main__block_invoke_95;
    v36[3] = &unk_1E754BB40;
    v25 = *(a1 + 32);
    v26 = *(a1 + 40);
    v36[4] = *(a1 + 32);
    v37 = v26;
    v38 = *(a1 + 48);
    [v25 saveShareAndObtainSavedOwner:v5 completion:v36];
    v17 = v37;
LABEL_36:
  }

  v35 = *MEMORY[0x1E69E9840];
}

void __42__HMUserCloudShareWithOwnerOperation_main__block_invoke_81(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v7 = *(*(a1 + 32) + 248);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v12 = 0;
      _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "Sending share after saving for token.", v12, 2u);
    }

    [*(*(*(a1 + 48) + 8) + 40) setObject:&unk_1F0EFD190 forKeyedSubscript:@"stage"];
    v8 = *(a1 + 32);
    v9 = [v8 ownerUser];
    v10 = [*(a1 + 32) currentUser];
    v11 = [*(a1 + 32) share];
    [v8 sendShareToOwner:v9 from:v10 savedOwnerAsParticipant:v5 share:v11 completion:*(a1 + 40)];
  }
}

void __42__HMUserCloudShareWithOwnerOperation_main__block_invoke_89(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v4 = *(*(a1 + 32) + 248);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "Adding owner again after removing.", buf, 2u);
    }

    [*(*(*(a1 + 56) + 8) + 40) setObject:&unk_1F0EFD1D8 forKeyedSubscript:@"stage"];
    v5 = [*(a1 + 32) share];
    [v5 addParticipant:*(a1 + 40)];

    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __42__HMUserCloudShareWithOwnerOperation_main__block_invoke_92;
    v9[3] = &unk_1E754BB40;
    v8 = *(a1 + 48);
    v9[4] = *(a1 + 32);
    v10 = v8;
    v11 = *(a1 + 56);
    [v6 saveShareAndObtainSavedOwner:v7 completion:v9];
  }
}

void __42__HMUserCloudShareWithOwnerOperation_main__block_invoke_95(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v7 = *(*(a1 + 32) + 248);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v12 = 0;
      _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "Sending share to owner.", v12, 2u);
    }

    [*(*(*(a1 + 48) + 8) + 40) setObject:&unk_1F0EFD208 forKeyedSubscript:@"stage"];
    v8 = *(a1 + 32);
    v9 = [v8 ownerUser];
    v10 = [*(a1 + 32) currentUser];
    v11 = [*(a1 + 32) share];
    [v8 sendShareToOwner:v9 from:v10 savedOwnerAsParticipant:v5 share:v11 completion:*(a1 + 40)];
  }
}

void __42__HMUserCloudShareWithOwnerOperation_main__block_invoke_92(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v7 = *(*(a1 + 32) + 248);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v12 = 0;
      _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "Sending share after adding owner again.", v12, 2u);
    }

    [*(*(*(a1 + 48) + 8) + 40) setObject:&unk_1F0EFD1F0 forKeyedSubscript:@"stage"];
    v8 = *(a1 + 32);
    v9 = [v8 ownerUser];
    v10 = [*(a1 + 32) currentUser];
    v11 = [*(a1 + 32) share];
    [v8 sendShareToOwner:v9 from:v10 savedOwnerAsParticipant:v5 share:v11 completion:*(a1 + 40)];
  }
}

- (void)sendShareToOwner:(id)a3 from:(id)a4 savedOwnerAsParticipant:(id)a5 share:(id)a6 completion:(id)a7
{
  v40 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v16 = a6;
  v17 = [v16 URL];
  v18 = [v14 invitationToken];
  v19 = [v16 containerID];

  v20 = [v19 containerIdentifier];

  v37 = 0;
  v21 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v18 requiringSecureCoding:1 error:&v37];
  v22 = v37;
  if (!v21)
  {
    logger = self->_logger;
    if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v39 = v22;
      _os_log_error_impl(&dword_19BB39000, logger, OS_LOG_TYPE_ERROR, "Unable to encode share token. %@", buf, 0xCu);
      if (v22)
      {
        goto LABEL_6;
      }
    }

    else if (v22)
    {
LABEL_6:
      v15[2](v15, 0, v22);
      goto LABEL_7;
    }

    v22 = [MEMORY[0x1E696ABC0] hmErrorWithCode:2 description:@"Got back nil encoded token" reason:@"Expected encoded token" suggestion:&stru_1F0E92498];
    goto LABEL_6;
  }

  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __101__HMUserCloudShareWithOwnerOperation_sendShareToOwner_from_savedOwnerAsParticipant_share_completion___block_invoke;
  v32[3] = &unk_1E754BAC8;
  v32[4] = self;
  v33 = v12;
  v23 = v13;
  v31 = v22;
  v24 = v18;
  v25 = v13;
  v26 = v12;
  v27 = v23;
  v34 = v23;
  v35 = v14;
  v36 = v15;
  v28 = v27;
  v12 = v26;
  v13 = v25;
  v18 = v24;
  v22 = v31;
  [v33 sendClientShareURL:v17 shareToken:v21 containerID:v20 fromUser:v28 completion:v32];

LABEL_7:
  v30 = *MEMORY[0x1E69E9840];
}

void __101__HMUserCloudShareWithOwnerOperation_sendShareToOwner_from_savedOwnerAsParticipant_share_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = *(*(a1 + 32) + 248);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v17 = *(a1 + 40);
      v18 = *(a1 + 48);
      *buf = 138412802;
      v21 = v17;
      v22 = 2112;
      v23 = v18;
      v24 = 2112;
      v25 = v6;
      _os_log_error_impl(&dword_19BB39000, v7, OS_LOG_TYPE_ERROR, "Unable to complete share to owner %@ from %@. Error %@", buf, 0x20u);
    }

    (*(*(a1 + 64) + 16))();
  }

  else
  {
    if (v5)
    {
      v19 = 0;
      v8 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v5 error:&v19];
      v9 = v19;
    }

    else
    {
      v8 = 0;
      v9 = 0;
    }

    v10 = *(*(a1 + 32) + 248);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = *(a1 + 40);
      v12 = *(a1 + 48);
      *buf = 138412802;
      v21 = v11;
      v22 = 2112;
      v23 = v12;
      v24 = 2112;
      v25 = v8;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "Completed share to owner %@ from %@ nonce %@.", buf, 0x20u);
    }

    if (v9)
    {
      (*(*(a1 + 64) + 16))();
    }

    else
    {
      v13 = [HMHomeCloudShareResponse alloc];
      v14 = [*(a1 + 32) ownerUser];
      v15 = [(HMHomeCloudShareResponse *)v13 initWithOwnerUser:v14 pariticipant:*(a1 + 56) clientInfo:v8];

      (*(*(a1 + 64) + 16))();
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)removeOwnerAsParticipant:(id)a3 completion:(id)a4
{
  v24[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a3;
  v8 = [(HMUserCloudShareWithOwnerOperation *)self share];
  [v8 removeParticipant:v7];

  v9 = objc_alloc(MEMORY[0x1E695B9B8]);
  v10 = [(HMUserCloudShareWithOwnerOperation *)self share];
  v24[0] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
  v12 = [v9 initWithRecordsToSave:v11 recordIDsToDelete:0];

  v13 = [v12 configuration];
  [v13 setQualityOfService:17];

  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __74__HMUserCloudShareWithOwnerOperation_removeOwnerAsParticipant_completion___block_invoke;
  v21 = &unk_1E754BAA0;
  v22 = self;
  v23 = v6;
  v14 = v6;
  [v12 setModifyRecordsCompletionBlock:&v18];
  v15 = [(HMUserCloudShareWithOwnerOperation *)self container:v18];
  v16 = [v15 privateCloudDatabase];
  [v16 addOperation:v12];

  v17 = *MEMORY[0x1E69E9840];
}

void __74__HMUserCloudShareWithOwnerOperation_removeOwnerAsParticipant_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v21 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = *(*(a1 + 32) + 248);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v19) = 0;
      _os_log_error_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "Got error while saving share to remove owner.", &v19, 2u);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v11 = [v7 firstObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;

    v14 = *(a1 + 32);
    v15 = v14[31];
    if (v13)
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        LOWORD(v19) = 0;
        _os_log_impl(&dword_19BB39000, v15, OS_LOG_TYPE_INFO, "Successfully removed owner from share", &v19, 2u);
        v14 = *(a1 + 32);
      }

      [v14 setShare:v13];
      (*(*(a1 + 40) + 16))();
    }

    else
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v19 = 138412290;
        v20 = v7;
        _os_log_error_impl(&dword_19BB39000, v15, OS_LOG_TYPE_ERROR, "Unable to find share in saved records: %@", &v19, 0xCu);
      }

      v16 = *(a1 + 40);
      v17 = [MEMORY[0x1E696ABC0] hmErrorWithCode:3 description:@"Unexpected result after saving share" reason:@"Couldn't get CKShare" suggestion:0];
      (*(v16 + 16))(v16, v17);
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)saveShareAndObtainSavedOwner:(id)a3 completion:(id)a4
{
  v21[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc(MEMORY[0x1E695B9B8]);
  v9 = [(HMUserCloudShareWithOwnerOperation *)self share];
  v21[0] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
  v11 = [v8 initWithRecordsToSave:v10 recordIDsToDelete:0];

  v12 = [v11 configuration];
  [v12 setQualityOfService:17];

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __78__HMUserCloudShareWithOwnerOperation_saveShareAndObtainSavedOwner_completion___block_invoke;
  v18[3] = &unk_1E754BA78;
  v19 = v6;
  v20 = v7;
  v18[4] = self;
  v13 = v6;
  v14 = v7;
  [v11 setModifyRecordsCompletionBlock:v18];
  v15 = [(HMUserCloudShareWithOwnerOperation *)self container];
  v16 = [v15 privateCloudDatabase];
  [v16 addOperation:v11];

  v17 = *MEMORY[0x1E69E9840];
}

void __78__HMUserCloudShareWithOwnerOperation_saveShareAndObtainSavedOwner_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v42 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (!v9)
  {
    if ([v7 count] != 1)
    {
      v20 = *(*(a1 + 32) + 248);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v38 = v7;
        _os_log_error_impl(&dword_19BB39000, v20, OS_LOG_TYPE_ERROR, "Unexpected number of saved records: %@", buf, 0xCu);
      }

      v21 = [MEMORY[0x1E696ABC0] hmErrorWithCode:3 description:@"Unexpected result after saving share" reason:@"Unexpected number of records" suggestion:0];
      v22 = 0;
      if (!v21)
      {
        goto LABEL_34;
      }

      goto LABEL_33;
    }

    v11 = [v7 firstObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;

    if (v13)
    {
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v14 = [v13 participants];
      v15 = [v14 countByEnumeratingWithState:&v33 objects:v41 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v34;
LABEL_12:
        v18 = 0;
        while (1)
        {
          if (*v34 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v33 + 1) + 8 * v18);
          if ([v19 isEqual:*(a1 + 40)])
          {
            break;
          }

          if (v16 == ++v18)
          {
            v16 = [v14 countByEnumeratingWithState:&v33 objects:v41 count:16];
            if (v16)
            {
              goto LABEL_12;
            }

            goto LABEL_18;
          }
        }

        v22 = v19;

        if (!v22)
        {
          goto LABEL_25;
        }

        [*(a1 + 32) setShare:v13];
        v21 = 0;
LABEL_32:

        if (!v21)
        {
LABEL_34:
          (*(*(a1 + 48) + 16))();

          goto LABEL_35;
        }

LABEL_33:

        v22 = 0;
        goto LABEL_34;
      }

LABEL_18:

LABEL_25:
      v23 = *(*(a1 + 32) + 248);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v30 = *(a1 + 40);
        v31 = v23;
        v32 = [v13 participants];
        *buf = 138412546;
        v38 = v30;
        v39 = 2112;
        v40 = v32;
        _os_log_error_impl(&dword_19BB39000, v31, OS_LOG_TYPE_ERROR, "Couldn't find participant %@ in share: %@", buf, 0x16u);
      }

      v24 = MEMORY[0x1E696ABC0];
      v25 = @"Unable to find participant in saved share";
      v26 = @"Couldn't find owner as participant";
      v27 = 2;
    }

    else
    {
      v28 = *(*(a1 + 32) + 248);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v38 = v7;
        _os_log_error_impl(&dword_19BB39000, v28, OS_LOG_TYPE_ERROR, "Unable to find share in saved records: %@", buf, 0xCu);
      }

      v24 = MEMORY[0x1E696ABC0];
      v25 = @"Unexpected result after saving share";
      v26 = @"Couldn't get CKShare";
      v27 = 3;
    }

    v21 = [v24 hmErrorWithCode:v27 description:v25 reason:v26 suggestion:0];
    v22 = 0;
    goto LABEL_32;
  }

  v10 = *(*(a1 + 32) + 248);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v38 = v9;
    _os_log_error_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "Got error while saving share to add owner. %@", buf, 0xCu);
  }

  (*(*(a1 + 48) + 16))();
LABEL_35:

  v29 = *MEMORY[0x1E69E9840];
}

- (void)fetchParticipantForLookupInfo:(id)a3 completion:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v26 = v6;
    _os_log_impl(&dword_19BB39000, logger, OS_LOG_TYPE_DEFAULT, "Fetching Share Participant for %@", buf, 0xCu);
  }

  v9 = objc_alloc(MEMORY[0x1E695B950]);
  v24 = v6;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v24 count:1];
  v11 = [v9 initWithUserIdentityLookupInfos:v10];

  v12 = [v11 configuration];
  [v12 setQualityOfService:17];

  v13 = [MEMORY[0x1E695DF70] arrayWithCapacity:1];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __79__HMUserCloudShareWithOwnerOperation_fetchParticipantForLookupInfo_completion___block_invoke;
  v22[3] = &unk_1E754BA50;
  v14 = v13;
  v23 = v14;
  [v11 setShareParticipantFetchedBlock:v22];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __79__HMUserCloudShareWithOwnerOperation_fetchParticipantForLookupInfo_completion___block_invoke_2;
  v19[3] = &unk_1E754D898;
  v20 = v14;
  v21 = v7;
  v19[4] = self;
  v15 = v14;
  v16 = v7;
  [v11 setFetchShareParticipantsCompletionBlock:v19];
  v17 = [(HMUserCloudShareWithOwnerOperation *)self container];
  [v17 addOperation:v11];

  v18 = *MEMORY[0x1E69E9840];
}

void __79__HMUserCloudShareWithOwnerOperation_fetchParticipantForLookupInfo_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = *(*(a1 + 32) + 248);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v11 = 138412290;
      v12 = v3;
      _os_log_error_impl(&dword_19BB39000, v4, OS_LOG_TYPE_ERROR, "Got error while fetching participant participant: %@", &v11, 0xCu);
    }

    (*(*(a1 + 48) + 16))();
  }

  else if ([*(a1 + 40) count])
  {
    v5 = *(a1 + 48);
    v6 = [*(a1 + 40) firstObject];
    (*(v5 + 16))(v5, v6, 0);
  }

  else
  {
    v7 = *(*(a1 + 32) + 248);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v11) = 0;
      _os_log_error_impl(&dword_19BB39000, v7, OS_LOG_TYPE_ERROR, "Could not find a single participant.", &v11, 2u);
    }

    v8 = *(a1 + 48);
    v9 = [MEMORY[0x1E696ABC0] hmErrorWithCode:2 description:@"Unable to determine participant" reason:@"Couldn't get participant for CKShare" suggestion:0];
    (*(v8 + 16))(v8, 0, v9);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (HMUserCloudShareWithOwnerOperation)initWithShare:(id)a3 container:(id)a4 ownerUser:(id)a5 allowWriteAccess:(BOOL)a6 currentUser:(id)a7 analyticsEventSender:(id)a8
{
  v27 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a7;
  v17 = a8;
  v28.receiver = self;
  v28.super_class = HMUserCloudShareWithOwnerOperation;
  v18 = [(HMUserCloudShareWithOwnerOperation *)&v28 init];
  if (v18)
  {
    v19 = HMFGetOSLogHandle();
    logger = v18->_logger;
    v18->_logger = v19;

    v21 = [MEMORY[0x1E696AFB0] UUID];
    operationID = v18->_operationID;
    v18->_operationID = v21;

    objc_storeStrong(&v18->_share, a3);
    objc_storeStrong(&v18->_container, a4);
    objc_storeStrong(&v18->_ownerUser, a5);
    objc_storeStrong(&v18->_currentUser, a7);
    v18->_allowWriteAccess = a6;
    v23 = _Block_copy(v17);
    analyticsEventSender = v18->_analyticsEventSender;
    v18->_analyticsEventSender = v23;
  }

  return v18;
}

void __101__HMUserCloudShareWithOwnerOperation_initWithShare_container_ownerUser_allowWriteAccess_currentUser___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __101__HMUserCloudShareWithOwnerOperation_initWithShare_container_ownerUser_allowWriteAccess_currentUser___block_invoke_2;
  v11[3] = &unk_1E754BA28;
  v6 = v5;
  v12 = v6;
  v7 = v4;
  v8 = v11;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v9 = getAnalyticsSendEventLazySymbolLoc_ptr_40994;
  v17 = getAnalyticsSendEventLazySymbolLoc_ptr_40994;
  if (!getAnalyticsSendEventLazySymbolLoc_ptr_40994)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __getAnalyticsSendEventLazySymbolLoc_block_invoke_40995;
    v13[3] = &unk_1E754CB30;
    v13[4] = &v14;
    __getAnalyticsSendEventLazySymbolLoc_block_invoke_40995(v13);
    v9 = v15[3];
  }

  _Block_object_dispose(&v14, 8);
  if (!v9)
  {
    dlerror();
    v10 = abort_report_np();
    _Block_object_dispose(&v14, 8);
    _Unwind_Resume(v10);
  }

  v9(v7, v8);
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t32 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t32, &__block_literal_global_101_41005);
  }

  v3 = logCategory__hmf_once_v33;

  return v3;
}

uint64_t __49__HMUserCloudShareWithOwnerOperation_logCategory__block_invoke()
{
  v0 = *MEMORY[0x1E69A2980];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v33;
  logCategory__hmf_once_v33 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

@end
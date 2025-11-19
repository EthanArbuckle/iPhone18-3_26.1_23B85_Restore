@interface MFMailCompositionContext
@end

@implementation MFMailCompositionContext

void __32___MFMailCompositionContext_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.messageui", [v3 UTF8String]);
  v2 = log_log_6;
  log_log_6 = v1;
}

id __89___MFMailCompositionContext_initWithURL_composeType_originalMessage_legacyMessage_isEML___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 emailAddressValue];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 displayName];
    v6 = [v5 emailAddressValue];

    if (v6 && ([v6 stringValue], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "simpleAddress"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v7, "isEqualToString:", v8), v8, v7, (v9 & 1) == 0))
    {
      v10 = [v4 simpleAddress];
    }

    else
    {
      v10 = [v4 stringValue];
    }

    v11 = v10;
  }

  else
  {
    v11 = [v2 stringValue];
  }

  return v11;
}

id __89___MFMailCompositionContext_initWithURL_composeType_originalMessage_legacyMessage_isEML___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 emailAddressValue];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 displayName];
    v6 = [v5 emailAddressValue];

    if (v6 && ([v6 stringValue], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "simpleAddress"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v7, "isEqualToString:", v8), v8, v7, (v9 & 1) == 0))
    {
      v10 = [v4 simpleAddress];
    }

    else
    {
      v10 = [v4 stringValue];
    }

    v11 = v10;
  }

  else
  {
    v11 = [v2 stringValue];
  }

  return v11;
}

id __89___MFMailCompositionContext_initWithURL_composeType_originalMessage_legacyMessage_isEML___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 emailAddressValue];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 displayName];
    v6 = [v5 emailAddressValue];

    if (v6 && ([v6 stringValue], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "simpleAddress"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v7, "isEqualToString:", v8), v8, v7, (v9 & 1) == 0))
    {
      v10 = [v4 simpleAddress];
    }

    else
    {
      v10 = [v4 stringValue];
    }

    v11 = v10;
  }

  else
  {
    v11 = [v2 stringValue];
  }

  return v11;
}

void __104___MFMailCompositionContext__loadMessageWithObjectID_mailboxObjectID_messageRepository_mailboxProvider___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = v6;
    if (!v6)
    {
      a1 = [v3 mailboxObjectIDs];
      v7 = [a1 firstObject];
    }

    v8 = [v5 legacyMailboxForObjectID:v7];
    v9 = [MFComposeMailMessage legacyMessageWithMessage:v3 mailboxUid:v8];

    if (v6)
    {
      if (!v9)
      {
        goto LABEL_11;
      }
    }

    else
    {

      if (!v9)
      {
LABEL_11:
        *(WeakRetained + 80) = 0;
        objc_storeStrong(WeakRetained + 1, v9);
        [WeakRetained setOriginalMessage:v3];
        v14 = objc_loadWeakRetained(WeakRetained + 16);
        [v14 mailCompositionContext:WeakRetained didFinishLoadingMessage:v3 legacyMessage:v9 error:0];

        goto LABEL_12;
      }
    }

    v10 = MFComposeLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __104___MFMailCompositionContext__loadMessageWithObjectID_mailboxObjectID_messageRepository_mailboxProvider___block_invoke_cold_1(v10);
    }

    v11 = [objc_alloc(MEMORY[0x1E69B1688]) initWithMessage:v9];
    v12 = *(WeakRetained + 7);
    v13 = [v9 messageURL];
    [v12 addProvider:v11 forBaseURL:v13];

    goto LABEL_11;
  }

LABEL_12:
}

void __104___MFMailCompositionContext__loadMessageWithObjectID_mailboxObjectID_messageRepository_mailboxProvider___block_invoke_99(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = MFComposeLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = [v3 ef_publicDescription];
    __104___MFMailCompositionContext__loadMessageWithObjectID_mailboxObjectID_messageRepository_mailboxProvider___block_invoke_99_cold_1(v5, v8, v4);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  *(WeakRetained + 80) = 0;
  v7 = objc_loadWeakRetained(WeakRetained + 16);
  [v7 mailCompositionContext:WeakRetained didFinishLoadingMessage:0 legacyMessage:0 error:v3];
}

void __106___MFMailCompositionContext__loadMessageWithAutosaveIdentifier_messageRepository_originalMessageObjectID___block_invoke(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v5 = MFComposeLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 32);
      *buf = 138543618;
      v29 = v6;
      v30 = 2048;
      v31 = WeakRetained;
      _os_log_impl(&dword_1BE819000, v5, OS_LOG_TYPE_INFO, "Autosave success for %{public}@, self = %p", buf, 0x16u);
    }

    v7 = [MEMORY[0x1E69B1628] messageWithRFC822Data:v3];
    if (v7)
    {
      v8 = [objc_alloc(MEMORY[0x1E69B1688]) initWithMessageData:v3 parentPart:0];
      v9 = WeakRetained[7];
      v10 = [v7 messageURL];
      [v9 addProvider:v8 forBaseURL:v10];
    }

    objc_initWeak(buf, WeakRetained);
    v11 = *(a1 + 40);
    v12 = [MEMORY[0x1E699B978] mainThreadScheduler];
    if (v11)
    {
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __106___MFMailCompositionContext__loadMessageWithAutosaveIdentifier_messageRepository_originalMessageObjectID___block_invoke_105;
      v25[3] = &unk_1E806FBE0;
      v13 = &v27;
      objc_copyWeak(&v27, buf);
      v14 = v7;
      v26 = v14;
      [v11 onScheduler:v12 addSuccessBlock:v25];

      v15 = *(a1 + 40);
      v16 = [MEMORY[0x1E699B978] mainThreadScheduler];
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __106___MFMailCompositionContext__loadMessageWithAutosaveIdentifier_messageRepository_originalMessageObjectID___block_invoke_2;
      v22[3] = &unk_1E806FC08;
      objc_copyWeak(&v24, buf);
      v23 = v14;
      [v15 onScheduler:v16 addFailureBlock:v22];

      objc_destroyWeak(&v24);
      v17 = &v26;
    }

    else
    {
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __106___MFMailCompositionContext__loadMessageWithAutosaveIdentifier_messageRepository_originalMessageObjectID___block_invoke_106;
      v19[3] = &unk_1E806FC30;
      v13 = &v21;
      objc_copyWeak(&v21, buf);
      v20 = v7;
      [v12 performBlock:v19];

      v17 = &v20;
    }

    objc_destroyWeak(v13);
    objc_destroyWeak(buf);
  }

  else
  {
    v7 = MFComposeLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v18 = *(a1 + 32);
      *buf = 138543362;
      v29 = v18;
      _os_log_impl(&dword_1BE819000, v7, OS_LOG_TYPE_INFO, "Autosave success abandoned for %{public}@", buf, 0xCu);
    }
  }
}

void __106___MFMailCompositionContext__loadMessageWithAutosaveIdentifier_messageRepository_originalMessageObjectID___block_invoke_105(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if ((*(*MEMORY[0x1E699B748] + 16))())
    {
      objc_storeStrong(WeakRetained + 14, a2);
    }

    [WeakRetained _notifyDidFinishLoadingWithLegacyMessage:*(a1 + 32)];
  }
}

void __106___MFMailCompositionContext__loadMessageWithAutosaveIdentifier_messageRepository_originalMessageObjectID___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = MFComposeLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __106___MFMailCompositionContext__loadMessageWithAutosaveIdentifier_messageRepository_originalMessageObjectID___block_invoke_2_cold_1(v3, v5);
    }

    [WeakRetained _notifyDidFinishLoadingWithLegacyMessage:*(a1 + 32)];
  }
}

void __106___MFMailCompositionContext__loadMessageWithAutosaveIdentifier_messageRepository_originalMessageObjectID___block_invoke_106(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    [WeakRetained _notifyDidFinishLoadingWithLegacyMessage:*(a1 + 32)];
  }
}

void __106___MFMailCompositionContext__loadMessageWithAutosaveIdentifier_messageRepository_originalMessageObjectID___block_invoke_2_108(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = MFComposeLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = 138543874;
      v9 = v7;
      v10 = 2048;
      v11 = WeakRetained;
      v12 = 2114;
      v13 = v3;
      _os_log_error_impl(&dword_1BE819000, v5, OS_LOG_TYPE_ERROR, "Autosave failure for %{public}@, self = %p, error = %{public}@", &v8, 0x20u);
    }

    *(WeakRetained + 80) = 0;
    v6 = objc_loadWeakRetained(WeakRetained + 16);
    [v6 mailCompositionContext:WeakRetained didFinishLoadingMessage:0 legacyMessage:0 error:v3];
  }

  else
  {
    v6 = MFComposeLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __106___MFMailCompositionContext__loadMessageWithAutosaveIdentifier_messageRepository_originalMessageObjectID___block_invoke_2_108_cold_1(a1, v3, v6);
    }
  }
}

void __77___MFMailCompositionContext_collection_replacedExistingItemID_withNewItemID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E699B978] mainThreadScheduler];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __77___MFMailCompositionContext_collection_replacedExistingItemID_withNewItemID___block_invoke_2;
  v6[3] = &unk_1E806C520;
  v6[4] = *(a1 + 32);
  v5 = v3;
  v7 = v5;
  [v4 performBlock:v6];
}

void __77___MFMailCompositionContext_collection_replacedExistingItemID_withNewItemID___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setOriginalMessage:*(a1 + 40)];
  v4 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = [v2 originalMessage];
  [v4 mailCompositionContext:v2 messageDidChange:v3];
}

void __104___MFMailCompositionContext__loadMessageWithObjectID_mailboxObjectID_messageRepository_mailboxProvider___block_invoke_99_cold_1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1BE819000, log, OS_LOG_TYPE_ERROR, "Failed to get message for object id. Error: %{public}@", buf, 0xCu);
}

void __106___MFMailCompositionContext__loadMessageWithAutosaveIdentifier_messageRepository_originalMessageObjectID___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1BE819000, a2, OS_LOG_TYPE_ERROR, "Failed to load original message: %@", &v2, 0xCu);
}

void __106___MFMailCompositionContext__loadMessageWithAutosaveIdentifier_messageRepository_originalMessageObjectID___block_invoke_2_108_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = 138543618;
  v5 = v3;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&dword_1BE819000, log, OS_LOG_TYPE_ERROR, "Autosave failure abandoned %{public}@, error = %{public}@", &v4, 0x16u);
}

@end
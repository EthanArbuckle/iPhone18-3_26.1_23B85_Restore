@interface _CNGeminiLogger
- (_CNGeminiLogger)init;
- (void)fetchSortedResultsForInteraction:(id)a3 error:(id)a4;
- (void)fetchedSortedResults:(id)a3 forInteraction:(id)a4;
- (void)fetchingBestResultForDestinationHandle:(id)a3;
- (void)recordInteractionError:(id)a3;
- (void)recordedInteraction:(id)a3 forContext:(id)a4;
- (void)registeredForContextUpdatesWithToken:(id)a3;
- (void)unregisteredForContextUpdatesWithToken:(id)a3;
- (void)updateSubscriptionInfoError:(id)a3;
- (void)updatedSubscriptionInfo:(id)a3;
- (void)updatingSubscriptionInfo:(id)a3;
@end

@implementation _CNGeminiLogger

- (_CNGeminiLogger)init
{
  v7.receiver = self;
  v7.super_class = _CNGeminiLogger;
  v2 = [(_CNGeminiLogger *)&v7 init];
  if (v2)
  {
    v3 = os_log_create("com.apple.contacts", "Gemini");
    log = v2->_log;
    v2->_log = v3;

    v5 = v2;
  }

  return v2;
}

- (void)updatingSubscriptionInfo:(id)a3
{
  v3 = a3;
  v4 = _os_activity_create(&dword_1954A0000, "UpdatingSubscriptionInfo", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __44___CNGeminiLogger_updatingSubscriptionInfo___block_invoke;
  aBlock[3] = &unk_1E7412A88;
  v13 = v4;
  v5 = v4;
  v6 = _Block_copy(aBlock);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44___CNGeminiLogger_updatingSubscriptionInfo___block_invoke_2;
  block[3] = &unk_1E7412DD0;
  v10 = v3;
  v11 = v6;
  v7 = v6;
  v8 = v3;
  os_activity_apply(v5, block);
}

- (void)fetchingBestResultForDestinationHandle:(id)a3
{
  v3 = a3;
  v4 = _os_activity_create(&dword_1954A0000, "FetchingBestResultForDestinationHandle", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __58___CNGeminiLogger_fetchingBestResultForDestinationHandle___block_invoke;
  aBlock[3] = &unk_1E7412A88;
  v13 = v4;
  v5 = v4;
  v6 = _Block_copy(aBlock);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58___CNGeminiLogger_fetchingBestResultForDestinationHandle___block_invoke_2;
  block[3] = &unk_1E7412DD0;
  v10 = v3;
  v11 = v6;
  v7 = v6;
  v8 = v3;
  os_activity_apply(v5, block);
}

- (void)recordedInteraction:(id)a3 forContext:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 contactIdentifier];

  v9 = [(_CNGeminiLogger *)self log];
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
  if (v8)
  {
    if (v10)
    {
      v11 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v6, "transport")}];
      v12 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v6, "directionality")}];
      v13 = [v6 handle];
      v14 = [v6 contactIdentifier];
      v15 = [v7 uuid];
      v16 = 138413314;
      v17 = v11;
      v18 = 2112;
      v19 = v12;
      v20 = 2112;
      v21 = v13;
      v22 = 2112;
      v23 = v14;
      v24 = 2112;
      v25 = v15;
      _os_log_impl(&dword_1954A0000, v9, OS_LOG_TYPE_INFO, "Recorded interaction with transport:%@ directionality:%@ handle:%@ contactIdentifier:%@ contextUUID:%@", &v16, 0x34u);

LABEL_6:
    }
  }

  else if (v10)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v6, "transport")}];
    v12 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v6, "directionality")}];
    v13 = [v6 handle];
    v14 = [v7 uuid];
    v16 = 138413058;
    v17 = v11;
    v18 = 2112;
    v19 = v12;
    v20 = 2112;
    v21 = v13;
    v22 = 2112;
    v23 = v14;
    _os_log_impl(&dword_1954A0000, v9, OS_LOG_TYPE_INFO, "Recorded interaction with transport:%@ directionality:%@ handle:%@ contextUUID:%@", &v16, 0x2Au);
    goto LABEL_6;
  }
}

- (void)recordInteractionError:(id)a3
{
  v4 = a3;
  v5 = [(_CNGeminiLogger *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [(_CNGeminiLogger *)v4 recordInteractionError:v5];
  }
}

- (void)registeredForContextUpdatesWithToken:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_CNGeminiLogger *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_1954A0000, v5, OS_LOG_TYPE_INFO, "Registered for context updates with token %@", &v6, 0xCu);
  }
}

- (void)unregisteredForContextUpdatesWithToken:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_CNGeminiLogger *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_1954A0000, v5, OS_LOG_TYPE_INFO, "Unregistered for context updates with token %@", &v6, 0xCu);
  }
}

- (void)updatedSubscriptionInfo:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_CNGeminiLogger *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_1954A0000, v5, OS_LOG_TYPE_INFO, "Updated subscription info: %@", &v6, 0xCu);
  }
}

- (void)updateSubscriptionInfoError:(id)a3
{
  v4 = a3;
  v5 = [(_CNGeminiLogger *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [(_CNGeminiLogger *)v4 updateSubscriptionInfoError:v5];
  }
}

- (void)fetchedSortedResults:(id)a3 forInteraction:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [v5 contactIdentifier];

  v7 = [(_CNGeminiLogger *)self log];
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
  if (v6)
  {
    if (v8)
    {
      v9 = [v5 handle];
      v10 = [v5 contactIdentifier];
      v11 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v5, "transport")}];
      v12 = 138412802;
      v13 = v9;
      v14 = 2112;
      v15 = v10;
      v16 = 2112;
      v17 = v11;
      _os_log_impl(&dword_1954A0000, v7, OS_LOG_TYPE_INFO, "Fetched sorted results for handle:%@ contactIdentifier:%@ transport:%@", &v12, 0x20u);

LABEL_6:
    }
  }

  else if (v8)
  {
    v9 = [v5 handle];
    v10 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v5, "transport")}];
    v12 = 138412546;
    v13 = v9;
    v14 = 2112;
    v15 = v10;
    _os_log_impl(&dword_1954A0000, v7, OS_LOG_TYPE_INFO, "Fetched sorted results for handle:%@ transport:%@", &v12, 0x16u);
    goto LABEL_6;
  }
}

- (void)fetchSortedResultsForInteraction:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 contactIdentifier];

  v9 = [(_CNGeminiLogger *)self log];
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
  if (v8)
  {
    if (v10)
    {
      [(_CNGeminiLogger *)v6 fetchSortedResultsForInteraction:v7 error:v9];
    }
  }

  else if (v10)
  {
    [(_CNGeminiLogger *)v6 fetchSortedResultsForInteraction:v7 error:v9];
  }
}

- (void)recordInteractionError:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1954A0000, a2, OS_LOG_TYPE_ERROR, "Recording interaction failed with error: %@", &v2, 0xCu);
}

- (void)updateSubscriptionInfoError:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1954A0000, a2, OS_LOG_TYPE_ERROR, "Updating subscription info failed with error: %@", &v2, 0xCu);
}

- (void)fetchSortedResultsForInteraction:(NSObject *)a3 error:.cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = [a1 handle];
  v7 = [a1 contactIdentifier];
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(a1, "transport")}];
  v9 = 138413058;
  v10 = v6;
  v11 = 2112;
  v12 = v7;
  v13 = 2112;
  v14 = v8;
  v15 = 2112;
  v16 = a2;
  _os_log_error_impl(&dword_1954A0000, a3, OS_LOG_TYPE_ERROR, "Fetching sorted results for handle:%@ contactIdentifier:%@ type:%@ failed with error:%@", &v9, 0x2Au);
}

- (void)fetchSortedResultsForInteraction:(NSObject *)a3 error:.cold.2(void *a1, uint64_t a2, NSObject *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = [a1 handle];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(a1, "transport")}];
  v8 = 138412802;
  v9 = v6;
  v10 = 2112;
  v11 = v7;
  v12 = 2112;
  v13 = a2;
  _os_log_error_impl(&dword_1954A0000, a3, OS_LOG_TYPE_ERROR, "Fetching sorted results for handle:%@ type:%@ failed with error:%@", &v8, 0x20u);
}

@end
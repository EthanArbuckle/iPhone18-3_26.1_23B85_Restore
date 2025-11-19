@interface CNChangeHistoryTriageLogger
+ (CNChangeHistoryTriageLogger)fetchLogger;
+ (CNChangeHistoryTriageLogger)saveLogger;
+ (OS_os_log)log;
- (CNChangeHistoryTriageLogger)init;
- (CNChangeHistoryTriageLogger)initWithOSLog:(id)a3 defaultLogType:(unsigned __int8)a4 destructiveLogType:(unsigned __int8)a5;
- (void)didExecuteSaveRequest;
- (void)didFetchHistoryEvents:(id)a3 anchor:(id)a4;
- (void)didFetchHistoryEventsCount:(int64_t)a3 anchor:(id)a4 truncated:(BOOL)a5;
- (void)fetchDidFailToTranslateWithError:(id)a3;
- (void)fetchDidFailWithError:(id)a3;
- (void)visitAddContactEvent:(id)a3;
- (void)visitAddGroupEvent:(id)a3;
- (void)visitAddMemberToGroupEvent:(id)a3;
- (void)visitAddSubgroupToGroupEvent:(id)a3;
- (void)visitDeleteContactEvent:(id)a3;
- (void)visitDeleteGroupEvent:(id)a3;
- (void)visitDifferentMeCardEvent:(id)a3;
- (void)visitDropEverythingEvent:(id)a3;
- (void)visitLinkContactsEvent:(id)a3;
- (void)visitPreferredContactForImageEvent:(id)a3;
- (void)visitPreferredContactForNameEvent:(id)a3;
- (void)visitRemoveMemberFromGroupEvent:(id)a3;
- (void)visitRemoveSubgroupFromGroupEvent:(id)a3;
- (void)visitUnlinkContactEvent:(id)a3;
- (void)visitUpdateContactEvent:(id)a3;
- (void)visitUpdateGroupEvent:(id)a3;
- (void)willExecuteSaveRequest;
- (void)willFetchHistoryWithRequest:(id)a3;
@end

@implementation CNChangeHistoryTriageLogger

+ (CNChangeHistoryTriageLogger)saveLogger
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__CNChangeHistoryTriageLogger_saveLogger__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (saveLogger_cn_once_token_0 != -1)
  {
    dispatch_once(&saveLogger_cn_once_token_0, block);
  }

  v2 = saveLogger_cn_once_object_0;

  return v2;
}

void __41__CNChangeHistoryTriageLogger_saveLogger__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) log];
  v3 = [objc_alloc(*(a1 + 32)) initWithOSLog:v2 defaultLogType:1 destructiveLogType:0];

  v4 = saveLogger_cn_once_object_0;
  saveLogger_cn_once_object_0 = v3;
}

+ (CNChangeHistoryTriageLogger)fetchLogger
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__CNChangeHistoryTriageLogger_fetchLogger__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (fetchLogger_cn_once_token_1 != -1)
  {
    dispatch_once(&fetchLogger_cn_once_token_1, block);
  }

  v2 = fetchLogger_cn_once_object_1;

  return v2;
}

void __42__CNChangeHistoryTriageLogger_fetchLogger__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) log];
  v3 = [objc_alloc(*(a1 + 32)) initWithOSLog:v2 defaultLogType:1 destructiveLogType:1];

  v4 = fetchLogger_cn_once_object_1;
  fetchLogger_cn_once_object_1 = v3;
}

+ (OS_os_log)log
{
  if (log_cn_once_token_2 != -1)
  {
    +[CNChangeHistoryTriageLogger log];
  }

  v3 = log_cn_once_object_2;

  return v3;
}

uint64_t __34__CNChangeHistoryTriageLogger_log__block_invoke()
{
  v0 = os_log_create("com.apple.contacts", "change-history-triage");
  v1 = log_cn_once_object_2;
  log_cn_once_object_2 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (CNChangeHistoryTriageLogger)init
{
  v3 = os_log_create("com.apple.contacts", "change-history-triage");
  v4 = [(CNChangeHistoryTriageLogger *)self initWithOSLog:v3 defaultLogType:1 destructiveLogType:0];

  return v4;
}

- (CNChangeHistoryTriageLogger)initWithOSLog:(id)a3 defaultLogType:(unsigned __int8)a4 destructiveLogType:(unsigned __int8)a5
{
  v9 = a3;
  v14.receiver = self;
  v14.super_class = CNChangeHistoryTriageLogger;
  v10 = [(CNChangeHistoryTriageLogger *)&v14 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_os_log, a3);
    v11->_defaultLogType = a4;
    v11->_destructiveLogType = a5;
    v12 = v11;
  }

  return v11;
}

- (void)willExecuteSaveRequest
{
  os_log = self->_os_log;
  defaultLogType = self->_defaultLogType;
  if (os_log_type_enabled(os_log, defaultLogType))
  {
    *v4 = 0;
    _os_log_impl(&dword_1954A0000, os_log, defaultLogType, "Will execute save request", v4, 2u);
  }
}

- (void)didExecuteSaveRequest
{
  os_log = self->_os_log;
  defaultLogType = self->_defaultLogType;
  if (os_log_type_enabled(os_log, defaultLogType))
  {
    *v4 = 0;
    _os_log_impl(&dword_1954A0000, os_log, defaultLogType, "Did execute save request", v4, 2u);
  }
}

- (void)willFetchHistoryWithRequest:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 startingToken];

  if (!v5)
  {
    os_log = self->_os_log;
    if (!os_log_type_enabled(os_log, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    *buf = 0;
    v15 = "Will fetch complete history (nil starting token)";
LABEL_10:
    _os_log_impl(&dword_1954A0000, os_log, OS_LOG_TYPE_DEFAULT, v15, buf, 2u);
    goto LABEL_14;
  }

  v6 = [v4 startingToken];
  v7 = [v6 length];

  if (!v7)
  {
    os_log = self->_os_log;
    if (!os_log_type_enabled(os_log, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    *buf = 0;
    v15 = "Will fetch complete history (empty starting token)";
    goto LABEL_10;
  }

  v8 = [CNChangeHistoryAnchor alloc];
  v9 = [v4 startingToken];
  v16 = 0;
  v10 = [(CNChangeHistoryAnchor *)v8 initWithHistoryToken:v9 error:&v16];
  v11 = v16;

  v12 = self->_os_log;
  if (v10)
  {
    defaultLogType = self->_defaultLogType;
    if (os_log_type_enabled(v12, defaultLogType))
    {
      *buf = 138543362;
      v18 = v10;
      _os_log_impl(&dword_1954A0000, v12, defaultLogType, "Will fetch history from anchor: %{public}@", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(self->_os_log, OS_LOG_TYPE_ERROR))
  {
    [(CNChangeHistoryTriageLogger *)v11 willFetchHistoryWithRequest:v12, v4];
  }

LABEL_14:
}

- (void)didFetchHistoryEvents:(id)a3 anchor:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  os_log = self->_os_log;
  defaultLogType = self->_defaultLogType;
  if (os_log_type_enabled(os_log, defaultLogType))
  {
    *buf = 0;
    _os_log_impl(&dword_1954A0000, os_log, defaultLogType, "Did fetch history events:", buf, 2u);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = v6;
  v11 = [v10 countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [*(*(&v17 + 1) + 8 * i) acceptEventVisitor:{self, v17}];
      }

      v12 = [v10 countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v12);
  }

  v15 = self->_os_log;
  v16 = self->_defaultLogType;
  if (os_log_type_enabled(v15, v16))
  {
    *buf = 138543362;
    v22 = v7;
    _os_log_impl(&dword_1954A0000, v15, v16, "Latest change anchor: %{public}@", buf, 0xCu);
  }
}

- (void)didFetchHistoryEventsCount:(int64_t)a3 anchor:(id)a4 truncated:(BOOL)a5
{
  v5 = a5;
  v20 = *MEMORY[0x1E69E9840];
  v8 = a4;
  os_log = self->_os_log;
  defaultLogType = self->_defaultLogType;
  if (os_log_type_enabled(os_log, defaultLogType))
  {
    v11 = MEMORY[0x1E696AD98];
    v12 = os_log;
    v13 = [v11 numberWithBool:v5];
    v14 = 134349570;
    v15 = a3;
    v16 = 2114;
    v17 = v8;
    v18 = 2114;
    v19 = v13;
    _os_log_impl(&dword_1954A0000, v12, defaultLogType, "Did fetch history events count: %{public}lu, latest change anchor: %{public}@, truncated: %{public}@", &v14, 0x20u);
  }
}

- (void)fetchDidFailWithError:(id)a3
{
  v4 = a3;
  os_log = self->_os_log;
  if (os_log_type_enabled(os_log, OS_LOG_TYPE_ERROR))
  {
    [(CNChangeHistoryTriageLogger *)v4 fetchDidFailWithError:?];
  }
}

- (void)fetchDidFailToTranslateWithError:(id)a3
{
  v4 = a3;
  os_log = self->_os_log;
  if (os_log_type_enabled(os_log, OS_LOG_TYPE_ERROR))
  {
    [(CNChangeHistoryTriageLogger *)v4 fetchDidFailToTranslateWithError:?];
  }
}

- (void)visitDropEverythingEvent:(id)a3
{
  os_log = self->_os_log;
  destructiveLogType = self->_destructiveLogType;
  if (os_log_type_enabled(os_log, destructiveLogType))
  {
    *v5 = 0;
    _os_log_impl(&dword_1954A0000, os_log, destructiveLogType, " - Drop everything", v5, 2u);
  }
}

- (void)visitAddContactEvent:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 containerIdentifier];

  os_log = self->_os_log;
  defaultLogType = self->_defaultLogType;
  v8 = os_log_type_enabled(os_log, defaultLogType);
  if (v5)
  {
    if (v8)
    {
      v9 = os_log;
      v10 = [v4 contact];
      v11 = [v10 identifier];
      v12 = [v4 containerIdentifier];
      v13 = 138543618;
      v14 = v11;
      v15 = 2114;
      v16 = v12;
      _os_log_impl(&dword_1954A0000, v9, defaultLogType, " - Add %{public}@ (container: %{public}@", &v13, 0x16u);

LABEL_6:
    }
  }

  else if (v8)
  {
    v9 = os_log;
    v10 = [v4 contact];
    v11 = [v10 identifier];
    v13 = 138543362;
    v14 = v11;
    _os_log_impl(&dword_1954A0000, v9, defaultLogType, " - Add %{public}@", &v13, 0xCu);
    goto LABEL_6;
  }
}

- (void)visitUpdateContactEvent:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  os_log = self->_os_log;
  defaultLogType = self->_defaultLogType;
  if (os_log_type_enabled(os_log, defaultLogType))
  {
    v6 = os_log;
    v7 = [a3 contact];
    v8 = [v7 identifier];
    v9 = 138543362;
    v10 = v8;
    _os_log_impl(&dword_1954A0000, v6, defaultLogType, " - Update %{public}@", &v9, 0xCu);
  }
}

- (void)visitDeleteContactEvent:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  os_log = self->_os_log;
  destructiveLogType = self->_destructiveLogType;
  if (os_log_type_enabled(os_log, destructiveLogType))
  {
    v6 = os_log;
    v7 = [a3 contactIdentifier];
    v8 = 138543362;
    v9 = v7;
    _os_log_impl(&dword_1954A0000, v6, destructiveLogType, " - Delete %{public}@", &v8, 0xCu);
  }
}

- (void)visitAddGroupEvent:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 containerIdentifier];

  os_log = self->_os_log;
  defaultLogType = self->_defaultLogType;
  v8 = os_log_type_enabled(os_log, defaultLogType);
  if (v5)
  {
    if (v8)
    {
      v9 = os_log;
      v10 = [v4 group];
      v11 = [v10 identifier];
      v12 = [v4 containerIdentifier];
      v13 = 138543618;
      v14 = v11;
      v15 = 2114;
      v16 = v12;
      _os_log_impl(&dword_1954A0000, v9, defaultLogType, " - Add %{public}@ (container: %{public}@", &v13, 0x16u);

LABEL_6:
    }
  }

  else if (v8)
  {
    v9 = os_log;
    v10 = [v4 group];
    v11 = [v10 identifier];
    v13 = 138543362;
    v14 = v11;
    _os_log_impl(&dword_1954A0000, v9, defaultLogType, " - Add %{public}@", &v13, 0xCu);
    goto LABEL_6;
  }
}

- (void)visitUpdateGroupEvent:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  os_log = self->_os_log;
  defaultLogType = self->_defaultLogType;
  if (os_log_type_enabled(os_log, defaultLogType))
  {
    v6 = os_log;
    v7 = [a3 group];
    v8 = [v7 identifier];
    v9 = 138543362;
    v10 = v8;
    _os_log_impl(&dword_1954A0000, v6, defaultLogType, " - Update %{public}@", &v9, 0xCu);
  }
}

- (void)visitDeleteGroupEvent:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  os_log = self->_os_log;
  destructiveLogType = self->_destructiveLogType;
  if (os_log_type_enabled(os_log, destructiveLogType))
  {
    v6 = os_log;
    v7 = [a3 groupIdentifier];
    v8 = 138543362;
    v9 = v7;
    _os_log_impl(&dword_1954A0000, v6, destructiveLogType, " - Delete %{public}@", &v8, 0xCu);
  }
}

- (void)visitAddMemberToGroupEvent:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  os_log = self->_os_log;
  defaultLogType = self->_defaultLogType;
  if (os_log_type_enabled(os_log, defaultLogType))
  {
    v6 = os_log;
    v7 = a3;
    v8 = [v7 member];
    v9 = [v8 identifier];
    v10 = [v7 group];

    v11 = [v10 identifier];
    v12 = 138543618;
    v13 = v9;
    v14 = 2114;
    v15 = v11;
    _os_log_impl(&dword_1954A0000, v6, defaultLogType, " - Add %{public}@ to %{public}@", &v12, 0x16u);
  }
}

- (void)visitRemoveMemberFromGroupEvent:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  os_log = self->_os_log;
  defaultLogType = self->_defaultLogType;
  if (os_log_type_enabled(os_log, defaultLogType))
  {
    v6 = os_log;
    v7 = a3;
    v8 = [v7 member];
    v9 = [v8 identifier];
    v10 = [v7 group];

    v11 = [v10 identifier];
    v12 = 138543618;
    v13 = v9;
    v14 = 2114;
    v15 = v11;
    _os_log_impl(&dword_1954A0000, v6, defaultLogType, " - Remove %{public}@ from %{public}@", &v12, 0x16u);
  }
}

- (void)visitAddSubgroupToGroupEvent:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  os_log = self->_os_log;
  defaultLogType = self->_defaultLogType;
  if (os_log_type_enabled(os_log, defaultLogType))
  {
    v6 = os_log;
    v7 = a3;
    v8 = [v7 subgroup];
    v9 = [v8 identifier];
    v10 = [v7 group];

    v11 = [v10 identifier];
    v12 = 138543618;
    v13 = v9;
    v14 = 2114;
    v15 = v11;
    _os_log_impl(&dword_1954A0000, v6, defaultLogType, " - Add %{public}@ to %{public}@", &v12, 0x16u);
  }
}

- (void)visitRemoveSubgroupFromGroupEvent:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  os_log = self->_os_log;
  defaultLogType = self->_defaultLogType;
  if (os_log_type_enabled(os_log, defaultLogType))
  {
    v6 = os_log;
    v7 = a3;
    v8 = [v7 subgroup];
    v9 = [v8 identifier];
    v10 = [v7 group];

    v11 = [v10 identifier];
    v12 = 138543618;
    v13 = v9;
    v14 = 2114;
    v15 = v11;
    _os_log_impl(&dword_1954A0000, v6, defaultLogType, " - Remove %{public}@ from %{public}@", &v12, 0x16u);
  }
}

- (void)visitLinkContactsEvent:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  os_log = self->_os_log;
  defaultLogType = self->_defaultLogType;
  if (os_log_type_enabled(os_log, defaultLogType))
  {
    v6 = os_log;
    v7 = a3;
    v8 = [v7 fromContact];
    v9 = [v8 identifier];
    v10 = [v7 toContact];

    v11 = [v10 identifier];
    v12 = 138543618;
    v13 = v9;
    v14 = 2114;
    v15 = v11;
    _os_log_impl(&dword_1954A0000, v6, defaultLogType, " - Link %{public}@ with %{public}@", &v12, 0x16u);
  }
}

- (void)visitUnlinkContactEvent:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  os_log = self->_os_log;
  defaultLogType = self->_defaultLogType;
  if (os_log_type_enabled(os_log, defaultLogType))
  {
    v6 = os_log;
    v7 = [a3 contact];
    v8 = [v7 identifier];
    v9 = 138543362;
    v10 = v8;
    _os_log_impl(&dword_1954A0000, v6, defaultLogType, " - Unlink %{public}@", &v9, 0xCu);
  }
}

- (void)visitPreferredContactForNameEvent:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  os_log = self->_os_log;
  defaultLogType = self->_defaultLogType;
  if (os_log_type_enabled(os_log, defaultLogType))
  {
    v6 = os_log;
    v7 = [a3 preferredContact];
    v8 = [v7 identifier];
    v9 = 138543362;
    v10 = v8;
    _os_log_impl(&dword_1954A0000, v6, defaultLogType, " - Prefer %{public}@ for name", &v9, 0xCu);
  }
}

- (void)visitPreferredContactForImageEvent:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  os_log = self->_os_log;
  defaultLogType = self->_defaultLogType;
  if (os_log_type_enabled(os_log, defaultLogType))
  {
    v6 = os_log;
    v7 = [a3 preferredContact];
    v8 = [v7 identifier];
    v9 = 138543362;
    v10 = v8;
    _os_log_impl(&dword_1954A0000, v6, defaultLogType, " - Prefer %{public}@ for images", &v9, 0xCu);
  }
}

- (void)visitDifferentMeCardEvent:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  os_log = self->_os_log;
  destructiveLogType = self->_destructiveLogType;
  if (os_log_type_enabled(os_log, destructiveLogType))
  {
    v6 = os_log;
    v7 = [a3 contactIdentifier];
    v8 = 138543362;
    v9 = v7;
    _os_log_impl(&dword_1954A0000, v6, destructiveLogType, " - Set Me Card to %{public}@", &v8, 0xCu);
  }
}

- (void)willFetchHistoryWithRequest:(void *)a3 .cold.1(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = [a3 startingToken];
  v7 = 138543618;
  v8 = a1;
  v9 = 2114;
  v10 = v6;
  _os_log_error_impl(&dword_1954A0000, v5, OS_LOG_TYPE_ERROR, "Will fetch history from invalid anchor: %{public}@ (token: %{public}@)", &v7, 0x16u);
}

- (void)fetchDidFailWithError:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1954A0000, a2, OS_LOG_TYPE_ERROR, "Failed to fetch change history: %{public}@", &v2, 0xCu);
}

- (void)fetchDidFailToTranslateWithError:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1954A0000, a2, OS_LOG_TYPE_ERROR, "Failed to translate change history: %{public}@", &v2, 0xCu);
}

@end
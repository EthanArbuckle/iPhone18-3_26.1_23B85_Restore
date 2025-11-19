@interface CNMutableGroup(UIAdditions)
- (uint64_t)addGroupInStore:()UIAdditions toContainerWithIdentifier:saveRequest:;
- (uint64_t)deleteGroupInStore:()UIAdditions saveRequest:;
- (uint64_t)updateGroupInStore:()UIAdditions saveRequest:;
@end

@implementation CNMutableGroup(UIAdditions)

- (uint64_t)updateGroupInStore:()UIAdditions saveRequest:
{
  v25 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:a1 file:@"CNGroup+UIAdditions.m" lineNumber:55 description:@"A store is needed here"];
  }

  v9 = CNUILogAccountsAndGroupsList();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v18 = a1;
    v19 = 2112;
    v20 = v7;
    _os_log_impl(&dword_199A75000, v9, OS_LOG_TYPE_DEFAULT, "[CNGroup+UIAdditions] updating group %@ in store %@", buf, 0x16u);
  }

  if (!v8)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695CF88]);
  }

  [v8 updateGroup:a1];
  v16 = 0;
  v10 = [v7 executeSaveRequest:v8 error:&v16];
  v11 = v16;
  if ((v10 & 1) == 0)
  {
    v12 = CNUILogAccountsAndGroupsList();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v14 = [a1 identifier];
      *buf = 138544130;
      v18 = v14;
      v19 = 2114;
      v20 = v11;
      v21 = 2114;
      v22 = v7;
      v23 = 2112;
      v24 = a1;
      _os_log_error_impl(&dword_199A75000, v12, OS_LOG_TYPE_ERROR, "[CNGroup+UIAdditions] Could not update group with identifer %{public}@, error %{public}@, store %{public}@, full group %@", buf, 0x2Au);
    }
  }

  return v10;
}

- (uint64_t)deleteGroupInStore:()UIAdditions saveRequest:
{
  v25 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:a1 file:@"CNGroup+UIAdditions.m" lineNumber:35 description:@"A store is needed here"];
  }

  v9 = CNUILogAccountsAndGroupsList();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v18 = a1;
    v19 = 2112;
    v20 = v7;
    _os_log_impl(&dword_199A75000, v9, OS_LOG_TYPE_DEFAULT, "[CNGroup+UIAdditions] deleting group %@ in store %@", buf, 0x16u);
  }

  if (!v8)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695CF88]);
  }

  [v8 deleteGroup:a1];
  v16 = 0;
  v10 = [v7 executeSaveRequest:v8 error:&v16];
  v11 = v16;
  if ((v10 & 1) == 0)
  {
    v12 = CNUILogAccountsAndGroupsList();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v14 = [a1 identifier];
      *buf = 138544130;
      v18 = v14;
      v19 = 2114;
      v20 = v11;
      v21 = 2114;
      v22 = v7;
      v23 = 2112;
      v24 = a1;
      _os_log_error_impl(&dword_199A75000, v12, OS_LOG_TYPE_ERROR, "[CNGroup+UIAdditions] Could not delete group with identifer %{public}@, error %{public}@, store %{public}@, full group %@", buf, 0x2Au);
    }
  }

  return v10;
}

- (uint64_t)addGroupInStore:()UIAdditions toContainerWithIdentifier:saveRequest:
{
  v30 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v9)
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a2 object:a1 file:@"CNGroup+UIAdditions.m" lineNumber:15 description:@"A store is needed here"];
  }

  v12 = CNUILogAccountsAndGroupsList();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v21 = a1;
    v22 = 2112;
    v23 = v10;
    v24 = 2112;
    v25 = v9;
    _os_log_impl(&dword_199A75000, v12, OS_LOG_TYPE_DEFAULT, "[CNGroup+UIAdditions] adding group %@ to container %@ in store %@", buf, 0x20u);
  }

  if (!v11)
  {
    v11 = objc_alloc_init(MEMORY[0x1E695CF88]);
  }

  [v11 addGroup:a1 toContainerWithIdentifier:v10];
  v19 = 0;
  v13 = [v9 executeSaveRequest:v11 error:&v19];
  v14 = v19;
  if ((v13 & 1) == 0)
  {
    v15 = CNUILogAccountsAndGroupsList();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v17 = [a1 identifier];
      *buf = 138544386;
      v21 = v17;
      v22 = 2114;
      v23 = v10;
      v24 = 2114;
      v25 = v14;
      v26 = 2114;
      v27 = v9;
      v28 = 2112;
      v29 = a1;
      _os_log_error_impl(&dword_199A75000, v15, OS_LOG_TYPE_ERROR, "[CNGroup+UIAdditions] Could not add group with identifer %{public}@ to container %{public}@, error %{public}@, store %{public}@, full group %@", buf, 0x34u);
    }
  }

  return v13;
}

@end
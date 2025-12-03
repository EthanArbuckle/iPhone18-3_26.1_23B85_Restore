@interface CNMutableContainer(UIAdditions)
- (uint64_t)addContainerInStore:()UIAdditions toAccountWithIdentifier:saveRequest:;
- (uint64_t)deleteContainerInStore:()UIAdditions saveRequest:;
- (uint64_t)updateContainerInStore:()UIAdditions saveRequest:;
@end

@implementation CNMutableContainer(UIAdditions)

- (uint64_t)deleteContainerInStore:()UIAdditions saveRequest:
{
  v25 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"CNContainer+UIAdditions.m" lineNumber:57 description:@"A store is needed here"];
  }

  v9 = CNUILogAccountsAndGroupsList();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy = self;
    v19 = 2112;
    v20 = v7;
    _os_log_impl(&dword_199A75000, v9, OS_LOG_TYPE_DEFAULT, "[CNContainer+UIAdditions] deleting container %@ in store %@", buf, 0x16u);
  }

  if (!v8)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695CF88]);
  }

  [v8 deleteContainer:self];
  v16 = 0;
  v10 = [v7 executeSaveRequest:v8 error:&v16];
  v11 = v16;
  if ((v10 & 1) == 0)
  {
    v12 = CNUILogAccountsAndGroupsList();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      identifier = [self identifier];
      *buf = 138544130;
      selfCopy = identifier;
      v19 = 2114;
      v20 = v11;
      v21 = 2114;
      v22 = v7;
      v23 = 2112;
      selfCopy2 = self;
      _os_log_error_impl(&dword_199A75000, v12, OS_LOG_TYPE_ERROR, "[CNContainer+UIAdditions] Could not delete container with identifer %{public}@, error %{public}@, store %{public}@, full container %@", buf, 0x2Au);
    }
  }

  return v10;
}

- (uint64_t)updateContainerInStore:()UIAdditions saveRequest:
{
  v25 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"CNContainer+UIAdditions.m" lineNumber:38 description:@"A store is needed here"];
  }

  v9 = CNUILogAccountsAndGroupsList();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy = self;
    v19 = 2112;
    v20 = v7;
    _os_log_impl(&dword_199A75000, v9, OS_LOG_TYPE_DEFAULT, "[CNContainer+UIAdditions] updating container %@ in store %@", buf, 0x16u);
  }

  if (!v8)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695CF88]);
  }

  [v8 updateContainer:self];
  v16 = 0;
  v10 = [v7 executeSaveRequest:v8 error:&v16];
  v11 = v16;
  if ((v10 & 1) == 0)
  {
    v12 = CNUILogAccountsAndGroupsList();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      identifier = [self identifier];
      *buf = 138544130;
      selfCopy = identifier;
      v19 = 2114;
      v20 = v11;
      v21 = 2114;
      v22 = v7;
      v23 = 2112;
      selfCopy2 = self;
      _os_log_error_impl(&dword_199A75000, v12, OS_LOG_TYPE_ERROR, "[CNContainer+UIAdditions] Could not update container with identifer %{public}@, error %{public}@, store %{public}@, full container %@", buf, 0x2Au);
    }
  }

  return v10;
}

- (uint64_t)addContainerInStore:()UIAdditions toAccountWithIdentifier:saveRequest:
{
  v30 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v9)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"CNContainer+UIAdditions.m" lineNumber:18 description:@"A store is needed here"];
  }

  v12 = CNUILogAccountsAndGroupsList();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    selfCopy = self;
    v22 = 2112;
    v23 = v10;
    v24 = 2112;
    v25 = v9;
    _os_log_impl(&dword_199A75000, v12, OS_LOG_TYPE_DEFAULT, "[CNContainer+UIAdditions] adding container %@ to account %@ in store %@", buf, 0x20u);
  }

  if (!v11)
  {
    v11 = objc_alloc_init(MEMORY[0x1E695CF88]);
  }

  [v11 addContainer:self toAccountWithIdentifier:v10];
  v19 = 0;
  v13 = [v9 executeSaveRequest:v11 error:&v19];
  v14 = v19;
  if ((v13 & 1) == 0)
  {
    v15 = CNUILogAccountsAndGroupsList();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      identifier = [self identifier];
      *buf = 138544386;
      selfCopy = identifier;
      v22 = 2114;
      v23 = v10;
      v24 = 2114;
      v25 = v14;
      v26 = 2114;
      v27 = v9;
      v28 = 2112;
      selfCopy2 = self;
      _os_log_error_impl(&dword_199A75000, v15, OS_LOG_TYPE_ERROR, "[CNContainer+UIAdditions] Could not add container with identifer %{public}@ to account %{public}@, error %{public}@, store %{public}@, full container %@", buf, 0x34u);
    }
  }

  return v13;
}

@end
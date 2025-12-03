@interface _CNContactPosterDataFeatureFlagGuardian
- (BOOL)executeCreateRequest:(id)request error:(id *)error;
- (BOOL)executeDeleteRequest:(id)request error:(id *)error;
- (BOOL)executeUpdateRequest:(id)request error:(id *)error;
- (_CNContactPosterDataFeatureFlagGuardian)initWithStore:(id)store;
- (id)executeFetchRequest:(id)request error:(id *)error;
- (int64_t)countForFetchRequest:(id)request error:(id *)error;
@end

@implementation _CNContactPosterDataFeatureFlagGuardian

- (_CNContactPosterDataFeatureFlagGuardian)initWithStore:(id)store
{
  storeCopy = store;
  v10.receiver = self;
  v10.super_class = _CNContactPosterDataFeatureFlagGuardian;
  v6 = [(_CNContactPosterDataFeatureFlagGuardian *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_store, store);
    v8 = v7;
  }

  return v7;
}

- (id)executeFetchRequest:(id)request error:(id *)error
{
  v15 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  featureFlags = [currentEnvironment featureFlags];
  v9 = [featureFlags isFeatureEnabled:22];

  if (v9)
  {
    v10 = [(CNContactPosterDataStore *)self->_store executeFetchRequest:requestCopy error:error];
  }

  else
  {
    v11 = +[CNContactPosterDataStore log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = requestCopy;
      _os_log_impl(&dword_1954A0000, v11, OS_LOG_TYPE_DEFAULT, "Ignoring poster data fetch request (feature disabled): %@", &v13, 0xCu);
    }

    v10 = MEMORY[0x1E695E0F0];
  }

  return v10;
}

- (int64_t)countForFetchRequest:(id)request error:(id *)error
{
  v15 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  featureFlags = [currentEnvironment featureFlags];
  v9 = [featureFlags isFeatureEnabled:22];

  if (v9)
  {
    v10 = [(CNContactPosterDataStore *)self->_store countForFetchRequest:requestCopy error:error];
  }

  else
  {
    v11 = +[CNContactPosterDataStore log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = requestCopy;
      _os_log_impl(&dword_1954A0000, v11, OS_LOG_TYPE_DEFAULT, "Ignoring poster data count request (feature disabled): %@", &v13, 0xCu);
    }

    v10 = 0;
  }

  return v10;
}

- (BOOL)executeCreateRequest:(id)request error:(id *)error
{
  v15 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  featureFlags = [currentEnvironment featureFlags];
  v9 = [featureFlags isFeatureEnabled:22];

  if (v9)
  {
    v10 = [(CNContactPosterDataStore *)self->_store executeCreateRequest:requestCopy error:error];
  }

  else
  {
    v11 = +[CNContactPosterDataStore log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = requestCopy;
      _os_log_impl(&dword_1954A0000, v11, OS_LOG_TYPE_DEFAULT, "Ignoring poster data create request (feature disabled): %@", &v13, 0xCu);
    }

    v10 = 1;
  }

  return v10;
}

- (BOOL)executeDeleteRequest:(id)request error:(id *)error
{
  v15 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  featureFlags = [currentEnvironment featureFlags];
  v9 = [featureFlags isFeatureEnabled:22];

  if (v9)
  {
    v10 = [(CNContactPosterDataStore *)self->_store executeDeleteRequest:requestCopy error:error];
  }

  else
  {
    v11 = +[CNContactPosterDataStore log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = requestCopy;
      _os_log_impl(&dword_1954A0000, v11, OS_LOG_TYPE_DEFAULT, "Ignoring poster data delete request (feature disabled): %@", &v13, 0xCu);
    }

    v10 = 1;
  }

  return v10;
}

- (BOOL)executeUpdateRequest:(id)request error:(id *)error
{
  v15 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  featureFlags = [currentEnvironment featureFlags];
  v9 = [featureFlags isFeatureEnabled:22];

  if (v9)
  {
    v10 = [(CNContactPosterDataStore *)self->_store executeUpdateRequest:requestCopy error:error];
  }

  else
  {
    v11 = +[CNContactPosterDataStore log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = requestCopy;
      _os_log_impl(&dword_1954A0000, v11, OS_LOG_TYPE_DEFAULT, "Ignoring poster data update request (feature disabled): %@", &v13, 0xCu);
    }

    v10 = 1;
  }

  return v10;
}

@end
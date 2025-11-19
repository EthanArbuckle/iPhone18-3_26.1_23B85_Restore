@interface _CNContactPosterDataFeatureFlagGuardian
- (BOOL)executeCreateRequest:(id)a3 error:(id *)a4;
- (BOOL)executeDeleteRequest:(id)a3 error:(id *)a4;
- (BOOL)executeUpdateRequest:(id)a3 error:(id *)a4;
- (_CNContactPosterDataFeatureFlagGuardian)initWithStore:(id)a3;
- (id)executeFetchRequest:(id)a3 error:(id *)a4;
- (int64_t)countForFetchRequest:(id)a3 error:(id *)a4;
@end

@implementation _CNContactPosterDataFeatureFlagGuardian

- (_CNContactPosterDataFeatureFlagGuardian)initWithStore:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = _CNContactPosterDataFeatureFlagGuardian;
  v6 = [(_CNContactPosterDataFeatureFlagGuardian *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_store, a3);
    v8 = v7;
  }

  return v7;
}

- (id)executeFetchRequest:(id)a3 error:(id *)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [MEMORY[0x1E69966E8] currentEnvironment];
  v8 = [v7 featureFlags];
  v9 = [v8 isFeatureEnabled:22];

  if (v9)
  {
    v10 = [(CNContactPosterDataStore *)self->_store executeFetchRequest:v6 error:a4];
  }

  else
  {
    v11 = +[CNContactPosterDataStore log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = v6;
      _os_log_impl(&dword_1954A0000, v11, OS_LOG_TYPE_DEFAULT, "Ignoring poster data fetch request (feature disabled): %@", &v13, 0xCu);
    }

    v10 = MEMORY[0x1E695E0F0];
  }

  return v10;
}

- (int64_t)countForFetchRequest:(id)a3 error:(id *)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [MEMORY[0x1E69966E8] currentEnvironment];
  v8 = [v7 featureFlags];
  v9 = [v8 isFeatureEnabled:22];

  if (v9)
  {
    v10 = [(CNContactPosterDataStore *)self->_store countForFetchRequest:v6 error:a4];
  }

  else
  {
    v11 = +[CNContactPosterDataStore log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = v6;
      _os_log_impl(&dword_1954A0000, v11, OS_LOG_TYPE_DEFAULT, "Ignoring poster data count request (feature disabled): %@", &v13, 0xCu);
    }

    v10 = 0;
  }

  return v10;
}

- (BOOL)executeCreateRequest:(id)a3 error:(id *)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [MEMORY[0x1E69966E8] currentEnvironment];
  v8 = [v7 featureFlags];
  v9 = [v8 isFeatureEnabled:22];

  if (v9)
  {
    v10 = [(CNContactPosterDataStore *)self->_store executeCreateRequest:v6 error:a4];
  }

  else
  {
    v11 = +[CNContactPosterDataStore log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = v6;
      _os_log_impl(&dword_1954A0000, v11, OS_LOG_TYPE_DEFAULT, "Ignoring poster data create request (feature disabled): %@", &v13, 0xCu);
    }

    v10 = 1;
  }

  return v10;
}

- (BOOL)executeDeleteRequest:(id)a3 error:(id *)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [MEMORY[0x1E69966E8] currentEnvironment];
  v8 = [v7 featureFlags];
  v9 = [v8 isFeatureEnabled:22];

  if (v9)
  {
    v10 = [(CNContactPosterDataStore *)self->_store executeDeleteRequest:v6 error:a4];
  }

  else
  {
    v11 = +[CNContactPosterDataStore log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = v6;
      _os_log_impl(&dword_1954A0000, v11, OS_LOG_TYPE_DEFAULT, "Ignoring poster data delete request (feature disabled): %@", &v13, 0xCu);
    }

    v10 = 1;
  }

  return v10;
}

- (BOOL)executeUpdateRequest:(id)a3 error:(id *)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [MEMORY[0x1E69966E8] currentEnvironment];
  v8 = [v7 featureFlags];
  v9 = [v8 isFeatureEnabled:22];

  if (v9)
  {
    v10 = [(CNContactPosterDataStore *)self->_store executeUpdateRequest:v6 error:a4];
  }

  else
  {
    v11 = +[CNContactPosterDataStore log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = v6;
      _os_log_impl(&dword_1954A0000, v11, OS_LOG_TYPE_DEFAULT, "Ignoring poster data update request (feature disabled): %@", &v13, 0xCu);
    }

    v10 = 1;
  }

  return v10;
}

@end
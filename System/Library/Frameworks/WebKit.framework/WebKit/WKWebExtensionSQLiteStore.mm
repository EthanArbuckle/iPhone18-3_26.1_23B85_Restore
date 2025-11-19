@interface WKWebExtensionSQLiteStore
@end

@implementation WKWebExtensionSQLiteStore

void __66___WKWebExtensionSQLiteStore_deleteDatabaseWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _deleteDatabase];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __66___WKWebExtensionSQLiteStore_deleteDatabaseWithCompletionHandler___block_invoke_2;
  v5[3] = &unk_1E762FD88;
  v3 = *(a1 + 40);
  v6 = v2;
  v7 = v3;
  v4 = v2;
  dispatch_async(MEMORY[0x1E69E96A0], v5);
}

void __67___WKWebExtensionSQLiteStore_createSavepointWithCompletionHandler___block_invoke(id *a1)
{
  v35 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v28 = 0;
    v5 = [v4 _openDatabaseIfNecessaryReturningErrorMessage:&v28];
    v6 = v28;

    if (v5)
    {
      v7 = v4;
      v8 = v7[3];
      v9 = objc_alloc(MEMORY[0x1E696AEC0]);
      v10 = v7;
      v11 = [v10 _savepointNameFromUUID:a1[4]];
      v12 = [v9 initWithFormat:@"SAVEPOINT %@", v11];
      v13 = WebKit::_SQLiteDatabaseExecuteAndReturnError<>(v8, 0, v12);

      if (v13 != 101)
      {
        v14 = qword_1ED640AB8;
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v18 = v10;
          v19 = v18[1];
          v20 = [v7[3] lastErrorMessage];
          *buf = 138478339;
          v30 = v19;
          v31 = 2114;
          v32 = v20;
          v33 = 1024;
          v34 = v13;
          _os_log_error_impl(&dword_19D52D000, v14, OS_LOG_TYPE_ERROR, "Failed to create storage savepoint for extension %{private}@. %{public}@ (%d)", buf, 0x1Cu);
        }

        v6 = @"Failed to create savepoint.";
      }

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __67___WKWebExtensionSQLiteStore_createSavepointWithCompletionHandler___block_invoke_49;
      block[3] = &unk_1E762FDB0;
      v24 = a1[5];
      v15 = v6;
      v22 = v15;
      v23 = a1[4];
      dispatch_async(MEMORY[0x1E69E96A0], block);

      v16 = &v24;
      v17 = &v22;
    }

    else
    {
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __67___WKWebExtensionSQLiteStore_createSavepointWithCompletionHandler___block_invoke_2;
      v25[3] = &unk_1E762FD88;
      v16 = &v27;
      v27 = a1[5];
      v17 = &v26;
      v15 = v6;
      v26 = v15;
      dispatch_async(MEMORY[0x1E69E96A0], v25);
    }
  }
}

uint64_t __67___WKWebExtensionSQLiteStore_createSavepointWithCompletionHandler___block_invoke_49(uint64_t a1)
{
  v2 = *(a1 + 48);
  if ([*(a1 + 32) length])
  {
    v3 = 0;
  }

  else
  {
    v3 = *(a1 + 40);
  }

  v4 = *(a1 + 32);
  v5 = *(v2 + 16);

  return v5(v2, v3, v4);
}

void __64___WKWebExtensionSQLiteStore_commitSavepoint_completionHandler___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v23 = 0;
    v5 = [v4 _openDatabaseIfNecessaryReturningErrorMessage:&v23];
    v6 = v23;

    if (v5)
    {
      v7 = v4;
      v8 = v7[3];
      v9 = objc_alloc(MEMORY[0x1E696AEC0]);
      v10 = v7;
      v11 = [v10 _savepointNameFromUUID:*(a1 + 32)];
      v12 = [v9 initWithFormat:@"RELEASE SAVEPOINT %@", v11];
      v13 = WebKit::_SQLiteDatabaseExecuteAndReturnError<>(v8, 0, v12);

      if (v13 != 101)
      {
        v14 = qword_1ED640AB8;
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v18 = v10;
          v19 = v18[1];
          v20 = [v7[3] lastErrorMessage];
          *buf = 138478339;
          v25 = v19;
          v26 = 2114;
          v27 = v20;
          v28 = 1024;
          v29 = v13;
          _os_log_error_impl(&dword_19D52D000, v14, OS_LOG_TYPE_ERROR, "Failed to release storage savepoint for extension %{private}@. %{public}@ (%d)", buf, 0x1Cu);
        }

        v6 = @"Failed to release savepoint.";
      }

      v15 = v21;
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v16 = __64___WKWebExtensionSQLiteStore_commitSavepoint_completionHandler___block_invoke_56;
    }

    else
    {
      v15 = v22;
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v16 = __64___WKWebExtensionSQLiteStore_commitSavepoint_completionHandler___block_invoke_2;
    }

    v15[2] = v16;
    v15[3] = &unk_1E762FD88;
    v15[5] = *(a1 + 40);
    v17 = v6;
    v15[4] = v17;
    dispatch_async(MEMORY[0x1E69E96A0], v15);
  }
}

void __68___WKWebExtensionSQLiteStore_rollbackToSavepoint_completionHandler___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v23 = 0;
    v5 = [v4 _openDatabaseIfNecessaryReturningErrorMessage:&v23];
    v6 = v23;

    if (v5)
    {
      v7 = v4;
      v8 = v7[3];
      v9 = objc_alloc(MEMORY[0x1E696AEC0]);
      v10 = v7;
      v11 = [v10 _savepointNameFromUUID:*(a1 + 32)];
      v12 = [v9 initWithFormat:@"ROLLBACK TO SAVEPOINT %@", v11];
      v13 = WebKit::_SQLiteDatabaseExecuteAndReturnError<>(v8, 0, v12);

      if (v13 != 101)
      {
        v14 = qword_1ED640AB8;
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v18 = v10;
          v19 = v18[1];
          v20 = [v7[3] lastErrorMessage];
          *buf = 138478339;
          v25 = v19;
          v26 = 2114;
          v27 = v20;
          v28 = 1024;
          v29 = v13;
          _os_log_error_impl(&dword_19D52D000, v14, OS_LOG_TYPE_ERROR, "Failed to rollback to storage savepoint for extension %{private}@. %{public}@ (%d)", buf, 0x1Cu);
        }

        v6 = @"Failed to rollback to savepoint.";
      }

      v15 = v21;
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v16 = __68___WKWebExtensionSQLiteStore_rollbackToSavepoint_completionHandler___block_invoke_63;
    }

    else
    {
      v15 = v22;
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v16 = __68___WKWebExtensionSQLiteStore_rollbackToSavepoint_completionHandler___block_invoke_2;
    }

    v15[2] = v16;
    v15[3] = &unk_1E762FD88;
    v15[5] = *(a1 + 40);
    v17 = v6;
    v15[4] = v17;
    dispatch_async(MEMORY[0x1E69E96A0], v15);
  }
}

@end
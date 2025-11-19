@interface PHPerformChangesInstrumentation
+ (PHPerformChangesInstrumentation)startPeformChangesWithName:(uint64_t)a1;
- (PHPerformChangesInstrumentation)init;
- (void)endPerformChangesWithSuccess:(void *)a3 error:;
- (void)initWithUUID:(void *)a1;
@end

@implementation PHPerformChangesInstrumentation

- (PHPerformChangesInstrumentation)init
{
  v3 = [MEMORY[0x1E696AFB0] UUID];
  v4 = [(PHPerformChangesInstrumentation *)self initWithUUID:v3];

  return v4;
}

- (void)initWithUUID:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    v7.receiver = a1;
    v7.super_class = PHPerformChangesInstrumentation;
    a1 = objc_msgSendSuper2(&v7, sel_init);
    if (a1)
    {
      v4 = [v3 copy];
      v5 = a1[8];
      a1[8] = v4;
    }
  }

  return a1;
}

+ (PHPerformChangesInstrumentation)startPeformChangesWithName:(uint64_t)a1
{
  v16 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v3 = objc_alloc_init(PHPerformChangesInstrumentation);
  v4 = v3;
  if (v3)
  {
    v3->_performChangesName = a2;
    v5 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      uuid = v4->_uuid;
      performChangesName = v4->_performChangesName;
      qos_class_self();
      v8 = PLStringFromQoSClass();
      v10 = 138543874;
      v11 = uuid;
      v12 = 2082;
      v13 = performChangesName;
      v14 = 2114;
      v15 = v8;
      _os_log_impl(&dword_19C86F000, v5, OS_LOG_TYPE_DEFAULT, "PhotoKit changes: [%{public}@] %{public}s called at %{public}@", &v10, 0x20u);
    }
  }

  return v4;
}

- (void)endPerformChangesWithSuccess:(void *)a3 error:
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a1)
  {
    v6 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 64);
      v8 = *(a1 + 8);
      qos_class_self();
      v9 = PLStringFromQoSClass();
      v10 = @"NO";
      if (a2)
      {
        v10 = @"YES";
      }

      v11 = v10;
      v12 = 138544386;
      v13 = v7;
      v14 = 2082;
      v15 = v8;
      v16 = 2114;
      v17 = v9;
      v18 = 2114;
      v19 = v11;
      v20 = 2112;
      v21 = v5;
      _os_log_impl(&dword_19C86F000, v6, OS_LOG_TYPE_DEFAULT, "PhotoKit changes: [%{public}@] %{public}s completed at %{public}@, success: %{public}@, error: %@", &v12, 0x34u);
    }

    *(a1 + 8) = 0;
  }
}

@end
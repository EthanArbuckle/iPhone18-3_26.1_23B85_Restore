@interface PHPerformChangesInstrumentation
+ (PHPerformChangesInstrumentation)startPeformChangesWithName:(uint64_t)name;
- (PHPerformChangesInstrumentation)init;
- (void)endPerformChangesWithSuccess:(void *)success error:;
- (void)initWithUUID:(void *)d;
@end

@implementation PHPerformChangesInstrumentation

- (PHPerformChangesInstrumentation)init
{
  uUID = [MEMORY[0x1E696AFB0] UUID];
  v4 = [(PHPerformChangesInstrumentation *)self initWithUUID:uUID];

  return v4;
}

- (void)initWithUUID:(void *)d
{
  v3 = a2;
  if (d)
  {
    v7.receiver = d;
    v7.super_class = PHPerformChangesInstrumentation;
    d = objc_msgSendSuper2(&v7, sel_init);
    if (d)
    {
      v4 = [v3 copy];
      v5 = d[8];
      d[8] = v4;
    }
  }

  return d;
}

+ (PHPerformChangesInstrumentation)startPeformChangesWithName:(uint64_t)name
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

- (void)endPerformChangesWithSuccess:(void *)success error:
{
  v22 = *MEMORY[0x1E69E9840];
  successCopy = success;
  if (self)
  {
    v6 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(self + 64);
      v8 = *(self + 8);
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
      v21 = successCopy;
      _os_log_impl(&dword_19C86F000, v6, OS_LOG_TYPE_DEFAULT, "PhotoKit changes: [%{public}@] %{public}s completed at %{public}@, success: %{public}@, error: %@", &v12, 0x34u);
    }

    *(self + 8) = 0;
  }
}

@end
@interface APDatabaseFileUtilities
+ (void)_moveCorruptedFileAtPath:(id)path;
+ (void)removeDatabaseAtPath:(id)path;
@end

@implementation APDatabaseFileUtilities

+ (void)removeDatabaseAtPath:(id)path
{
  v38 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  v7 = objc_msgSend_databaseDirectory(pathCopy, v4, v5, v6);
  v11 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v8, v9, v10);
  if (objc_msgSend_fileExistsAtPath_(v11, v12, v7, v13))
  {
    v31 = 0;
    v15 = objc_msgSend_removeItemAtPath_error_(v11, v14, v7, &v31);
    v16 = v31;
    if ((v15 & 1) == 0)
    {
      v17 = APLogForCategory(0xCuLL);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = objc_opt_class();
        v19 = v18;
        v23 = objc_msgSend_localizedFailureReason(v16, v20, v21, v22);
        v27 = objc_msgSend_userInfo(v16, v24, v25, v26);
        *buf = 138478339;
        v33 = v18;
        v34 = 2114;
        v35 = v23;
        v36 = 2114;
        v37 = v27;
        _os_log_impl(&dword_1BADC1000, v17, OS_LOG_TYPE_ERROR, "[%{private}@]: Failed to Remove Database: %{public}@ %{public}@", buf, 0x20u);
      }

      objc_msgSend__moveCorruptedFileAtPath_(APDatabaseFileUtilities, v28, pathCopy, v29);
    }
  }

  v30 = *MEMORY[0x1E69E9840];
}

+ (void)_moveCorruptedFileAtPath:(id)path
{
  pathCopy = path;
  v5 = dispatch_queue_create("com.apple.ap.database.corruptedfile.queue", 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1BAF1DEB8;
  v7[3] = &unk_1E7F1D250;
  v8 = pathCopy;
  selfCopy = self;
  v6 = pathCopy;
  dispatch_async(v5, v7);
}

@end
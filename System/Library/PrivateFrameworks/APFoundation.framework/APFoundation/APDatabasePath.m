@interface APDatabasePath
+ (Class)instanceClass;
+ (id)_databaseBundleDirectory;
+ (id)lockForPath;
+ (id)pathForName:(id)a3;
+ (id)pathToNameDictionary;
+ (void)_clearCachedPaths;
- (APDatabasePath)initWithDatabaseName:(id)a3;
- (id)databaseDirectory;
- (id)databaseFilePath;
- (id)migrationScriptsPath;
@end

@implementation APDatabasePath

+ (id)pathForName:(id)a3
{
  v4 = a3;
  v8 = objc_msgSend_lockForPath(APDatabasePath, v5, v6, v7);
  objc_msgSend_lock(v8, v9, v10, v11);
  v15 = objc_msgSend_pathToNameDictionary(a1, v12, v13, v14);
  v18 = objc_msgSend_objectForKey_(v15, v16, v4, v17);

  if (!v18)
  {
    v22 = objc_alloc(objc_msgSend_instanceClass(a1, v19, v20, v21));
    v18 = objc_msgSend_initWithDatabaseName_(v22, v23, v4, v24);
    v28 = objc_msgSend_pathToNameDictionary(a1, v25, v26, v27);
    objc_msgSend_setObject_forKey_(v28, v29, v18, v4);
  }

  objc_msgSend_unlock(v8, v19, v20, v21);

  return v18;
}

+ (id)pathToNameDictionary
{
  v4 = qword_1EDBA41A8;
  if (!qword_1EDBA41A8)
  {
    v5 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], a2, v2, v3);
    v6 = qword_1EDBA41A8;
    qword_1EDBA41A8 = v5;

    v4 = qword_1EDBA41A8;
  }

  return v4;
}

+ (id)lockForPath
{
  if (qword_1EDBA4130 != -1)
  {
    sub_1BAF8DDC0();
  }

  v3 = qword_1EDBA4138;

  return v3;
}

+ (Class)instanceClass
{
  v2 = qword_1EDBA41E0;
  if (!qword_1EDBA41E0)
  {
    v2 = objc_opt_class();
    qword_1EDBA41E0 = v2;
  }

  return v2;
}

+ (id)_databaseBundleDirectory
{
  v2 = NSSearchPathForDirectoriesInDomains(NSApplicationSupportDirectory, 1uLL, 1);
  v6 = objc_msgSend_lastObject(v2, v3, v4, v5);

  v10 = objc_msgSend_mainBundle(MEMORY[0x1E696AAE8], v7, v8, v9);
  v14 = objc_msgSend_bundleIdentifier(v10, v11, v12, v13);

  v17 = objc_msgSend_stringByAppendingPathComponent_(v6, v15, v14, v16);
  v20 = objc_msgSend_stringByAppendingPathComponent_(v17, v18, @"APDB", v19);

  return v20;
}

- (APDatabasePath)initWithDatabaseName:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = APDatabasePath;
  v6 = [(APDatabasePath *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_databaseName, a3);
  }

  return v7;
}

- (id)databaseDirectory
{
  v5 = objc_msgSend__databaseBundleDirectory(APDatabasePath, a2, v2, v3);
  v9 = objc_msgSend_databaseName(self, v6, v7, v8);
  v12 = objc_msgSend_stringByAppendingPathComponent_(v5, v10, v9, v11);

  return v12;
}

- (id)databaseFilePath
{
  v48 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], a2, v2, v3);
  v9 = objc_msgSend_databaseDirectory(self, v6, v7, v8);
  v41 = 0;
  v11 = objc_msgSend_createDirectoryAtPath_withIntermediateDirectories_attributes_error_(v5, v10, v9, 1, 0, &v41);
  v12 = v41;
  if (v11)
  {
    v13 = objc_alloc(MEMORY[0x1E696AEC0]);
    v17 = objc_msgSend_databaseName(self, v14, v15, v16);
    v20 = objc_msgSend_stringByAppendingPathExtension_(v17, v18, @"sql3", v19);
    v23 = objc_msgSend_stringByAppendingPathComponent_(v9, v21, v20, v22);
    v26 = objc_msgSend_initWithString_(v13, v24, v23, v25);
  }

  else
  {
    v17 = APLogForCategory(0xCuLL);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v30 = objc_msgSend_databaseName(self, v27, v28, v29);
      v34 = objc_msgSend_debugDescription(v12, v31, v32, v33);
      v38 = objc_msgSend_userInfo(v12, v35, v36, v37);
      *buf = 138543874;
      v43 = v30;
      v44 = 2114;
      v45 = v34;
      v46 = 2114;
      v47 = v38;
      _os_log_impl(&dword_1BADC1000, v17, OS_LOG_TYPE_ERROR, "Failed to create Database subdirectories for %{public}@, error: %{public}@, userInfo: %{public}@", buf, 0x20u);
    }

    v26 = 0;
  }

  v39 = *MEMORY[0x1E69E9840];

  return v26;
}

- (id)migrationScriptsPath
{
  v4 = objc_msgSend_bundleWithIdentifier_(MEMORY[0x1E696AAE8], a2, @"com.apple.ap.APFoundation", v2);
  v6 = v4;
  if (v4)
  {
    v10 = objc_msgSend_pathForResource_ofType_(v4, v5, @"DatabaseMigrationScritps", &stru_1F38FD5F0);
    if (v10)
    {
      v11 = objc_msgSend_databaseName(self, v7, v8, v9);
      v14 = objc_msgSend_stringByAppendingPathComponent_(v10, v12, v11, v13);
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (void)_clearCachedPaths
{
  v11 = objc_msgSend_lockForPath(APDatabasePath, a2, v2, v3);
  objc_msgSend_lock(v11, v4, v5, v6);
  v7 = qword_1EDBA41A8;
  qword_1EDBA41A8 = 0;

  objc_msgSend_unlock(v11, v8, v9, v10);
}

@end
@interface APDatabaseMigration
- (APDatabaseMigration)initWithDatabasePath:(id)a3;
- (id)_buildSortedURLs;
- (id)_getQueriesForFileAtURL:(id)a3;
- (int64_t)_getVersionFromFileAtURL:(id)a3;
- (int64_t)lastVersion;
@end

@implementation APDatabaseMigration

- (APDatabaseMigration)initWithDatabasePath:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = APDatabaseMigration;
  v6 = [(APDatabaseMigration *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_databasePath, a3);
    v11 = objc_msgSend__buildSortedURLs(v7, v8, v9, v10);
    sortedScriptsURLs = v7->_sortedScriptsURLs;
    v7->_sortedScriptsURLs = v11;
  }

  return v7;
}

- (int64_t)lastVersion
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_sortedScriptsURLs(self, a2, v2, v3);
  v9 = objc_msgSend_count(v5, v6, v7, v8);

  if (v9)
  {
    v13 = objc_msgSend_sortedScriptsURLs(self, v10, v11, v12);
    v17 = objc_msgSend_lastObject(v13, v14, v15, v16);

    VersionFromFileAtURL = objc_msgSend__getVersionFromFileAtURL_(self, v18, v17, v19);
    v21 = *MEMORY[0x1E69E9840];
    return VersionFromFileAtURL;
  }

  else
  {
    v23 = APLogForCategory(0xCuLL);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v26 = 138477827;
      v27 = objc_opt_class();
      v24 = v27;
      _os_log_impl(&dword_1BADC1000, v23, OS_LOG_TYPE_ERROR, "[%{private}@]: Error: No migration files found.", &v26, 0xCu);
    }

    v25 = *MEMORY[0x1E69E9840];
    return 0;
  }
}

- (id)_getQueriesForFileAtURL:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v7 = objc_msgSend_dataWithContentsOfURL_(MEMORY[0x1E695DEF0], v4, v3, v5);
  if (v7)
  {
    v28 = 0;
    v8 = objc_msgSend_propertyListWithData_options_format_error_(MEMORY[0x1E696AE40], v6, v7, 0, 0, &v28);
    v11 = v28;
    if (v11)
    {
      v12 = APLogForCategory(0xCuLL);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = objc_opt_class();
        v14 = v13;
        v18 = objc_msgSend_localizedDescription(v11, v15, v16, v17);
        *buf = 138478083;
        v30 = v13;
        v31 = 2114;
        v32 = v18;
        _os_log_impl(&dword_1BADC1000, v12, OS_LOG_TYPE_ERROR, "[%{private}@]: Error: Could not create dictionary from data: %{public}@.", buf, 0x16u);
      }

      v19 = 0;
    }

    else
    {
      v19 = objc_msgSend_objectForKey_(v8, v9, @"Queries", v10);
    }
  }

  else
  {
    v11 = APLogForCategory(0xCuLL);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v20 = objc_opt_class();
      v21 = v20;
      v25 = objc_msgSend_absoluteString(v3, v22, v23, v24);
      *buf = 138478083;
      v30 = v20;
      v31 = 2113;
      v32 = v25;
      _os_log_impl(&dword_1BADC1000, v11, OS_LOG_TYPE_ERROR, "[%{private}@]: Error: No data found at path: %{private}@.", buf, 0x16u);
    }

    v19 = 0;
  }

  v26 = *MEMORY[0x1E69E9840];

  return v19;
}

- (id)_buildSortedURLs
{
  v38[1] = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_databasePath(self, a2, v2, v3);
  v8 = objc_msgSend_migrationScriptsPath(v4, v5, v6, v7);

  if (v8)
  {
    v11 = objc_msgSend_fileURLWithPath_(MEMORY[0x1E695DFF8], v9, v8, v10);
    v15 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v12, v13, v14);
    v38[0] = *MEMORY[0x1E695DC30];
    v17 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v16, v38, 1);
    v33 = 0;
    v19 = objc_msgSend_contentsOfDirectoryAtURL_includingPropertiesForKeys_options_error_(v15, v18, v11, v17, 4, &v33);
    v20 = v33;

    if (v20)
    {
      v23 = APLogForCategory(0xCuLL);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = objc_opt_class();
        v25 = v24;
        v29 = objc_msgSend_localizedDescription(v20, v26, v27, v28);
        *buf = 138478083;
        v35 = v24;
        v36 = 2114;
        v37 = v29;
        _os_log_impl(&dword_1BADC1000, v23, OS_LOG_TYPE_ERROR, "[%{private}@]: Error: Could not get contents of directory: %{public}@.", buf, 0x16u);
      }

      v30 = MEMORY[0x1E695E0F0];
    }

    else
    {
      v30 = objc_msgSend_sortedArrayUsingComparator_(v19, v21, &unk_1F38F47E0, v22);
    }
  }

  else
  {
    v30 = MEMORY[0x1E695E0F0];
  }

  v31 = *MEMORY[0x1E69E9840];

  return v30;
}

- (int64_t)_getVersionFromFileAtURL:(id)a3
{
  v4 = objc_msgSend_lastPathComponent(a3, a2, a3, v3);
  v8 = objc_msgSend_stringByDeletingPathExtension(v4, v5, v6, v7);
  v12 = objc_msgSend_integerValue(v8, v9, v10, v11);

  return v12;
}

@end
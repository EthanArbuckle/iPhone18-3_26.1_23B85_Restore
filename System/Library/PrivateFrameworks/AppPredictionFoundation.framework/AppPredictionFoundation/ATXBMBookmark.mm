@interface ATXBMBookmark
+ (BOOL)_fileExistsAtPath:(id)a3;
+ (BOOL)_fileSizeWithinLimitsForPath:(id)a3 maxFileSize:(unint64_t)a4;
+ (BOOL)_saveData:(id)a3 toFileURL:(id)a4 outError:(id *)a5;
+ (id)_dataFromPath:(id)a3;
+ (id)bookmarkFromData:(id)a3 bookmarkLocation:(id)a4 versionNumber:(id)a5;
+ (id)bookmarkFromURLPath:(id)a3 maxFileSize:(unint64_t)a4 versionNumber:(id)a5;
- (ATXBMBookmark)initWithCoder:(id)a3;
- (ATXBMBookmark)initWithURLPath:(id)a3 versionNumber:(id)a4 bookmark:(id)a5 metadata:(id)a6;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToATXBMBookmark:(id)a3;
- (BOOL)saveBookmarkWithError:(id *)a3;
- (id)allowedClassesForBookmarkSecureCoding;
- (id)serializeBookmark:(id *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXBMBookmark

- (id)allowedClassesForBookmarkSecureCoding
{
  v2 = objc_alloc(MEMORY[0x277CBEB58]);
  v3 = [MEMORY[0x277CCA910] bm_allowedClassesForSecureCodingBMBookmark];
  v4 = [v2 initWithSet:v3];

  __54__ATXBMBookmark_allowedClassesForBookmarkSecureCoding__block_invoke(v5, v4, &cfstr_Atxfakebookmar.isa);
  __54__ATXBMBookmark_allowedClassesForBookmarkSecureCoding__block_invoke(v6, v4, &cfstr_Bmstorebookmar.isa);
  __54__ATXBMBookmark_allowedClassesForBookmarkSecureCoding__block_invoke(v7, v4, &cfstr_Atxblendingbio.isa);
  __54__ATXBMBookmark_allowedClassesForBookmarkSecureCoding__block_invoke(v8, v4, &cfstr_Atxuifeedbackp.isa);
  __54__ATXBMBookmark_allowedClassesForBookmarkSecureCoding__block_invoke(v9, v4, &cfstr_Atxsecurecoded.isa);
  __54__ATXBMBookmark_allowedClassesForBookmarkSecureCoding__block_invoke(v10, v4, &cfstr_Atxproactivesu_0.isa);
  __54__ATXBMBookmark_allowedClassesForBookmarkSecureCoding__block_invoke(v11, v4, &cfstr_Atxproactivesu.isa);
  v12 = MEMORY[0x277CCA910];
  v13 = [v4 allObjects];
  [v12 bm_allowClassesForSecureCodingBMBookmark:v13];

  v14 = [v4 copy];

  return v14;
}

void __54__ATXBMBookmark_allowedClassesForBookmarkSecureCoding__block_invoke(uint64_t a1, void *a2, NSString *a3)
{
  v5 = a2;
  v4 = NSClassFromString(a3);
  if (v4)
  {
    [v5 addObject:v4];
  }
}

+ (id)bookmarkFromData:(id)a3 bookmarkLocation:(id)a4 versionNumber:(id)a5
{
  v33 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_autoreleasePoolPush();
  v26 = 0;
  v12 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v8 error:&v26];
  v13 = v26;
  objc_autoreleasePoolPop(v11);
  if (v13 || !v12)
  {
    v17 = __atxlog_handle_default();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
    if (!v9)
    {
      if (v18)
      {
        +[ATXBMBookmark bookmarkFromData:bookmarkLocation:versionNumber:];
      }

      goto LABEL_17;
    }

    if (v18)
    {
      v19 = NSStringFromClass(a1);
      *buf = 138412802;
      v28 = v19;
      v29 = 2112;
      v30 = v9;
      v31 = 2112;
      v32 = v13;
      _os_log_error_impl(&dword_226368000, v17, OS_LOG_TYPE_ERROR, "%@ - failed to unarchive bookmark at %@ with error: %@", buf, 0x20u);
LABEL_16:
    }
  }

  else
  {
    v14 = [v12 versionNumber];
    v15 = [v14 isEqualToNumber:v10];

    if (v15)
    {
      v16 = v12;
      goto LABEL_18;
    }

    v17 = __atxlog_handle_default();
    v20 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
    if (v9)
    {
      if (v20)
      {
        v19 = NSStringFromClass(a1);
        *buf = 138412546;
        v28 = v19;
        v29 = 2112;
        v30 = v9;
        v21 = "%@ - version number changed for bookmark at %@";
        v22 = v17;
        v23 = 22;
LABEL_15:
        _os_log_impl(&dword_226368000, v22, OS_LOG_TYPE_DEFAULT, v21, buf, v23);
        goto LABEL_16;
      }
    }

    else if (v20)
    {
      v19 = NSStringFromClass(a1);
      *buf = 138412290;
      v28 = v19;
      v21 = "%@ - version number changed for bookmark";
      v22 = v17;
      v23 = 12;
      goto LABEL_15;
    }
  }

LABEL_17:

  v16 = 0;
LABEL_18:

  v24 = *MEMORY[0x277D85DE8];

  return v16;
}

+ (id)bookmarkFromURLPath:(id)a3 maxFileSize:(unint64_t)a4 versionNumber:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [v8 path];
  if ([a1 _fileExistsAtPath:v10])
  {
    if ([a1 _fileSizeWithinLimitsForPath:v10 maxFileSize:a4])
    {
      v11 = objc_autoreleasePoolPush();
      v12 = [a1 _dataFromPath:v10];
      objc_autoreleasePoolPop(v11);
      if (v12)
      {
        v13 = [a1 bookmarkFromData:v12 bookmarkLocation:v10 versionNumber:v9];
        goto LABEL_13;
      }

      v14 = __atxlog_handle_default();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        +[ATXBMBookmark bookmarkFromURLPath:maxFileSize:versionNumber:];
      }
    }

    else
    {
      v12 = __atxlog_handle_default();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        +[ATXBMBookmark bookmarkFromURLPath:maxFileSize:versionNumber:];
      }
    }
  }

  else
  {
    v12 = __atxlog_handle_default();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      +[ATXBMBookmark bookmarkFromURLPath:maxFileSize:versionNumber:];
    }
  }

  v13 = 0;
LABEL_13:

  return v13;
}

- (ATXBMBookmark)initWithURLPath:(id)a3 versionNumber:(id)a4 bookmark:(id)a5 metadata:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v20.receiver = self;
  v20.super_class = ATXBMBookmark;
  v14 = [(ATXBMBookmark *)&v20 init];
  if (v14)
  {
    v15 = [v10 copy];
    urlPath = v14->_urlPath;
    v14->_urlPath = v15;

    objc_storeStrong(&v14->_versionNumber, a4);
    objc_storeStrong(&v14->_bookmark, a5);
    v17 = [v13 copy];
    metadata = v14->_metadata;
    v14->_metadata = v17;
  }

  return v14;
}

- (id)serializeBookmark:(id *)a3
{
  v5 = objc_autoreleasePoolPush();
  v13 = 0;
  v6 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:self requiringSecureCoding:1 error:&v13];
  v7 = v13;
  objc_autoreleasePoolPop(v5);
  if (v6)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    v11 = v6;
  }

  else
  {
    v9 = __atxlog_handle_default();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [ATXBMBookmark serializeBookmark:];
    }

    if (a3)
    {
      v10 = v7;
      v11 = 0;
      *a3 = v7;
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (BOOL)saveBookmarkWithError:(id *)a3
{
  if (self->_urlPath)
  {
    v5 = [(ATXBMBookmark *)self serializeBookmark:?];
    if (v5)
    {
      v6 = [ATXBMBookmark _saveData:v5 toFileURL:self->_urlPath outError:a3];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v7 = __atxlog_handle_default();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [ATXBMBookmark saveBookmarkWithError:];
    }

    return 0;
  }

  return v6;
}

+ (BOOL)_fileExistsAtPath:(id)a3
{
  v3 = MEMORY[0x277CCAA00];
  v4 = a3;
  v5 = [v3 defaultManager];
  v6 = [v5 fileExistsAtPath:v4];

  return v6;
}

+ (BOOL)_fileSizeWithinLimitsForPath:(id)a3 maxFileSize:(unint64_t)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [MEMORY[0x277CCAA00] defaultManager];
  v18 = 0;
  v8 = [v7 attributesOfItemAtPath:v6 error:&v18];
  v9 = v18;

  if (!v8)
  {
    v10 = __atxlog_handle_default();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      +[ATXBMBookmark _fileSizeWithinLimitsForPath:maxFileSize:];
    }

    goto LABEL_7;
  }

  if (v9)
  {
    v10 = __atxlog_handle_default();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = NSStringFromClass(a1);
      *buf = 138412802;
      v20 = v11;
      v21 = 2112;
      v22 = v6;
      v23 = 2112;
      v24 = v9;
      _os_log_error_impl(&dword_226368000, v10, OS_LOG_TYPE_ERROR, "%@ - file manager error for path %@, err: %@", buf, 0x20u);
    }

LABEL_7:

    v12 = 0;
    goto LABEL_11;
  }

  v13 = [v8 fileSize];
  v14 = __atxlog_handle_default();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = NSStringFromClass(a1);
    *buf = 138412802;
    v20 = v15;
    v21 = 2112;
    v22 = v6;
    v23 = 2048;
    v24 = v13;
    _os_log_impl(&dword_226368000, v14, OS_LOG_TYPE_DEFAULT, "%@ - file size on disk for path %@ is %llu", buf, 0x20u);
  }

  v12 = v13 <= a4;
LABEL_11:

  v16 = *MEMORY[0x277D85DE8];
  return v12;
}

+ (id)_dataFromPath:(id)a3
{
  v3 = [MEMORY[0x277CCA9F8] fileHandleForReadingAtPath:a3];
  v4 = v3;
  if (v3)
  {
    v12 = 0;
    v5 = [v3 readDataToEndOfFileAndReturnError:&v12];
    v6 = v12;
    v7 = v6;
    if (v5)
    {
      v8 = v6 == 0;
    }

    else
    {
      v8 = 0;
    }

    if (v8)
    {
      v10 = v5;
    }

    else
    {
      v9 = __atxlog_handle_default();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        +[ATXBMBookmark _dataFromPath:];
      }

      v10 = 0;
    }
  }

  else
  {
    v7 = __atxlog_handle_default();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_226368000, v7, OS_LOG_TYPE_DEFAULT, "Unable to acquire readonly handle to cache file.", buf, 2u);
    }

    v10 = 0;
  }

  return v10;
}

+ (BOOL)_saveData:(id)a3 toFileURL:(id)a4 outError:(id *)a5
{
  v47[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v8)
  {
    if (v7)
    {
      v10 = [v8 URLByDeletingLastPathComponent];
      v11 = __atxlog_handle_default();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        *buf = 138412546;
        v39 = v13;
        v40 = 2112;
        v41 = v10;
        _os_log_impl(&dword_226368000, v11, OS_LOG_TYPE_DEFAULT, "%@ - attempting to save data with directoryURL: %@", buf, 0x16u);
      }

      v14 = __atxlog_handle_default();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = objc_opt_class();
        v16 = NSStringFromClass(v15);
        *buf = 138412546;
        v39 = v16;
        v40 = 2112;
        v41 = v9;
        _os_log_impl(&dword_226368000, v14, OS_LOG_TYPE_DEFAULT, "%@ - attempting to save data with fileURL: %@", buf, 0x16u);
      }

      v17 = [MEMORY[0x277CCAA00] defaultManager];
      v37 = 0;
      v18 = [v17 createDirectoryAtURL:v10 withIntermediateDirectories:1 attributes:0 error:&v37];
      v19 = v37;

      if (!v18 || v19)
      {
        v30 = __atxlog_handle_default();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          v34 = objc_opt_class();
          v35 = NSStringFromClass(v34);
          *buf = 138412802;
          v39 = v35;
          v40 = 2112;
          v41 = v10;
          v42 = 2112;
          v43 = v19;
          _os_log_error_impl(&dword_226368000, v30, OS_LOG_TYPE_ERROR, "%@ - could not create directory at path: %@ with err: %@", buf, 0x20u);
        }

        if (a5)
        {
          v31 = v19;
          v20 = 0;
          *a5 = v19;
        }

        else
        {
          v20 = 0;
        }
      }

      else
      {
        v36 = 0;
        v20 = [v7 writeToURL:v9 options:1073741825 error:&v36];
        v21 = v36;
        if ((v20 & 1) == 0)
        {
          v22 = __atxlog_handle_default();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            +[ATXBMBookmark _saveData:toFileURL:outError:];
          }

          if (a5)
          {
            v23 = v21;
            *a5 = v21;
          }
        }
      }

      goto LABEL_31;
    }

    v29 = __atxlog_handle_default();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
    {
      +[ATXBMBookmark _saveData:toFileURL:outError:];
    }

    if (a5)
    {
      v25 = objc_alloc(MEMORY[0x277CCA9B8]);
      v44 = *MEMORY[0x277CCA450];
      v45 = @"_saveDatatoFileURL called without data";
      v26 = MEMORY[0x277CBEAC0];
      v27 = &v45;
      v28 = &v44;
      goto LABEL_23;
    }
  }

  else
  {
    v24 = __atxlog_handle_default();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
    {
      +[ATXBMBookmark _saveData:toFileURL:outError:];
    }

    if (a5)
    {
      v25 = objc_alloc(MEMORY[0x277CCA9B8]);
      v46 = *MEMORY[0x277CCA450];
      v47[0] = @"Attempting to save data without a path is forbidden.";
      v26 = MEMORY[0x277CBEAC0];
      v27 = v47;
      v28 = &v46;
LABEL_23:
      v10 = [v26 dictionaryWithObjects:v27 forKeys:v28 count:1];
      v20 = 0;
      *a5 = [v25 initWithDomain:@"ATXBMBookmark" code:-1 userInfo:v10];
LABEL_31:

      goto LABEL_32;
    }
  }

  v20 = 0;
LABEL_32:

  v32 = *MEMORY[0x277D85DE8];
  return v20;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXBMBookmark *)self isEqualToATXBMBookmark:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXBMBookmark:(id)a3
{
  v4 = a3;
  v5 = self->_urlPath;
  v6 = v5;
  if (v5 == v4[1])
  {
  }

  else
  {
    v7 = [(NSURL *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  v8 = self->_versionNumber;
  v9 = v8;
  if (v8 == v4[2])
  {
  }

  else
  {
    v10 = [(NSNumber *)v8 isEqual:?];

    if ((v10 & 1) == 0)
    {
LABEL_7:
      v11 = 0;
      goto LABEL_13;
    }
  }

  v12 = self->_metadata;
  v13 = v12;
  if (v12 == v4[4])
  {
    v11 = 1;
  }

  else
  {
    v11 = [(NSDictionary *)v12 isEqual:?];
  }

LABEL_13:
  return v11;
}

- (unint64_t)hash
{
  v3 = [(NSURL *)self->_urlPath hash];
  v4 = [(NSNumber *)self->_versionNumber hash]- v3 + 32 * v3;
  return [(NSDictionary *)self->_metadata hash]- v4 + 32 * v4;
}

- (void)encodeWithCoder:(id)a3
{
  urlPath = self->_urlPath;
  v5 = a3;
  [v5 encodeObject:urlPath forKey:@"urlPath"];
  [v5 encodeObject:self->_versionNumber forKey:@"versionNumber"];
  [v5 encodeObject:self->_bookmark forKey:@"bookmark"];
  [v5 encodeObject:self->_metadata forKey:@"metadata"];
}

- (ATXBMBookmark)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277D42620];
  v6 = objc_opt_class();
  v7 = __atxlog_handle_default();
  v8 = [v5 robustDecodeObjectOfClass:v6 forKey:@"urlPath" withCoder:v4 expectNonNull:0 errorDomain:@"com.apple.duetexpertd.ATXBMBookmark" errorCode:-1 logHandle:v7];

  v9 = [v4 error];

  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v11 = MEMORY[0x277D42620];
    v12 = objc_opt_class();
    v13 = __atxlog_handle_default();
    v14 = [v11 robustDecodeObjectOfClass:v12 forKey:@"versionNumber" withCoder:v4 expectNonNull:0 errorDomain:@"com.apple.duetexpertd.ATXBMBookmark" errorCode:-1 logHandle:v13];

    v15 = [v4 error];

    v10 = 0;
    if (!v15 && v14)
    {
      v16 = MEMORY[0x277D42620];
      v17 = [(ATXBMBookmark *)self allowedClassesForBookmarkSecureCoding];
      v18 = __atxlog_handle_default();
      v19 = [v16 robustDecodeObjectOfClasses:v17 forKey:@"bookmark" withCoder:v4 expectNonNull:0 errorDomain:@"com.apple.duetexpertd.ATXBMBookmark" errorCode:-1 logHandle:v18];

      v20 = [v4 error];

      if (v20)
      {
        v21 = __atxlog_handle_default();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          [ATXBMBookmark initWithCoder:];
        }

        v10 = 0;
      }

      else
      {
        v35 = v19;
        context = objc_autoreleasePoolPush();
        v33 = objc_alloc(MEMORY[0x277CBEB98]);
        v22 = objc_opt_class();
        v23 = objc_opt_class();
        v24 = objc_opt_class();
        v25 = objc_opt_class();
        v26 = objc_opt_class();
        v27 = [v33 initWithObjects:{v22, v23, v24, v25, v26, objc_opt_class(), 0}];
        objc_autoreleasePoolPop(context);
        v28 = MEMORY[0x277D42620];
        v29 = __atxlog_handle_default();
        v30 = [v28 robustDecodeObjectOfClasses:v27 forKey:@"metadata" withCoder:v4 expectNonNull:0 errorDomain:@"com.apple.duetexpertd.ATXBMBookmark" errorCode:-1 logHandle:v29];

        v31 = [v4 error];

        if (v31)
        {
          v10 = 0;
          v19 = v35;
        }

        else
        {
          v19 = v35;
          self = [(ATXBMBookmark *)self initWithURLPath:v8 versionNumber:v14 bookmark:v35 metadata:v30];
          v10 = self;
        }
      }
    }
  }

  return v10;
}

+ (void)bookmarkFromData:bookmarkLocation:versionNumber:.cold.1()
{
  OUTLINED_FUNCTION_4_1();
  v10 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_1_3(&dword_226368000, v2, v3, "%@ - failed to unarchive bookmark with error: %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

+ (void)bookmarkFromURLPath:maxFileSize:versionNumber:.cold.1()
{
  OUTLINED_FUNCTION_4_1();
  v10 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_1_3(&dword_226368000, v2, v3, "%@ - bookmark file doesn't exist at path %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

+ (void)bookmarkFromURLPath:maxFileSize:versionNumber:.cold.2()
{
  OUTLINED_FUNCTION_4_1();
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_2_1();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

+ (void)bookmarkFromURLPath:maxFileSize:versionNumber:.cold.3()
{
  OUTLINED_FUNCTION_4_1();
  v10 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_1_3(&dword_226368000, v2, v3, "%@ - could not read serialized data for bookmark at path %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)serializeBookmark:.cold.1()
{
  OUTLINED_FUNCTION_4_1();
  v8 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_2_1();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)saveBookmarkWithError:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_2_1();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

+ (void)_fileSizeWithinLimitsForPath:maxFileSize:.cold.1()
{
  OUTLINED_FUNCTION_4_1();
  v10 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_1_3(&dword_226368000, v2, v3, "%@ - failed to retrieve attributes for path %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

+ (void)_dataFromPath:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  v4 = 2112;
  v5 = v0;
  _os_log_error_impl(&dword_226368000, v1, OS_LOG_TYPE_ERROR, "Unable to read data from file handle %@ - %@", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)_saveData:toFileURL:outError:.cold.1()
{
  OUTLINED_FUNCTION_4_1();
  v10 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_1_3(&dword_226368000, v2, v3, "%@ - could not write data file with error: %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

+ (void)_saveData:toFileURL:outError:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_2_1();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

+ (void)_saveData:toFileURL:outError:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_2_1();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)initWithCoder:.cold.1()
{
  OUTLINED_FUNCTION_4_1();
  v11 = *MEMORY[0x277D85DE8];
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  v10 = [v0 error];
  OUTLINED_FUNCTION_1_3(&dword_226368000, v3, v4, "%@ - failed to decode id<BMBookmark> with error: %@", v5, v6, v7, v8, 2u);

  v9 = *MEMORY[0x277D85DE8];
}

@end
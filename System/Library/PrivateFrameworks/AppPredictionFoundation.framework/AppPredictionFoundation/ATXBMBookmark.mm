@interface ATXBMBookmark
+ (BOOL)_fileExistsAtPath:(id)path;
+ (BOOL)_fileSizeWithinLimitsForPath:(id)path maxFileSize:(unint64_t)size;
+ (BOOL)_saveData:(id)data toFileURL:(id)l outError:(id *)error;
+ (id)_dataFromPath:(id)path;
+ (id)bookmarkFromData:(id)data bookmarkLocation:(id)location versionNumber:(id)number;
+ (id)bookmarkFromURLPath:(id)path maxFileSize:(unint64_t)size versionNumber:(id)number;
- (ATXBMBookmark)initWithCoder:(id)coder;
- (ATXBMBookmark)initWithURLPath:(id)path versionNumber:(id)number bookmark:(id)bookmark metadata:(id)metadata;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToATXBMBookmark:(id)bookmark;
- (BOOL)saveBookmarkWithError:(id *)error;
- (id)allowedClassesForBookmarkSecureCoding;
- (id)serializeBookmark:(id *)bookmark;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXBMBookmark

- (id)allowedClassesForBookmarkSecureCoding
{
  v2 = objc_alloc(MEMORY[0x277CBEB58]);
  bm_allowedClassesForSecureCodingBMBookmark = [MEMORY[0x277CCA910] bm_allowedClassesForSecureCodingBMBookmark];
  v4 = [v2 initWithSet:bm_allowedClassesForSecureCodingBMBookmark];

  __54__ATXBMBookmark_allowedClassesForBookmarkSecureCoding__block_invoke(v5, v4, &cfstr_Atxfakebookmar.isa);
  __54__ATXBMBookmark_allowedClassesForBookmarkSecureCoding__block_invoke(v6, v4, &cfstr_Bmstorebookmar.isa);
  __54__ATXBMBookmark_allowedClassesForBookmarkSecureCoding__block_invoke(v7, v4, &cfstr_Atxblendingbio.isa);
  __54__ATXBMBookmark_allowedClassesForBookmarkSecureCoding__block_invoke(v8, v4, &cfstr_Atxuifeedbackp.isa);
  __54__ATXBMBookmark_allowedClassesForBookmarkSecureCoding__block_invoke(v9, v4, &cfstr_Atxsecurecoded.isa);
  __54__ATXBMBookmark_allowedClassesForBookmarkSecureCoding__block_invoke(v10, v4, &cfstr_Atxproactivesu_0.isa);
  __54__ATXBMBookmark_allowedClassesForBookmarkSecureCoding__block_invoke(v11, v4, &cfstr_Atxproactivesu.isa);
  v12 = MEMORY[0x277CCA910];
  allObjects = [v4 allObjects];
  [v12 bm_allowClassesForSecureCodingBMBookmark:allObjects];

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

+ (id)bookmarkFromData:(id)data bookmarkLocation:(id)location versionNumber:(id)number
{
  v33 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  locationCopy = location;
  numberCopy = number;
  v11 = objc_autoreleasePoolPush();
  v26 = 0;
  v12 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:dataCopy error:&v26];
  v13 = v26;
  objc_autoreleasePoolPop(v11);
  if (v13 || !v12)
  {
    v17 = __atxlog_handle_default();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
    if (!locationCopy)
    {
      if (v18)
      {
        +[ATXBMBookmark bookmarkFromData:bookmarkLocation:versionNumber:];
      }

      goto LABEL_17;
    }

    if (v18)
    {
      v19 = NSStringFromClass(self);
      *buf = 138412802;
      v28 = v19;
      v29 = 2112;
      v30 = locationCopy;
      v31 = 2112;
      v32 = v13;
      _os_log_error_impl(&dword_226368000, v17, OS_LOG_TYPE_ERROR, "%@ - failed to unarchive bookmark at %@ with error: %@", buf, 0x20u);
LABEL_16:
    }
  }

  else
  {
    versionNumber = [v12 versionNumber];
    v15 = [versionNumber isEqualToNumber:numberCopy];

    if (v15)
    {
      v16 = v12;
      goto LABEL_18;
    }

    v17 = __atxlog_handle_default();
    v20 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
    if (locationCopy)
    {
      if (v20)
      {
        v19 = NSStringFromClass(self);
        *buf = 138412546;
        v28 = v19;
        v29 = 2112;
        v30 = locationCopy;
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
      v19 = NSStringFromClass(self);
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

+ (id)bookmarkFromURLPath:(id)path maxFileSize:(unint64_t)size versionNumber:(id)number
{
  pathCopy = path;
  numberCopy = number;
  path = [pathCopy path];
  if ([self _fileExistsAtPath:path])
  {
    if ([self _fileSizeWithinLimitsForPath:path maxFileSize:size])
    {
      v11 = objc_autoreleasePoolPush();
      v12 = [self _dataFromPath:path];
      objc_autoreleasePoolPop(v11);
      if (v12)
      {
        v13 = [self bookmarkFromData:v12 bookmarkLocation:path versionNumber:numberCopy];
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

- (ATXBMBookmark)initWithURLPath:(id)path versionNumber:(id)number bookmark:(id)bookmark metadata:(id)metadata
{
  pathCopy = path;
  numberCopy = number;
  bookmarkCopy = bookmark;
  metadataCopy = metadata;
  v20.receiver = self;
  v20.super_class = ATXBMBookmark;
  v14 = [(ATXBMBookmark *)&v20 init];
  if (v14)
  {
    v15 = [pathCopy copy];
    urlPath = v14->_urlPath;
    v14->_urlPath = v15;

    objc_storeStrong(&v14->_versionNumber, number);
    objc_storeStrong(&v14->_bookmark, bookmark);
    v17 = [metadataCopy copy];
    metadata = v14->_metadata;
    v14->_metadata = v17;
  }

  return v14;
}

- (id)serializeBookmark:(id *)bookmark
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

    if (bookmark)
    {
      v10 = v7;
      v11 = 0;
      *bookmark = v7;
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (BOOL)saveBookmarkWithError:(id *)error
{
  if (self->_urlPath)
  {
    v5 = [(ATXBMBookmark *)self serializeBookmark:?];
    if (v5)
    {
      v6 = [ATXBMBookmark _saveData:v5 toFileURL:self->_urlPath outError:error];
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

+ (BOOL)_fileExistsAtPath:(id)path
{
  v3 = MEMORY[0x277CCAA00];
  pathCopy = path;
  defaultManager = [v3 defaultManager];
  v6 = [defaultManager fileExistsAtPath:pathCopy];

  return v6;
}

+ (BOOL)_fileSizeWithinLimitsForPath:(id)path maxFileSize:(unint64_t)size
{
  v25 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v18 = 0;
  v8 = [defaultManager attributesOfItemAtPath:pathCopy error:&v18];
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
      v11 = NSStringFromClass(self);
      *buf = 138412802;
      v20 = v11;
      v21 = 2112;
      v22 = pathCopy;
      v23 = 2112;
      v24 = v9;
      _os_log_error_impl(&dword_226368000, v10, OS_LOG_TYPE_ERROR, "%@ - file manager error for path %@, err: %@", buf, 0x20u);
    }

LABEL_7:

    v12 = 0;
    goto LABEL_11;
  }

  fileSize = [v8 fileSize];
  v14 = __atxlog_handle_default();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = NSStringFromClass(self);
    *buf = 138412802;
    v20 = v15;
    v21 = 2112;
    v22 = pathCopy;
    v23 = 2048;
    v24 = fileSize;
    _os_log_impl(&dword_226368000, v14, OS_LOG_TYPE_DEFAULT, "%@ - file size on disk for path %@ is %llu", buf, 0x20u);
  }

  v12 = fileSize <= size;
LABEL_11:

  v16 = *MEMORY[0x277D85DE8];
  return v12;
}

+ (id)_dataFromPath:(id)path
{
  v3 = [MEMORY[0x277CCA9F8] fileHandleForReadingAtPath:path];
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

+ (BOOL)_saveData:(id)data toFileURL:(id)l outError:(id *)error
{
  v47[1] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  lCopy = l;
  v9 = lCopy;
  if (lCopy)
  {
    if (dataCopy)
    {
      uRLByDeletingLastPathComponent = [lCopy URLByDeletingLastPathComponent];
      v11 = __atxlog_handle_default();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        *buf = 138412546;
        v39 = v13;
        v40 = 2112;
        v41 = uRLByDeletingLastPathComponent;
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

      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      v37 = 0;
      v18 = [defaultManager createDirectoryAtURL:uRLByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:&v37];
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
          v41 = uRLByDeletingLastPathComponent;
          v42 = 2112;
          v43 = v19;
          _os_log_error_impl(&dword_226368000, v30, OS_LOG_TYPE_ERROR, "%@ - could not create directory at path: %@ with err: %@", buf, 0x20u);
        }

        if (error)
        {
          v31 = v19;
          v20 = 0;
          *error = v19;
        }

        else
        {
          v20 = 0;
        }
      }

      else
      {
        v36 = 0;
        v20 = [dataCopy writeToURL:v9 options:1073741825 error:&v36];
        v21 = v36;
        if ((v20 & 1) == 0)
        {
          v22 = __atxlog_handle_default();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            +[ATXBMBookmark _saveData:toFileURL:outError:];
          }

          if (error)
          {
            v23 = v21;
            *error = v21;
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

    if (error)
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

    if (error)
    {
      v25 = objc_alloc(MEMORY[0x277CCA9B8]);
      v46 = *MEMORY[0x277CCA450];
      v47[0] = @"Attempting to save data without a path is forbidden.";
      v26 = MEMORY[0x277CBEAC0];
      v27 = v47;
      v28 = &v46;
LABEL_23:
      uRLByDeletingLastPathComponent = [v26 dictionaryWithObjects:v27 forKeys:v28 count:1];
      v20 = 0;
      *error = [v25 initWithDomain:@"ATXBMBookmark" code:-1 userInfo:uRLByDeletingLastPathComponent];
LABEL_31:

      goto LABEL_32;
    }
  }

  v20 = 0;
LABEL_32:

  v32 = *MEMORY[0x277D85DE8];
  return v20;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXBMBookmark *)self isEqualToATXBMBookmark:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXBMBookmark:(id)bookmark
{
  bookmarkCopy = bookmark;
  v5 = self->_urlPath;
  v6 = v5;
  if (v5 == bookmarkCopy[1])
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
  if (v8 == bookmarkCopy[2])
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
  if (v12 == bookmarkCopy[4])
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

- (void)encodeWithCoder:(id)coder
{
  urlPath = self->_urlPath;
  coderCopy = coder;
  [coderCopy encodeObject:urlPath forKey:@"urlPath"];
  [coderCopy encodeObject:self->_versionNumber forKey:@"versionNumber"];
  [coderCopy encodeObject:self->_bookmark forKey:@"bookmark"];
  [coderCopy encodeObject:self->_metadata forKey:@"metadata"];
}

- (ATXBMBookmark)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = MEMORY[0x277D42620];
  v6 = objc_opt_class();
  v7 = __atxlog_handle_default();
  v8 = [v5 robustDecodeObjectOfClass:v6 forKey:@"urlPath" withCoder:coderCopy expectNonNull:0 errorDomain:@"com.apple.duetexpertd.ATXBMBookmark" errorCode:-1 logHandle:v7];

  error = [coderCopy error];

  if (error)
  {
    selfCopy = 0;
  }

  else
  {
    v11 = MEMORY[0x277D42620];
    v12 = objc_opt_class();
    v13 = __atxlog_handle_default();
    v14 = [v11 robustDecodeObjectOfClass:v12 forKey:@"versionNumber" withCoder:coderCopy expectNonNull:0 errorDomain:@"com.apple.duetexpertd.ATXBMBookmark" errorCode:-1 logHandle:v13];

    error2 = [coderCopy error];

    selfCopy = 0;
    if (!error2 && v14)
    {
      v16 = MEMORY[0x277D42620];
      allowedClassesForBookmarkSecureCoding = [(ATXBMBookmark *)self allowedClassesForBookmarkSecureCoding];
      v18 = __atxlog_handle_default();
      v19 = [v16 robustDecodeObjectOfClasses:allowedClassesForBookmarkSecureCoding forKey:@"bookmark" withCoder:coderCopy expectNonNull:0 errorDomain:@"com.apple.duetexpertd.ATXBMBookmark" errorCode:-1 logHandle:v18];

      error3 = [coderCopy error];

      if (error3)
      {
        v21 = __atxlog_handle_default();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          [ATXBMBookmark initWithCoder:];
        }

        selfCopy = 0;
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
        v30 = [v28 robustDecodeObjectOfClasses:v27 forKey:@"metadata" withCoder:coderCopy expectNonNull:0 errorDomain:@"com.apple.duetexpertd.ATXBMBookmark" errorCode:-1 logHandle:v29];

        error4 = [coderCopy error];

        if (error4)
        {
          selfCopy = 0;
          v19 = v35;
        }

        else
        {
          v19 = v35;
          self = [(ATXBMBookmark *)self initWithURLPath:v8 versionNumber:v14 bookmark:v35 metadata:v30];
          selfCopy = self;
        }
      }
    }
  }

  return selfCopy;
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
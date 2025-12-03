@interface PKTextInputDebugSharpenerLog
+ (BOOL)canLoadFromFileAtURL:(id)l;
+ (id)_environmentMetadataDictionary;
+ (id)_recommendedFileNameForLogWithDate:(id)date;
- (BOOL)_loadFromFileURL:(id)l error:(id *)error;
- (BOOL)hasContent;
- (BOOL)writeToURL:(id)l withContentLevel:(int64_t)level excludeEntyIndexes:(id)indexes error:(id *)error;
- (PKTextInputDebugSharpenerLog)initWithContentsOfURL:(id)l error:(id *)error;
- (PKTextInputDebugSharpenerLog)initWithLogEntries:(id)entries;
- (id)_dictionaryRepresentationWithContentLevel:(int64_t)level excludeEntyIndexes:(id)indexes;
- (id)description;
- (id)writeLogToTemporaryDirectoryWithContentLevel:(int64_t)level excludeEntyIndexes:(id)indexes error:(id *)error;
@end

@implementation PKTextInputDebugSharpenerLog

- (PKTextInputDebugSharpenerLog)initWithContentsOfURL:(id)l error:(id *)error
{
  lCopy = l;
  v10.receiver = self;
  v10.super_class = PKTextInputDebugSharpenerLog;
  v7 = [(PKTextInputDebugSharpenerLog *)&v10 init];
  v8 = v7;
  if (v7 && ![(PKTextInputDebugSharpenerLog *)v7 _loadFromFileURL:lCopy error:error])
  {

    v8 = 0;
  }

  return v8;
}

- (PKTextInputDebugSharpenerLog)initWithLogEntries:(id)entries
{
  entriesCopy = entries;
  v11.receiver = self;
  v11.super_class = PKTextInputDebugSharpenerLog;
  v5 = [(PKTextInputDebugSharpenerLog *)&v11 init];
  if (v5)
  {
    v6 = [entriesCopy copy];
    logEntries = v5->_logEntries;
    v5->_logEntries = v6;

    _environmentMetadataDictionary = [objc_opt_class() _environmentMetadataDictionary];
    metadataDictionary = v5->_metadataDictionary;
    v5->_metadataDictionary = _environmentMetadataDictionary;
  }

  return v5;
}

- (id)description
{
  v8.receiver = self;
  v8.super_class = PKTextInputDebugSharpenerLog;
  v3 = [(PKTextInputDebugSharpenerLog *)&v8 description];
  metadataDictionary = [(PKTextInputDebugSharpenerLog *)self metadataDictionary];
  logEntries = [(PKTextInputDebugSharpenerLog *)self logEntries];
  v6 = [v3 stringByAppendingFormat:@" metadata: %@, entries: %@", metadataDictionary, logEntries];

  return v6;
}

- (BOOL)hasContent
{
  logEntries = [(PKTextInputDebugSharpenerLog *)self logEntries];
  v3 = [logEntries count] != 0;

  return v3;
}

- (id)_dictionaryRepresentationWithContentLevel:(int64_t)level excludeEntyIndexes:(id)indexes
{
  v28 = *MEMORY[0x1E69E9840];
  indexesCopy = indexes;
  v7 = MEMORY[0x1E695DF70];
  logEntries = [(PKTextInputDebugSharpenerLog *)self logEntries];
  v9 = [v7 arrayWithCapacity:{objc_msgSend(logEntries, "count")}];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  logEntries2 = [(PKTextInputDebugSharpenerLog *)self logEntries];
  v11 = [logEntries2 countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    v14 = *v22;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v22 != v14)
        {
          objc_enumerationMutation(logEntries2);
        }

        v16 = *(*(&v21 + 1) + 8 * i);
        if (([indexesCopy containsIndex:v13] & 1) == 0)
        {
          v17 = [v16 dictionaryRepresentationWithTargetContentLevel:level];
          [v9 addObject:v17];
        }

        ++v13;
      }

      v12 = [logEntries2 countByEnumeratingWithState:&v21 objects:v27 count:16];
    }

    while (v12);
  }

  v25[0] = @"metadata";
  metadataDictionary = [(PKTextInputDebugSharpenerLog *)self metadataDictionary];
  v25[1] = @"entries";
  v26[0] = metadataDictionary;
  v26[1] = v9;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:2];

  return v19;
}

+ (id)_environmentMetadataDictionary
{
  v12[4] = *MEMORY[0x1E69E9840];
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v4 = bundleIdentifier;
  v5 = &stru_1F476BD20;
  if (bundleIdentifier)
  {
    v5 = bundleIdentifier;
  }

  v6 = v5;

  v7 = MGCopyAnswer();
  v8 = _CFCopySystemVersionDictionaryValue();
  v11[0] = @"formatVersion";
  v11[1] = @"build";
  v12[0] = @"2.0";
  v12[1] = v8;
  v11[2] = @"device";
  v11[3] = @"appIdentifier";
  v12[2] = v7;
  v12[3] = v6;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:4];

  return v9;
}

+ (BOOL)canLoadFromFileAtURL:(id)l
{
  pathExtension = [l pathExtension];
  v4 = [pathExtension caseInsensitiveCompare:@"plist"] == 0;

  return v4;
}

- (id)writeLogToTemporaryDirectoryWithContentLevel:(int64_t)level excludeEntyIndexes:(id)indexes error:(id *)error
{
  indexesCopy = indexes;
  logEntries = [(PKTextInputDebugSharpenerLog *)self logEntries];
  lastObject = [logEntries lastObject];
  entryDate = [lastObject entryDate];

  if (!entryDate)
  {
    entryDate = [MEMORY[0x1E695DF00] date];
  }

  v12 = [PKTextInputDebugSharpenerLog _recommendedFileNameForLogWithDate:entryDate];
  v13 = MEMORY[0x1E695DFF8];
  v14 = NSTemporaryDirectory();
  v15 = [v14 stringByAppendingPathComponent:v12];
  v16 = [v13 fileURLWithPath:v15 isDirectory:0];

  v17 = [(PKTextInputDebugSharpenerLog *)self writeToURL:v16 withContentLevel:level excludeEntyIndexes:indexesCopy error:error];
  if (!v17)
  {

    v16 = 0;
  }

  return v16;
}

- (BOOL)writeToURL:(id)l withContentLevel:(int64_t)level excludeEntyIndexes:(id)indexes error:(id *)error
{
  v27 = *MEMORY[0x1E69E9840];
  lCopy = l;
  v11 = [(PKTextInputDebugSharpenerLog *)self _dictionaryRepresentationWithContentLevel:level excludeEntyIndexes:indexes];
  v22 = 0;
  v12 = [MEMORY[0x1E696AE40] dataWithPropertyList:v11 format:100 options:0 error:&v22];
  v13 = v22;
  v14 = v13;
  if (v12)
  {
    v21 = v13;
    v15 = [v12 writeToURL:lCopy options:0 error:&v21];
    v16 = v21;

    if (v15)
    {
      v17 = 1;
      if (!error)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v16 = v13;
  }

  v18 = os_log_create("com.apple.pencilkit", "PencilTextInput");
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v24 = lCopy;
    v25 = 2112;
    v26 = v16;
    _os_log_error_impl(&dword_1C7CCA000, v18, OS_LOG_TYPE_ERROR, "Couldn't write PencilSharpener log to %@; Error: %@", buf, 0x16u);
  }

  v17 = 0;
  if (error)
  {
LABEL_9:
    v19 = v16;
    *error = v16;
  }

LABEL_10:

  return v17;
}

- (BOOL)_loadFromFileURL:(id)l error:(id *)error
{
  v50 = *MEMORY[0x1E69E9840];
  lCopy = l;
  v44 = 0;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:lCopy error:&v44];
  v8 = v44;
  if (!v7)
  {
    v14 = os_log_create("com.apple.pencilkit", "PencilTextInput");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v46 = lCopy;
      v47 = 2112;
      v48 = v8;
      _os_log_error_impl(&dword_1C7CCA000, v14, OS_LOG_TYPE_ERROR, "Error reading PencilSharpener log from %@; error: %@", buf, 0x16u);
    }

    isKindOfClass = 0;
    goto LABEL_31;
  }

  v9 = [v7 objectForKeyedSubscript:@"metadata"];
  metadataDictionary = self->_metadataDictionary;
  self->_metadataDictionary = v9;

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) == 0)
  {
    v12 = os_log_create("com.apple.pencilkit", "PencilTextInput");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v29 = objc_opt_class();
      *buf = 138412290;
      v46 = v29;
      v30 = v29;
      _os_log_error_impl(&dword_1C7CCA000, v12, OS_LOG_TYPE_ERROR, "Error loading metadata dictionary with object of class: %@", buf, 0xCu);
    }

    v13 = self->_metadataDictionary;
    self->_metadataDictionary = MEMORY[0x1E695E0F8];
  }

  v14 = [MEMORY[0x1E695DF70] arrayWithCapacity:10];
  v15 = [v7 objectForKeyedSubscript:@"entries"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_30;
  }

  v37 = isKindOfClass;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = v15;
  v16 = [obj countByEnumeratingWithState:&v40 objects:v49 count:16];
  if (!v16)
  {
    goto LABEL_29;
  }

  v17 = v16;
  v33 = v15;
  v34 = v7;
  errorCopy = error;
  v36 = lCopy;
  v18 = *v41;
  while (2)
  {
    v19 = 0;
    v20 = v8;
    do
    {
      if (*v41 != v18)
      {
        objc_enumerationMutation(obj);
      }

      v21 = *(*(&v40 + 1) + 8 * v19);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v24 = os_log_create("com.apple.pencilkit", "PencilTextInput");
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v31 = objc_opt_class();
          *buf = 138412290;
          v46 = v31;
          v32 = v31;
          _os_log_error_impl(&dword_1C7CCA000, v24, OS_LOG_TYPE_ERROR, "Error loading log entry with object of class: %@", buf, 0xCu);
        }

        goto LABEL_27;
      }

      v22 = [PKTextInputDebugArchivedLogEntry alloc];
      v39 = v20;
      v23 = [(PKTextInputDebugArchivedLogEntry *)v22 initWithDictionary:v21 error:&v39];
      v8 = v39;

      if (!v23)
      {
        v24 = os_log_create("com.apple.pencilkit", "PencilTextInput");
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v46 = v8;
          _os_log_error_impl(&dword_1C7CCA000, v24, OS_LOG_TYPE_ERROR, "Error loading log entry: %@", buf, 0xCu);
        }

        v20 = v8;
LABEL_27:
        error = errorCopy;
        lCopy = v36;

        isKindOfClass = 0;
        v8 = v20;
        v7 = v34;
        goto LABEL_28;
      }

      [v14 addObject:v23];

      ++v19;
      v20 = v8;
    }

    while (v17 != v19);
    v17 = [obj countByEnumeratingWithState:&v40 objects:v49 count:16];
    if (v17)
    {
      continue;
    }

    break;
  }

  error = errorCopy;
  lCopy = v36;
  isKindOfClass = v37;
LABEL_28:
  v15 = v33;
LABEL_29:

LABEL_30:
  v25 = [v14 copy];
  logEntries = self->_logEntries;
  self->_logEntries = v25;

LABEL_31:
  if (error)
  {
    v27 = v8;
    *error = v8;
  }

  return isKindOfClass & 1;
}

+ (id)_recommendedFileNameForLogWithDate:(id)date
{
  v3 = MEMORY[0x1E696AB78];
  dateCopy = date;
  v5 = objc_alloc_init(v3);
  v6 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:@"en_US_POSIX"];
  [v5 setLocale:v6];

  [v5 setDateFormat:@"yyyy-MM-dd-HHmmss"];
  v7 = MEMORY[0x1E696AEC0];
  v8 = [v5 stringFromDate:dateCopy];

  v9 = [v7 stringWithFormat:@"PencilSharpener-%@", v8];
  v10 = [v9 stringByAppendingPathExtension:@"plist"];

  return v10;
}

@end
@interface PHImportException
+ (id)logForAllExceptions:(id)exceptions;
- (PHImportException)initWithType:(int64_t)type path:(id)path underlyingError:(id)error file:(char *)file line:(unint64_t)line;
- (id)description;
@end

@implementation PHImportException

- (id)description
{
  type = self->_type;
  if (type > 8)
  {
    v4 = 0;
  }

  else
  {
    v4 = off_1E75AA5D8[type];
  }

  v5 = MEMORY[0x1E696AEC0];
  v6 = v4;
  underlyingError = self->_underlyingError;
  if (underlyingError)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@" (NSError: %@)", self->_underlyingError];
  }

  else
  {
    v8 = &stru_1F0FC60C8;
  }

  path = self->_path;
  if (path)
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@", path: %@", self->_path];
  }

  else
  {
    v10 = &stru_1F0FC60C8;
  }

  if (self->_sourceCodeFile)
  {
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@", source: %@", self->_sourceCodeFile];
    v12 = v11;
    if (self->_sourceCodeFile)
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@", line: %lu", self->_lineNumber];
      v14 = [v5 stringWithFormat:@"%@:%@%@%@%@", v6, v8, v10, v12, v13];
    }

    else
    {
      v14 = [v5 stringWithFormat:@"%@:%@%@%@%@", v6, v8, v10, v11, &stru_1F0FC60C8];
    }

    if (path)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v14 = [v5 stringWithFormat:@"%@:%@%@%@%@", v6, v8, v10, &stru_1F0FC60C8, &stru_1F0FC60C8];
    if (path)
    {
LABEL_17:
    }
  }

  if (underlyingError)
  {
  }

  return v14;
}

- (PHImportException)initWithType:(int64_t)type path:(id)path underlyingError:(id)error file:(char *)file line:(unint64_t)line
{
  v42 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  errorCopy = error;
  v31.receiver = self;
  v31.super_class = PHImportException;
  v15 = [(PHImportException *)&v31 init];
  if (v15)
  {
    date = [MEMORY[0x1E695DF00] date];
    createDate = v15->_createDate;
    v15->_createDate = date;

    v15->_type = type;
    objc_storeStrong(&v15->_path, path);
    objc_storeStrong(&v15->_underlyingError, error);
    v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:file];
    lastPathComponent = [v18 lastPathComponent];
    sourceCodeFile = v15->_sourceCodeFile;
    v15->_sourceCodeFile = lastPathComponent;

    v15->_lineNumber = line;
    v21 = PLImportGetLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      localizedDescription = [errorCopy localizedDescription];
      v23 = localizedDescription;
      if (localizedDescription)
      {
        v24 = localizedDescription;
      }

      else
      {
        v24 = &stru_1F0FC60C8;
      }

      type = v15->_type;
      if (type > 8)
      {
        v26 = 0;
      }

      else
      {
        v26 = off_1E75AA5D8[type];
      }

      v27 = v26;
      v28 = v15->_sourceCodeFile;
      lineNumber = v15->_lineNumber;
      *buf = 138413314;
      v33 = v24;
      v34 = 2112;
      v35 = v27;
      v36 = 2112;
      v37 = pathCopy;
      v38 = 2112;
      v39 = v28;
      v40 = 2048;
      v41 = lineNumber;
      _os_log_impl(&dword_19C86F000, v21, OS_LOG_TYPE_ERROR, "ERROR: %@ (type: %@, path: %@), file: %@, line: %lu", buf, 0x34u);
    }
  }

  return v15;
}

+ (id)logForAllExceptions:(id)exceptions
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  exceptions = [exceptions exceptions];
  v4 = [exceptions countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    v7 = &stru_1F0FC60C8;
    do
    {
      v8 = 0;
      v9 = v7;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(exceptions);
        }

        v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@\n%@", v9, *(*(&v11 + 1) + 8 * v8)];

        ++v8;
        v9 = v7;
      }

      while (v5 != v8);
      v5 = [exceptions countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = &stru_1F0FC60C8;
  }

  return v7;
}

@end
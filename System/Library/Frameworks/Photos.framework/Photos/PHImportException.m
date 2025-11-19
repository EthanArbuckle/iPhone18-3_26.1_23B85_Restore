@interface PHImportException
+ (id)logForAllExceptions:(id)a3;
- (PHImportException)initWithType:(int64_t)a3 path:(id)a4 underlyingError:(id)a5 file:(char *)a6 line:(unint64_t)a7;
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

- (PHImportException)initWithType:(int64_t)a3 path:(id)a4 underlyingError:(id)a5 file:(char *)a6 line:(unint64_t)a7
{
  v42 = *MEMORY[0x1E69E9840];
  v13 = a4;
  v14 = a5;
  v31.receiver = self;
  v31.super_class = PHImportException;
  v15 = [(PHImportException *)&v31 init];
  if (v15)
  {
    v16 = [MEMORY[0x1E695DF00] date];
    createDate = v15->_createDate;
    v15->_createDate = v16;

    v15->_type = a3;
    objc_storeStrong(&v15->_path, a4);
    objc_storeStrong(&v15->_underlyingError, a5);
    v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a6];
    v19 = [v18 lastPathComponent];
    sourceCodeFile = v15->_sourceCodeFile;
    v15->_sourceCodeFile = v19;

    v15->_lineNumber = a7;
    v21 = PLImportGetLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = [v14 localizedDescription];
      v23 = v22;
      if (v22)
      {
        v24 = v22;
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
      v37 = v13;
      v38 = 2112;
      v39 = v28;
      v40 = 2048;
      v41 = lineNumber;
      _os_log_impl(&dword_19C86F000, v21, OS_LOG_TYPE_ERROR, "ERROR: %@ (type: %@, path: %@), file: %@, line: %lu", buf, 0x34u);
    }
  }

  return v15;
}

+ (id)logForAllExceptions:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [a3 exceptions];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v3);
        }

        v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@\n%@", v9, *(*(&v11 + 1) + 8 * v8)];

        ++v8;
        v9 = v7;
      }

      while (v5 != v8);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
@interface PHImportExceptionRecorder
- (PHImportExceptionRecorder)init;
- (id)addExceptionWithType:(int64_t)type path:(id)path underlyingError:(id)error file:(char *)file line:(unint64_t)line;
- (id)logForExceptions;
- (void)addException:(id)exception;
- (void)addExceptions:(id)exceptions;
- (void)logErrors;
@end

@implementation PHImportExceptionRecorder

- (void)logErrors
{
  v19 = *MEMORY[0x1E69E9840];
  if ([(NSMutableArray *)self->_exceptions count])
  {
    v3 = [MEMORY[0x1E696AD60] stringWithString:@"\n\n\t========= Import Errors ========="];
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\n\t%lu files had issues", -[NSMutableArray count](self->_exceptions, "count")];
    [v3 appendString:v4];

    [v3 appendString:@"\n\t--------- Error Detail ----------"];
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = self->_exceptions;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        v9 = 0;
        do
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\n\t%@", *(*(&v12 + 1) + 8 * v9)];
          [v3 appendString:v10];

          ++v9;
        }

        while (v7 != v9);
        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v18 count:16];
      }

      while (v7);
    }

    [v3 appendString:@"\n\t=================================\n"];
    v11 = PLImportGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v17 = v3;
      _os_log_impl(&dword_19C86F000, v11, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }
  }
}

- (id)logForExceptions
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  exceptions = [(PHImportExceptionRecorder *)self exceptions];
  v3 = [exceptions countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    v6 = &stru_1F0FC60C8;
    do
    {
      v7 = 0;
      v8 = v6;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(exceptions);
        }

        v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@\n%@", v8, *(*(&v10 + 1) + 8 * v7)];

        ++v7;
        v8 = v6;
      }

      while (v4 != v7);
      v4 = [exceptions countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  else
  {
    v6 = &stru_1F0FC60C8;
  }

  return v6;
}

- (id)addExceptionWithType:(int64_t)type path:(id)path underlyingError:(id)error file:(char *)file line:(unint64_t)line
{
  errorCopy = error;
  pathCopy = path;
  v14 = [[PHImportException alloc] initWithType:type path:pathCopy underlyingError:errorCopy file:file line:line];

  [(PHImportExceptionRecorder *)self addException:v14];

  return v14;
}

- (void)addExceptions:(id)exceptions
{
  v14 = *MEMORY[0x1E69E9840];
  exceptionsCopy = exceptions;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [exceptionsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(exceptionsCopy);
        }

        [(PHImportExceptionRecorder *)self addException:*(*(&v9 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [exceptionsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)addException:(id)exception
{
  if (exception)
  {
    [(NSMutableArray *)self->_exceptions addObject:?];
  }
}

- (PHImportExceptionRecorder)init
{
  v6.receiver = self;
  v6.super_class = PHImportExceptionRecorder;
  v2 = [(PHImportExceptionRecorder *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    exceptions = v2->_exceptions;
    v2->_exceptions = v3;
  }

  return v2;
}

@end
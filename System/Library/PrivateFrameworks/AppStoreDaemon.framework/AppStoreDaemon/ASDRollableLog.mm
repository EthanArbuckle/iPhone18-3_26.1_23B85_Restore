@interface ASDRollableLog
- (ASDLogFileOptions)logOptions;
- (ASDRollableLog)initWithLogOptions:(id)options;
- (id)_activeLogFilePath;
- (id)_logFilePathWithIndex:(uint64_t)index;
- (void)_closeLogFile;
- (void)_openLogFile;
- (void)dealloc;
- (void)writeString:(id)string;
@end

@implementation ASDRollableLog

- (ASDRollableLog)initWithLogOptions:(id)options
{
  optionsCopy = options;
  v12.receiver = self;
  v12.super_class = ASDRollableLog;
  v5 = [(ASDRollableLog *)&v12 init];
  if (v5)
  {
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.appstoredaemon.ASFRollableLog", v6);
    dispatchQueue = v5->_dispatchQueue;
    v5->_dispatchQueue = v7;

    v5->_lastFileStatTime = -1.79769313e308;
    v9 = [optionsCopy copy];
    options = v5->_options;
    v5->_options = v9;

    [(ASDRollableLog *)v5 _openLogFile];
  }

  return v5;
}

- (void)_openLogFile
{
  if (self)
  {
    v2 = objc_alloc_init(MEMORY[0x1E696AC08]);
    logDirectoryPath = [*(self + 40) logDirectoryPath];
    [v2 createDirectoryAtPath:logDirectoryPath withIntermediateDirectories:1 attributes:0 error:0];

    _activeLogFilePath = [(ASDRollableLog *)self _activeLogFilePath];
    v5 = open([_activeLogFilePath fileSystemRepresentation], 522, 384);

    if ((v5 & 0x80000000) == 0)
    {
      v6 = [objc_alloc(MEMORY[0x1E696AC00]) initWithFileDescriptor:v5 closeOnDealloc:1];
      v7 = *(self + 24);
      *(self + 24) = v6;

      [*(self + 24) seekToEndOfFile];
      v8 = dup(v5);
      v9 = dispatch_source_create(MEMORY[0x1E69E9728], v8, 0x61uLL, *(self + 8));
      v10 = *(self + 32);
      *(self + 32) = v9;

      v11 = *(self + 32);
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = __30__ASDRollableLog__openLogFile__block_invoke;
      handler[3] = &unk_1E7CDB930;
      handler[4] = self;
      dispatch_source_set_event_handler(v11, handler);
      v12 = *(self + 32);
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __30__ASDRollableLog__openLogFile__block_invoke_2;
      v13[3] = &__block_descriptor_36_e5_v8__0l;
      v14 = v8;
      dispatch_source_set_cancel_handler(v12, v13);
      dispatch_resume(*(self + 32));
    }
  }
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = ASDRollableLog;
  [(ASDRollableLog *)&v2 dealloc];
}

- (ASDLogFileOptions)logOptions
{
  v2 = [(ASDLogFileOptions *)self->_options copy];

  return v2;
}

- (void)writeString:(id)string
{
  stringCopy = string;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __30__ASDRollableLog_writeString___block_invoke;
  v7[3] = &unk_1E7CDB868;
  v7[4] = self;
  v8 = stringCopy;
  v6 = stringCopy;
  dispatch_async(dispatchQueue, v7);
}

void __30__ASDRollableLog_writeString___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 24) || ([(ASDRollableLog *)*(a1 + 32) _openLogFile], (v2 = *(a1 + 32)) != 0))
  {
    v3 = [*(v2 + 40) maxLogFileSize];
    if (v3)
    {
      v4 = v3;
      if ([*(v2 + 40) maxNumberOfLogFiles] >= 2 && CFAbsoluteTimeGetCurrent() - *(v2 + 16) >= 60.0)
      {
        memset(&v15, 0, sizeof(v15));
        v5 = [(ASDRollableLog *)v2 _activeLogFilePath];
        v6 = stat([v5 fileSystemRepresentation], &v15);

        if (!v6 && v15.st_size >= v4)
        {
          v7 = objc_alloc_init(MEMORY[0x1E696AC08]);
          [(ASDRollableLog *)v2 _closeLogFile];
          v8 = [*(v2 + 40) maxNumberOfLogFiles];
          v9 = [(ASDRollableLog *)v2 _logFilePathWithIndex:?];
          [v7 removeItemAtPath:v9 error:0];

          v10 = v8 - 2;
          if (v8 >= 2)
          {
            do
            {
              v11 = v10;
              v12 = [(ASDRollableLog *)v2 _logFilePathWithIndex:v10];
              v13 = [(ASDRollableLog *)v2 _logFilePathWithIndex:?];
              [v7 moveItemAtPath:v12 toPath:v13 error:0];

              v10 = v11 - 1;
            }

            while (v11);
          }

          [(ASDRollableLog *)v2 _openLogFile];
        }
      }
    }
  }

  v14 = [*(a1 + 40) dataUsingEncoding:4];
  [*(*(a1 + 32) + 24) writeData:v14];
}

- (void)_closeLogFile
{
  if (self)
  {
    v2 = *(self + 32);
    if (v2)
    {
      dispatch_source_cancel(v2);
      v3 = *(self + 32);
      *(self + 32) = 0;
    }

    v4 = *(self + 24);
    *(self + 24) = 0;
  }
}

- (id)_activeLogFilePath
{
  v1 = [(ASDRollableLog *)self _logFilePathWithIndex:?];

  return v1;
}

- (id)_logFilePathWithIndex:(uint64_t)index
{
  logFileBaseName = [*(index + 40) logFileBaseName];
  pathExtension = [logFileBaseName pathExtension];
  if ([(__CFString *)pathExtension length])
  {
    if (a2 < 1)
    {
      goto LABEL_8;
    }

    stringByDeletingPathExtension = [logFileBaseName stringByDeletingPathExtension];

    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld", a2];
    logFileBaseName = [stringByDeletingPathExtension stringByAppendingPathExtension:v7];

    v8 = logFileBaseName;
    v9 = pathExtension;
  }

  else
  {
    if (a2 >= 1)
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld", a2];
      v11 = [logFileBaseName stringByAppendingPathExtension:v10];

      logFileBaseName = v11;
    }

    v9 = @"log";
    v8 = logFileBaseName;
  }

  v12 = [v8 stringByAppendingPathExtension:v9];

  logFileBaseName = v12;
LABEL_8:
  logDirectoryPath = [*(index + 40) logDirectoryPath];
  v14 = [logDirectoryPath stringByAppendingPathComponent:logFileBaseName];

  return v14;
}

uint64_t __30__ASDRollableLog__openLogFile__block_invoke(uint64_t a1)
{
  [(ASDRollableLog *)*(a1 + 32) _closeLogFile];
  v2 = *(a1 + 32);

  return [(ASDRollableLog *)v2 _openLogFile];
}

@end
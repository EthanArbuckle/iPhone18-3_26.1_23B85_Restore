@interface VNClusteringLogger
+ (BOOL)isLogEnabled;
+ (id)currentDateTime;
+ (id)padStringWithSpaces:(id)a3 toSize:(int64_t)a4;
+ (void)appendString:(id)a3 toLogFile:(id)a4;
- (VNClusteringLogger)initWithOptions:(id)a3 logEnabled:(BOOL)a4 logFileNameBase:(id)a5;
- (void)logClusterMap:(const void *)a3 level:(id)a4;
- (void)logString:(id)a3;
- (void)resetFileNameURLWithCurentDateTime;
@end

@implementation VNClusteringLogger

- (void)logClusterMap:(const void *)a3 level:(id)a4
{
  v17 = a4;
  v5 = [MEMORY[0x1E696AD60] stringWithFormat:@"Level %@ cluster map:\n", v17];
  v8 = *a3;
  v7 = a3 + 8;
  v6 = v8;
  if (v8 != v7)
  {
    do
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"ClusterId: %lld", *(v6 + 4)];
      v10 = [VNClusteringLogger padStringWithSpaces:v9 toSize:20];
      [v5 appendFormat:@"%@Faces: ", v10];
      v11 = *(v6 + 5);
      v12 = *(v6 + 6);
      while (v11 != v12)
      {
        [v5 appendFormat:@"%lld", *v11];
        if (v11 != (*(v6 + 6) - 8))
        {
          [v5 appendFormat:@", "];
        }

        ++v11;
      }

      [v5 appendFormat:@"\n"];

      v13 = *(v6 + 1);
      if (v13)
      {
        do
        {
          v14 = v13;
          v13 = *v13;
        }

        while (v13);
      }

      else
      {
        do
        {
          v14 = *(v6 + 2);
          v15 = *v14 == v6;
          v6 = v14;
        }

        while (!v15);
      }

      v6 = v14;
    }

    while (v14 != v7);
  }

  [(VNClusteringLogger *)self logString:v5];
}

- (void)logString:(id)a3
{
  v5 = a3;
  v4 = [(NSURL *)self->_logFileURL path];
  [VNClusteringLogger appendString:v5 toLogFile:v4];
}

- (void)resetFileNameURLWithCurentDateTime
{
  logFolderURL = self->_logFolderURL;
  v4 = MEMORY[0x1E696AEC0];
  fileNameBase = self->_fileNameBase;
  v9 = +[VNClusteringLogger currentDateTime];
  v6 = [v4 stringWithFormat:@"%@_%@.log", fileNameBase, v9];
  v7 = [(NSURL *)logFolderURL URLByAppendingPathComponent:v6];
  logFileURL = self->_logFileURL;
  self->_logFileURL = v7;
}

- (VNClusteringLogger)initWithOptions:(id)a3 logEnabled:(BOOL)a4 logFileNameBase:(id)a5
{
  v9 = a3;
  v10 = a5;
  v15.receiver = self;
  v15.super_class = VNClusteringLogger;
  v11 = [(VNClusteringLogger *)&v15 init];
  p_isa = &v11->super.isa;
  v13 = 0;
  if (v9 && v11)
  {
    v11->_logEnabled = a4;
    objc_storeStrong(&v11->_logFolderURL, a3);
    objc_storeStrong(p_isa + 4, a5);
    [p_isa resetFileNameURLWithCurentDateTime];
    v13 = p_isa;
  }

  return v13;
}

+ (id)currentDateTime
{
  v2 = objc_opt_new();
  v3 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:@"en_US_POSIX"];
  [v2 setLocale:v3];

  [v2 setDateFormat:@"yyyy-MM-dd_HH-mm-ss-SSS"];
  v4 = [MEMORY[0x1E695DF00] date];
  v5 = [v2 stringFromDate:v4];

  return v5;
}

+ (id)padStringWithSpaces:(id)a3 toSize:(int64_t)a4
{
  v5 = a3;
  if ([v5 length] >= a4)
  {
    v8 = [MEMORY[0x1E696AD60] stringWithString:v5];
  }

  else
  {
    v6 = [MEMORY[0x1E696AD60] stringWithCapacity:a4];
    v7 = 0;
    do
    {
      [v6 insertString:@" " atIndex:v7++];
    }

    while (a4 != v7);
    v8 = [MEMORY[0x1E696AD60] stringWithFormat:@"%@", v6];
    [v8 replaceCharactersInRange:0 withString:{objc_msgSend(v5, "length"), v5}];
  }

  return v8;
}

+ (void)appendString:(id)a3 toLogFile:(id)a4
{
  v5 = a3;
  v6 = a4;
  v14 = 0;
  v7 = [MEMORY[0x1E696AC08] defaultManager];
  v8 = [v6 stringByDeletingLastPathComponent];
  v9 = [v7 fileExistsAtPath:v8 isDirectory:&v14];

  if (v9 && (v14 & 1) != 0)
  {
    v10 = [MEMORY[0x1E696AC00] fileHandleForUpdatingAtPath:v6];
    v11 = v10;
    if (v10)
    {
      [v10 seekToEndOfFile];
      v12 = [@"\n\n" stringByAppendingString:v5];
      v13 = [v12 dataUsingEncoding:4];
      [v11 writeData:v13];

      [v11 closeFile];
    }

    else
    {
      [v5 writeToFile:v6 atomically:1 encoding:4 error:0];
    }
  }
}

+ (BOOL)isLogEnabled
{
  if (+[VNClusteringLogger isLogEnabled]::onceToken != -1)
  {
    dispatch_once(&+[VNClusteringLogger isLogEnabled]::onceToken, &__block_literal_global_197);
  }

  return +[VNClusteringLogger isLogEnabled]::logEnabled;
}

void __34__VNClusteringLogger_isLogEnabled__block_invoke()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  +[VNClusteringLogger isLogEnabled]::logEnabled = [v0 BOOLForKey:@"CVML_debug_enable_cluster_log"];
}

@end
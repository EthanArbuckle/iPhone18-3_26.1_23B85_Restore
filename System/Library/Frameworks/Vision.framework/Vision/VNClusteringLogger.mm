@interface VNClusteringLogger
+ (BOOL)isLogEnabled;
+ (id)currentDateTime;
+ (id)padStringWithSpaces:(id)spaces toSize:(int64_t)size;
+ (void)appendString:(id)string toLogFile:(id)file;
- (VNClusteringLogger)initWithOptions:(id)options logEnabled:(BOOL)enabled logFileNameBase:(id)base;
- (void)logClusterMap:(const void *)map level:(id)level;
- (void)logString:(id)string;
- (void)resetFileNameURLWithCurentDateTime;
@end

@implementation VNClusteringLogger

- (void)logClusterMap:(const void *)map level:(id)level
{
  levelCopy = level;
  levelCopy = [MEMORY[0x1E696AD60] stringWithFormat:@"Level %@ cluster map:\n", levelCopy];
  v8 = *map;
  v7 = map + 8;
  v6 = v8;
  if (v8 != v7)
  {
    do
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"ClusterId: %lld", *(v6 + 4)];
      v10 = [VNClusteringLogger padStringWithSpaces:v9 toSize:20];
      [levelCopy appendFormat:@"%@Faces: ", v10];
      v11 = *(v6 + 5);
      v12 = *(v6 + 6);
      while (v11 != v12)
      {
        [levelCopy appendFormat:@"%lld", *v11];
        if (v11 != (*(v6 + 6) - 8))
        {
          [levelCopy appendFormat:@", "];
        }

        ++v11;
      }

      [levelCopy appendFormat:@"\n"];

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

  [(VNClusteringLogger *)self logString:levelCopy];
}

- (void)logString:(id)string
{
  stringCopy = string;
  path = [(NSURL *)self->_logFileURL path];
  [VNClusteringLogger appendString:stringCopy toLogFile:path];
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

- (VNClusteringLogger)initWithOptions:(id)options logEnabled:(BOOL)enabled logFileNameBase:(id)base
{
  optionsCopy = options;
  baseCopy = base;
  v15.receiver = self;
  v15.super_class = VNClusteringLogger;
  v11 = [(VNClusteringLogger *)&v15 init];
  p_isa = &v11->super.isa;
  v13 = 0;
  if (optionsCopy && v11)
  {
    v11->_logEnabled = enabled;
    objc_storeStrong(&v11->_logFolderURL, options);
    objc_storeStrong(p_isa + 4, base);
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
  date = [MEMORY[0x1E695DF00] date];
  v5 = [v2 stringFromDate:date];

  return v5;
}

+ (id)padStringWithSpaces:(id)spaces toSize:(int64_t)size
{
  spacesCopy = spaces;
  if ([spacesCopy length] >= size)
  {
    v8 = [MEMORY[0x1E696AD60] stringWithString:spacesCopy];
  }

  else
  {
    v6 = [MEMORY[0x1E696AD60] stringWithCapacity:size];
    v7 = 0;
    do
    {
      [v6 insertString:@" " atIndex:v7++];
    }

    while (size != v7);
    v8 = [MEMORY[0x1E696AD60] stringWithFormat:@"%@", v6];
    [v8 replaceCharactersInRange:0 withString:{objc_msgSend(spacesCopy, "length"), spacesCopy}];
  }

  return v8;
}

+ (void)appendString:(id)string toLogFile:(id)file
{
  stringCopy = string;
  fileCopy = file;
  v14 = 0;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  stringByDeletingLastPathComponent = [fileCopy stringByDeletingLastPathComponent];
  v9 = [defaultManager fileExistsAtPath:stringByDeletingLastPathComponent isDirectory:&v14];

  if (v9 && (v14 & 1) != 0)
  {
    v10 = [MEMORY[0x1E696AC00] fileHandleForUpdatingAtPath:fileCopy];
    v11 = v10;
    if (v10)
    {
      [v10 seekToEndOfFile];
      v12 = [@"\n\n" stringByAppendingString:stringCopy];
      v13 = [v12 dataUsingEncoding:4];
      [v11 writeData:v13];

      [v11 closeFile];
    }

    else
    {
      [stringCopy writeToFile:fileCopy atomically:1 encoding:4 error:0];
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
@interface _NSFileWatcherFileHandleInfo
+ (id)openFileWithPath:(id)a3;
- (void)close;
- (void)dealloc;
@end

@implementation _NSFileWatcherFileHandleInfo

- (void)close
{
  if (self->closed)
  {
    v3 = [NSString stringWithFormat:@"Attempting to close a file descriptor that was already closed: %@", self];
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:v3 userInfo:0]);
  }

  close(self->fileHandle);
  self->closed = 1;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  if (self->fileHandle && !self->closed)
  {
    v2 = [NSString stringWithFormat:@"%@ was deallocated without being closed", self];
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:v2 userInfo:0]);
  }

  v3.receiver = self;
  v3.super_class = _NSFileWatcherFileHandleInfo;
  [(_NSFileWatcherFileHandleInfo *)&v3 dealloc];
}

+ (id)openFileWithPath:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = open([a3 fileSystemRepresentation], 2129920);
  if (_MergedGlobals_151 != -1)
  {
    dispatch_once(&_MergedGlobals_151, &__block_literal_global_84);
  }

  if (v3 == -1)
  {
    return 0;
  }

  memset(&v11, 0, sizeof(v11));
  if (!fstat(v3, &v11) && (v11.st_mode & 0xF000) == 0x4000)
  {
    v4 = objc_alloc_init(_NSFileWatcherDirectoryFileHandleInfo);
    if (v4)
    {
      v5 = v4;
      *(&v4->super.closed + 1) = v11.st_dev;
      *(&v4->inodeDevPair.dev + 1) = v11.st_ino;
      v6 = [qword_1ED440240 member:v4];
      if (v6)
      {
        v7 = v6;
        close(v3);
        v8 = v7;
      }

      else
      {
        v5->super.fileHandle = v3;
        v8 = v5;
      }

      [qword_1ED440240 addObject:v8];
      return v8;
    }

    return 0;
  }

  v9 = objc_alloc_init(_NSFileWatcherFileHandleInfo);
  v8 = v9;
  if (v9)
  {
    v9->fileHandle = v3;
  }

  return v8;
}

@end
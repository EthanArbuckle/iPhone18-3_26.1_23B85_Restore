@interface _NSFileWatcherDirectoryFileHandleInfo
- (BOOL)isEqual:(id)a3;
- (void)close;
@end

@implementation _NSFileWatcherDirectoryFileHandleInfo

- (void)close
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = self;
  [qword_1ED440240 removeObject:self];
  if (![qword_1ED440240 countForObject:self])
  {
    v5.receiver = self;
    v5.super_class = _NSFileWatcherDirectoryFileHandleInfo;
    [(_NSFileWatcherFileHandleInfo *)&v5 close];
  }

  v4 = self;
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    return 1;
  }

  v5 = objc_opt_class();
  return v5 == objc_opt_class() && *(&self->super.closed + 1) == *(a3 + 13) && *(&self->inodeDevPair.dev + 1) == *(a3 + 17);
}

@end
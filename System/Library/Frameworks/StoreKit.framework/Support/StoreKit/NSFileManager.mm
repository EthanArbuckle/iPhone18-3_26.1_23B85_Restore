@interface NSFileManager
+ (id)lib_applicationsDirectory;
- (BOOL)isSignedByAppleFileAtPath:(id)path basicCheck:(BOOL)check;
- (id)_lib_deleteLastValidComponentOfPath:(id)path;
- (id)lib_ensureDirectoryExistsAtPath:(id)path;
@end

@implementation NSFileManager

+ (id)lib_applicationsDirectory
{
  v2 = NSSearchPathForDirectoriesInDomains(NSApplicationDirectory, 2uLL, 0);
  firstObject = [v2 firstObject];

  return firstObject;
}

- (id)lib_ensureDirectoryExistsAtPath:(id)path
{
  pathCopy = path;
  v13 = 0;
  if ([(NSFileManager *)self fileExistsAtPath:pathCopy isDirectory:&v13]&& (v13 & 1) != 0)
  {
    v5 = 0;
LABEL_9:
    v9 = 0;
    goto LABEL_10;
  }

  v12 = 0;
  [(NSFileManager *)self createDirectoryAtPath:pathCopy withIntermediateDirectories:1 attributes:0 error:&v12];
  v6 = v12;
  v5 = v6;
  if (!v6 || [v6 code] != 516)
  {
    goto LABEL_9;
  }

  v7 = [(NSFileManager *)self _lib_deleteLastValidComponentOfPath:pathCopy];
  v8 = v7;
  if (!v7)
  {
    v11 = 0;
    [(NSFileManager *)self createDirectoryAtPath:pathCopy withIntermediateDirectories:1 attributes:0 error:&v11];
    v8 = v11;
  }

  v9 = v8;

LABEL_10:

  return v9;
}

- (id)_lib_deleteLastValidComponentOfPath:(id)path
{
  pathCopy = path;
  v10 = 0;
  if ([(NSFileManager *)self fileExistsAtPath:pathCopy isDirectory:&v10])
  {
    if ((v10 & 1) == 0)
    {
      v9 = 0;
      [(NSFileManager *)self removeItemAtPath:pathCopy error:&v9];
      v5 = v9;
      goto LABEL_8;
    }
  }

  else
  {
    stringByDeletingLastPathComponent = [pathCopy stringByDeletingLastPathComponent];
    if ([stringByDeletingLastPathComponent length] >= 2)
    {
      v7 = [(NSFileManager *)self _lib_deleteLastValidComponentOfPath:stringByDeletingLastPathComponent];
    }
  }

  v5 = 0;
LABEL_8:

  return v5;
}

- (BOOL)isSignedByAppleFileAtPath:(id)path basicCheck:(BOOL)check
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  selfCopy = self;
  v10 = sub_10014E0CC(v6, v8, check);

  return v10 & 1;
}

@end
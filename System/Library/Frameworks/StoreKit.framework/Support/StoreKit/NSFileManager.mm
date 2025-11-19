@interface NSFileManager
+ (id)lib_applicationsDirectory;
- (BOOL)isSignedByAppleFileAtPath:(id)a3 basicCheck:(BOOL)a4;
- (id)_lib_deleteLastValidComponentOfPath:(id)a3;
- (id)lib_ensureDirectoryExistsAtPath:(id)a3;
@end

@implementation NSFileManager

+ (id)lib_applicationsDirectory
{
  v2 = NSSearchPathForDirectoriesInDomains(NSApplicationDirectory, 2uLL, 0);
  v3 = [v2 firstObject];

  return v3;
}

- (id)lib_ensureDirectoryExistsAtPath:(id)a3
{
  v4 = a3;
  v13 = 0;
  if ([(NSFileManager *)self fileExistsAtPath:v4 isDirectory:&v13]&& (v13 & 1) != 0)
  {
    v5 = 0;
LABEL_9:
    v9 = 0;
    goto LABEL_10;
  }

  v12 = 0;
  [(NSFileManager *)self createDirectoryAtPath:v4 withIntermediateDirectories:1 attributes:0 error:&v12];
  v6 = v12;
  v5 = v6;
  if (!v6 || [v6 code] != 516)
  {
    goto LABEL_9;
  }

  v7 = [(NSFileManager *)self _lib_deleteLastValidComponentOfPath:v4];
  v8 = v7;
  if (!v7)
  {
    v11 = 0;
    [(NSFileManager *)self createDirectoryAtPath:v4 withIntermediateDirectories:1 attributes:0 error:&v11];
    v8 = v11;
  }

  v9 = v8;

LABEL_10:

  return v9;
}

- (id)_lib_deleteLastValidComponentOfPath:(id)a3
{
  v4 = a3;
  v10 = 0;
  if ([(NSFileManager *)self fileExistsAtPath:v4 isDirectory:&v10])
  {
    if ((v10 & 1) == 0)
    {
      v9 = 0;
      [(NSFileManager *)self removeItemAtPath:v4 error:&v9];
      v5 = v9;
      goto LABEL_8;
    }
  }

  else
  {
    v6 = [v4 stringByDeletingLastPathComponent];
    if ([v6 length] >= 2)
    {
      v7 = [(NSFileManager *)self _lib_deleteLastValidComponentOfPath:v6];
    }
  }

  v5 = 0;
LABEL_8:

  return v5;
}

- (BOOL)isSignedByAppleFileAtPath:(id)a3 basicCheck:(BOOL)a4
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = self;
  v10 = sub_10014E0CC(v6, v8, a4);

  return v10 & 1;
}

@end
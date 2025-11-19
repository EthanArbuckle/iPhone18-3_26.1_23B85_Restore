@interface NSURL
- (id)rc_URLByAppendingStringToLastComponentBasename:(id)a3;
- (id)rc_URLByReplacingPathExtensionWithExtension:(id)a3;
- (id)rc_URLByStandardizingResolvedPath;
@end

@implementation NSURL

- (id)rc_URLByAppendingStringToLastComponentBasename:(id)a3
{
  v4 = a3;
  v5 = [(NSURL *)self lastPathComponent];
  v6 = [v5 stringByDeletingPathExtension];
  v7 = [v6 stringByAppendingString:v4];

  v8 = [(NSURL *)self pathExtension];
  v9 = [v7 stringByAppendingPathExtension:v8];

  v10 = [(NSURL *)self URLByDeletingLastPathComponent];
  v11 = [v10 URLByAppendingPathComponent:v9];

  return v11;
}

- (id)rc_URLByReplacingPathExtensionWithExtension:(id)a3
{
  v4 = a3;
  v5 = [(NSURL *)self URLByDeletingPathExtension];
  v6 = [v5 URLByAppendingPathExtension:v4];

  return v6;
}

- (id)rc_URLByStandardizingResolvedPath
{
  v3 = +[NSFileManager defaultManager];
  v4 = [(NSURL *)self path];
  v5 = [v3 fileExistsAtPath:v4 isDirectory:0];

  if (v5)
  {
    v6 = [(NSURL *)self URLByResolvingSymlinksInPath];
    v7 = [v6 URLByStandardizingPath];
  }

  else
  {
    v6 = [(NSURL *)self lastPathComponent];
    v8 = [(NSURL *)self URLByDeletingLastPathComponent];
    v9 = [v8 URLByResolvingSymlinksInPath];
    v10 = [v9 URLByStandardizingPath];
    v7 = [v10 URLByAppendingPathComponent:v6];
  }

  return v7;
}

@end
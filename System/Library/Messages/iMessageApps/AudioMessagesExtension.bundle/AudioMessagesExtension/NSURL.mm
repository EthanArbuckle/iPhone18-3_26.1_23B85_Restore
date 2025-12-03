@interface NSURL
- (id)rc_URLByAppendingStringToLastComponentBasename:(id)basename;
- (id)rc_URLByReplacingPathExtensionWithExtension:(id)extension;
- (id)rc_URLByStandardizingResolvedPath;
@end

@implementation NSURL

- (id)rc_URLByAppendingStringToLastComponentBasename:(id)basename
{
  basenameCopy = basename;
  lastPathComponent = [(NSURL *)self lastPathComponent];
  stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];
  v7 = [stringByDeletingPathExtension stringByAppendingString:basenameCopy];

  pathExtension = [(NSURL *)self pathExtension];
  v9 = [v7 stringByAppendingPathExtension:pathExtension];

  uRLByDeletingLastPathComponent = [(NSURL *)self URLByDeletingLastPathComponent];
  v11 = [uRLByDeletingLastPathComponent URLByAppendingPathComponent:v9];

  return v11;
}

- (id)rc_URLByReplacingPathExtensionWithExtension:(id)extension
{
  extensionCopy = extension;
  uRLByDeletingPathExtension = [(NSURL *)self URLByDeletingPathExtension];
  v6 = [uRLByDeletingPathExtension URLByAppendingPathExtension:extensionCopy];

  return v6;
}

- (id)rc_URLByStandardizingResolvedPath
{
  v3 = +[NSFileManager defaultManager];
  path = [(NSURL *)self path];
  v5 = [v3 fileExistsAtPath:path isDirectory:0];

  if (v5)
  {
    uRLByResolvingSymlinksInPath = [(NSURL *)self URLByResolvingSymlinksInPath];
    uRLByStandardizingPath = [uRLByResolvingSymlinksInPath URLByStandardizingPath];
  }

  else
  {
    uRLByResolvingSymlinksInPath = [(NSURL *)self lastPathComponent];
    uRLByDeletingLastPathComponent = [(NSURL *)self URLByDeletingLastPathComponent];
    uRLByResolvingSymlinksInPath2 = [uRLByDeletingLastPathComponent URLByResolvingSymlinksInPath];
    uRLByStandardizingPath2 = [uRLByResolvingSymlinksInPath2 URLByStandardizingPath];
    uRLByStandardizingPath = [uRLByStandardizingPath2 URLByAppendingPathComponent:uRLByResolvingSymlinksInPath];
  }

  return uRLByStandardizingPath;
}

@end
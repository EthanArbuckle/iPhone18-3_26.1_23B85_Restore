@interface NavdPaths
+ (id)pathInCacheDirWithFilename:(id)filename;
@end

@implementation NavdPaths

+ (id)pathInCacheDirWithFilename:(id)filename
{
  v3 = qword_10195E170;
  filenameCopy = filename;
  if (v3 != -1)
  {
    dispatch_once(&qword_10195E170, &stru_101631D50);
  }

  v5 = [qword_10195E168 stringByAppendingPathComponent:filenameCopy];

  return v5;
}

@end
@interface NavdPaths
+ (id)pathInCacheDirWithFilename:(id)a3;
@end

@implementation NavdPaths

+ (id)pathInCacheDirWithFilename:(id)a3
{
  v3 = qword_10195E170;
  v4 = a3;
  if (v3 != -1)
  {
    dispatch_once(&qword_10195E170, &stru_101631D50);
  }

  v5 = [qword_10195E168 stringByAppendingPathComponent:v4];

  return v5;
}

@end
@interface UIApplication
+ (id)applicationCacheDirectory;
+ (id)applicationConfigurationDirectory;
+ (id)applicationDocumentsDirectory;
+ (id)contextDirectoryForAssetWithID:(id)d;
@end

@implementation UIApplication

+ (id)applicationCacheDirectory
{
  v2 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  lastObject = [v2 lastObject];

  v4 = lastObject;
  if (v4)
  {
    v5 = +[NSFileManager defaultManager];
    [v5 createDirectoryAtPath:v4 withIntermediateDirectories:1 attributes:0 error:0];
  }

  return v4;
}

+ (id)applicationDocumentsDirectory
{
  v2 = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, 1uLL, 1);
  lastObject = [v2 lastObject];

  if (lastObject)
  {
    v4 = +[NSFileManager defaultManager];
    [v4 createDirectoryAtPath:lastObject withIntermediateDirectories:1 attributes:0 error:0];
  }

  return lastObject;
}

+ (id)applicationConfigurationDirectory
{
  v2 = +[UIApplication applicationCacheDirectory];
  v3 = [v2 stringByAppendingPathComponent:@"config"];
  if (v3)
  {
    v4 = +[NSFileManager defaultManager];
    [v4 createDirectoryAtPath:v3 withIntermediateDirectories:1 attributes:0 error:0];
  }

  return v3;
}

+ (id)contextDirectoryForAssetWithID:(id)d
{
  dCopy = d;
  applicationDocumentsDirectory = [self applicationDocumentsDirectory];
  v6 = [applicationDocumentsDirectory stringByAppendingPathComponent:dCopy];

  return v6;
}

@end
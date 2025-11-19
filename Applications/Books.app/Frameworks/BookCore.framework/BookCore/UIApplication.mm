@interface UIApplication
+ (id)applicationCacheDirectory;
+ (id)applicationConfigurationDirectory;
+ (id)applicationDocumentsDirectory;
+ (id)contextDirectoryForAssetWithID:(id)a3;
@end

@implementation UIApplication

+ (id)applicationCacheDirectory
{
  v2 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  v3 = [v2 lastObject];

  v4 = v3;
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
  v3 = [v2 lastObject];

  if (v3)
  {
    v4 = +[NSFileManager defaultManager];
    [v4 createDirectoryAtPath:v3 withIntermediateDirectories:1 attributes:0 error:0];
  }

  return v3;
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

+ (id)contextDirectoryForAssetWithID:(id)a3
{
  v4 = a3;
  v5 = [a1 applicationDocumentsDirectory];
  v6 = [v5 stringByAppendingPathComponent:v4];

  return v6;
}

@end
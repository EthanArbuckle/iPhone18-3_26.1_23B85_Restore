@interface AEAssetEngine
+ (id)cachePathForAssetType:(id)a3 withAssetID:(id)a4;
+ (void)setLibraryMgr:(id)a3;
@end

@implementation AEAssetEngine

+ (void)setLibraryMgr:(id)a3
{
  v4 = a3;
  if (qword_342290 != v4)
  {
    v5 = v4;
    objc_storeStrong(&qword_342290, a3);
    v4 = v5;
  }
}

+ (id)cachePathForAssetType:(id)a3 withAssetID:(id)a4
{
  v5 = a4;
  v6 = a3;
  if ([v5 length] < 2)
  {
    v7 = @"AE";
  }

  else
  {
    v7 = [v5 substringToIndex:2];
  }

  v8 = +[UIApplication applicationCacheDirectory];
  v9 = [v8 stringByAppendingPathComponent:@"AssetInfo"];

  v10 = [v9 stringByAppendingPathComponent:v6];

  v11 = [v10 stringByAppendingPathComponent:v7];

  v12 = [v11 stringByAppendingPathComponent:v5];

  v13 = objc_opt_new();
  v19 = 0;
  v14 = [v13 createDirectoryAtPath:v12 withIntermediateDirectories:1 attributes:0 error:&v19];
  v15 = v19;
  v16 = v15;
  if ((v14 & 1) == 0)
  {
    v17 = [v15 localizedDescription];
    [NSException raise:NSInternalInconsistencyException format:@"Could not create cache [path: %@] %@", v12, v17];
  }

  return v12;
}

@end
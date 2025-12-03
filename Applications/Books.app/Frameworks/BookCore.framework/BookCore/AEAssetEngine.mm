@interface AEAssetEngine
+ (id)cachePathForAssetType:(id)type withAssetID:(id)d;
+ (void)setLibraryMgr:(id)mgr;
@end

@implementation AEAssetEngine

+ (void)setLibraryMgr:(id)mgr
{
  mgrCopy = mgr;
  if (qword_342290 != mgrCopy)
  {
    v5 = mgrCopy;
    objc_storeStrong(&qword_342290, mgr);
    mgrCopy = v5;
  }
}

+ (id)cachePathForAssetType:(id)type withAssetID:(id)d
{
  dCopy = d;
  typeCopy = type;
  if ([dCopy length] < 2)
  {
    v7 = @"AE";
  }

  else
  {
    v7 = [dCopy substringToIndex:2];
  }

  v8 = +[UIApplication applicationCacheDirectory];
  v9 = [v8 stringByAppendingPathComponent:@"AssetInfo"];

  v10 = [v9 stringByAppendingPathComponent:typeCopy];

  v11 = [v10 stringByAppendingPathComponent:v7];

  v12 = [v11 stringByAppendingPathComponent:dCopy];

  v13 = objc_opt_new();
  v19 = 0;
  v14 = [v13 createDirectoryAtPath:v12 withIntermediateDirectories:1 attributes:0 error:&v19];
  v15 = v19;
  v16 = v15;
  if ((v14 & 1) == 0)
  {
    localizedDescription = [v15 localizedDescription];
    [NSException raise:NSInternalInconsistencyException format:@"Could not create cache [path: %@] %@", v12, localizedDescription];
  }

  return v12;
}

@end
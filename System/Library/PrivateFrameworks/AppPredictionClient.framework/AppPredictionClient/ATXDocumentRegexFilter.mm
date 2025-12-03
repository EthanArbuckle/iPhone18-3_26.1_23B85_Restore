@interface ATXDocumentRegexFilter
+ (id)sharedInstance;
- (ATXDocumentRegexFilter)init;
- (BOOL)shouldFilterOutBundleId:(id)id andURL:(id)l;
- (BOOL)shouldFilterOutURL:(id)l;
@end

@implementation ATXDocumentRegexFilter

+ (id)sharedInstance
{
  if (sharedInstance__pasOnceToken7_3 != -1)
  {
    +[ATXDocumentRegexFilter sharedInstance];
  }

  v3 = sharedInstance__pasExprOnceResult_4;

  return v3;
}

void __40__ATXDocumentRegexFilter_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_opt_new();
  v2 = sharedInstance__pasExprOnceResult_4;
  sharedInstance__pasExprOnceResult_4 = v1;

  objc_autoreleasePoolPop(v0);
}

- (ATXDocumentRegexFilter)init
{
  v3.receiver = self;
  v3.super_class = ATXDocumentRegexFilter;
  return [(ATXRegexFilter *)&v3 initWithAssetName:@"ATXDocumentRegexFilter"];
}

- (BOOL)shouldFilterOutURL:(id)l
{
  lCopy = l;
  v5 = lCopy;
  if (lCopy)
  {
    path = [lCopy path];
    if (path)
    {
      path2 = [v5 path];
      v8 = [(ATXRegexFilter *)self shouldFilterOutOnlyBasedOnAttribute:path2];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)shouldFilterOutBundleId:(id)id andURL:(id)l
{
  idCopy = id;
  lCopy = l;
  v8 = lCopy;
  if (lCopy)
  {
    path = [lCopy path];
    if (path)
    {
      path2 = [v8 path];
      v11 = [(ATXRegexFilter *)self shouldFilterOutBundleId:idCopy andAttribute:path2];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end
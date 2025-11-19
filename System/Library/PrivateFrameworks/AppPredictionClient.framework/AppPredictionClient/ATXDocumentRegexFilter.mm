@interface ATXDocumentRegexFilter
+ (id)sharedInstance;
- (ATXDocumentRegexFilter)init;
- (BOOL)shouldFilterOutBundleId:(id)a3 andURL:(id)a4;
- (BOOL)shouldFilterOutURL:(id)a3;
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

- (BOOL)shouldFilterOutURL:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 path];
    if (v6)
    {
      v7 = [v5 path];
      v8 = [(ATXRegexFilter *)self shouldFilterOutOnlyBasedOnAttribute:v7];
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

- (BOOL)shouldFilterOutBundleId:(id)a3 andURL:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    v9 = [v7 path];
    if (v9)
    {
      v10 = [v8 path];
      v11 = [(ATXRegexFilter *)self shouldFilterOutBundleId:v6 andAttribute:v10];
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
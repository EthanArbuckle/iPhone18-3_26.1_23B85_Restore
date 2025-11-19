@interface AMSUIWebModel
+ (CGSize)windowSizeFromJSObject:(id)a3 key:(id)a4;
+ (CGSize)windowSizeFromPageModel:(id)a3;
+ (id)backgroundColorFromPageModel:(id)a3;
+ (id)impressionEventFromPageModel:(id)a3 context:(id)a4;
+ (id)navigationBarFromPageModel:(id)a3 context:(id)a4;
+ (id)pageModelFromJSObject:(id)a3 context:(id)a4;
@end

@implementation AMSUIWebModel

+ (id)backgroundColorFromPageModel:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"backgroundColor"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)impressionEventFromPageModel:(id)a3 context:(id)a4
{
  v5 = a4;
  v6 = [a3 objectForKeyedSubscript:@"impressionEvent"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    v8 = [[AMSUIWebMetricsEvent alloc] initWithJSObject:v7 context:v5];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)navigationBarFromPageModel:(id)a3 context:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [AMSUIWebNavigationBarModel alloc];
  v8 = [v6 objectForKeyedSubscript:@"navigationBar"];

  v9 = [(AMSUIWebNavigationBarModel *)v7 initWithJSObject:v8 context:v5];

  return v9;
}

+ (id)pageModelFromJSObject:(id)a3 context:(id)a4
{
  v25[8] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v5 objectForKeyedSubscript:@"modelClass"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v24[0] = @"AMSCameraReaderPageModel";
  v25[0] = objc_opt_class();
  v24[1] = @"AMSDeviceDiagnosticsPageModel";
  v25[1] = objc_opt_class();
  v24[2] = @"AMSDynamicPageModel";
  v25[2] = objc_opt_class();
  v24[3] = @"AMSErrorPageModel";
  v25[3] = objc_opt_class();
  v24[4] = @"AMSLoadingPageModel";
  v25[4] = objc_opt_class();
  v24[5] = @"AMSSafariPageModel";
  v25[5] = objc_opt_class();
  v24[6] = @"AMSRoutePageModel";
  v25[6] = objc_opt_class();
  v24[7] = @"AMSWebPageModel";
  v25[7] = objc_opt_class();
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:8];
  v10 = [v9 objectForKeyedSubscript:v8];
  if (!v10 || (v11 = [[v10 alloc] initWithJSObject:v5 context:v6]) == 0)
  {
    v12 = [MEMORY[0x1E698C968] sharedWebUIConfig];
    if (!v12)
    {
      v12 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v13 = [v12 OSLogObject];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = objc_opt_class();
      v15 = [v6 logKey];
      v18 = 138543874;
      v19 = v14;
      v20 = 2114;
      v21 = v15;
      v22 = 2114;
      v23 = v8;
      _os_log_impl(&dword_1BB036000, v13, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Invalid page model: %{public}@", &v18, 0x20u);
    }

    v11 = 0;
  }

  v16 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (CGSize)windowSizeFromPageModel:(id)a3
{
  [a1 windowSizeFromJSObject:a3 key:@"windowSize"];
  result.height = v4;
  result.width = v3;
  return result;
}

+ (CGSize)windowSizeFromJSObject:(id)a3 key:(id)a4
{
  v4 = [a3 objectForKeyedSubscript:a4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = 0.0;
  v7 = 0.0;
  if ([v5 count] >= 2)
  {
    v8 = [v5 objectAtIndexedSubscript:0];
    if (objc_opt_respondsToSelector())
    {
      v9 = [v5 objectAtIndexedSubscript:0];
      [v9 doubleValue];
      v6 = v10;
    }

    v11 = [v5 objectAtIndexedSubscript:1];
    if (objc_opt_respondsToSelector())
    {
      v12 = [v5 objectAtIndexedSubscript:1];
      [v12 doubleValue];
      v7 = v13;
    }
  }

  v14 = v6;
  v15 = v7;
  result.height = v15;
  result.width = v14;
  return result;
}

@end
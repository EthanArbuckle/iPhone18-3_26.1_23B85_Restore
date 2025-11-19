@interface AMSUIWebMediaQueryAction
- (AMSUIWebMediaQueryAction)initWithJSObject:(id)a3 context:(id)a4;
- (id)runAction;
@end

@implementation AMSUIWebMediaQueryAction

- (AMSUIWebMediaQueryAction)initWithJSObject:(id)a3 context:(id)a4
{
  v6 = a3;
  v19.receiver = self;
  v19.super_class = AMSUIWebMediaQueryAction;
  v7 = [(AMSUIWebAction *)&v19 initWithJSObject:v6 context:a4];
  if (v7)
  {
    v8 = [v6 objectForKeyedSubscript:@"bundleIDs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    bundleIDs = v7->_bundleIDs;
    v7->_bundleIDs = v9;

    v11 = [v6 objectForKeyedSubscript:@"observing"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;
    if (!v12)
    {
      v14 = [v6 objectForKeyedSubscript:@"enabled"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = v14;
      }

      else
      {
        v13 = 0;
      }
    }

    objc_storeStrong(&v7->_observing, v13);
    if (!v12)
    {
    }

    v15 = [v6 objectForKeyedSubscript:@"storeItemIDs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    storeItemIDs = v7->_storeItemIDs;
    v7->_storeItemIDs = v16;
  }

  return v7;
}

- (id)runAction
{
  v16.receiver = self;
  v16.super_class = AMSUIWebMediaQueryAction;
  v3 = [(AMSUIWebAction *)&v16 runAction];
  v4 = [(AMSUIWebMediaQueryAction *)self observing];
  v5 = [(AMSUIWebMediaQueryAction *)self bundleIDs];
  v6 = [(AMSUIWebMediaQueryAction *)self storeItemIDs];
  v7 = [(AMSUIWebAction *)self context];
  v8 = [v7 dataProvider];
  v9 = [v8 appQueryManager];

  if (v4 && ([v4 BOOLValue] & 1) == 0)
  {
    if (v5 | v6)
    {
      [v9 stopObservingAppsWithBundleIDs:v5];
      [v9 stopObservingAppsWithStoreItemIDs:v6];
    }

    else
    {
      [v9 stopObservingAllApps];
    }

    v14 = [MEMORY[0x1E698CAD0] promiseWithResult:MEMORY[0x1E695E118]];
  }

  else
  {
    v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:2];
    if ([v5 count])
    {
      v11 = [v9 queryAppsWithBundleIDs:v5 startObserving:{objc_msgSend(v4, "BOOLValue")}];
      [v10 addObject:v11];
    }

    if ([v6 count])
    {
      v12 = [v9 queryAppsWithStoreItemIDs:v6 startObserving:{objc_msgSend(v4, "BOOLValue")}];
      [v10 addObject:v12];
    }

    v13 = [MEMORY[0x1E698C7F0] promiseWithAll:v10];
    v14 = [v13 promiseAdapter];
  }

  return v14;
}

@end
@interface AMSUIWebMediaQueryAction
- (AMSUIWebMediaQueryAction)initWithJSObject:(id)object context:(id)context;
- (id)runAction;
@end

@implementation AMSUIWebMediaQueryAction

- (AMSUIWebMediaQueryAction)initWithJSObject:(id)object context:(id)context
{
  objectCopy = object;
  v19.receiver = self;
  v19.super_class = AMSUIWebMediaQueryAction;
  v7 = [(AMSUIWebAction *)&v19 initWithJSObject:objectCopy context:context];
  if (v7)
  {
    v8 = [objectCopy objectForKeyedSubscript:@"bundleIDs"];
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

    v11 = [objectCopy objectForKeyedSubscript:@"observing"];
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
      v14 = [objectCopy objectForKeyedSubscript:@"enabled"];
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

    v15 = [objectCopy objectForKeyedSubscript:@"storeItemIDs"];
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
  runAction = [(AMSUIWebAction *)&v16 runAction];
  observing = [(AMSUIWebMediaQueryAction *)self observing];
  bundleIDs = [(AMSUIWebMediaQueryAction *)self bundleIDs];
  storeItemIDs = [(AMSUIWebMediaQueryAction *)self storeItemIDs];
  context = [(AMSUIWebAction *)self context];
  dataProvider = [context dataProvider];
  appQueryManager = [dataProvider appQueryManager];

  if (observing && ([observing BOOLValue] & 1) == 0)
  {
    if (bundleIDs | storeItemIDs)
    {
      [appQueryManager stopObservingAppsWithBundleIDs:bundleIDs];
      [appQueryManager stopObservingAppsWithStoreItemIDs:storeItemIDs];
    }

    else
    {
      [appQueryManager stopObservingAllApps];
    }

    promiseAdapter = [MEMORY[0x1E698CAD0] promiseWithResult:MEMORY[0x1E695E118]];
  }

  else
  {
    v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:2];
    if ([bundleIDs count])
    {
      v11 = [appQueryManager queryAppsWithBundleIDs:bundleIDs startObserving:{objc_msgSend(observing, "BOOLValue")}];
      [v10 addObject:v11];
    }

    if ([storeItemIDs count])
    {
      v12 = [appQueryManager queryAppsWithStoreItemIDs:storeItemIDs startObserving:{objc_msgSend(observing, "BOOLValue")}];
      [v10 addObject:v12];
    }

    v13 = [MEMORY[0x1E698C7F0] promiseWithAll:v10];
    promiseAdapter = [v13 promiseAdapter];
  }

  return promiseAdapter;
}

@end
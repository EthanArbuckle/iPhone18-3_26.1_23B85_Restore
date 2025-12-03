@interface MusicAMSUIWebPlugin
- (MusicAMSUIWebPlugin)initWithBag:(id)bag account:(id)account clientInfo:(id)info propertiesChangedHandler:(id)handler;
- (id)generateGlobalProperties;
- (id)runActionWithIdentifier:(id)identifier options:(id)options;
- (void)_cloudLibaryEnabledDidChange;
- (void)_enableCloudLibraryWithOptions:(id)options completionHandler:(id)handler;
- (void)dealloc;
@end

@implementation MusicAMSUIWebPlugin

- (MusicAMSUIWebPlugin)initWithBag:(id)bag account:(id)account clientInfo:(id)info propertiesChangedHandler:(id)handler
{
  bagCopy = bag;
  accountCopy = account;
  infoCopy = info;
  handlerCopy = handler;
  v21.receiver = self;
  v21.super_class = MusicAMSUIWebPlugin;
  v15 = [(MusicAMSUIWebPlugin *)&v21 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_bag, bag);
    objc_storeStrong(&v16->_account, account);
    objc_storeStrong(&v16->_clientInfo, info);
    v17 = objc_retainBlock(handlerCopy);
    propertiesChangedHandler = v16->_propertiesChangedHandler;
    v16->_propertiesChangedHandler = v17;

    v19 = +[NSNotificationCenter defaultCenter];
    [v19 addObserver:v16 selector:"_cloudLibaryEnabledDidChange" name:MPCloudServiceStatusControllerCloudLibraryEnabledDidChangeNotification object:0];
  }

  return v16;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = MusicAMSUIWebPlugin;
  [(MusicAMSUIWebPlugin *)&v4 dealloc];
}

- (id)generateGlobalProperties
{
  v2 = +[MPCloudController sharedCloudController];
  isCloudLibraryEnabled = [v2 isCloudLibraryEnabled];

  v7 = @"iCloudLibraryEnabled";
  v4 = [NSNumber numberWithBool:isCloudLibraryEnabled];
  v8 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];

  return v5;
}

- (id)runActionWithIdentifier:(id)identifier options:(id)options
{
  optionsCopy = options;
  identifierCopy = identifier;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_FD0;
  v14[3] = &unk_4168;
  v8 = objc_alloc_init(AMSPromise);
  v15 = v8;
  v9 = objc_retainBlock(v14);
  v10 = [identifierCopy isEqualToString:@"enableCloudLibrary"];

  if (v10)
  {
    [(MusicAMSUIWebPlugin *)self _enableCloudLibraryWithOptions:optionsCopy completionHandler:v9];
  }

  else
  {
    v11 = AMSError();
    [v8 finishWithError:v11];
  }

  v12 = v8;

  return v8;
}

- (void)_enableCloudLibraryWithOptions:(id)options completionHandler:(id)handler
{
  optionsCopy = options;
  handlerCopy = handler;
  if (optionsCopy && ([optionsCopy valueForKey:@"mergeWithCloudLibrary"], v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
  {
    v8 = [optionsCopy valueForKey:@"mergeWithCloudLibrary"];
    bOOLValue = [v8 BOOLValue];
  }

  else
  {
    bOOLValue = &dword_0 + 1;
  }

  v13[0] = MPCloudControllerEnableCloudLibraryOptionStartInitialImport;
  v13[1] = MPCloudControllerEnableCloudLibraryOptionMergeWithCloudLibrary;
  v14[0] = &__kCFBooleanTrue;
  v10 = [NSNumber numberWithBool:bOOLValue];
  v14[1] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:2];

  v12 = +[MPCloudController sharedCloudController];
  [v12 enableCloudLibraryWithOptions:v11 completionHandler:handlerCopy];
}

- (void)_cloudLibaryEnabledDidChange
{
  propertiesChangedHandler = [(MusicAMSUIWebPlugin *)self propertiesChangedHandler];
  propertiesChangedHandler[2]();
}

@end
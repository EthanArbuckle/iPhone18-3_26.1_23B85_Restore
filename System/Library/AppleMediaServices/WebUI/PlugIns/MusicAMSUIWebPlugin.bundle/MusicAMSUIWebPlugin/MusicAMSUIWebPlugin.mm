void sub_FD0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);

    [v3 finishWithError:a2];
  }

  else
  {
    v5 = @"status";
    v6 = @"succeeded";
    v4 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];
    [*(a1 + 32) finishWithResult:v4];
  }
}

(void)dealloc;
@end

@implementation MusicAMSUIWebPlugin

- (MusicAMSUIWebPlugin)initWithBag:(id)a3 account:(id)a4 clientInfo:(id)a5 propertiesChangedHandler:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v21.receiver = self;
  v21.super_class = MusicAMSUIWebPlugin;
  v15 = [(MusicAMSUIWebPlugin *)&v21 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_bag, a3);
    objc_storeStrong(&v16->_account, a4);
    objc_storeStrong(&v16->_clientInfo, a5);
    v17 = objc_retainBlock(v14);
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
  v3 = [v2 isCloudLibraryEnabled];

  v7 = @"iCloudLibraryEnabled";
  v4 = [NSNumber numberWithBool:v3];
  v8 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];

  return v5;
}

- (id)runActionWithIdentifier:(id)a3 options:(id)a4
{
  v6 = a4;
  v7 = a3;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_FD0;
  v14[3] = &unk_4168;
  v8 = objc_alloc_init(AMSPromise);
  v15 = v8;
  v9 = objc_retainBlock(v14);
  v10 = [v7 isEqualToString:@"enableCloudLibrary"];

  if (v10)
  {
    [(MusicAMSUIWebPlugin *)self _enableCloudLibraryWithOptions:v6 completionHandler:v9];
  }

  else
  {
    v11 = AMSError();
    [v8 finishWithError:v11];
  }

  v12 = v8;

  return v8;
}

- (void)_enableCloudLibraryWithOptions:(id)a3 completionHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v5 && ([v5 valueForKey:@"mergeWithCloudLibrary"], v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
  {
    v8 = [v5 valueForKey:@"mergeWithCloudLibrary"];
    v9 = [v8 BOOLValue];
  }

  else
  {
    v9 = &dword_0 + 1;
  }

  v13[0] = MPCloudControllerEnableCloudLibraryOptionStartInitialImport;
  v13[1] = MPCloudControllerEnableCloudLibraryOptionMergeWithCloudLibrary;
  v14[0] = &__kCFBooleanTrue;
  v10 = [NSNumber numberWithBool:v9];
  v14[1] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:2];

  v12 = +[MPCloudController sharedCloudController];
  [v12 enableCloudLibraryWithOptions:v11 completionHandler:v6];
}

- (void)_cloudLibaryEnabledDidChange
{
  v2 = [(MusicAMSUIWebPlugin *)self propertiesChangedHandler];
  v2[2]();
}

@end
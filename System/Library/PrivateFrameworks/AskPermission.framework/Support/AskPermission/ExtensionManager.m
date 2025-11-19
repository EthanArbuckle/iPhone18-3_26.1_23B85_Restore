@interface ExtensionManager
+ (id)sharedExtensionManager;
- (BOOL)_requestExtension:(id)a3 withItem:(id)a4 error:(id *)a5;
- (BOOL)checkDownloadQueueWithContentType:(int64_t)a3 error:(id *)a4;
- (BOOL)notifyWithResult:(id)a3 error:(id *)a4;
- (id)_extensionPassingTest:(id)a3 error:(id *)a4;
- (id)_extensionToCheckDownloadQueueWithContentType:(int64_t)a3 error:(id *)a4;
- (id)_extensionToNotifyWithResult:(id)a3 error:(id *)a4;
@end

@implementation ExtensionManager

+ (id)sharedExtensionManager
{
  if (qword_100063CD0 != -1)
  {
    sub_100013DD4();
  }

  v3 = qword_100063CD8;

  return v3;
}

- (BOOL)checkDownloadQueueWithContentType:(int64_t)a3 error:(id *)a4
{
  v6 = [(ExtensionManager *)self _extensionToCheckDownloadQueueWithContentType:a3 error:?];
  if (!v6)
  {
    goto LABEL_3;
  }

  v7 = objc_alloc_init(NSExtensionItem);
  v12 = APRequestExtensionContextUserInfoKeyCheckDownloadQueue;
  v13 = &__kCFBooleanTrue;
  v8 = 1;
  v9 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  [v7 setUserInfo:v9];

  v10 = [(ExtensionManager *)self _requestExtension:v6 withItem:v7 error:a4];
  if ((v10 & 1) == 0)
  {
LABEL_3:
    v8 = 0;
  }

  return v8;
}

- (BOOL)notifyWithResult:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(ExtensionManager *)self _extensionToNotifyWithResult:v6 error:a4];
  if (!v7)
  {
    goto LABEL_3;
  }

  v8 = objc_alloc_init(NSExtensionItem);
  v14 = APRequestExtensionContextUserInfoKeyResult;
  v9 = [v6 compile];
  v15 = v9;
  v10 = 1;
  v11 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  [v8 setUserInfo:v11];

  v12 = [(ExtensionManager *)self _requestExtension:v7 withItem:v8 error:a4];
  if ((v12 & 1) == 0)
  {
LABEL_3:
    v10 = 0;
  }

  return v10;
}

- (id)_extensionToCheckDownloadQueueWithContentType:(int64_t)a3 error:(id *)a4
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100013284;
  v6[3] = &unk_1000552E0;
  v6[4] = a3;
  v4 = [(ExtensionManager *)self _extensionPassingTest:v6 error:a4];

  return v4;
}

- (id)_extensionToNotifyWithResult:(id)a3 error:(id *)a4
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000133E4;
  v9[3] = &unk_100055308;
  v10 = a3;
  v6 = v10;
  v7 = [(ExtensionManager *)self _extensionPassingTest:v9 error:a4];

  return v7;
}

- (id)_extensionPassingTest:(id)a3 error:(id *)a4
{
  v5 = a3;
  v22 = NSExtensionPointName;
  v23 = @"com.apple.askpermission-extension";
  v6 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
  v7 = [NSExtension extensionsWithMatchingAttributes:v6 error:a4];
  if (!v7)
  {
    v10 = 0;
    goto LABEL_14;
  }

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100013748;
  v18[3] = &unk_100055330;
  v19 = v5;
  v8 = [v7 indexOfObjectPassingTest:v18];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100013798;
    v16[3] = &unk_100055358;
    v17 = @"com.apple.iTunesStoreUI.SUAskPermissionExtension";
    v9 = [v7 indexOfObjectPassingTest:v16];
    if (v9 == 0x7FFFFFFFFFFFFFFFLL)
    {

      if (a4)
      {
        APError();
        *a4 = v10 = 0;
      }

      else
      {
        v10 = 0;
      }

      goto LABEL_13;
    }

    v8 = v9;
    v11 = +[APLogConfig sharedDaemonConfig];
    if (!v11)
    {
      v11 = +[APLogConfig sharedConfig];
    }

    v12 = [v11 OSLogObject];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = objc_opt_class();
      *buf = 138543362;
      v21 = v13;
      v14 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: Found default extension", buf, 0xCu);
    }
  }

  v10 = [v7 objectAtIndex:v8];
LABEL_13:

LABEL_14:

  return v10;
}

- (BOOL)_requestExtension:(id)a3 withItem:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v22 = v9;
  v10 = [NSArray arrayWithObjects:&v22 count:1];
  v11 = [v8 beginExtensionRequestWithOptions:0 inputItems:v10 error:a5];

  v12 = v11;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13)
  {
    objc_initWeak(&location, self);
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100013A74;
    v19[3] = &unk_100055380;
    objc_copyWeak(&v20, &location);
    [v8 setRequestCompletionBlock:v19];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100013B94;
    v17[3] = &unk_1000553A8;
    objc_copyWeak(&v18, &location);
    [v8 setRequestCancellationBlock:v17];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100013CB4;
    v15[3] = &unk_1000553D0;
    objc_copyWeak(&v16, &location);
    [v8 setRequestInterruptionBlock:v15];
    objc_destroyWeak(&v16);
    objc_destroyWeak(&v18);
    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }

  return v13 != 0;
}

@end
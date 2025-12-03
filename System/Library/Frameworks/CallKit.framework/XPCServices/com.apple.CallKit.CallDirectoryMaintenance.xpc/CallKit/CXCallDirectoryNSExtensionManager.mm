@interface CXCallDirectoryNSExtensionManager
- (id)installedExtensionsWithError:(id *)error;
@end

@implementation CXCallDirectoryNSExtensionManager

- (id)installedExtensionsWithError:(id *)error
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_100012878;
  v22 = sub_100012888;
  v23 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100012878;
  v16 = sub_100012888;
  v17 = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100012890;
  v8[3] = &unk_100034D50;
  v10 = &v18;
  v11 = &v12;
  v5 = dispatch_semaphore_create(0);
  v9 = v5;
  [(CXCallDirectoryNSExtensionManager *)self extensionsWithCompletionHandler:v8];
  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  if (error)
  {
    *error = v13[5];
  }

  v6 = v19[5];

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v18, 8);

  return v6;
}

@end
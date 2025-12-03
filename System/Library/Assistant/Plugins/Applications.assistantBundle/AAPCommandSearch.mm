@interface AAPCommandSearch
- (void)performWithCompletion:(id)completion;
@end

@implementation AAPCommandSearch

- (void)performWithCompletion:(id)completion
{
  if (completion)
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_2F54;
    v12[3] = &unk_20798;
    v12[4] = completion;
    v5 = objc_alloc_init(NSMutableArray);
    applicationName = [(AAPCommandSearch *)self applicationName];
    v7 = [[NSString alloc] initWithFormat:@"displayName == %@cdw || alternateNames == %@cdw"], applicationName, applicationName);
    v8 = AFSiriLogContextPlugin;
    if (os_log_type_enabled(AFSiriLogContextPlugin, OS_LOG_TYPE_DEBUG))
    {
      sub_F730(v7, v8);
    }

    v9 = [[CSSearchQuery alloc] initWithQueryString:v7 attributes:&off_21FA8];
    v14 = NSFileProtectionCompleteUntilFirstUserAuthentication;
    [v9 setProtectionClasses:{+[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", &v14, 1)}];
    v13 = kUTTypeApplication;
    [v9 setBundleIDs:{+[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", &v13, 1)}];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_2FCC;
    v11[3] = &unk_207C0;
    v11[4] = v5;
    [v9 setFoundItemsHandler:v11];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_3158;
    v10[3] = &unk_207E8;
    v10[4] = v9;
    v10[5] = v5;
    v10[6] = completion;
    v10[7] = v12;
    [v9 setCompletionHandler:v10];
    [v9 start];
  }
}

@end
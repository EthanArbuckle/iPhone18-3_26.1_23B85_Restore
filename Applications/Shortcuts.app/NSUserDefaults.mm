@interface NSUserDefaults
- (void)wf_loadValuesFromCloudKitWithCompletion:(id)completion;
@end

@implementation NSUserDefaults

- (void)wf_loadValuesFromCloudKitWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = WFShortcutsCloudKitContainer();
  v6 = [WFCloudKitItemRequest alloc];
  publicCloudDatabase = [v5 publicCloudDatabase];
  v8 = [v6 initWithContainer:v5 database:publicCloudDatabase];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000B6D94;
  v11[3] = &unk_1000F4388;
  v11[4] = self;
  v12 = completionCopy;
  v9 = completionCopy;
  v10 = [v8 fetchConfigurationAssetWithType:@"com.apple.shortcuts.defaults" completionHandler:v11];
}

@end
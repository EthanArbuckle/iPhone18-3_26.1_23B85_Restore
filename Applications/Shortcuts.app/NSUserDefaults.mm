@interface NSUserDefaults
- (void)wf_loadValuesFromCloudKitWithCompletion:(id)a3;
@end

@implementation NSUserDefaults

- (void)wf_loadValuesFromCloudKitWithCompletion:(id)a3
{
  v4 = a3;
  v5 = WFShortcutsCloudKitContainer();
  v6 = [WFCloudKitItemRequest alloc];
  v7 = [v5 publicCloudDatabase];
  v8 = [v6 initWithContainer:v5 database:v7];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000B6D94;
  v11[3] = &unk_1000F4388;
  v11[4] = self;
  v12 = v4;
  v9 = v4;
  v10 = [v8 fetchConfigurationAssetWithType:@"com.apple.shortcuts.defaults" completionHandler:v11];
}

@end
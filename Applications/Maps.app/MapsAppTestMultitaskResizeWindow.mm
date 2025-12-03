@interface MapsAppTestMultitaskResizeWindow
- (BOOL)runTest;
- (MapsAppTestMultitaskResizeWindow)initWithApplication:(id)application testName:(id)name options:(id)options;
@end

@implementation MapsAppTestMultitaskResizeWindow

- (BOOL)runTest
{
  [(MapsAppTest *)self startedTest];
  v3 = +[FBSOpenApplicationService serviceWithDefaultShellEndpoint];
  v15 = @"com.apple.AppStore";
  v4 = SBSOpenApplicationOptionKeyLayoutRole;
  v13 = SBSOpenApplicationOptionKeyLayoutRole;
  v14 = SBSOpenApplicationLayoutRoleSideNarrow;
  v5 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v16 = v5;
  v6 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];

  v11[0] = FBSOpenApplicationOptionKeyUnlockDevice;
  v11[1] = v4;
  v12[0] = &__kCFBooleanTrue;
  v12[1] = SBSOpenApplicationLayoutRolePrimary;
  v11[2] = SBSOpenApplicationOptionKeyAdditionalApplications;
  v12[2] = v6;
  v7 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:3];
  v8 = [FBSOpenApplicationOptions optionsWithDictionary:v7];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100E5675C;
  v10[3] = &unk_101656358;
  v10[4] = self;
  [v3 openApplication:@"com.apple.Maps" withOptions:v8 completion:v10];

  return 1;
}

- (MapsAppTestMultitaskResizeWindow)initWithApplication:(id)application testName:(id)name options:(id)options
{
  optionsCopy = options;
  v13.receiver = self;
  v13.super_class = MapsAppTestMultitaskResizeWindow;
  v9 = [(MapsAppTest *)&v13 initWithApplication:application testName:name options:optionsCopy];
  if (v9)
  {
    v10 = [optionsCopy objectForKeyedSubscript:@"timeoutInSeconds"];
    v9->_timeoutInSeconds = [v10 integerValue];

    v11 = [optionsCopy objectForKeyedSubscript:@"numberOfResizes"];
    v9->_numberOfResizes = [v11 integerValue];
  }

  return v9;
}

@end
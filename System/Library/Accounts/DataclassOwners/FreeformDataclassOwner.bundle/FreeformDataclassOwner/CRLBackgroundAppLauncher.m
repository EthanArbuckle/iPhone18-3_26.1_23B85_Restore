@interface CRLBackgroundAppLauncher
+ (void)p_backgroundLaunchFreeformWithFrontBoardIfNotAlreadyRunning;
@end

@implementation CRLBackgroundAppLauncher

+ (void)p_backgroundLaunchFreeformWithFrontBoardIfNotAlreadyRunning
{
  v6 = FBSOpenApplicationOptionKeyActivateSuspended;
  v7 = &__kCFBooleanTrue;
  v2 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  v3 = [FBSOpenApplicationOptions optionsWithDictionary:v2];
  v4 = +[FBSOpenApplicationService serviceWithDefaultShellEndpoint];
  v5 = CRLAppBundleIdentifier();
  [v4 openApplication:v5 withOptions:v3 completion:0];
}

@end
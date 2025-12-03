@interface RCWelcomeUtilities
+ (int64_t)reasonToShow;
+ (void)finishShowingWelcomeScreen;
@end

@implementation RCWelcomeUtilities

+ (int64_t)reasonToShow
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 BOOLForKey:@"RCDebugShowWelcome"];

  if (v3)
  {
    return 3;
  }

  v5 = +[UMUserManager sharedManager];
  isMultiUser = [v5 isMultiUser];

  if (isMultiUser)
  {
    return 0;
  }

  v7 = +[NSUserDefaults standardUserDefaults];
  v8 = [v7 stringForKey:@"voicememos.welcome.last_completed"];

  if (v8)
  {
    _LSVersionNumberMakeWithString();
    v9 = +[NSBundle mainBundle];
    infoDictionary = [v9 infoDictionary];
    v11 = [infoDictionary objectForKey:@"CFBundleShortVersionString"];

    _LSVersionNumberMakeWithString();
    MajorComponent = _LSVersionNumberGetMajorComponent();
    LODWORD(MajorComponent) = MajorComponent > _LSVersionNumberGetMajorComponent();

    v4 = 2 * MajorComponent;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

+ (void)finishShowingWelcomeScreen
{
  v2 = +[NSBundle mainBundle];
  infoDictionary = [v2 infoDictionary];
  v5 = [infoDictionary objectForKey:@"CFBundleShortVersionString"];

  v4 = +[NSUserDefaults standardUserDefaults];
  [v4 setObject:v5 forKey:@"voicememos.welcome.last_completed"];
}

@end
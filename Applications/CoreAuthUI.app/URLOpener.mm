@interface URLOpener
+ (id)sharedInstance;
- (id)openURL:(id)l;
@end

@implementation URLOpener

+ (id)sharedInstance
{
  if (qword_1000B0350 != -1)
  {
    sub_10006A9E4();
  }

  v3 = qword_1000B0348;

  return v3;
}

- (id)openURL:(id)l
{
  lCopy = l;
  v4 = +[LSApplicationWorkspace defaultWorkspace];
  v10[0] = FBSOpenApplicationOptionKeyUnlockDevice;
  v10[1] = FBSOpenApplicationOptionKeyPromptUnlockDevice;
  v11[0] = &__kCFBooleanTrue;
  v11[1] = &__kCFBooleanTrue;
  v5 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:2];
  v9 = 0;
  [v4 openURL:lCopy withOptions:v5 error:&v9];

  v6 = v9;
  v7 = v9;

  return v6;
}

@end
@interface MapsApp
- (id)_keyWindowForScreen:(id)screen;
- (void)_maps_callPhoneNumber:(id)number completion:(id)completion;
- (void)userDefaultsDidChange:(id)change;
@end

@implementation MapsApp

- (void)_maps_callPhoneNumber:(id)number completion:(id)completion
{
  numberCopy = number;
  completionCopy = completion;
  if ([numberCopy length])
  {
    v7 = objc_alloc_init(TUCallProviderManager);
    v8 = [TUDialRequest alloc];
    defaultProvider = [v7 defaultProvider];
    v10 = [v8 initWithProvider:defaultProvider];

    v11 = [[TUHandle alloc] initWithType:2 value:numberCopy];
    [v10 setHandle:v11];
    [v10 setShowUIPrompt:0];
    v12 = [[TUCallCenter alloc] initWithQueue:0];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100AD69C0;
    v13[3] = &unk_1016610B8;
    v14 = completionCopy;
    [v12 launchAppForDialRequest:v10 completion:v13];
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

- (id)_keyWindowForScreen:(id)screen
{
  screenCopy = screen;
  if ([screenCopy _userInterfaceIdiom] == 3)
  {
    if ([objc_opt_class() _maps_isAnySceneForegroundForRole:_UIWindowSceneSessionRoleCarPlay])
    {
      activeCarPlayBannerViewController = +[CarDisplayController sharedInstance];
      window = [activeCarPlayBannerViewController window];
    }

    else
    {
      v7 = +[IPCServer sharedServer];
      activeCarPlayBannerViewController = [v7 activeCarPlayBannerViewController];

      view = [activeCarPlayBannerViewController view];
      window2 = [view window];

      if (window2)
      {
        window = window2;
      }

      else
      {
        v10 = +[CarDisplayController sharedInstance];
        window = [v10 window];
      }
    }
  }

  else
  {
    v12.receiver = self;
    v12.super_class = MapsApp;
    window = [(MapsApp *)&v12 _keyWindowForScreen:screenCopy];
  }

  return window;
}

- (void)userDefaultsDidChange:(id)change
{
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 postNotificationName:@"MapsUserDefaultsDidChangeExternallyNotification" object:self];
}

@end
@interface MapsApp
- (id)_keyWindowForScreen:(id)a3;
- (void)_maps_callPhoneNumber:(id)a3 completion:(id)a4;
- (void)userDefaultsDidChange:(id)a3;
@end

@implementation MapsApp

- (void)_maps_callPhoneNumber:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 length])
  {
    v7 = objc_alloc_init(TUCallProviderManager);
    v8 = [TUDialRequest alloc];
    v9 = [v7 defaultProvider];
    v10 = [v8 initWithProvider:v9];

    v11 = [[TUHandle alloc] initWithType:2 value:v5];
    [v10 setHandle:v11];
    [v10 setShowUIPrompt:0];
    v12 = [[TUCallCenter alloc] initWithQueue:0];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100AD69C0;
    v13[3] = &unk_1016610B8;
    v14 = v6;
    [v12 launchAppForDialRequest:v10 completion:v13];
  }

  else if (v6)
  {
    (*(v6 + 2))(v6, 0);
  }
}

- (id)_keyWindowForScreen:(id)a3
{
  v4 = a3;
  if ([v4 _userInterfaceIdiom] == 3)
  {
    if ([objc_opt_class() _maps_isAnySceneForegroundForRole:_UIWindowSceneSessionRoleCarPlay])
    {
      v5 = +[CarDisplayController sharedInstance];
      v6 = [v5 window];
    }

    else
    {
      v7 = +[IPCServer sharedServer];
      v5 = [v7 activeCarPlayBannerViewController];

      v8 = [v5 view];
      v9 = [v8 window];

      if (v9)
      {
        v6 = v9;
      }

      else
      {
        v10 = +[CarDisplayController sharedInstance];
        v6 = [v10 window];
      }
    }
  }

  else
  {
    v12.receiver = self;
    v12.super_class = MapsApp;
    v6 = [(MapsApp *)&v12 _keyWindowForScreen:v4];
  }

  return v6;
}

- (void)userDefaultsDidChange:(id)a3
{
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 postNotificationName:@"MapsUserDefaultsDidChangeExternallyNotification" object:self];
}

@end
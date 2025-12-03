@interface CNContactStore
+ (BOOL)_maps_isAuthorized;
+ (void)promptForContactsAccessIfNeededBeforePerforming:(id)performing;
@end

@implementation CNContactStore

+ (BOOL)_maps_isAuthorized
{
  v2 = tcc_identity_create();
  if (v2)
  {
    v3 = [CNContactStore authorizationStatusForEntityType:0]- 3 < 2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (void)promptForContactsAccessIfNeededBeforePerforming:(id)performing
{
  performingCopy = performing;
  v5 = [CNContactStore authorizationStatusForEntityType:0];
  if (v5 > CNAuthorizationStatusDenied)
  {
    if ((v5 - 3) < 2)
    {
      performingCopy[2](performingCopy, 1);
    }
  }

  else if (v5)
  {
    if (v5 == CNAuthorizationStatusRestricted)
    {
      performingCopy[2](performingCopy, 0);
    }

    else if (v5 == CNAuthorizationStatusDenied)
    {
      v6 = +[UIApplication _maps_keyMapsWindow];
      windowScene = [v6 windowScene];

      if (windowScene)
      {
        v27 = 0;
        v28 = &v27;
        v29 = 0x3032000000;
        v30 = sub_100B0A0EC;
        v31 = sub_100B0A0FC;
        v32 = [[UIWindow alloc] initWithWindowScene:windowScene];
        v8 = objc_alloc_init(UIViewController);
        [v28[5] setRootViewController:v8];

        [v28[5] setWindowLevel:UIWindowLevelAlert + 1.0];
        v9 = +[NSBundle mainBundle];
        v10 = [v9 localizedStringForKey:@"'%@' Would Like to Access Your Contacts" value:@"localized string not found" table:0];

        v11 = +[NSBundle mainBundle];
        v12 = [v11 objectForInfoDictionaryKey:@"CFBundleDisplayName"];
        v13 = [NSString stringWithFormat:v10, v12];
        v14 = +[NSBundle mainBundle];
        v15 = [v14 objectForInfoDictionaryKey:@"NSContactsUsageDescription"];
        v16 = [UIAlertController alertControllerWithTitle:v13 message:v15 preferredStyle:1];

        v17 = +[NSBundle mainBundle];
        v18 = [v17 localizedStringForKey:@"Cancel" value:@"localized string not found" table:0];
        v26[0] = _NSConcreteStackBlock;
        v26[1] = 3221225472;
        v26[2] = sub_100B0A104;
        v26[3] = &unk_101638148;
        v26[4] = &v27;
        v19 = [UIAlertAction actionWithTitle:v18 style:1 handler:v26];

        [v16 addAction:v19];
        v20 = +[NSBundle mainBundle];
        v21 = [v20 localizedStringForKey:@"[Contacts permission prompt] Settings" value:@"localized string not found" table:0];
        v25[0] = _NSConcreteStackBlock;
        v25[1] = 3221225472;
        v25[2] = sub_100B0A118;
        v25[3] = &unk_101638148;
        v25[4] = &v27;
        v22 = [UIAlertAction actionWithTitle:v21 style:0 handler:v25];

        [v16 addAction:v22];
        [v16 setPreferredAction:v22];
        [v28[5] makeKeyAndVisible];
        rootViewController = [v28[5] rootViewController];
        [rootViewController presentViewController:v16 animated:1 completion:0];

        _Block_object_dispose(&v27, 8);
      }

      performingCopy[2](performingCopy, 0);
    }
  }

  else
  {
    v24 = objc_alloc_init(CNContactStore);
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_100B0A04C;
    v33[3] = &unk_101638120;
    selfCopy = self;
    v34 = performingCopy;
    [v24 requestAccessForEntityType:0 completionHandler:v33];
  }
}

@end
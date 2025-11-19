@interface FBATestSupport
- (void)addVisibleClickableLinkWithIdentifier:(id)a3 andUrlString:(id)a4;
- (void)openLink:(id)a3;
- (void)processLaunchArgumentsWithArgs:(id)a3;
@end

@implementation FBATestSupport

- (void)processLaunchArgumentsWithArgs:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v5 = +[NSProcessInfo processInfo];
    v4 = [v5 arguments];
  }

  if (FBKIsInternalInstall())
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v18 = v4;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (!v7)
    {
      goto LABEL_22;
    }

    v8 = v7;
    v9 = *v20;
    while (1)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        if ([v11 isEqualToString:@"FBA_TEST_SESSION"])
        {
          [(FBATestSupport *)self setupTestingEvn];
          continue;
        }

        if ([v11 isEqualToString:@"FBA_TEST_LOG_OUT"])
        {
          v12 = +[FBKData sharedInstance];
          v13 = [v12 loginManager];
          [v13 logOut];
          goto LABEL_13;
        }

        if ([v11 isEqualToString:@"FBA_TEST_RESET_DEFAULTS"])
        {
          v14 = +[NSUserDefaults standardUserDefaults];
          v15 = +[NSBundle mainBundle];
          v16 = [v15 bundleIdentifier];
          [v14 removePersistentDomainForName:v16];
        }

        else if ([v11 hasPrefix:@"FBA_TEST_ULR_SCHEME_BUTTON"])
        {
          v12 = [v11 componentsSeparatedByString:@"|"];
          if ([v12 count] == 2)
          {
            v13 = [v12 lastObject];
            v17 = [v12 firstObject];
            [(FBATestSupport *)self addVisibleClickableLinkWithIdentifier:v17 andUrlString:v13];
            [(FBATestSupport *)self addVisibleClickableLinkWithIdentifier:v17 andUrlString:v13];

LABEL_13:
          }

          continue;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (!v8)
      {
LABEL_22:

        v4 = v18;
        break;
      }
    }
  }
}

- (void)addVisibleClickableLinkWithIdentifier:(id)a3 andUrlString:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[NSNotificationCenter defaultCenter];
  v9 = +[NSOperationQueue mainQueue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000388E4;
  v13[3] = &unk_1000DFA38;
  v14 = v7;
  v15 = self;
  v16 = v6;
  v10 = v6;
  v11 = v7;
  v12 = [v8 addObserverForName:UIApplicationDidBecomeActiveNotification object:0 queue:v9 usingBlock:v13];
}

- (void)openLink:(id)a3
{
  v3 = [a3 titleLabel];
  v6 = [v3 text];

  if (v6)
  {
    v4 = [NSURL URLWithString:?];
    if (v4)
    {
      v5 = +[UIApplication sharedApplication];
      [v5 openURL:v4 options:&__NSDictionary0__struct completionHandler:0];
    }
  }

  _objc_release_x2();
}

@end
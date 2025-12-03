@interface FBATestSupport
- (void)addVisibleClickableLinkWithIdentifier:(id)identifier andUrlString:(id)string;
- (void)openLink:(id)link;
- (void)processLaunchArgumentsWithArgs:(id)args;
@end

@implementation FBATestSupport

- (void)processLaunchArgumentsWithArgs:(id)args
{
  argsCopy = args;
  if (!argsCopy)
  {
    v5 = +[NSProcessInfo processInfo];
    argsCopy = [v5 arguments];
  }

  if (FBKIsInternalInstall())
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v18 = argsCopy;
    v6 = argsCopy;
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
          loginManager = [v12 loginManager];
          [loginManager logOut];
          goto LABEL_13;
        }

        if ([v11 isEqualToString:@"FBA_TEST_RESET_DEFAULTS"])
        {
          v14 = +[NSUserDefaults standardUserDefaults];
          v15 = +[NSBundle mainBundle];
          bundleIdentifier = [v15 bundleIdentifier];
          [v14 removePersistentDomainForName:bundleIdentifier];
        }

        else if ([v11 hasPrefix:@"FBA_TEST_ULR_SCHEME_BUTTON"])
        {
          v12 = [v11 componentsSeparatedByString:@"|"];
          if ([v12 count] == 2)
          {
            loginManager = [v12 lastObject];
            firstObject = [v12 firstObject];
            [(FBATestSupport *)self addVisibleClickableLinkWithIdentifier:firstObject andUrlString:loginManager];
            [(FBATestSupport *)self addVisibleClickableLinkWithIdentifier:firstObject andUrlString:loginManager];

LABEL_13:
          }

          continue;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (!v8)
      {
LABEL_22:

        argsCopy = v18;
        break;
      }
    }
  }
}

- (void)addVisibleClickableLinkWithIdentifier:(id)identifier andUrlString:(id)string
{
  identifierCopy = identifier;
  stringCopy = string;
  v8 = +[NSNotificationCenter defaultCenter];
  v9 = +[NSOperationQueue mainQueue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000388E4;
  v13[3] = &unk_1000DFA38;
  v14 = stringCopy;
  selfCopy = self;
  v16 = identifierCopy;
  v10 = identifierCopy;
  v11 = stringCopy;
  v12 = [v8 addObserverForName:UIApplicationDidBecomeActiveNotification object:0 queue:v9 usingBlock:v13];
}

- (void)openLink:(id)link
{
  titleLabel = [link titleLabel];
  text = [titleLabel text];

  if (text)
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
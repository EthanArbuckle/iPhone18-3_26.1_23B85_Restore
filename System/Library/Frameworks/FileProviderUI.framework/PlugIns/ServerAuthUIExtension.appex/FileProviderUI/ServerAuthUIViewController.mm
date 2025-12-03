@interface ServerAuthUIViewController
- (FPUIAuthenticationViewController)authenticaionVC;
- (ServerAuthUIViewController)init;
- (void)_updateRecentServersListWithServer:(id)server;
- (void)addSMBServerOrShare:(id)share connectionFlowDelegate:(id)delegate;
- (void)cancel;
- (void)cancelAuthenticationSession;
- (void)connectToServerAtAddress:(id)address connectionFlowDelegate:(id)delegate;
- (void)connectionFlowDelegate:(id)delegate didInputCredentials:(id)credentials;
- (void)connectionFlowDelegate:(id)delegate didPickVolumeMountIdentifiers:(id)identifiers;
- (void)didEncounterError:(id)error completionHandler:(id)handler;
- (void)mountedVolumeIdentifiersWithCompletionHandler:(id)handler;
- (void)recentServerRepresentationsWithCompletionHandler:(id)handler;
- (void)removeRecentServerWithRepresentation:(id)representation completion:(id)completion;
- (void)viewDidLoad;
@end

@implementation ServerAuthUIViewController

- (ServerAuthUIViewController)init
{
  v10.receiver = self;
  v10.super_class = ServerAuthUIViewController;
  v2 = [(ServerAuthUIViewController *)&v10 init];
  if (v2)
  {
    v3 = +[SMBClientManager newManager];
    connection = v2->_connection;
    v2->_connection = v3;

    v5 = +[NSMutableDictionary dictionary];
    recentServers = v2->_recentServers;
    v2->_recentServers = v5;

    v7 = objc_opt_new();
    credentialStore = v2->_credentialStore;
    v2->_credentialStore = v7;
  }

  return v2;
}

- (void)viewDidLoad
{
  v29.receiver = self;
  v29.super_class = ServerAuthUIViewController;
  [(ServerAuthUIViewController *)&v29 viewDidLoad];
  extensionContext = [(ServerAuthUIViewController *)self extensionContext];
  initialURL = [extensionContext initialURL];

  v4 = [[FPUIAuthenticationViewController alloc] initWithServerURL:initialURL];
  [v4 setAuthenticationDelegate:self];
  objc_storeWeak(&self->_authenticaionVC, v4);
  [(ServerAuthUIViewController *)self addChildViewController:v4];
  view = [(ServerAuthUIViewController *)self view];
  view2 = [v4 view];
  [view addSubview:view2];

  view3 = [(ServerAuthUIViewController *)self view];
  centerXAnchor = [view3 centerXAnchor];
  view4 = [v4 view];
  centerXAnchor2 = [view4 centerXAnchor];
  v23 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v30[0] = v23;
  view5 = [(ServerAuthUIViewController *)self view];
  centerYAnchor = [view5 centerYAnchor];
  view6 = [v4 view];
  centerYAnchor2 = [view6 centerYAnchor];
  v18 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v30[1] = v18;
  view7 = [(ServerAuthUIViewController *)self view];
  widthAnchor = [view7 widthAnchor];
  view8 = [v4 view];
  widthAnchor2 = [view8 widthAnchor];
  v8 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  v30[2] = v8;
  view9 = [(ServerAuthUIViewController *)self view];
  heightAnchor = [view9 heightAnchor];
  view10 = [v4 view];
  heightAnchor2 = [view10 heightAnchor];
  v13 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
  v30[3] = v13;
  v14 = [NSArray arrayWithObjects:v30 count:4];
  [NSLayoutConstraint activateConstraints:v14];

  [v4 didMoveToParentViewController:self];
}

- (void)cancel
{
  extensionContext = [(ServerAuthUIViewController *)self extensionContext];
  v2 = [NSError errorWithDomain:NSCocoaErrorDomain code:3072 userInfo:0];
  [extensionContext cancelRequestWithError:v2];
}

- (void)connectToServerAtAddress:(id)address connectionFlowDelegate:(id)delegate
{
  addressCopy = address;
  delegateCopy = delegate;
  v8 = [NSURL _webkit_URLWithUserTypedString:addressCopy];
  host = [v8 host];
  if (!host || (v10 = host, [v8 scheme], v11 = objc_claimAutoreleasedReturnValue(), v11, v10, !v11))
  {
    addressCopy = [NSString stringWithFormat:@"%@://%@", @"smb", addressCopy];

    v13 = [NSURL _webkit_URLWithUserTypedString:addressCopy];

    v8 = v13;
    addressCopy = addressCopy;
  }

  v14 = +[NSCharacterSet URLHostAllowedCharacterSet];
  invertedSet = [v14 invertedSet];

  if (v8 && ([v8 host], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "rangeOfCharacterFromSet:", invertedSet), v16, v17 == 0x7FFFFFFFFFFFFFFFLL))
  {
    v18 = 0;
  }

  else
  {
    if (addressCopy)
    {
      v34 = NSURLErrorFailingURLStringErrorKey;
      v35 = addressCopy;
      v19 = [NSDictionary dictionaryWithObjects:&v35 forKeys:&v34 count:1];
    }

    else
    {
      v19 = 0;
    }

    v18 = [NSError errorWithDomain:NSURLErrorDomain code:-1000 userInfo:v19];
  }

  scheme = [v8 scheme];
  if ([scheme compare:@"smb" options:1])
  {

LABEL_14:
    if (v8)
    {
      v32 = NSURLErrorFailingURLErrorKey;
      v33 = v8;
      v22 = [NSDictionary dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    }

    else
    {
      v22 = 0;
    }

    v23 = [NSError errorWithDomain:NSURLErrorDomain code:-1002 userInfo:v22];

    v18 = v23;
    goto LABEL_18;
  }

  isFileURL = [v8 isFileURL];

  if (isFileURL)
  {
    goto LABEL_14;
  }

LABEL_18:
  if (v18)
  {
    [delegateCopy authenticationDelegate:self didEncounterError:v18];
  }

  else
  {
    objc_storeStrong(&self->_serverURL, v8);
    user = [(NSURL *)self->_serverURL user];
    if (user && (v25 = user, [(NSURL *)self->_serverURL password], v26 = objc_claimAutoreleasedReturnValue(), v26, v25, v26))
    {
      [(ServerAuthUIViewController *)self addSMBServerOrShare:self->_serverURL connectionFlowDelegate:delegateCopy];
    }

    else
    {
      connection = self->_connection;
      host2 = [(NSURL *)self->_serverURL host];
      v29[0] = _NSConcreteStackBlock;
      v29[1] = 3221225472;
      v29[2] = sub_100001BA8;
      v29[3] = &unk_1000083A0;
      v30 = delegateCopy;
      selfCopy = self;
      [(SMBClientManager *)connection credentialTypesForServer:host2 completionHandler:v29];
    }
  }
}

- (void)addSMBServerOrShare:(id)share connectionFlowDelegate:(id)delegate
{
  shareCopy = share;
  delegateCopy = delegate;
  objc_initWeak(&location, self);
  connection = self->_connection;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000020A0;
  v11[3] = &unk_1000083F0;
  objc_copyWeak(&v14, &location);
  v9 = delegateCopy;
  v12 = v9;
  v10 = shareCopy;
  v13 = v10;
  [(SMBClientManager *)connection addSMBServerOrShare:v10 completionHandler:v11];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)connectionFlowDelegate:(id)delegate didInputCredentials:(id)credentials
{
  credentialsCopy = credentials;
  delegateCopy = delegate;
  v7 = [[NSURLComponents alloc] initWithURL:self->_serverURL resolvingAgainstBaseURL:0];
  type = [credentialsCopy type];
  if ((type - 1) >= 2)
  {
    if (!type)
    {
      [v7 setUser:@"GUEST"];
      [v7 setPassword:0];
    }
  }

  else
  {
    username = [credentialsCopy username];
    [v7 setUser:username];

    password = [credentialsCopy password];
    [v7 setPassword:password];
  }

  v11 = [v7 URL];
  [(ServerAuthUIViewController *)self addSMBServerOrShare:v11 connectionFlowDelegate:delegateCopy];
}

- (void)connectionFlowDelegate:(id)delegate didPickVolumeMountIdentifiers:(id)identifiers
{
  delegateCopy = delegate;
  identifiersCopy = identifiers;
  objc_initWeak(&location, self);
  connection = self->_connection;
  host = [(NSURL *)self->_serverURL host];
  chosenAuthType = self->_chosenAuthType;
  chosenAuthOptions = self->_chosenAuthOptions;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10000255C;
  v13[3] = &unk_100008468;
  v12 = delegateCopy;
  v14 = v12;
  objc_copyWeak(&v15, &location);
  [(SMBClientManager *)connection addVolumes:identifiersCopy atServer:host credentialType:chosenAuthType credential:chosenAuthOptions completionHandler:v13];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

- (void)cancelAuthenticationSession
{
  extensionContext = [(ServerAuthUIViewController *)self extensionContext];
  v2 = [NSError errorWithDomain:NSCocoaErrorDomain code:3072 userInfo:0];
  [extensionContext cancelRequestWithError:v2];
}

- (void)_updateRecentServersListWithServer:(id)server
{
  serverAuthUI_strippedDownURL = [server serverAuthUI_strippedDownURL];
  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = [v4 objectForKey:@"com.apple.SMBClientProvider.FileProvider.RecentServers"];
  v6 = [v5 mutableCopy];

  if (!v6)
  {
    v6 = +[NSMutableArray array];
  }

  absoluteString = [serverAuthUI_strippedDownURL absoluteString];
  [v6 removeObject:absoluteString];

  absoluteString2 = [serverAuthUI_strippedDownURL absoluteString];
  [v6 insertObject:absoluteString2 atIndex:0];

  if ([v6 count] >= 4)
  {
    do
    {
      lastObject = [v6 lastObject];
      v10 = [[NSURL alloc] initWithString:lastObject];
      [(ServerAuthUICredentialStore *)self->_credentialStore dropCredentialsForServerURL:v10];
      [v6 removeLastObject];
    }

    while ([v6 count] > 3);
  }

  [v4 setObject:v6 forKey:@"com.apple.SMBClientProvider.FileProvider.RecentServers"];
}

- (void)recentServerRepresentationsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v14 = +[NSUserDefaults standardUserDefaults];
  v4 = [v14 objectForKey:@"com.apple.SMBClientProvider.FileProvider.RecentServers"];
  v5 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v4 count]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * v10);
        v12 = objc_opt_new();
        [v12 setIdentifier:v11];
        [v12 setDisplayName:v11];
        v13 = [[NSURL alloc] initWithString:v11];
        [v12 setUrl:v13];

        [v5 addObject:v12];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  handlerCopy[2](handlerCopy, v5, 0);
}

- (void)removeRecentServerWithRepresentation:(id)representation completion:(id)completion
{
  completionCopy = completion;
  representationCopy = representation;
  v13 = +[NSUserDefaults standardUserDefaults];
  v8 = [v13 objectForKey:@"com.apple.SMBClientProvider.FileProvider.RecentServers"];
  v9 = [v8 mutableCopy];

  credentialStore = self->_credentialStore;
  v11 = [representationCopy url];
  [(ServerAuthUICredentialStore *)credentialStore dropCredentialsForServerURL:v11];

  identifier = [representationCopy identifier];

  [v9 removeObject:identifier];
  [v13 setObject:v9 forKey:@"com.apple.SMBClientProvider.FileProvider.RecentServers"];
  completionCopy[2](completionCopy, 0);
}

- (void)mountedVolumeIdentifiersWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [NSError errorWithDomain:NSCocoaErrorDomain code:3328 userInfo:0];
  (*(handler + 2))(handlerCopy, 0, v5);
}

- (void)didEncounterError:(id)error completionHandler:(id)handler
{
  handlerCopy = handler;
  errorCopy = error;
  extensionContext = [(ServerAuthUIViewController *)self extensionContext];
  [extensionContext didEncounterError:errorCopy completionHandler:handlerCopy];
}

- (FPUIAuthenticationViewController)authenticaionVC
{
  WeakRetained = objc_loadWeakRetained(&self->_authenticaionVC);

  return WeakRetained;
}

@end
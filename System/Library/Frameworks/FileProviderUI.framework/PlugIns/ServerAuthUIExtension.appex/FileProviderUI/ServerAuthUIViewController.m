@interface ServerAuthUIViewController
- (FPUIAuthenticationViewController)authenticaionVC;
- (ServerAuthUIViewController)init;
- (void)_updateRecentServersListWithServer:(id)a3;
- (void)addSMBServerOrShare:(id)a3 connectionFlowDelegate:(id)a4;
- (void)cancel;
- (void)cancelAuthenticationSession;
- (void)connectToServerAtAddress:(id)a3 connectionFlowDelegate:(id)a4;
- (void)connectionFlowDelegate:(id)a3 didInputCredentials:(id)a4;
- (void)connectionFlowDelegate:(id)a3 didPickVolumeMountIdentifiers:(id)a4;
- (void)didEncounterError:(id)a3 completionHandler:(id)a4;
- (void)mountedVolumeIdentifiersWithCompletionHandler:(id)a3;
- (void)recentServerRepresentationsWithCompletionHandler:(id)a3;
- (void)removeRecentServerWithRepresentation:(id)a3 completion:(id)a4;
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
  v3 = [(ServerAuthUIViewController *)self extensionContext];
  v28 = [v3 initialURL];

  v4 = [[FPUIAuthenticationViewController alloc] initWithServerURL:v28];
  [v4 setAuthenticationDelegate:self];
  objc_storeWeak(&self->_authenticaionVC, v4);
  [(ServerAuthUIViewController *)self addChildViewController:v4];
  v5 = [(ServerAuthUIViewController *)self view];
  v6 = [v4 view];
  [v5 addSubview:v6];

  v27 = [(ServerAuthUIViewController *)self view];
  v25 = [v27 centerXAnchor];
  v26 = [v4 view];
  v24 = [v26 centerXAnchor];
  v23 = [v25 constraintEqualToAnchor:v24];
  v30[0] = v23;
  v22 = [(ServerAuthUIViewController *)self view];
  v20 = [v22 centerYAnchor];
  v21 = [v4 view];
  v19 = [v21 centerYAnchor];
  v18 = [v20 constraintEqualToAnchor:v19];
  v30[1] = v18;
  v17 = [(ServerAuthUIViewController *)self view];
  v15 = [v17 widthAnchor];
  v16 = [v4 view];
  v7 = [v16 widthAnchor];
  v8 = [v15 constraintEqualToAnchor:v7];
  v30[2] = v8;
  v9 = [(ServerAuthUIViewController *)self view];
  v10 = [v9 heightAnchor];
  v11 = [v4 view];
  v12 = [v11 heightAnchor];
  v13 = [v10 constraintEqualToAnchor:v12];
  v30[3] = v13;
  v14 = [NSArray arrayWithObjects:v30 count:4];
  [NSLayoutConstraint activateConstraints:v14];

  [v4 didMoveToParentViewController:self];
}

- (void)cancel
{
  v3 = [(ServerAuthUIViewController *)self extensionContext];
  v2 = [NSError errorWithDomain:NSCocoaErrorDomain code:3072 userInfo:0];
  [v3 cancelRequestWithError:v2];
}

- (void)connectToServerAtAddress:(id)a3 connectionFlowDelegate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [NSURL _webkit_URLWithUserTypedString:v6];
  v9 = [v8 host];
  if (!v9 || (v10 = v9, [v8 scheme], v11 = objc_claimAutoreleasedReturnValue(), v11, v10, !v11))
  {
    v12 = [NSString stringWithFormat:@"%@://%@", @"smb", v6];

    v13 = [NSURL _webkit_URLWithUserTypedString:v12];

    v8 = v13;
    v6 = v12;
  }

  v14 = +[NSCharacterSet URLHostAllowedCharacterSet];
  v15 = [v14 invertedSet];

  if (v8 && ([v8 host], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "rangeOfCharacterFromSet:", v15), v16, v17 == 0x7FFFFFFFFFFFFFFFLL))
  {
    v18 = 0;
  }

  else
  {
    if (v6)
    {
      v34 = NSURLErrorFailingURLStringErrorKey;
      v35 = v6;
      v19 = [NSDictionary dictionaryWithObjects:&v35 forKeys:&v34 count:1];
    }

    else
    {
      v19 = 0;
    }

    v18 = [NSError errorWithDomain:NSURLErrorDomain code:-1000 userInfo:v19];
  }

  v20 = [v8 scheme];
  if ([v20 compare:@"smb" options:1])
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

  v21 = [v8 isFileURL];

  if (v21)
  {
    goto LABEL_14;
  }

LABEL_18:
  if (v18)
  {
    [v7 authenticationDelegate:self didEncounterError:v18];
  }

  else
  {
    objc_storeStrong(&self->_serverURL, v8);
    v24 = [(NSURL *)self->_serverURL user];
    if (v24 && (v25 = v24, [(NSURL *)self->_serverURL password], v26 = objc_claimAutoreleasedReturnValue(), v26, v25, v26))
    {
      [(ServerAuthUIViewController *)self addSMBServerOrShare:self->_serverURL connectionFlowDelegate:v7];
    }

    else
    {
      connection = self->_connection;
      v28 = [(NSURL *)self->_serverURL host];
      v29[0] = _NSConcreteStackBlock;
      v29[1] = 3221225472;
      v29[2] = sub_100001BA8;
      v29[3] = &unk_1000083A0;
      v30 = v7;
      v31 = self;
      [(SMBClientManager *)connection credentialTypesForServer:v28 completionHandler:v29];
    }
  }
}

- (void)addSMBServerOrShare:(id)a3 connectionFlowDelegate:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  connection = self->_connection;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000020A0;
  v11[3] = &unk_1000083F0;
  objc_copyWeak(&v14, &location);
  v9 = v7;
  v12 = v9;
  v10 = v6;
  v13 = v10;
  [(SMBClientManager *)connection addSMBServerOrShare:v10 completionHandler:v11];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)connectionFlowDelegate:(id)a3 didInputCredentials:(id)a4
{
  v12 = a4;
  v6 = a3;
  v7 = [[NSURLComponents alloc] initWithURL:self->_serverURL resolvingAgainstBaseURL:0];
  v8 = [v12 type];
  if ((v8 - 1) >= 2)
  {
    if (!v8)
    {
      [v7 setUser:@"GUEST"];
      [v7 setPassword:0];
    }
  }

  else
  {
    v9 = [v12 username];
    [v7 setUser:v9];

    v10 = [v12 password];
    [v7 setPassword:v10];
  }

  v11 = [v7 URL];
  [(ServerAuthUIViewController *)self addSMBServerOrShare:v11 connectionFlowDelegate:v6];
}

- (void)connectionFlowDelegate:(id)a3 didPickVolumeMountIdentifiers:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  connection = self->_connection;
  v9 = [(NSURL *)self->_serverURL host];
  chosenAuthType = self->_chosenAuthType;
  chosenAuthOptions = self->_chosenAuthOptions;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10000255C;
  v13[3] = &unk_100008468;
  v12 = v6;
  v14 = v12;
  objc_copyWeak(&v15, &location);
  [(SMBClientManager *)connection addVolumes:v7 atServer:v9 credentialType:chosenAuthType credential:chosenAuthOptions completionHandler:v13];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

- (void)cancelAuthenticationSession
{
  v3 = [(ServerAuthUIViewController *)self extensionContext];
  v2 = [NSError errorWithDomain:NSCocoaErrorDomain code:3072 userInfo:0];
  [v3 cancelRequestWithError:v2];
}

- (void)_updateRecentServersListWithServer:(id)a3
{
  v11 = [a3 serverAuthUI_strippedDownURL];
  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = [v4 objectForKey:@"com.apple.SMBClientProvider.FileProvider.RecentServers"];
  v6 = [v5 mutableCopy];

  if (!v6)
  {
    v6 = +[NSMutableArray array];
  }

  v7 = [v11 absoluteString];
  [v6 removeObject:v7];

  v8 = [v11 absoluteString];
  [v6 insertObject:v8 atIndex:0];

  if ([v6 count] >= 4)
  {
    do
    {
      v9 = [v6 lastObject];
      v10 = [[NSURL alloc] initWithString:v9];
      [(ServerAuthUICredentialStore *)self->_credentialStore dropCredentialsForServerURL:v10];
      [v6 removeLastObject];
    }

    while ([v6 count] > 3);
  }

  [v4 setObject:v6 forKey:@"com.apple.SMBClientProvider.FileProvider.RecentServers"];
}

- (void)recentServerRepresentationsWithCompletionHandler:(id)a3
{
  v3 = a3;
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

  v3[2](v3, v5, 0);
}

- (void)removeRecentServerWithRepresentation:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v13 = +[NSUserDefaults standardUserDefaults];
  v8 = [v13 objectForKey:@"com.apple.SMBClientProvider.FileProvider.RecentServers"];
  v9 = [v8 mutableCopy];

  credentialStore = self->_credentialStore;
  v11 = [v7 url];
  [(ServerAuthUICredentialStore *)credentialStore dropCredentialsForServerURL:v11];

  v12 = [v7 identifier];

  [v9 removeObject:v12];
  [v13 setObject:v9 forKey:@"com.apple.SMBClientProvider.FileProvider.RecentServers"];
  v6[2](v6, 0);
}

- (void)mountedVolumeIdentifiersWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [NSError errorWithDomain:NSCocoaErrorDomain code:3328 userInfo:0];
  (*(a3 + 2))(v4, 0, v5);
}

- (void)didEncounterError:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ServerAuthUIViewController *)self extensionContext];
  [v8 didEncounterError:v7 completionHandler:v6];
}

- (FPUIAuthenticationViewController)authenticaionVC
{
  WeakRetained = objc_loadWeakRetained(&self->_authenticaionVC);

  return WeakRetained;
}

@end
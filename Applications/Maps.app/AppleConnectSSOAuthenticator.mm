@interface AppleConnectSSOAuthenticator
- (AppleConnectSSOAuthenticatorDelegate)delegate;
- (id)queryItemsWithParameters:(id)parameters;
- (void)authenticate;
- (void)authorizationController:(id)controller didCompleteWithAuthorization:(id)authorization;
- (void)authorizationController:(id)controller didCompleteWithError:(id)error;
@end

@implementation AppleConnectSSOAuthenticator

- (AppleConnectSSOAuthenticatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)authorizationController:(id)controller didCompleteWithError:(id)error
{
  errorCopy = error;
  v6 = GEOGetMapsProxyAuthLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v8 = 138412290;
    v9 = errorCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Authentication did fail with error: %@.", &v8, 0xCu);
  }

  delegate = [(AppleConnectSSOAuthenticator *)self delegate];
  [delegate authenticator:self didCompleteWithError:errorCopy];

  [(AppleConnectSSOAuthenticator *)self setAuthenticationController:0];
}

- (void)authorizationController:(id)controller didCompleteWithAuthorization:(id)authorization
{
  authorizationCopy = authorization;
  credential = [authorizationCopy credential];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    credential2 = [authorizationCopy credential];
    authenticatedResponse = [credential2 authenticatedResponse];
  }

  else
  {
    authenticatedResponse = 0;
  }

  v9 = [AppleConnectSSOResult alloc];
  allHeaderFields = [authenticatedResponse allHeaderFields];
  v11 = [(AppleConnectSSOResult *)v9 initWithResponse:allHeaderFields];

  if (v11)
  {
    v12 = GEOGetMapsProxyAuthLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Authentication did succeed.", v15, 2u);
    }

    delegate = [(AppleConnectSSOAuthenticator *)self delegate];
    [delegate authenticator:self didCompleteWithResult:v11];
  }

  else
  {
    delegate = [NSError errorWithDomain:@"AppleConnectErrorDomain" code:-99999 userInfo:0];
    delegate2 = [(AppleConnectSSOAuthenticator *)self delegate];
    [delegate2 authenticator:self didCompleteWithError:delegate];
  }

  [(AppleConnectSSOAuthenticator *)self setAuthenticationController:0];
}

- (void)authenticate
{
  v3 = +[NSMutableDictionary dictionary];
  appIdentifier = [(AppleConnectSSOAuthenticator *)self appIdentifier];
  [v3 setObject:appIdentifier forKeyedSubscript:@"applicationIdentifier"];

  envIdentifier = [(AppleConnectSSOAuthenticator *)self envIdentifier];
  [v3 setObject:envIdentifier forKeyedSubscript:@"environmentIdentifier"];

  v24 = @"DAWRequest";
  stringValue = [&__kCFBooleanTrue stringValue];
  v25 = stringValue;
  v7 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];

  v8 = objc_opt_new();
  v9 = [(AppleConnectSSOAuthenticator *)self queryItemsWithParameters:v7];
  [v8 setQueryItems:v9];

  percentEncodedQuery = [v8 percentEncodedQuery];
  [v3 setObject:percentEncodedQuery forKeyedSubscript:@"otherParameters"];

  v11 = [NSURL URLWithString:@"https://sso.corp.apple.com/authenticate"];
  v12 = [ASAuthorizationSingleSignOnProvider authorizationProviderWithIdentityProviderURL:v11];
  canPerformAuthorization = [v12 canPerformAuthorization];
  v14 = [v12 url];
  v15 = v14;
  if (canPerformAuthorization)
  {
    NSLog(@"INFO: Will authenticate with provider URL: %@.", v14);

    createRequest = [v12 createRequest];
    v17 = [(AppleConnectSSOAuthenticator *)self queryItemsWithParameters:v3];
    [createRequest setAuthorizationOptions:v17];

    v18 = [ASAuthorizationController alloc];
    v23 = createRequest;
    v19 = [NSArray arrayWithObjects:&v23 count:1];
    v20 = [v18 initWithAuthorizationRequests:v19];
    [(AppleConnectSSOAuthenticator *)self setAuthenticationController:v20];

    authenticationController = [(AppleConnectSSOAuthenticator *)self authenticationController];
    [authenticationController setDelegate:self];

    authenticationController2 = [(AppleConnectSSOAuthenticator *)self authenticationController];
    [authenticationController2 performRequests];
  }

  else
  {
    NSLog(@"ERROR: Can't authenticate with provider URL: %@.", v14);

    createRequest = [NSError errorWithDomain:@"AppleConnectErrorDomain" code:-105 userInfo:0];
    authenticationController2 = [(AppleConnectSSOAuthenticator *)self delegate];
    [authenticationController2 authenticator:self didCompleteWithError:createRequest];
  }
}

- (id)queryItemsWithParameters:(id)parameters
{
  parametersCopy = parameters;
  +[NSMutableArray array];
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = sub_100CCF330;
  v11 = v10 = &unk_101650670;
  v12 = &stru_101650648;
  v4 = v11;
  [parametersCopy enumerateKeysAndObjectsUsingBlock:&v7];

  v5 = [v4 copy];

  return v5;
}

@end
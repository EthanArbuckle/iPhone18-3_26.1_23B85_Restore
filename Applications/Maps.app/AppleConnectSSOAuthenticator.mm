@interface AppleConnectSSOAuthenticator
- (AppleConnectSSOAuthenticatorDelegate)delegate;
- (id)queryItemsWithParameters:(id)a3;
- (void)authenticate;
- (void)authorizationController:(id)a3 didCompleteWithAuthorization:(id)a4;
- (void)authorizationController:(id)a3 didCompleteWithError:(id)a4;
@end

@implementation AppleConnectSSOAuthenticator

- (AppleConnectSSOAuthenticatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)authorizationController:(id)a3 didCompleteWithError:(id)a4
{
  v5 = a4;
  v6 = GEOGetMapsProxyAuthLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Authentication did fail with error: %@.", &v8, 0xCu);
  }

  v7 = [(AppleConnectSSOAuthenticator *)self delegate];
  [v7 authenticator:self didCompleteWithError:v5];

  [(AppleConnectSSOAuthenticator *)self setAuthenticationController:0];
}

- (void)authorizationController:(id)a3 didCompleteWithAuthorization:(id)a4
{
  v5 = a4;
  v6 = [v5 credential];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v5 credential];
    v8 = [v7 authenticatedResponse];
  }

  else
  {
    v8 = 0;
  }

  v9 = [AppleConnectSSOResult alloc];
  v10 = [v8 allHeaderFields];
  v11 = [(AppleConnectSSOResult *)v9 initWithResponse:v10];

  if (v11)
  {
    v12 = GEOGetMapsProxyAuthLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Authentication did succeed.", v15, 2u);
    }

    v13 = [(AppleConnectSSOAuthenticator *)self delegate];
    [v13 authenticator:self didCompleteWithResult:v11];
  }

  else
  {
    v13 = [NSError errorWithDomain:@"AppleConnectErrorDomain" code:-99999 userInfo:0];
    v14 = [(AppleConnectSSOAuthenticator *)self delegate];
    [v14 authenticator:self didCompleteWithError:v13];
  }

  [(AppleConnectSSOAuthenticator *)self setAuthenticationController:0];
}

- (void)authenticate
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = [(AppleConnectSSOAuthenticator *)self appIdentifier];
  [v3 setObject:v4 forKeyedSubscript:@"applicationIdentifier"];

  v5 = [(AppleConnectSSOAuthenticator *)self envIdentifier];
  [v3 setObject:v5 forKeyedSubscript:@"environmentIdentifier"];

  v24 = @"DAWRequest";
  v6 = [&__kCFBooleanTrue stringValue];
  v25 = v6;
  v7 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];

  v8 = objc_opt_new();
  v9 = [(AppleConnectSSOAuthenticator *)self queryItemsWithParameters:v7];
  [v8 setQueryItems:v9];

  v10 = [v8 percentEncodedQuery];
  [v3 setObject:v10 forKeyedSubscript:@"otherParameters"];

  v11 = [NSURL URLWithString:@"https://sso.corp.apple.com/authenticate"];
  v12 = [ASAuthorizationSingleSignOnProvider authorizationProviderWithIdentityProviderURL:v11];
  v13 = [v12 canPerformAuthorization];
  v14 = [v12 url];
  v15 = v14;
  if (v13)
  {
    NSLog(@"INFO: Will authenticate with provider URL: %@.", v14);

    v16 = [v12 createRequest];
    v17 = [(AppleConnectSSOAuthenticator *)self queryItemsWithParameters:v3];
    [v16 setAuthorizationOptions:v17];

    v18 = [ASAuthorizationController alloc];
    v23 = v16;
    v19 = [NSArray arrayWithObjects:&v23 count:1];
    v20 = [v18 initWithAuthorizationRequests:v19];
    [(AppleConnectSSOAuthenticator *)self setAuthenticationController:v20];

    v21 = [(AppleConnectSSOAuthenticator *)self authenticationController];
    [v21 setDelegate:self];

    v22 = [(AppleConnectSSOAuthenticator *)self authenticationController];
    [v22 performRequests];
  }

  else
  {
    NSLog(@"ERROR: Can't authenticate with provider URL: %@.", v14);

    v16 = [NSError errorWithDomain:@"AppleConnectErrorDomain" code:-105 userInfo:0];
    v22 = [(AppleConnectSSOAuthenticator *)self delegate];
    [v22 authenticator:self didCompleteWithError:v16];
  }
}

- (id)queryItemsWithParameters:(id)a3
{
  v3 = a3;
  +[NSMutableArray array];
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = sub_100CCF330;
  v11 = v10 = &unk_101650670;
  v12 = &stru_101650648;
  v4 = v11;
  [v3 enumerateKeysAndObjectsUsingBlock:&v7];

  v5 = [v4 copy];

  return v5;
}

@end
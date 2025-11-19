@interface CLBOpenApplicationRequest
- (BOOL)isForeground;
- (BOOL)requiresNewScene;
- (CLBOpenApplicationRequest)initWithPPTActivationContext:(id)a3 completion:(id)a4;
- (CLBOpenApplicationRequest)initWithRequest:(id)a3 completion:(id)a4;
- (id)_requestOptionsDictionary;
@end

@implementation CLBOpenApplicationRequest

- (CLBOpenApplicationRequest)initWithRequest:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v18.receiver = self;
  v18.super_class = CLBOpenApplicationRequest;
  v9 = [(CLBOpenApplicationRequest *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_systemRequest, a3);
    v11 = [v8 copy];
    systemCompletion = v10->_systemCompletion;
    v10->_systemCompletion = v11;

    v13 = +[ClarityBoard sharedApplicationLibrary];
    v14 = [v7 bundleIdentifier];
    v15 = [v13 installedApplicationWithBundleIdentifier:v14];
    application = v10->_application;
    v10->_application = v15;
  }

  return v10;
}

- (CLBOpenApplicationRequest)initWithPPTActivationContext:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v15.receiver = self;
  v15.super_class = CLBOpenApplicationRequest;
  v9 = [(CLBOpenApplicationRequest *)&v15 init];
  if (v9)
  {
    v10 = [v8 copy];
    systemCompletion = v9->_systemCompletion;
    v9->_systemCompletion = v10;

    objc_storeStrong(&v9->_pptActivationContext, a3);
    v12 = [v7 applicationInfo];
    application = v9->_application;
    v9->_application = v12;
  }

  return v9;
}

- (BOOL)isForeground
{
  v3 = [(CLBOpenApplicationRequest *)self _requestOptionsDictionary];
  if ([v3 bs_BOOLForKey:FBSOpenApplicationOptionKeyActivateSuspended])
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v5 = [(CLBOpenApplicationRequest *)self application];
    v4 = [v5 alwaysLaunchesInBackground] ^ 1;
  }

  return v4;
}

- (BOOL)requiresNewScene
{
  v2 = [(CLBOpenApplicationRequest *)self _requestOptionsDictionary];
  v3 = [v2 bs_BOOLForKey:FBSOpenApplicationWithNewScene];

  return v3;
}

- (id)_requestOptionsDictionary
{
  v2 = [(CLBOpenApplicationRequest *)self systemRequest];
  v3 = [v2 options];
  v4 = [v3 dictionary];

  return v4;
}

@end
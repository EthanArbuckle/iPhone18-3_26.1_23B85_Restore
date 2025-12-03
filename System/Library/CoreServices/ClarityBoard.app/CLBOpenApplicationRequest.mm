@interface CLBOpenApplicationRequest
- (BOOL)isForeground;
- (BOOL)requiresNewScene;
- (CLBOpenApplicationRequest)initWithPPTActivationContext:(id)context completion:(id)completion;
- (CLBOpenApplicationRequest)initWithRequest:(id)request completion:(id)completion;
- (id)_requestOptionsDictionary;
@end

@implementation CLBOpenApplicationRequest

- (CLBOpenApplicationRequest)initWithRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  v18.receiver = self;
  v18.super_class = CLBOpenApplicationRequest;
  v9 = [(CLBOpenApplicationRequest *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_systemRequest, request);
    v11 = [completionCopy copy];
    systemCompletion = v10->_systemCompletion;
    v10->_systemCompletion = v11;

    v13 = +[ClarityBoard sharedApplicationLibrary];
    bundleIdentifier = [requestCopy bundleIdentifier];
    v15 = [v13 installedApplicationWithBundleIdentifier:bundleIdentifier];
    application = v10->_application;
    v10->_application = v15;
  }

  return v10;
}

- (CLBOpenApplicationRequest)initWithPPTActivationContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  v15.receiver = self;
  v15.super_class = CLBOpenApplicationRequest;
  v9 = [(CLBOpenApplicationRequest *)&v15 init];
  if (v9)
  {
    v10 = [completionCopy copy];
    systemCompletion = v9->_systemCompletion;
    v9->_systemCompletion = v10;

    objc_storeStrong(&v9->_pptActivationContext, context);
    applicationInfo = [contextCopy applicationInfo];
    application = v9->_application;
    v9->_application = applicationInfo;
  }

  return v9;
}

- (BOOL)isForeground
{
  _requestOptionsDictionary = [(CLBOpenApplicationRequest *)self _requestOptionsDictionary];
  if ([_requestOptionsDictionary bs_BOOLForKey:FBSOpenApplicationOptionKeyActivateSuspended])
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    application = [(CLBOpenApplicationRequest *)self application];
    v4 = [application alwaysLaunchesInBackground] ^ 1;
  }

  return v4;
}

- (BOOL)requiresNewScene
{
  _requestOptionsDictionary = [(CLBOpenApplicationRequest *)self _requestOptionsDictionary];
  v3 = [_requestOptionsDictionary bs_BOOLForKey:FBSOpenApplicationWithNewScene];

  return v3;
}

- (id)_requestOptionsDictionary
{
  systemRequest = [(CLBOpenApplicationRequest *)self systemRequest];
  options = [systemRequest options];
  dictionary = [options dictionary];

  return dictionary;
}

@end
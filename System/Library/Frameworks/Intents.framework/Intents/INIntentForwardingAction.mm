@interface INIntentForwardingAction
- ($115C4C562B26FF47E01F9F4EA65B5887)hostProcessAuditToken;
- (BOOL)executeRemotelyWithVendorRemote:(id)remote completionHandler:(id)handler;
- (INIntentForwardingAction)initWithCoder:(id)coder;
- (INIntentForwardingAction)initWithIntent:(id)intent;
- (NSString)appBundleIdentifier;
- (void)encodeWithCoder:(id)coder;
@end

@implementation INIntentForwardingAction

- ($115C4C562B26FF47E01F9F4EA65B5887)hostProcessAuditToken
{
  v3 = *&self[1].var0[6];
  *retstr->var0 = *&self[1].var0[2];
  *&retstr->var0[4] = v3;
  return self;
}

- (void)encodeWithCoder:(id)coder
{
  intent = self->_intent;
  coderCopy = coder;
  [coderCopy encodeObject:intent forKey:@"intent"];
  v6 = *&self->_hostProcessAuditToken.val[4];
  v8[0] = *self->_hostProcessAuditToken.val;
  v8[1] = v6;
  v7 = [MEMORY[0x1E695DEF0] if_dataWithAuditToken:v8];
  [coderCopy encodeObject:v7 forKey:@"hostProcessAuditToken"];

  [coderCopy encodeBool:self->_allowsScenelessAppLaunch forKey:@"allowsScenelessAppLaunch"];
  [coderCopy encodeDouble:@"requestTimeout" forKey:self->_requestTimeout];
}

- (INIntentForwardingAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"intent"];
  v6 = [(INIntentForwardingAction *)self initWithIntent:v5];

  if (v6)
  {
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"hostProcessAuditToken"];
    v8 = v7;
    if (v7)
    {
      [v7 if_auditToken];
      *v6->_hostProcessAuditToken.val = v11;
      *&v6->_hostProcessAuditToken.val[4] = v12;
    }

    v6->_allowsScenelessAppLaunch = [coderCopy decodeBoolForKey:@"allowsScenelessAppLaunch"];
    [coderCopy decodeDoubleForKey:@"requestTimeout"];
    v6->_requestTimeout = v9;
  }

  return v6;
}

- (BOOL)executeRemotelyWithVendorRemote:(id)remote completionHandler:(id)handler
{
  handlerCopy = handler;
  if (remote || ([(INIntentForwardingAction *)self appBundleIdentifier], v8 = objc_claimAutoreleasedReturnValue(), v8, !v8))
  {
    v7 = 0;
  }

  else
  {
    intent = [(INIntentForwardingAction *)self intent];
    INIssueSandboxExtensionsForFileURLEnumerable(intent);

    v10 = [INAppIntentDeliverer alloc];
    appBundleIdentifier = [(INIntentForwardingAction *)self appBundleIdentifier];
    v12 = [(INAppIntentDeliverer *)v10 initWithBundleIdentifier:appBundleIdentifier intentForwardingAction:self];

    [(INAppIntentDeliverer *)v12 deliverIntentForwardingActionWithResponseHandler:handlerCopy];
    v7 = 1;
  }

  return v7;
}

- (NSString)appBundleIdentifier
{
  appBundleIdentifier = self->_appBundleIdentifier;
  if (!appBundleIdentifier)
  {
    intent = [(INIntentForwardingAction *)self intent];
    _intents_launchIdForCurrentPlatform = [intent _intents_launchIdForCurrentPlatform];
    v9 = 0;
    INExtractAppInfoFromSiriLaunchId(_intents_launchIdForCurrentPlatform, &v9, 0);
    v6 = v9;

    v7 = self->_appBundleIdentifier;
    self->_appBundleIdentifier = v6;

    appBundleIdentifier = self->_appBundleIdentifier;
  }

  return appBundleIdentifier;
}

- (INIntentForwardingAction)initWithIntent:(id)intent
{
  intentCopy = intent;
  v13.receiver = self;
  v13.super_class = INIntentForwardingAction;
  v6 = [(INIntentForwardingAction *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_intent, intent);
    processInfo = [MEMORY[0x1E696AE30] processInfo];
    v9 = processInfo;
    if (processInfo)
    {
      [processInfo if_auditToken];
    }

    else
    {
      v11 = 0u;
      v12 = 0u;
    }

    *v7->_hostProcessAuditToken.val = v11;
    *&v7->_hostProcessAuditToken.val[4] = v12;

    v7->_allowsScenelessAppLaunch = 1;
    v7->_requestTimeout = 10.0;
  }

  return v7;
}

@end
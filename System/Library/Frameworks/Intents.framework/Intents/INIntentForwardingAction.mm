@interface INIntentForwardingAction
- ($115C4C562B26FF47E01F9F4EA65B5887)hostProcessAuditToken;
- (BOOL)executeRemotelyWithVendorRemote:(id)a3 completionHandler:(id)a4;
- (INIntentForwardingAction)initWithCoder:(id)a3;
- (INIntentForwardingAction)initWithIntent:(id)a3;
- (NSString)appBundleIdentifier;
- (void)encodeWithCoder:(id)a3;
@end

@implementation INIntentForwardingAction

- ($115C4C562B26FF47E01F9F4EA65B5887)hostProcessAuditToken
{
  v3 = *&self[1].var0[6];
  *retstr->var0 = *&self[1].var0[2];
  *&retstr->var0[4] = v3;
  return self;
}

- (void)encodeWithCoder:(id)a3
{
  intent = self->_intent;
  v5 = a3;
  [v5 encodeObject:intent forKey:@"intent"];
  v6 = *&self->_hostProcessAuditToken.val[4];
  v8[0] = *self->_hostProcessAuditToken.val;
  v8[1] = v6;
  v7 = [MEMORY[0x1E695DEF0] if_dataWithAuditToken:v8];
  [v5 encodeObject:v7 forKey:@"hostProcessAuditToken"];

  [v5 encodeBool:self->_allowsScenelessAppLaunch forKey:@"allowsScenelessAppLaunch"];
  [v5 encodeDouble:@"requestTimeout" forKey:self->_requestTimeout];
}

- (INIntentForwardingAction)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"intent"];
  v6 = [(INIntentForwardingAction *)self initWithIntent:v5];

  if (v6)
  {
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"hostProcessAuditToken"];
    v8 = v7;
    if (v7)
    {
      [v7 if_auditToken];
      *v6->_hostProcessAuditToken.val = v11;
      *&v6->_hostProcessAuditToken.val[4] = v12;
    }

    v6->_allowsScenelessAppLaunch = [v4 decodeBoolForKey:@"allowsScenelessAppLaunch"];
    [v4 decodeDoubleForKey:@"requestTimeout"];
    v6->_requestTimeout = v9;
  }

  return v6;
}

- (BOOL)executeRemotelyWithVendorRemote:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  if (a3 || ([(INIntentForwardingAction *)self appBundleIdentifier], v8 = objc_claimAutoreleasedReturnValue(), v8, !v8))
  {
    v7 = 0;
  }

  else
  {
    v9 = [(INIntentForwardingAction *)self intent];
    INIssueSandboxExtensionsForFileURLEnumerable(v9);

    v10 = [INAppIntentDeliverer alloc];
    v11 = [(INIntentForwardingAction *)self appBundleIdentifier];
    v12 = [(INAppIntentDeliverer *)v10 initWithBundleIdentifier:v11 intentForwardingAction:self];

    [(INAppIntentDeliverer *)v12 deliverIntentForwardingActionWithResponseHandler:v6];
    v7 = 1;
  }

  return v7;
}

- (NSString)appBundleIdentifier
{
  appBundleIdentifier = self->_appBundleIdentifier;
  if (!appBundleIdentifier)
  {
    v4 = [(INIntentForwardingAction *)self intent];
    v5 = [v4 _intents_launchIdForCurrentPlatform];
    v9 = 0;
    INExtractAppInfoFromSiriLaunchId(v5, &v9, 0);
    v6 = v9;

    v7 = self->_appBundleIdentifier;
    self->_appBundleIdentifier = v6;

    appBundleIdentifier = self->_appBundleIdentifier;
  }

  return appBundleIdentifier;
}

- (INIntentForwardingAction)initWithIntent:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = INIntentForwardingAction;
  v6 = [(INIntentForwardingAction *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_intent, a3);
    v8 = [MEMORY[0x1E696AE30] processInfo];
    v9 = v8;
    if (v8)
    {
      [v8 if_auditToken];
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
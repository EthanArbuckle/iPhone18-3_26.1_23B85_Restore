@interface _GAXAppRepresentation
- (BOOL)_setupGAXClientConnection;
- (BOOL)isCoreAuthUI;
- (BOOL)isHostedByTheSystemApp;
- (BOOL)isPreferences;
- (BOOL)isPurpleBuddy;
- (BOOL)isWebApp;
- (BOOL)prepareForTransitionToWorkspaceAndRetrieveRestrictionsInformation:(id *)information;
- (_GAXAppRepresentation)initWithDelegate:(id)delegate;
- (_GAXAppRepresentationDelegate)delegate;
- (id)containedViewsForArchivedFingerPath:(id)path;
- (id)description;
- (id)restrictionIdentifiers;
- (void)_sendMessageToClient:(id)client replyMessage:(id *)message timeout:(double)timeout description:(id)description;
- (void)dealloc;
- (void)handleDeath;
- (void)restrictionWithIdentifier:(id)identifier didChangeState:(int64_t)state;
- (void)resume;
- (void)suspend;
- (void)terminate;
@end

@implementation _GAXAppRepresentation

- (_GAXAppRepresentation)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v8.receiver = self;
  v8.super_class = _GAXAppRepresentation;
  v5 = [(_GAXAppRepresentation *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
  }

  return v6;
}

- (void)dealloc
{
  appClient = [(_GAXAppRepresentation *)self appClient];
  v4 = appClient;
  if (appClient)
  {
    v9 = 0;
    v5 = [appClient disconnectWithError:&v9];
    v6 = v9;
    if ((v5 & 1) == 0)
    {
      v7 = GAXLogCommon();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v11 = v6;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Guided Access could not disconnect from frontmost app message service gracefully: %{public}@", buf, 0xCu);
      }
    }
  }

  else
  {
    v6 = 0;
  }

  [v4 setPortDeathHandler:0];
  [(_GAXAppRepresentation *)self setBundleIdentifier:0];

  v8.receiver = self;
  v8.super_class = _GAXAppRepresentation;
  [(_GAXAppRepresentation *)&v8 dealloc];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = _GAXAppRepresentation;
  v3 = [(_GAXAppRepresentation *)&v7 description];
  v4 = [v3 mutableCopy];

  v5 = [NSNumber numberWithBool:[(_GAXAppRepresentation *)self isGAXClientLoaded]];
  [v4 appendFormat:@". GAX Client loaded: %@", v5];

  return v4;
}

- (BOOL)isHostedByTheSystemApp
{
  bundleIdentifier = [(_GAXAppRepresentation *)self bundleIdentifier];
  v3 = [bundleIdentifier isEqualToString:@"com.apple.InCallService"];

  return v3;
}

- (BOOL)isWebApp
{
  v3 = +[AXSpringBoardServer server];
  bundleIdentifier = [(_GAXAppRepresentation *)self bundleIdentifier];
  v5 = [v3 gaxIsWebAppAndForegroundRunning:bundleIdentifier];

  return v5;
}

- (BOOL)isPurpleBuddy
{
  bundleIdentifier = [(_GAXAppRepresentation *)self bundleIdentifier];
  v3 = [bundleIdentifier isEqualToString:@"com.apple.purplebuddy"];

  return v3;
}

- (BOOL)isPreferences
{
  bundleIdentifier = [(_GAXAppRepresentation *)self bundleIdentifier];
  v3 = [bundleIdentifier isEqualToString:@"com.apple.Preferences"];

  return v3;
}

- (BOOL)isCoreAuthUI
{
  bundleIdentifier = [(_GAXAppRepresentation *)self bundleIdentifier];
  v3 = [bundleIdentifier isEqualToString:@"com.apple.CoreAuthUI"];

  return v3;
}

- (void)terminate
{
  v3 = GAXLogAppLaunching();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_2BD90(self);
  }

  kill([(_GAXAppRepresentation *)self pid], 9);
}

- (void)suspend
{
  if (!self->_isSuspended)
  {
    [(_GAXAppRepresentation *)self pid];
    AXPidSuspend();
    v3 = GAXLogAppLaunching();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      bundleIdentifier = [(_GAXAppRepresentation *)self bundleIdentifier];
      v5 = 138543362;
      v6 = bundleIdentifier;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "GAX: Suspending process: %{public}@", &v5, 0xCu);
    }

    [(_GAXAppRepresentation *)self pid];
    pid_suspend();
    self->_isSuspended = 1;
  }
}

- (void)resume
{
  if (self->_isSuspended)
  {
    [(_GAXAppRepresentation *)self pid];
    AXPidUnsuspend();
    v3 = GAXLogAppLaunching();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      bundleIdentifier = [(_GAXAppRepresentation *)self bundleIdentifier];
      v5 = 138543362;
      v6 = bundleIdentifier;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "GAX: Resuming process: %{public}@", &v5, 0xCu);
    }

    [(_GAXAppRepresentation *)self pid];
    pid_resume();
    self->_isSuspended = 0;
  }
}

- (id)containedViewsForArchivedFingerPath:(id)path
{
  pathCopy = path;
  if (pathCopy)
  {
    v5 = [[NSDictionary alloc] initWithObjectsAndKeys:{pathCopy, @"GAXIPCPayloadKeyPath", 0}];
    v6 = [[AXIPCMessage alloc] initWithKey:11000 payload:v5];
    v11 = 0;
    [(_GAXAppRepresentation *)self _sendMessageToClient:v6 replyMessage:&v11 timeout:@"get contained views for finger path" description:0.0];
    v7 = v11;

    payload = [v7 payload];

    v9 = [payload objectForKey:@"GAXIPCPayloadKeyViewsForPath"];

    if (!v9)
    {
      _AXLogWithFacility();
    }
  }

  else
  {
    _AXLogWithFacility();
    v9 = 0;
  }

  return v9;
}

- (void)handleDeath
{
  delegate = [(_GAXAppRepresentation *)self delegate];
  if (!delegate)
  {
    v4 = GAXLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_2BE14();
    }
  }

  [delegate gaxAppDidGoInvalid:self];
  [(_GAXAppRepresentation *)self setAppClient:0];
}

- (BOOL)prepareForTransitionToWorkspaceAndRetrieveRestrictionsInformation:(id *)information
{
  v5 = [[AXIPCMessage alloc] initWithKey:11006 payload:0];
  v12 = 0;
  [(_GAXAppRepresentation *)self _sendMessageToClient:v5 replyMessage:&v12 timeout:@"prepare client app for transition to workspace" description:0.0];
  v6 = v12;

  payload = [v6 payload];
  v8 = [payload objectForKey:@"GAXIPCPayloadKeyShouldAbortServerModeTransition"];
  bOOLValue = [v8 BOOLValue];

  if (information)
  {
    if (bOOLValue)
    {
      v10 = 0;
    }

    else
    {
      v10 = payload;
    }

    *information = v10;
  }

  return bOOLValue;
}

- (id)restrictionIdentifiers
{
  v3 = [[AXIPCMessage alloc] initWithKey:11004 payload:0];
  v8 = 0;
  [(_GAXAppRepresentation *)self _sendMessageToClient:v3 replyMessage:&v8 timeout:@"get restriction identifiers" description:0.0];
  v4 = v8;

  payload = [v4 payload];

  v6 = [payload objectForKey:@"GAXIPCPayloadKeyRestrictionIdentifiers"];

  return v6;
}

- (void)restrictionWithIdentifier:(id)identifier didChangeState:(int64_t)state
{
  identifierCopy = identifier;
  v7 = identifierCopy;
  if (identifierCopy)
  {
    v11[0] = @"GAXIPCPayloadKeyRestrictionIdentifier";
    v11[1] = @"GAXIPCPayloadKeyRestrictionState";
    v12[0] = identifierCopy;
    v8 = [NSNumber numberWithInteger:state];
    v12[1] = v8;
    v9 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:2];

    v10 = [[AXIPCMessage alloc] initWithKey:11005 payload:v9];
    [(_GAXAppRepresentation *)self _sendMessageToClient:v10 replyMessage:0 timeout:@"restriction state did change" description:0.0];
  }

  else
  {
    _AXAssert();
  }
}

- (BOOL)_setupGAXClientConnection
{
  if (![(_GAXAppRepresentation *)self _hasValidPID])
  {
    v10 = GAXLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_2BE84(self, v10);
    }

    v3 = GAXLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_2BF60();
    }

    goto LABEL_14;
  }

  if (![(_GAXAppRepresentation *)self isGAXClientLoaded])
  {
    v11 = GAXLogCommon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_2BFF0();
    }

    v3 = GAXLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_2C060();
    }

LABEL_14:
    v9 = 0;
    goto LABEL_15;
  }

  v3 = [[AXIPCClient alloc] initWithServiceName:@"com.apple.accessibility.gax.client"];
  [v3 setUsesPerPidLookup:1];
  [v3 setPid:[(_GAXAppRepresentation *)self pid]];
  v4 = GAXLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(_GAXAppRepresentation *)self pid];
    bundleIdentifier = [(_GAXAppRepresentation *)self bundleIdentifier];
    LODWORD(buf) = 67109378;
    HIDWORD(buf) = v5;
    v16 = 2112;
    v17 = bundleIdentifier;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Created app client for pid %i, identifier %@", &buf, 0x12u);
  }

  [v3 setShouldRegisterCallbackSourceOnMainRunloop:1];
  bundleIdentifier2 = [(_GAXAppRepresentation *)self bundleIdentifier];
  v8 = [NSString stringWithFormat:@"GAXApp-%@", bundleIdentifier2];
  [v3 setClientIdentifier:v8];

  objc_initWeak(&buf, self);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_299BC;
  v13[3] = &unk_4DDF0;
  objc_copyWeak(&v14, &buf);
  [v3 setPortDeathHandler:v13];
  [(_GAXAppRepresentation *)self setAppClient:v3];
  objc_destroyWeak(&v14);
  objc_destroyWeak(&buf);
  v9 = 1;
LABEL_15:

  return v9;
}

- (void)_sendMessageToClient:(id)client replyMessage:(id *)message timeout:(double)timeout description:(id)description
{
  clientCopy = client;
  descriptionCopy = description;
  appClient = [(_GAXAppRepresentation *)self appClient];
  if (!appClient)
  {
    if (![(_GAXAppRepresentation *)self _setupGAXClientConnection])
    {
      v20 = GAXLogCommon();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        bundleIdentifier = [(_GAXAppRepresentation *)self bundleIdentifier];
        v22 = [NSNumber numberWithInt:[(_GAXAppRepresentation *)self pid]];
        *buf = 138543618;
        *v30 = bundleIdentifier;
        *&v30[8] = 2114;
        *&v30[10] = v22;
        _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "Could not set up client GAX connection. bundle:%{public}@ pid:%{public}@", buf, 0x16u);
      }

      appClient = 0;
      goto LABEL_22;
    }

    appClient = [(_GAXAppRepresentation *)self appClient];
  }

  if ([appClient verifyConnectionExists])
  {
    if (message)
    {
      v13 = 0;
      if (timeout > 2.22044605e-16)
      {
        [appClient timeout];
        v13 = v14;
        *&v15 = timeout;
        [appClient setTimeout:v15];
      }

      v27 = 0;
      v16 = [appClient sendMessage:clientCopy withError:&v27];
      v17 = v27;
      v18 = v16;
      *message = v16;
      HIDWORD(v19) = 1018167296;
      if (timeout > 2.22044605e-16)
      {
        LODWORD(v19) = v13;
        [appClient setTimeout:v19];
      }

      if (!v17)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v28 = 0;
      v23 = [appClient sendSimpleMessage:clientCopy withError:&v28];
      v17 = v28;
      if (v23)
      {
LABEL_21:

        goto LABEL_22;
      }
    }

    v24 = GAXLogCommon();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = [(_GAXAppRepresentation *)self pid];
      bundleIdentifier2 = [(_GAXAppRepresentation *)self bundleIdentifier];
      *buf = 67109890;
      *v30 = v25;
      *&v30[4] = 2112;
      *&v30[6] = bundleIdentifier2;
      *&v30[14] = 2114;
      *&v30[16] = descriptionCopy;
      v31 = 2114;
      v32 = v17;
      _os_log_error_impl(&dword_0, v24, OS_LOG_TYPE_ERROR, "Could not send message to client with pid %i identifier %@: %{public}@ (%{public}@)", buf, 0x26u);
    }

    goto LABEL_21;
  }

  if (message)
  {
    *message = 0;
  }

LABEL_22:
}

- (_GAXAppRepresentationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
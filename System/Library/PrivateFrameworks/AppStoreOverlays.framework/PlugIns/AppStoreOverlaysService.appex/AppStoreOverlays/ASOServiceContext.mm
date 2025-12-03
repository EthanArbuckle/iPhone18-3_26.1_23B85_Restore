@interface ASOServiceContext
+ (OS_os_log)log;
- (ASOServiceContextDelegate)delegate;
- (BOOL)hasPrivateEntitlement;
- (BOOL)isAppClip;
- (BOOL)isBetaApp;
- (BOOL)isDevelopmentApp;
- (LSApplicationRecord)appClipParentApplicationRecord;
- (LSApplicationRecord)applicationRecord;
- (NSString)hostAdamID;
- (NSString)hostBundleIdentifier;
- (id)appClipParentBundleIdentifier;
- (id)bundleIdentifierFromApplicationIdentifier:(id)identifier;
- (id)hostContext;
- (void)dismissOverlayWithReply:(id)reply;
- (void)presentOverlayWithConfiguration:(id)configuration delegate:(id)delegate reply:(id)reply;
@end

@implementation ASOServiceContext

+ (OS_os_log)log
{
  if (qword_10002C7D0 != -1)
  {
    sub_100018034();
  }

  v3 = qword_10002C7D8;

  return v3;
}

- (id)hostContext
{
  _auxiliaryConnection = [(ASOServiceContext *)self _auxiliaryConnection];
  remoteObjectProxy = [_auxiliaryConnection remoteObjectProxy];

  return remoteObjectProxy;
}

- (BOOL)isAppClip
{
  isAppClip = self->_isAppClip;
  if (!isAppClip)
  {
    _auxiliaryConnection = [(ASOServiceContext *)self _auxiliaryConnection];
    v5 = [_auxiliaryConnection valueForEntitlement:@"com.apple.developer.on-demand-install-capable"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&self->_isAppClip, v5);
    }

    isAppClip = self->_isAppClip;
  }

  return [(NSNumber *)isAppClip BOOLValue];
}

- (NSString)hostAdamID
{
  hostAdamID = self->_hostAdamID;
  if (hostAdamID)
  {
    v3 = hostAdamID;
  }

  else
  {
    applicationRecord = [(ASOServiceContext *)self applicationRecord];
    iTunesMetadata = [applicationRecord iTunesMetadata];
    v7 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [iTunesMetadata storeItemIdentifier]);

    if ([v7 longLongValue])
    {
      stringValue = [v7 stringValue];
      v9 = self->_hostAdamID;
      self->_hostAdamID = stringValue;

      v3 = self->_hostAdamID;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (NSString)hostBundleIdentifier
{
  hostBundleIdentifier = self->_hostBundleIdentifier;
  if (hostBundleIdentifier)
  {
    v3 = hostBundleIdentifier;
  }

  else
  {
    error = 0;
    _auxiliaryConnection = [(ASOServiceContext *)self _auxiliaryConnection];
    v6 = _auxiliaryConnection;
    if (_auxiliaryConnection)
    {
      [_auxiliaryConnection auditToken];
    }

    else
    {
      memset(&token, 0, sizeof(token));
    }

    v7 = SecTaskCreateWithAuditToken(0, &token);

    v8 = SecTaskCopySigningIdentifier(v7, &error);
    if (error)
    {
      v9 = +[ASOServiceContext log];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [(__CFError *)error debugDescription];
        token.val[0] = 138543362;
        *&token.val[1] = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Unable to get bundle id with error: %{public}@", &token, 0xCu);
      }
    }

    CFRelease(v7);
    v11 = +[ASOServiceContext log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      token.val[0] = 138543362;
      *&token.val[1] = v8;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Found bundle ID for host app: %{public}@", &token, 0xCu);
    }

    v12 = self->_hostBundleIdentifier;
    self->_hostBundleIdentifier = &v8->isa;
    v13 = v8;

    v3 = self->_hostBundleIdentifier;
  }

  return v3;
}

- (id)appClipParentBundleIdentifier
{
  appClipParentBundleIdentifier = self->_appClipParentBundleIdentifier;
  if (appClipParentBundleIdentifier)
  {
    v3 = appClipParentBundleIdentifier;
  }

  else if ([(ASOServiceContext *)self isAppClip])
  {
    _auxiliaryConnection = [(ASOServiceContext *)self _auxiliaryConnection];
    v6 = [_auxiliaryConnection valueForEntitlement:@"com.apple.developer.parent-application-identifiers"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      firstObject = [v6 firstObject];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        firstObject2 = [v6 firstObject];
        v10 = [(ASOServiceContext *)self bundleIdentifierFromApplicationIdentifier:firstObject2];
        v11 = self->_appClipParentBundleIdentifier;
        self->_appClipParentBundleIdentifier = v10;
      }
    }

    v3 = self->_appClipParentBundleIdentifier;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)isBetaApp
{
  isBetaApp = self->_isBetaApp;
  if (!isBetaApp)
  {
    applicationRecord = [(ASOServiceContext *)self applicationRecord];
    v5 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [applicationRecord isBeta]);
    v6 = self->_isBetaApp;
    self->_isBetaApp = v5;

    isBetaApp = self->_isBetaApp;
  }

  return [(NSNumber *)isBetaApp BOOLValue];
}

- (BOOL)isDevelopmentApp
{
  isDevelopmentApp = self->_isDevelopmentApp;
  if (!isDevelopmentApp)
  {
    applicationRecord = [(ASOServiceContext *)self applicationRecord];
    iTunesMetadata = [applicationRecord iTunesMetadata];
    v6 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [iTunesMetadata storeItemIdentifier] == 0);
    v7 = self->_isDevelopmentApp;
    self->_isDevelopmentApp = v6;

    isDevelopmentApp = self->_isDevelopmentApp;
  }

  return [(NSNumber *)isDevelopmentApp BOOLValue];
}

- (LSApplicationRecord)appClipParentApplicationRecord
{
  appClipParentBundleIdentifier = [(ASOServiceContext *)self appClipParentBundleIdentifier];
  if (appClipParentBundleIdentifier)
  {
    v3 = [[LSApplicationRecord alloc] initWithBundleIdentifier:appClipParentBundleIdentifier allowPlaceholder:1 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (LSApplicationRecord)applicationRecord
{
  hostBundleIdentifier = [(ASOServiceContext *)self hostBundleIdentifier];
  if (hostBundleIdentifier)
  {
    v3 = [[LSApplicationRecord alloc] initWithBundleIdentifier:hostBundleIdentifier allowPlaceholder:1 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)hasPrivateEntitlement
{
  hasPrivateEntitlement = self->_hasPrivateEntitlement;
  if (!hasPrivateEntitlement)
  {
    _auxiliaryConnection = [(ASOServiceContext *)self _auxiliaryConnection];
    v5 = [_auxiliaryConnection valueForEntitlement:@"com.apple.private.appstoreoverlays.private"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&self->_hasPrivateEntitlement, v5);
    }

    hasPrivateEntitlement = self->_hasPrivateEntitlement;
  }

  return [(NSNumber *)hasPrivateEntitlement BOOLValue];
}

- (void)presentOverlayWithConfiguration:(id)configuration delegate:(id)delegate reply:(id)reply
{
  configurationCopy = configuration;
  delegateCopy = delegate;
  replyCopy = reply;
  v11 = +[ASOServiceContext log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Received presentOverlayWithConfiguration:", v17, 2u);
  }

  delegate = [(ASOServiceContext *)self delegate];
  if (delegate)
  {
    v13 = delegate;
    delegate2 = [(ASOServiceContext *)self delegate];
    v15 = objc_opt_respondsToSelector();

    if (v15)
    {
      delegate3 = [(ASOServiceContext *)self delegate];
      [delegate3 serviceContext:self presentOverlayWithConfiguration:configurationCopy delegate:delegateCopy];
    }
  }

  replyCopy[2](replyCopy, 0);
}

- (void)dismissOverlayWithReply:(id)reply
{
  replyCopy = reply;
  v5 = +[ASOServiceContext log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Received dismissOverlayWithReply:", v11, 2u);
  }

  delegate = [(ASOServiceContext *)self delegate];
  if (delegate)
  {
    v7 = delegate;
    delegate2 = [(ASOServiceContext *)self delegate];
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      delegate3 = [(ASOServiceContext *)self delegate];
      [delegate3 serviceContextDismissOverlay:self];
    }
  }

  replyCopy[2](replyCopy);
}

- (id)bundleIdentifierFromApplicationIdentifier:(id)identifier
{
  CPCopyBundleIdentifierAndTeamFromApplicationIdentifier();

  return 0;
}

- (ASOServiceContextDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
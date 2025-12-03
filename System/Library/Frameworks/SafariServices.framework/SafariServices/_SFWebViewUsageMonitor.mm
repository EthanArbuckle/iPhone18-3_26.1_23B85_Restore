@interface _SFWebViewUsageMonitor
- (BOOL)shouldAudit;
- (NSString)stringAsAuditKey;
- (_SFWebViewUsageMonitor)initWithHostAppIdentifier:(id)identifier;
- (void)auditUsageIfNeeded;
- (void)checkURL:(id)l;
@end

@implementation _SFWebViewUsageMonitor

- (_SFWebViewUsageMonitor)initWithHostAppIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v10.receiver = self;
  v10.super_class = _SFWebViewUsageMonitor;
  v5 = [(_SFWebViewUsageMonitor *)&v10 init];
  if (v5)
  {
    v6 = [identifierCopy copy];
    hostAppIdentifier = v5->_hostAppIdentifier;
    v5->_hostAppIdentifier = v6;

    v8 = v5;
  }

  return v5;
}

- (BOOL)shouldAudit
{
  if (![(_SFWebViewUsageMonitor *)self userInteracted]&& [(_SFWebViewUsageMonitor *)self urlHasQueryString])
  {
    return 1;
  }

  return [(_SFWebViewUsageMonitor *)self urlHasIDFA];
}

- (NSString)stringAsAuditKey
{
  urlHasIDFA = [(_SFWebViewUsageMonitor *)self urlHasIDFA];
  if ([(_SFWebViewUsageMonitor *)self urlHasQueryString])
  {
    urlHasIDFA |= 2u;
  }

  if (![(_SFWebViewUsageMonitor *)self userInteracted])
  {
    urlHasIDFA |= 4u;
  }

  viewControllerViewIsHidden = [(_SFWebViewUsageMonitor *)self viewControllerViewIsHidden];
  v5 = urlHasIDFA | 8;
  if (!viewControllerViewIsHidden)
  {
    v5 = urlHasIDFA;
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.SafariViewService.WebViewUsage.%X.%@", v5, self->_hostAppIdentifier];
}

- (void)auditUsageIfNeeded
{
  v17 = *MEMORY[0x1E69E9840];
  if ([(_SFWebViewUsageMonitor *)self shouldAudit])
  {
    v3 = WBS_LOG_CHANNEL_PREFIXUserTrackingDetection();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      hostAppIdentifier = self->_hostAppIdentifier;
      v5 = v3;
      v7 = 138544386;
      v8 = hostAppIdentifier;
      v9 = 1024;
      urlHasIDFA = [(_SFWebViewUsageMonitor *)self urlHasIDFA];
      v11 = 1024;
      urlHasQueryString = [(_SFWebViewUsageMonitor *)self urlHasQueryString];
      v13 = 1024;
      userInteracted = [(_SFWebViewUsageMonitor *)self userInteracted];
      v15 = 1024;
      viewControllerViewIsHidden = [(_SFWebViewUsageMonitor *)self viewControllerViewIsHidden];
      _os_log_impl(&dword_1D4644000, v5, OS_LOG_TYPE_DEFAULT, "Found possible user tracking in app (%{public}@). Details: [hasIDFA: %d, hasQueryString: %d, userInteracted: %d, viewIsHidden: %d]", &v7, 0x24u);
    }

    mEMORY[0x1E69C8810] = [MEMORY[0x1E69C8810] sharedLogger];
    [mEMORY[0x1E69C8810] didDetectPossibleUserTrackingInHostApp:self->_hostAppIdentifier urlHasIDFA:-[_SFWebViewUsageMonitor urlHasIDFA](self urlHasQueryString:"urlHasIDFA") userInteracted:-[_SFWebViewUsageMonitor urlHasQueryString](self viewControllerIsHidden:{"urlHasQueryString"), -[_SFWebViewUsageMonitor userInteracted](self, "userInteracted"), -[_SFWebViewUsageMonitor viewControllerViewIsHidden](self, "viewControllerViewIsHidden")}];
  }
}

- (void)checkURL:(id)l
{
  lCopy = l;
  if ([MEMORY[0x1E6963608] instancesRespondToSelector:sel_urlContainsDeviceIdentifierForAdvertising_])
  {
    defaultWorkspace = [MEMORY[0x1E6963608] defaultWorkspace];
    safari_originalDataAsString = [lCopy safari_originalDataAsString];
    -[_SFWebViewUsageMonitor setUrlHasIDFA:](self, "setUrlHasIDFA:", [defaultWorkspace urlContainsDeviceIdentifierForAdvertising:safari_originalDataAsString]);
  }

  query = [lCopy query];
  if ([query length] >= 5)
  {
    [(_SFWebViewUsageMonitor *)self setUrlHasQueryString:1];
  }
}

@end
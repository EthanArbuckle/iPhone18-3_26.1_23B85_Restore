@interface _SFWebViewUsageMonitor
- (BOOL)shouldAudit;
- (NSString)stringAsAuditKey;
- (_SFWebViewUsageMonitor)initWithHostAppIdentifier:(id)a3;
- (void)auditUsageIfNeeded;
- (void)checkURL:(id)a3;
@end

@implementation _SFWebViewUsageMonitor

- (_SFWebViewUsageMonitor)initWithHostAppIdentifier:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = _SFWebViewUsageMonitor;
  v5 = [(_SFWebViewUsageMonitor *)&v10 init];
  if (v5)
  {
    v6 = [v4 copy];
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
  v3 = [(_SFWebViewUsageMonitor *)self urlHasIDFA];
  if ([(_SFWebViewUsageMonitor *)self urlHasQueryString])
  {
    v3 |= 2u;
  }

  if (![(_SFWebViewUsageMonitor *)self userInteracted])
  {
    v3 |= 4u;
  }

  v4 = [(_SFWebViewUsageMonitor *)self viewControllerViewIsHidden];
  v5 = v3 | 8;
  if (!v4)
  {
    v5 = v3;
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
      v10 = [(_SFWebViewUsageMonitor *)self urlHasIDFA];
      v11 = 1024;
      v12 = [(_SFWebViewUsageMonitor *)self urlHasQueryString];
      v13 = 1024;
      v14 = [(_SFWebViewUsageMonitor *)self userInteracted];
      v15 = 1024;
      v16 = [(_SFWebViewUsageMonitor *)self viewControllerViewIsHidden];
      _os_log_impl(&dword_1D4644000, v5, OS_LOG_TYPE_DEFAULT, "Found possible user tracking in app (%{public}@). Details: [hasIDFA: %d, hasQueryString: %d, userInteracted: %d, viewIsHidden: %d]", &v7, 0x24u);
    }

    v6 = [MEMORY[0x1E69C8810] sharedLogger];
    [v6 didDetectPossibleUserTrackingInHostApp:self->_hostAppIdentifier urlHasIDFA:-[_SFWebViewUsageMonitor urlHasIDFA](self urlHasQueryString:"urlHasIDFA") userInteracted:-[_SFWebViewUsageMonitor urlHasQueryString](self viewControllerIsHidden:{"urlHasQueryString"), -[_SFWebViewUsageMonitor userInteracted](self, "userInteracted"), -[_SFWebViewUsageMonitor viewControllerViewIsHidden](self, "viewControllerViewIsHidden")}];
  }
}

- (void)checkURL:(id)a3
{
  v7 = a3;
  if ([MEMORY[0x1E6963608] instancesRespondToSelector:sel_urlContainsDeviceIdentifierForAdvertising_])
  {
    v4 = [MEMORY[0x1E6963608] defaultWorkspace];
    v5 = [v7 safari_originalDataAsString];
    -[_SFWebViewUsageMonitor setUrlHasIDFA:](self, "setUrlHasIDFA:", [v4 urlContainsDeviceIdentifierForAdvertising:v5]);
  }

  v6 = [v7 query];
  if ([v6 length] >= 5)
  {
    [(_SFWebViewUsageMonitor *)self setUrlHasQueryString:1];
  }
}

@end
@interface SFPasswordServiceViewController
- (void)_willAppearInRemoteViewController;
@end

@implementation SFPasswordServiceViewController

- (void)_willAppearInRemoteViewController
{
  v3 = [MEMORY[0x1E69DC888] sf_safariAccentColor];
  v4 = [(SFPasswordServiceViewController *)self view];
  v5 = [v4 window];
  [v5 setTintColor:v3];

  [(SFPasswordServiceViewController *)self _hostAuditToken];
  v6 = WBSApplicationIdentifierFromAuditToken();
  applicationIdentifier = self->_applicationIdentifier;
  self->_applicationIdentifier = v6;

  v8 = self->_applicationIdentifier;
  if (v8)
  {
    if (![(NSString *)v8 length])
    {
      v9 = WBS_LOG_CHANNEL_PREFIXAppPasswordAutoFill();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [(SFPasswordServiceViewController *)v9 _willAppearInRemoteViewController];
      }
    }
  }

  else
  {
    v10 = WBS_LOG_CHANNEL_PREFIXAppPasswordAutoFill();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(SFPasswordServiceViewController *)v10 _willAppearInRemoteViewController];
    }
  }
}

@end
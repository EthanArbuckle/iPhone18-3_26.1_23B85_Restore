@interface MBOpenURLWrapper
- (BOOL)_isHTTPURL;
- (BOOL)_isInternalPrefsURL;
- (BOOL)_isPrepareBuddyURL;
- (MBOpenURLWrapper)init;
- (MBOpenURLWrapper)initWithURL:(id)l;
- (MBOpenURLWrapperDelegate)delegate;
- (void)_openInternalPrefsURL;
- (void)_openPrebuddyURL;
- (void)open;
@end

@implementation MBOpenURLWrapper

- (MBOpenURLWrapper)init
{
  [(MBOpenURLWrapper *)self doesNotRecognizeSelector:a2];
  v3 = [NSURL URLWithString:&stru_100008130];
  v4 = [(MBOpenURLWrapper *)self initWithURL:v3];

  return v4;
}

- (MBOpenURLWrapper)initWithURL:(id)l
{
  lCopy = l;
  v9.receiver = self;
  v9.super_class = MBOpenURLWrapper;
  v5 = [(MBOpenURLWrapper *)&v9 init];
  if (v5)
  {
    v6 = [lCopy copy];
    url = v5->_url;
    v5->_url = v6;
  }

  return v5;
}

- (BOOL)_isHTTPURL
{
  v2 = [(MBOpenURLWrapper *)self url];
  scheme = [v2 scheme];
  lowercaseString = [scheme lowercaseString];

  if ([lowercaseString isEqualToString:@"http"])
  {
    v5 = 1;
  }

  else
  {
    v5 = [lowercaseString isEqualToString:@"https"];
  }

  return v5;
}

- (BOOL)_isPrepareBuddyURL
{
  v2 = [(MBOpenURLWrapper *)self url];
  host = [v2 host];
  lowercaseString = [host lowercaseString];

  LOBYTE(v2) = [lowercaseString isEqualToString:@"prepare.icloud.com"];
  return v2;
}

- (BOOL)_isInternalPrefsURL
{
  v2 = [(MBOpenURLWrapper *)self url];
  path = [v2 path];
  lowercaseString = [path lowercaseString];

  LOBYTE(v2) = [lowercaseString isEqualToString:@"/backup-internal"];
  return v2;
}

- (void)_openPrebuddyURL
{
  v2 = [NSURL URLWithString:@"prefs-prebuddy://"];
  v3 = MBGetDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v6 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Open %@", buf, 0xCu);
    _MBLog();
  }

  v4 = +[LSApplicationWorkspace defaultWorkspace];
  [v4 openURL:v2 withOptions:0];
}

- (void)_openInternalPrefsURL
{
  if (MBIsInternalInstall())
  {
    v2 = [NSURL URLWithString:@"prefs:root=INTERNAL_SETTINGS&path=Backup"];
    v3 = MBGetDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v6 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Open %@", buf, 0xCu);
      _MBLog();
    }

    v4 = +[LSApplicationWorkspace defaultWorkspace];
    [v4 openSensitiveURL:v2 withOptions:0];
  }
}

- (void)open
{
  if ([(MBOpenURLWrapper *)self _isHTTPURL])
  {
    v3 = MBGetDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [(MBOpenURLWrapper *)self url];
      *buf = 138543362;
      v9 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Received associated domain link: %{public}@", buf, 0xCu);

      v7 = [(MBOpenURLWrapper *)self url];
      _MBLog();
    }

    if ([(MBOpenURLWrapper *)self _isPrepareBuddyURL])
    {
      if ([(MBOpenURLWrapper *)self _isInternalPrefsURL])
      {
        [(MBOpenURLWrapper *)self _openInternalPrefsURL];
      }

      else
      {
        delegate = [(MBOpenURLWrapper *)self delegate];
        if (objc_opt_respondsToSelector())
        {
          [delegate openURLWrapper:self willOpenURL:self->_url];
        }

        v6 = MBGetDefaultLog();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Received Prebuddy link. Opening Settings.", buf, 2u);
          _MBLog();
        }

        [(MBOpenURLWrapper *)self _openPrebuddyURL];
        if (objc_opt_respondsToSelector())
        {
          [delegate openURLWrapper:self didOpenURL:self->_url];
        }
      }
    }
  }
}

- (MBOpenURLWrapperDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
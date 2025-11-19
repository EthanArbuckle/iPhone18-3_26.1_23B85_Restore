@interface MapsWebLinkPresenter
- (BOOL)_isValidURLForWebView:(id)a3;
- (BOOL)_isValidURLToOpen:(id)a3;
- (MapsWebLinkPresenter)initWithPresentingViewController:(id)a3;
- (void)presentWebURL:(id)a3;
@end

@implementation MapsWebLinkPresenter

- (BOOL)_isValidURLToOpen:(id)a3
{
  v3 = [a3 scheme];
  v4 = [v3 lowercaseString];

  LOBYTE(v3) = [v4 isEqualToString:@"mailto"];
  return v3;
}

- (BOOL)_isValidURLForWebView:(id)a3
{
  v3 = [a3 scheme];
  v4 = [v3 lowercaseString];

  if ([v4 isEqualToString:@"http"])
  {
    v5 = 1;
  }

  else
  {
    v5 = [v4 isEqualToString:@"https"];
  }

  return v5;
}

- (void)presentWebURL:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && ([v4 absoluteString], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "length"), v6, v7))
  {
    WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);
    v9 = sub_10000FA08(WeakRetained);

    if (v9 != 5)
    {
      v11 = UIApp;
      v16 = UIApplicationOpenURLOptionUniversalLinksOnly;
      v17 = &__kCFBooleanTrue;
      v12 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_1005777AC;
      v13[3] = &unk_101661570;
      v13[4] = self;
      v14 = v5;
      [v11 _openURL:v14 originatingView:0 options:v12 completionHandler:v13];

      goto LABEL_8;
    }

    v10 = +[MKSystemController sharedInstance];
    [v10 openURL:v5 completionHandler:0];
  }

  else
  {
    v10 = sub_100577758();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "URL is nil, early exit", buf, 2u);
    }
  }

LABEL_8:
}

- (MapsWebLinkPresenter)initWithPresentingViewController:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = MapsWebLinkPresenter;
  v5 = [(MapsWebLinkPresenter *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_presentingViewController, v4);
  }

  return v6;
}

@end
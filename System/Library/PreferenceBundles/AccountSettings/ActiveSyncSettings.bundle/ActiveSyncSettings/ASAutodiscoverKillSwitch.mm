@interface ASAutodiscoverKillSwitch
- (void)URLSession:(id)session task:(id)task willPerformHTTPRedirection:(id)redirection newRequest:(id)request completionHandler:(id)handler;
- (void)sendRequestForRedirectWithCompletionHandler:(id)handler;
@end

@implementation ASAutodiscoverKillSwitch

- (void)sendRequestForRedirectWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [NSURL URLWithString:@"https://newaccountredirectdomain.apple.com/outlook.office365.com/autodiscover/autodiscover_v2.json"];
  v6 = [NSMutableURLRequest requestWithURL:v5];

  [v6 _setNonAppInitiated:1];
  v7 = +[NSURLSessionConfiguration ephemeralSessionConfiguration];
  v8 = [NSURLSession sessionWithConfiguration:v7 delegate:self delegateQueue:0];
  [(ASAutodiscoverKillSwitch *)self setAutoDV2RedirectSession:v8];

  autoDV2RedirectSession = [(ASAutodiscoverKillSwitch *)self autoDV2RedirectSession];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_DBFC;
  v15[3] = &unk_30910;
  v15[4] = self;
  v16 = handlerCopy;
  v10 = handlerCopy;
  v11 = [autoDV2RedirectSession dataTaskWithRequest:v6 completionHandler:v15];

  v12 = DALoggingwithCategory();
  v13 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v12, v13))
  {
    *v14 = 0;
    _os_log_impl(&dword_0, v12, v13, "#EASTrafficStarting AutoDV2 Redirect Request Task...", v14, 2u);
  }

  [v11 resume];
}

- (void)URLSession:(id)session task:(id)task willPerformHTTPRedirection:(id)redirection newRequest:(id)request completionHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  v11 = requestCopy;
  v12 = v11;
  if (redirection)
  {
    v13 = DALoggingwithCategory();
    v14 = _CPLog_to_os_log_type[6];
    if (os_log_type_enabled(v13, v14))
    {
      *v15 = 0;
      _os_log_impl(&dword_0, v13, v14, "#EASTrafficReceived AutoDV2 Redirect Response....", v15, 2u);
    }

    v12 = 0;
  }

  handlerCopy[2](handlerCopy, v12);
}

@end
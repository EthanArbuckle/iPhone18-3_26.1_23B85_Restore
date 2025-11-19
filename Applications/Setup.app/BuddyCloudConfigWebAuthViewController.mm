@interface BuddyCloudConfigWebAuthViewController
- (BuddyCloudConfigWebAuthDelegate)delegate;
- (id)_getEncodedMachineInfo;
- (void)_evaluateAuthenticationChallenge:(id)a3 withCompletionHandler:(id)a4;
- (void)_showFailureAlertWithTitle:(id)a3 andMessage:(id)a4;
- (void)cancelButtonTapped;
- (void)download:(id)a3 decideDestinationUsingResponse:(id)a4 suggestedFilename:(id)a5 completionHandler:(id)a6;
- (void)download:(id)a3 didFailWithError:(id)a4 resumeData:(id)a5;
- (void)download:(id)a3 didReceiveAuthenticationChallenge:(id)a4 completionHandler:(id)a5;
- (void)downloadDidFinish:(id)a3;
- (void)viewDidLoad;
- (void)webView:(id)a3 decidePolicyForNavigationResponse:(id)a4 decisionHandler:(id)a5;
- (void)webView:(id)a3 didFailProvisionalNavigation:(id)a4 withError:(id)a5;
- (void)webView:(id)a3 didReceiveAuthenticationChallenge:(id)a4 completionHandler:(id)a5;
- (void)webView:(id)a3 navigationResponse:(id)a4 didBecomeDownload:(id)a5;
@end

@implementation BuddyCloudConfigWebAuthViewController

- (void)viewDidLoad
{
  v23 = self;
  v22 = a2;
  v21.receiver = self;
  v21.super_class = BuddyCloudConfigWebAuthViewController;
  [(BuddyCloudConfigWebAuthViewController *)&v21 viewDidLoad];
  v2 = [UIBarButtonItem alloc];
  v3 = [v2 initWithBarButtonSystemItem:1 target:v23 action:"cancelButtonTapped"];
  v4 = [(BuddyCloudConfigWebAuthViewController *)v23 navigationItem];
  [v4 setLeftBarButtonItem:v3];

  v5 = +[NSBundle mainBundle];
  v6 = [(NSBundle *)v5 localizedStringForKey:@"REMOTE_MANAGEMENT_TITLE" value:&stru_10032F900 table:@"Localizable"];
  [(BuddyCloudConfigWebAuthViewController *)v23 setTitle:v6];

  v20 = objc_opt_new();
  v7 = +[WKWebsiteDataStore nonPersistentDataStore];
  [v20 setWebsiteDataStore:v7];

  v8 = [v20 preferences];
  [v8 _setDiagnosticLoggingEnabled:1];

  v19 = [[WKWebView alloc] initWithFrame:v20 configuration:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [(BuddyCloudConfigWebAuthViewController *)v23 setView:v19];
  [(BuddyCloudConfigWebAuthViewController *)v23 setWebView:v19];
  v9 = v23;
  v10 = [(BuddyCloudConfigWebAuthViewController *)v23 webView];
  [(WKWebView *)v10 setUIDelegate:v9];

  v11 = v23;
  v12 = [(BuddyCloudConfigWebAuthViewController *)v23 webView];
  [(WKWebView *)v12 setNavigationDelegate:v11];

  v13 = [NSMutableURLRequest alloc];
  v14 = [(BuddyCloudConfigWebAuthViewController *)v23 webURL];
  location = [v13 initWithURL:v14];

  v15 = [(BuddyCloudConfigWebAuthViewController *)v23 _getEncodedMachineInfo];
  [location setValue:v15 forHTTPHeaderField:@"x-apple-aspen-deviceinfo"];

  v16 = [(BuddyCloudConfigWebAuthViewController *)v23 webView];
  v17 = [(WKWebView *)v16 loadRequest:location];

  objc_storeStrong(&location, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
}

- (void)webView:(id)a3 didFailProvisionalNavigation:(id)a4 withError:(id)a5
{
  v29 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v27 = 0;
  objc_storeStrong(&v27, a4);
  v26 = 0;
  objc_storeStrong(&v26, a5);
  v7 = [v26 domain];
  v8 = 0;
  if ([v7 isEqualToString:WebKitErrorDomain])
  {
    v8 = [v26 code] == 102;
  }

  if (v8)
  {
    oslog = _BYLoggingFacility();
    v24 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v9 = oslog;
      v10 = v24;
      sub_10006AA68(buf);
      _os_log_impl(&_mh_execute_header, v9, v10, "Suppressing web navigation error caused by policy change", buf, 2u);
    }

    objc_storeStrong(&oslog, 0);
    v22 = 1;
  }

  else
  {
    v11 = +[NSBundle mainBundle];
    v21 = [(NSBundle *)v11 localizedStringForKey:@"REMOTE_MANAGEMENT_FAILED_TO_LOAD_PAGE" value:&stru_10032F900 table:@"Localizable"];

    v12 = [v26 domain];
    v13 = 0;
    if ([v12 isEqualToString:NSURLErrorDomain])
    {
      v13 = [v26 code] == -1003;
    }

    if (v13)
    {
      v14 = [v26 userInfo];
      v20 = [v14 objectForKeyedSubscript:NSURLErrorFailingURLErrorKey];

      v19 = [v20 host];
      v15 = +[NSBundle mainBundle];
      v16 = [(NSBundle *)v15 localizedStringForKey:@"REMOTE_MANAGEMENT_UNABLE_TO_RESOLVE_HOST" value:&stru_10032F900 table:@"Localizable"];
      v18 = [NSString localizedStringWithFormat:v16, v19];

      [(BuddyCloudConfigWebAuthViewController *)v29 _showFailureAlertWithTitle:v21 andMessage:v18];
      objc_storeStrong(&v18, 0);
      objc_storeStrong(&v19, 0);
      objc_storeStrong(&v20, 0);
    }

    else
    {
      v17 = [v26 description];
      [(BuddyCloudConfigWebAuthViewController *)v29 _showFailureAlertWithTitle:v21 andMessage:v17];
      objc_storeStrong(&v17, 0);
    }

    objc_storeStrong(&v21, 0);
    v22 = 0;
  }

  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(location, 0);
}

- (void)webView:(id)a3 decidePolicyForNavigationResponse:(id)a4 decisionHandler:(id)a5
{
  v35 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v33 = 0;
  objc_storeStrong(&v33, a4);
  v32 = 0;
  objc_storeStrong(&v32, a5);
  v31 = [v33 response];
  v7 = [v31 MIMEType];
  LOBYTE(a4) = [v7 isEqualToString:@"application/x-apple-aspen-config"];

  if (a4)
  {
    v8 = [(BuddyCloudConfigWebAuthViewController *)v35 webURL];
    v30 = [(NSURL *)v8 host];

    v9 = [v31 URL];
    v29 = [v9 host];

    if ([v30 caseInsensitiveCompare:v29])
    {
      oslog = _BYLoggingFacility();
      v27 = 16;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        v10 = oslog;
        v11 = v27;
        sub_10006AA68(buf);
        _os_log_error_impl(&_mh_execute_header, v10, v11, "domain of download does not match domain of initial URL from cloud config!", buf, 2u);
      }

      objc_storeStrong(&oslog, 0);
      (*(v32 + 2))(v32, 0);
      v25 = 1;
    }

    else
    {
      (*(v32 + 2))(v32, 2);
      v25 = 1;
    }

    objc_storeStrong(&v29, 0);
    objc_storeStrong(&v30, 0);
  }

  else
  {
    v23 = 0;
    v12 = 0;
    if ([v31 statusCode] == 403)
    {
      v24 = [v31 MIMEType];
      v23 = 1;
      v12 = [v24 isEqualToString:DMCHTTPContentTypeApplicationJSON];
    }

    if (v23)
    {
    }

    if (v12)
    {
      [(BuddyCloudConfigWebAuthViewController *)v35 setWillDownloadError:1];
      (*(v32 + 2))(v32, 2);
      v25 = 1;
    }

    else if ([v31 statusCode] == 404)
    {
      v22 = _BYLoggingFacility();
      v21 = 16;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v13 = v22;
        v14 = v21;
        sub_10006AA68(v20);
        _os_log_error_impl(&_mh_execute_header, v13, v14, "recieved 404 response from website!", v20, 2u);
      }

      objc_storeStrong(&v22, 0);
      (*(v32 + 2))(v32, 0);
      v25 = 1;
    }

    else
    {
      (*(v32 + 2))(v32, 1);
      v19 = _BYLoggingFacility();
      v18 = 16;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v15 = v19;
        v16 = v18;
        sub_10006AA68(v17);
        _os_log_error_impl(&_mh_execute_header, v15, v16, "did not recieve download response!", v17, 2u);
      }

      objc_storeStrong(&v19, 0);
      v25 = 0;
    }
  }

  objc_storeStrong(&v31, 0);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(&v33, 0);
  objc_storeStrong(location, 0);
}

- (void)webView:(id)a3 didReceiveAuthenticationChallenge:(id)a4 completionHandler:(id)a5
{
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v13 = 0;
  objc_storeStrong(&v13, a4);
  v12 = 0;
  objc_storeStrong(&v12, a5);
  oslog = _BYLoggingFacility();
  v10 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v7 = oslog;
    v8 = v10;
    sub_10006AA68(v9);
    _os_log_impl(&_mh_execute_header, v7, v8, "webview didReceiveAuthenticationChallenge", v9, 2u);
  }

  objc_storeStrong(&oslog, 0);
  [(BuddyCloudConfigWebAuthViewController *)v15 _evaluateAuthenticationChallenge:v13 withCompletionHandler:v12];
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

- (void)webView:(id)a3 navigationResponse:(id)a4 didBecomeDownload:(id)a5
{
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v13 = 0;
  objc_storeStrong(&v13, a4);
  v12 = 0;
  objc_storeStrong(&v12, a5);
  oslog = _BYLoggingFacility();
  v10 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v7 = oslog;
    v8 = v10;
    sub_10006AA68(v9);
    _os_log_impl(&_mh_execute_header, v7, v8, "webview navigationResponse didBecomeDownload", v9, 2u);
  }

  objc_storeStrong(&oslog, 0);
  [v12 setDelegate:v15];
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

- (void)download:(id)a3 decideDestinationUsingResponse:(id)a4 suggestedFilename:(id)a5 completionHandler:(id)a6
{
  v20 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v18 = 0;
  objc_storeStrong(&v18, a4);
  v17 = 0;
  objc_storeStrong(&v17, a5);
  v16 = 0;
  objc_storeStrong(&v16, a6);
  oslog = _BYLoggingFacility();
  v14 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v9 = oslog;
    v10 = v14;
    sub_10006AA68(buf);
    _os_log_impl(&_mh_execute_header, v9, v10, "wkdownload decideDestinationUsingResponse", buf, 2u);
  }

  objc_storeStrong(&oslog, 0);
  v12 = [NSString stringWithFormat:@"/tmp/%@", v17];
  [(BuddyCloudConfigWebAuthViewController *)v20 setDownloadDestination:v12];
  v11 = [NSURL fileURLWithPath:v12];
  (*(v16 + 2))(v16, v11);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
}

- (void)download:(id)a3 didReceiveAuthenticationChallenge:(id)a4 completionHandler:(id)a5
{
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v13 = 0;
  objc_storeStrong(&v13, a4);
  v12 = 0;
  objc_storeStrong(&v12, a5);
  oslog = _BYLoggingFacility();
  v10 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v7 = oslog;
    v8 = v10;
    sub_10006AA68(v9);
    _os_log_impl(&_mh_execute_header, v7, v8, "wkdownload didReceiveAuthenticationChallenge", v9, 2u);
  }

  objc_storeStrong(&oslog, 0);
  [(BuddyCloudConfigWebAuthViewController *)v15 _evaluateAuthenticationChallenge:v13 withCompletionHandler:v12];
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

- (void)downloadDidFinish:(id)a3
{
  v37 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v35 = _BYLoggingFacility();
  v34 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    v3 = v35;
    v4 = v34;
    sub_10006AA68(buf);
    _os_log_impl(&_mh_execute_header, v3, v4, "wkdownload downloadDidFinish", buf, 2u);
  }

  objc_storeStrong(&v35, 0);
  v5 = [(BuddyCloudConfigWebAuthViewController *)v37 webView];
  [(WKWebView *)v5 stopLoading];

  v6 = [(BuddyCloudConfigWebAuthViewController *)v37 downloadDestination];
  v7 = [NSData dataWithContentsOfFile:v6];
  [(BuddyCloudConfigWebAuthViewController *)v37 setDownloadedResponseData:v7];

  if ([(BuddyCloudConfigWebAuthViewController *)v37 willDownloadError])
  {
    oslog = _BYLoggingFacility();
    v31 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(BuddyCloudConfigWebAuthViewController *)v37 downloadedResponseData];
      v30 = [NSString stringWithFormat:@"%lu", [(NSData *)v8 length]];
      sub_100071CBC(v40, v30);
      _os_log_impl(&_mh_execute_header, oslog, v31, "we downloaded an error with data length of %{public}@!", v40, 0xCu);

      objc_storeStrong(&v30, 0);
    }

    objc_storeStrong(&oslog, 0);
    v9 = [(BuddyCloudConfigWebAuthViewController *)v37 downloadedResponseData];
    v29 = [DMCHTTPRequestor jsonDictFromResponse:v9];

    v28 = 0;
    obj = 0;
    v10 = [DMCHTTPRequestor parsePredefined403ErrorWithResponseDictionary:v29 outError:&obj];
    objc_storeStrong(&v28, obj);
    if (v10)
    {
      v26 = _BYLoggingFacility();
      v25 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v23 = 0;
        v21 = 0;
        if (_BYIsInternalInstall())
        {
          v11 = v28;
        }

        else if (v28)
        {
          v24 = [v28 domain];
          v23 = 1;
          v11 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", v24, [v28 code]);
          v22 = v11;
          v21 = 1;
        }

        else
        {
          v11 = 0;
        }

        sub_100071CBC(v39, v11);
        _os_log_impl(&_mh_execute_header, v26, v25, "WebAuthView received 403 error %{public}@!", v39, 0xCu);
        if (v21)
        {
        }

        if (v23)
        {
        }
      }

      objc_storeStrong(&v26, 0);
    }

    v12 = [(BuddyCloudConfigWebAuthViewController *)v37 delegate];
    [(BuddyCloudConfigWebAuthDelegate *)v12 webAuthCanceled:v28];

    objc_storeStrong(&v28, 0);
    objc_storeStrong(&v29, 0);
  }

  else
  {
    v20 = _BYLoggingFacility();
    v19 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [(BuddyCloudConfigWebAuthViewController *)v37 downloadedResponseData];
      v18 = [NSString stringWithFormat:@"%lu", [(NSData *)v13 length]];
      sub_100071CBC(v38, v18);
      _os_log_impl(&_mh_execute_header, v20, v19, "we downloaded a profile with data length of %{public}@!", v38, 0xCu);

      objc_storeStrong(&v18, 0);
    }

    objc_storeStrong(&v20, 0);
    v14 = +[NSFileManager defaultManager];
    v15 = [(BuddyCloudConfigWebAuthViewController *)v37 downloadDestination];
    [(NSFileManager *)v14 removeItemAtPath:v15 error:0];

    v16 = [(BuddyCloudConfigWebAuthViewController *)v37 delegate];
    v17 = [(BuddyCloudConfigWebAuthViewController *)v37 downloadedResponseData];
    [(BuddyCloudConfigWebAuthDelegate *)v16 recievedProfile:v17];
  }

  objc_storeStrong(location, 0);
}

- (void)download:(id)a3 didFailWithError:(id)a4 resumeData:(id)a5
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v12 = 0;
  objc_storeStrong(&v12, a4);
  v11 = 0;
  objc_storeStrong(&v11, a5);
  oslog = _BYLoggingFacility();
  v9 = OS_LOG_TYPE_ERROR;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
  {
    sub_100071CBC(buf, v12);
    _os_log_error_impl(&_mh_execute_header, oslog, v9, "download failed with error from WKDownload!: %{public}@", buf, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  v8 = [NSError errorWithDomain:@"BYCloudConfigRetreiveProfileFromWebErrorDomain" code:-2 userInfo:0];
  v7 = [(BuddyCloudConfigWebAuthViewController *)v14 delegate];
  [(BuddyCloudConfigWebAuthDelegate *)v7 webAuthCanceled:v8];

  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

- (id)_getEncodedMachineInfo
{
  location[2] = self;
  location[1] = a2;
  v2 = [(BuddyCloudConfigWebAuthViewController *)self machineInfo];
  location[0] = [(NSData *)v2 base64EncodedStringWithOptions:0];

  v3 = location[0];
  objc_storeStrong(location, 0);
  return v3;
}

- (void)cancelButtonTapped
{
  v10 = self;
  location[1] = a2;
  v2 = [(BuddyCloudConfigWebAuthViewController *)self delegate];

  if (v2)
  {
    location[0] = [NSError errorWithDomain:@"BYCloudConfigRetreiveProfileFromWebErrorDomain" code:-1 userInfo:0];
    v3 = [(BuddyCloudConfigWebAuthViewController *)v10 delegate];
    [(BuddyCloudConfigWebAuthDelegate *)v3 webAuthCanceled:location[0]];

    objc_storeStrong(location, 0);
  }

  else
  {
    oslog = _BYLoggingFacility();
    v7 = 16;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      v4 = oslog;
      v5 = v7;
      sub_10006AA68(v6);
      _os_log_error_impl(&_mh_execute_header, v4, v5, "no delegate defined for buddy web auth!", v6, 2u);
    }

    objc_storeStrong(&oslog, 0);
  }
}

- (void)_showFailureAlertWithTitle:(id)a3 andMessage:(id)a4
{
  v19 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v17 = 0;
  objc_storeStrong(&v17, a4);
  oslog = _BYLoggingFacility();
  v15 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_100078180(buf, location[0], v17);
    _os_log_impl(&_mh_execute_header, oslog, v15, "Showing failure alert title: %@, message: %@", buf, 0x16u);
  }

  objc_storeStrong(&oslog, 0);
  v14 = [UIAlertController alertControllerWithTitle:location[0] message:v17 preferredStyle:1];
  v5 = v14;
  v6 = +[NSBundle mainBundle];
  v7 = [(NSBundle *)v6 localizedStringForKey:@"OK" value:&stru_10032F900 table:@"Localizable"];
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_10014D378;
  v12 = &unk_10032B598;
  v13 = v19;
  v8 = [UIAlertAction actionWithTitle:v7 style:1 handler:&v9];
  [v5 addAction:{v8, v9, v10, v11, v12}];

  [v19 presentViewController:v14 animated:1 completion:0];
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
}

- (void)_evaluateAuthenticationChallenge:(id)a3 withCompletionHandler:(id)a4
{
  v47 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v45 = 0;
  objc_storeStrong(&v45, a4);
  v44 = 1;
  v43 = 0;
  v5 = [location[0] protectionSpace];
  v6 = [v5 authenticationMethod];
  v7 = [v6 isEqualToString:NSURLAuthenticationMethodServerTrust];

  if (v7)
  {
    v42 = [location[0] protectionSpace];
    v41 = [v42 host];
    oslog = _BYLoggingFacility();
    v39 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      sub_10007B2CC(buf, v41, [(NSArray *)v47->_anchorCerts count]);
      _os_log_impl(&_mh_execute_header, oslog, v39, "Evaluating trust for %@ using %lu anchor certs", buf, 0x16u);
    }

    objc_storeStrong(&oslog, 0);
    if (v47->_anchorCerts)
    {
      v8 = [location[0] protectionSpace];
      v9 = [v8 serverTrust];
      v10 = SecTrustSetAnchorCertificates(v9, v47->_anchorCerts);

      v38 = v10;
      if (v10)
      {
        v37 = _BYLoggingFacility();
        v36 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          sub_100082D54(v50, v38);
          _os_log_error_impl(&_mh_execute_header, v37, v36, "Failed to set Anchor Certs on trust! With secError code: %d", v50, 8u);
        }

        objc_storeStrong(&v37, 0);
      }
    }

    error = 0;
    v11 = [location[0] protectionSpace];
    v12 = SecTrustEvaluateWithError([v11 serverTrust], &error);

    v34 = v12;
    if (v12)
    {
      result = kSecTrustResultInvalid;
      v13 = [location[0] protectionSpace];
      TrustResult = SecTrustGetTrustResult([v13 serverTrust], &result);

      v30 = TrustResult;
      if (!TrustResult && (result == kSecTrustResultProceed || result == kSecTrustResultUnspecified))
      {
        v15 = [location[0] protectionSpace];
        v16 = +[NSURLCredential credentialForTrust:](NSURLCredential, "credentialForTrust:", [v15 serverTrust]);
        v17 = v43;
        v43 = v16;

        v29 = _BYLoggingFacility();
        v28 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          v18 = v29;
          v19 = v28;
          sub_10006AA68(v27);
          _os_log_impl(&_mh_execute_header, v18, v19, "Accepting server trust!", v27, 2u);
        }

        objc_storeStrong(&v29, 0);
        v44 = 0;
      }

      else
      {
        v26 = _BYLoggingFacility();
        v25 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          sub_100082D54(v48, v30);
          _os_log_error_impl(&_mh_execute_header, v26, v25, "Could not get trust result! Error Code:  %d", v48, 8u);
        }

        objc_storeStrong(&v26, 0);
        v44 = 3;
      }
    }

    else
    {
      v33 = _BYLoggingFacility();
      v32 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        sub_100071CBC(v49, error);
        _os_log_error_impl(&_mh_execute_header, v33, v32, "Could not evaluate trust! Error: %{public}@", v49, 0xCu);
      }

      objc_storeStrong(&v33, 0);
      v44 = 3;
      if (error)
      {
        CFRelease(error);
      }
    }

    objc_storeStrong(&v41, 0);
    objc_storeStrong(&v42, 0);
  }

  else
  {
    v24 = _BYLoggingFacility();
    v23 = 16;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v20 = v24;
      v21 = v23;
      sub_10006AA68(v22);
      _os_log_error_impl(&_mh_execute_header, v20, v21, "Received an Authentication method other than Server Trust!!", v22, 2u);
    }

    objc_storeStrong(&v24, 0);
    v44 = 3;
  }

  if (v45)
  {
    (*(v45 + 2))(v45, v44, v43);
  }

  objc_storeStrong(&v43, 0);
  objc_storeStrong(&v45, 0);
  objc_storeStrong(location, 0);
}

- (BuddyCloudConfigWebAuthDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
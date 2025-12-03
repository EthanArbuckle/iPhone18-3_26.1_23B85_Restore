@interface BuddyCloudConfigWebAuthViewController
- (BuddyCloudConfigWebAuthDelegate)delegate;
- (id)_getEncodedMachineInfo;
- (void)_evaluateAuthenticationChallenge:(id)challenge withCompletionHandler:(id)handler;
- (void)_showFailureAlertWithTitle:(id)title andMessage:(id)message;
- (void)cancelButtonTapped;
- (void)download:(id)download decideDestinationUsingResponse:(id)response suggestedFilename:(id)filename completionHandler:(id)handler;
- (void)download:(id)download didFailWithError:(id)error resumeData:(id)data;
- (void)download:(id)download didReceiveAuthenticationChallenge:(id)challenge completionHandler:(id)handler;
- (void)downloadDidFinish:(id)finish;
- (void)viewDidLoad;
- (void)webView:(id)view decidePolicyForNavigationResponse:(id)response decisionHandler:(id)handler;
- (void)webView:(id)view didFailProvisionalNavigation:(id)navigation withError:(id)error;
- (void)webView:(id)view didReceiveAuthenticationChallenge:(id)challenge completionHandler:(id)handler;
- (void)webView:(id)view navigationResponse:(id)response didBecomeDownload:(id)download;
@end

@implementation BuddyCloudConfigWebAuthViewController

- (void)viewDidLoad
{
  selfCopy = self;
  v22 = a2;
  v21.receiver = self;
  v21.super_class = BuddyCloudConfigWebAuthViewController;
  [(BuddyCloudConfigWebAuthViewController *)&v21 viewDidLoad];
  v2 = [UIBarButtonItem alloc];
  v3 = [v2 initWithBarButtonSystemItem:1 target:selfCopy action:"cancelButtonTapped"];
  navigationItem = [(BuddyCloudConfigWebAuthViewController *)selfCopy navigationItem];
  [navigationItem setLeftBarButtonItem:v3];

  v5 = +[NSBundle mainBundle];
  v6 = [(NSBundle *)v5 localizedStringForKey:@"REMOTE_MANAGEMENT_TITLE" value:&stru_10032F900 table:@"Localizable"];
  [(BuddyCloudConfigWebAuthViewController *)selfCopy setTitle:v6];

  v20 = objc_opt_new();
  v7 = +[WKWebsiteDataStore nonPersistentDataStore];
  [v20 setWebsiteDataStore:v7];

  preferences = [v20 preferences];
  [preferences _setDiagnosticLoggingEnabled:1];

  v19 = [[WKWebView alloc] initWithFrame:v20 configuration:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [(BuddyCloudConfigWebAuthViewController *)selfCopy setView:v19];
  [(BuddyCloudConfigWebAuthViewController *)selfCopy setWebView:v19];
  v9 = selfCopy;
  webView = [(BuddyCloudConfigWebAuthViewController *)selfCopy webView];
  [(WKWebView *)webView setUIDelegate:v9];

  v11 = selfCopy;
  webView2 = [(BuddyCloudConfigWebAuthViewController *)selfCopy webView];
  [(WKWebView *)webView2 setNavigationDelegate:v11];

  v13 = [NSMutableURLRequest alloc];
  webURL = [(BuddyCloudConfigWebAuthViewController *)selfCopy webURL];
  location = [v13 initWithURL:webURL];

  _getEncodedMachineInfo = [(BuddyCloudConfigWebAuthViewController *)selfCopy _getEncodedMachineInfo];
  [location setValue:_getEncodedMachineInfo forHTTPHeaderField:@"x-apple-aspen-deviceinfo"];

  webView3 = [(BuddyCloudConfigWebAuthViewController *)selfCopy webView];
  v17 = [(WKWebView *)webView3 loadRequest:location];

  objc_storeStrong(&location, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
}

- (void)webView:(id)view didFailProvisionalNavigation:(id)navigation withError:(id)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v27 = 0;
  objc_storeStrong(&v27, navigation);
  v26 = 0;
  objc_storeStrong(&v26, error);
  domain = [v26 domain];
  v8 = 0;
  if ([domain isEqualToString:WebKitErrorDomain])
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

    domain2 = [v26 domain];
    v13 = 0;
    if ([domain2 isEqualToString:NSURLErrorDomain])
    {
      v13 = [v26 code] == -1003;
    }

    if (v13)
    {
      userInfo = [v26 userInfo];
      v20 = [userInfo objectForKeyedSubscript:NSURLErrorFailingURLErrorKey];

      host = [v20 host];
      v15 = +[NSBundle mainBundle];
      v16 = [(NSBundle *)v15 localizedStringForKey:@"REMOTE_MANAGEMENT_UNABLE_TO_RESOLVE_HOST" value:&stru_10032F900 table:@"Localizable"];
      v18 = [NSString localizedStringWithFormat:v16, host];

      [(BuddyCloudConfigWebAuthViewController *)selfCopy _showFailureAlertWithTitle:v21 andMessage:v18];
      objc_storeStrong(&v18, 0);
      objc_storeStrong(&host, 0);
      objc_storeStrong(&v20, 0);
    }

    else
    {
      v17 = [v26 description];
      [(BuddyCloudConfigWebAuthViewController *)selfCopy _showFailureAlertWithTitle:v21 andMessage:v17];
      objc_storeStrong(&v17, 0);
    }

    objc_storeStrong(&v21, 0);
    v22 = 0;
  }

  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(location, 0);
}

- (void)webView:(id)view decidePolicyForNavigationResponse:(id)response decisionHandler:(id)handler
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v33 = 0;
  objc_storeStrong(&v33, response);
  v32 = 0;
  objc_storeStrong(&v32, handler);
  response = [v33 response];
  mIMEType = [response MIMEType];
  LOBYTE(response) = [mIMEType isEqualToString:@"application/x-apple-aspen-config"];

  if (response)
  {
    webURL = [(BuddyCloudConfigWebAuthViewController *)selfCopy webURL];
    host = [(NSURL *)webURL host];

    v9 = [response URL];
    host2 = [v9 host];

    if ([host caseInsensitiveCompare:host2])
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

    objc_storeStrong(&host2, 0);
    objc_storeStrong(&host, 0);
  }

  else
  {
    v23 = 0;
    v12 = 0;
    if ([response statusCode] == 403)
    {
      mIMEType2 = [response MIMEType];
      v23 = 1;
      v12 = [mIMEType2 isEqualToString:DMCHTTPContentTypeApplicationJSON];
    }

    if (v23)
    {
    }

    if (v12)
    {
      [(BuddyCloudConfigWebAuthViewController *)selfCopy setWillDownloadError:1];
      (*(v32 + 2))(v32, 2);
      v25 = 1;
    }

    else if ([response statusCode] == 404)
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

  objc_storeStrong(&response, 0);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(&v33, 0);
  objc_storeStrong(location, 0);
}

- (void)webView:(id)view didReceiveAuthenticationChallenge:(id)challenge completionHandler:(id)handler
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v13 = 0;
  objc_storeStrong(&v13, challenge);
  v12 = 0;
  objc_storeStrong(&v12, handler);
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
  [(BuddyCloudConfigWebAuthViewController *)selfCopy _evaluateAuthenticationChallenge:v13 withCompletionHandler:v12];
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

- (void)webView:(id)view navigationResponse:(id)response didBecomeDownload:(id)download
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v13 = 0;
  objc_storeStrong(&v13, response);
  v12 = 0;
  objc_storeStrong(&v12, download);
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
  [v12 setDelegate:selfCopy];
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

- (void)download:(id)download decideDestinationUsingResponse:(id)response suggestedFilename:(id)filename completionHandler:(id)handler
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, download);
  v18 = 0;
  objc_storeStrong(&v18, response);
  v17 = 0;
  objc_storeStrong(&v17, filename);
  v16 = 0;
  objc_storeStrong(&v16, handler);
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
  [(BuddyCloudConfigWebAuthViewController *)selfCopy setDownloadDestination:v12];
  v11 = [NSURL fileURLWithPath:v12];
  (*(v16 + 2))(v16, v11);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
}

- (void)download:(id)download didReceiveAuthenticationChallenge:(id)challenge completionHandler:(id)handler
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, download);
  v13 = 0;
  objc_storeStrong(&v13, challenge);
  v12 = 0;
  objc_storeStrong(&v12, handler);
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
  [(BuddyCloudConfigWebAuthViewController *)selfCopy _evaluateAuthenticationChallenge:v13 withCompletionHandler:v12];
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

- (void)downloadDidFinish:(id)finish
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, finish);
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
  webView = [(BuddyCloudConfigWebAuthViewController *)selfCopy webView];
  [(WKWebView *)webView stopLoading];

  downloadDestination = [(BuddyCloudConfigWebAuthViewController *)selfCopy downloadDestination];
  v7 = [NSData dataWithContentsOfFile:downloadDestination];
  [(BuddyCloudConfigWebAuthViewController *)selfCopy setDownloadedResponseData:v7];

  if ([(BuddyCloudConfigWebAuthViewController *)selfCopy willDownloadError])
  {
    oslog = _BYLoggingFacility();
    v31 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      downloadedResponseData = [(BuddyCloudConfigWebAuthViewController *)selfCopy downloadedResponseData];
      v30 = [NSString stringWithFormat:@"%lu", [(NSData *)downloadedResponseData length]];
      sub_100071CBC(v40, v30);
      _os_log_impl(&_mh_execute_header, oslog, v31, "we downloaded an error with data length of %{public}@!", v40, 0xCu);

      objc_storeStrong(&v30, 0);
    }

    objc_storeStrong(&oslog, 0);
    downloadedResponseData2 = [(BuddyCloudConfigWebAuthViewController *)selfCopy downloadedResponseData];
    v29 = [DMCHTTPRequestor jsonDictFromResponse:downloadedResponseData2];

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
          domain = [v28 domain];
          v23 = 1;
          v11 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", domain, [v28 code]);
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

    delegate = [(BuddyCloudConfigWebAuthViewController *)selfCopy delegate];
    [(BuddyCloudConfigWebAuthDelegate *)delegate webAuthCanceled:v28];

    objc_storeStrong(&v28, 0);
    objc_storeStrong(&v29, 0);
  }

  else
  {
    v20 = _BYLoggingFacility();
    v19 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      downloadedResponseData3 = [(BuddyCloudConfigWebAuthViewController *)selfCopy downloadedResponseData];
      v18 = [NSString stringWithFormat:@"%lu", [(NSData *)downloadedResponseData3 length]];
      sub_100071CBC(v38, v18);
      _os_log_impl(&_mh_execute_header, v20, v19, "we downloaded a profile with data length of %{public}@!", v38, 0xCu);

      objc_storeStrong(&v18, 0);
    }

    objc_storeStrong(&v20, 0);
    v14 = +[NSFileManager defaultManager];
    downloadDestination2 = [(BuddyCloudConfigWebAuthViewController *)selfCopy downloadDestination];
    [(NSFileManager *)v14 removeItemAtPath:downloadDestination2 error:0];

    delegate2 = [(BuddyCloudConfigWebAuthViewController *)selfCopy delegate];
    downloadedResponseData4 = [(BuddyCloudConfigWebAuthViewController *)selfCopy downloadedResponseData];
    [(BuddyCloudConfigWebAuthDelegate *)delegate2 recievedProfile:downloadedResponseData4];
  }

  objc_storeStrong(location, 0);
}

- (void)download:(id)download didFailWithError:(id)error resumeData:(id)data
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, download);
  v12 = 0;
  objc_storeStrong(&v12, error);
  v11 = 0;
  objc_storeStrong(&v11, data);
  oslog = _BYLoggingFacility();
  v9 = OS_LOG_TYPE_ERROR;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
  {
    sub_100071CBC(buf, v12);
    _os_log_error_impl(&_mh_execute_header, oslog, v9, "download failed with error from WKDownload!: %{public}@", buf, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  v8 = [NSError errorWithDomain:@"BYCloudConfigRetreiveProfileFromWebErrorDomain" code:-2 userInfo:0];
  delegate = [(BuddyCloudConfigWebAuthViewController *)selfCopy delegate];
  [(BuddyCloudConfigWebAuthDelegate *)delegate webAuthCanceled:v8];

  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

- (id)_getEncodedMachineInfo
{
  location[2] = self;
  location[1] = a2;
  machineInfo = [(BuddyCloudConfigWebAuthViewController *)self machineInfo];
  location[0] = [(NSData *)machineInfo base64EncodedStringWithOptions:0];

  v3 = location[0];
  objc_storeStrong(location, 0);
  return v3;
}

- (void)cancelButtonTapped
{
  selfCopy = self;
  location[1] = a2;
  delegate = [(BuddyCloudConfigWebAuthViewController *)self delegate];

  if (delegate)
  {
    location[0] = [NSError errorWithDomain:@"BYCloudConfigRetreiveProfileFromWebErrorDomain" code:-1 userInfo:0];
    delegate2 = [(BuddyCloudConfigWebAuthViewController *)selfCopy delegate];
    [(BuddyCloudConfigWebAuthDelegate *)delegate2 webAuthCanceled:location[0]];

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

- (void)_showFailureAlertWithTitle:(id)title andMessage:(id)message
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, title);
  v17 = 0;
  objc_storeStrong(&v17, message);
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
  v13 = selfCopy;
  v8 = [UIAlertAction actionWithTitle:v7 style:1 handler:&v9];
  [v5 addAction:{v8, v9, v10, v11, v12}];

  [selfCopy presentViewController:v14 animated:1 completion:0];
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
}

- (void)_evaluateAuthenticationChallenge:(id)challenge withCompletionHandler:(id)handler
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, challenge);
  v45 = 0;
  objc_storeStrong(&v45, handler);
  v44 = 1;
  v43 = 0;
  protectionSpace = [location[0] protectionSpace];
  authenticationMethod = [protectionSpace authenticationMethod];
  v7 = [authenticationMethod isEqualToString:NSURLAuthenticationMethodServerTrust];

  if (v7)
  {
    protectionSpace2 = [location[0] protectionSpace];
    host = [protectionSpace2 host];
    oslog = _BYLoggingFacility();
    v39 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      sub_10007B2CC(buf, host, [(NSArray *)selfCopy->_anchorCerts count]);
      _os_log_impl(&_mh_execute_header, oslog, v39, "Evaluating trust for %@ using %lu anchor certs", buf, 0x16u);
    }

    objc_storeStrong(&oslog, 0);
    if (selfCopy->_anchorCerts)
    {
      protectionSpace3 = [location[0] protectionSpace];
      serverTrust = [protectionSpace3 serverTrust];
      v10 = SecTrustSetAnchorCertificates(serverTrust, selfCopy->_anchorCerts);

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
    protectionSpace4 = [location[0] protectionSpace];
    v12 = SecTrustEvaluateWithError([protectionSpace4 serverTrust], &error);

    v34 = v12;
    if (v12)
    {
      result = kSecTrustResultInvalid;
      protectionSpace5 = [location[0] protectionSpace];
      TrustResult = SecTrustGetTrustResult([protectionSpace5 serverTrust], &result);

      v30 = TrustResult;
      if (!TrustResult && (result == kSecTrustResultProceed || result == kSecTrustResultUnspecified))
      {
        protectionSpace6 = [location[0] protectionSpace];
        v16 = +[NSURLCredential credentialForTrust:](NSURLCredential, "credentialForTrust:", [protectionSpace6 serverTrust]);
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

    objc_storeStrong(&host, 0);
    objc_storeStrong(&protectionSpace2, 0);
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
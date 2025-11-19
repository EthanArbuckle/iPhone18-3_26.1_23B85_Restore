@interface UPPManifestDownloadTask
- (void)URLSession:(id)a3 task:(id)a4 didReceiveChallenge:(id)a5 completionHandler:(id)a6;
- (void)mainWithCompletionHandler:(id)a3;
@end

@implementation UPPManifestDownloadTask

- (void)URLSession:(id)a3 task:(id)a4 didReceiveChallenge:(id)a5 completionHandler:(id)a6
{
  v8 = a5;
  v9 = a6;
  v10 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    if (self)
    {
      Property = objc_getProperty(self, v11, 90, 1);
    }

    else
    {
      Property = 0;
    }

    *buf = 138412290;
    v37 = Property;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[%@] Received authentication challenge", buf, 0xCu);
  }

  v13 = [v8 protectionSpace];
  v14 = [v13 authenticationMethod];
  if ([v14 isEqualToString:NSURLAuthenticationMethodClientCertificate])
  {
    v15 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      if (self)
      {
        v17 = objc_getProperty(self, v16, 90, 1);
      }

      else
      {
        v17 = 0;
      }

      *buf = 138412290;
      v37 = v17;
      v18 = "[%@] Using client certificate for authentication challenge";
      goto LABEL_19;
    }

    goto LABEL_20;
  }

  if ([v14 isEqualToString:NSURLAuthenticationMethodServerTrust])
  {
    v19 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      if (self)
      {
        v21 = objc_getProperty(self, v20, 90, 1);
      }

      else
      {
        v21 = 0;
      }

      *buf = 138412290;
      v37 = v21;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[%@] Using server trust for authentication challenge", buf, 0xCu);
    }

    v22 = +[NSURLCredential credentialForTrust:](NSURLCredential, "credentialForTrust:", [v13 serverTrust]);
    v9[2](v9, 0, v22);
  }

  else
  {
    v23 = BYTE2(self->_session);
    v15 = ASDLogHandleForCategory();
    v24 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
    if (v23)
    {
      if (v24)
      {
        v26 = objc_getProperty(self, v25, 90, 1);
        *buf = 138412290;
        v37 = v26;
        v18 = "[%@] Using default handling for authentication challenge";
LABEL_19:
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, v18, buf, 0xCu);
      }

LABEL_20:

      v9[2](v9, 1, 0);
      goto LABEL_21;
    }

    if (v24)
    {
      v27 = objc_getProperty(self, v25, 90, 1);
      *buf = 138412290;
      v37 = v27;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[%@] Prompting user for authentication challenge", buf, 0xCu);
    }

    v28 = sub_10033A47C([AuthenticationChallenge alloc], v8);
    v29 = sub_10029F2B8(AuthenticationChallengeDialogRequest, v28);
    v30 = [[AMSSystemAlertDialogTask alloc] initWithRequest:v29];
    v31 = [v30 present];
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_1002159BC;
    v33[3] = &unk_10051D618;
    v33[4] = self;
    v34 = v28;
    v35 = v9;
    v32 = v28;
    [v31 addFinishBlock:v33];
  }

LABEL_21:
}

- (void)mainWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = *(&self->_downloadIDs + 2);
  if (v5)
  {
    v6 = v5;
    v7 = sub_1003D67A0();
    if (os_variant_has_internal_content() && v7)
    {
    }

    else
    {
      v13 = [v6 scheme];
      v14 = [v13 caseInsensitiveCompare:@"https"];

      v15 = [v6 port];
      v16 = v15;
      v17 = &off_100547278;
      if (!v14)
      {
        v17 = &off_100547260;
      }

      if (v15)
      {
        v17 = v15;
      }

      v18 = v17;

      v19 = [v6 host];
      v20 = [v18 stringValue];

      v21 = [NWHostEndpoint endpointWithHostname:v19 port:v20];

      v22 = [[NWPathEvaluator alloc] initWithEndpoint:v21 parameters:0];
      v23 = [v22 path];
      LODWORD(v20) = [v23 isLocal];

      if (v20)
      {
        v8 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          Property = objc_getProperty(self, v24, 90, 1);
          v50 = *(&self->_downloadIDs + 2);
          *v51 = 138412546;
          *&v51[4] = Property;
          *&v51[12] = 2114;
          *&v51[14] = v50;
          _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "[%@] The manifest URL isn't external: %{public}@", v51, 0x16u);
        }

        goto LABEL_24;
      }
    }

    v25 = *(&self->_downloadIDs + 2);
    v26 = [v25 scheme];
    v27 = [v26 caseInsensitiveCompare:@"https"];

    if (!v27)
    {

      goto LABEL_26;
    }

    if (os_variant_has_internal_content())
    {
      v28 = sub_1003D67D8();

      if (v28)
      {
        goto LABEL_26;
      }
    }

    else
    {
    }

    v8 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v47 = objc_getProperty(self, v29, 90, 1);
      v48 = *(&self->_downloadIDs + 2);
      *v51 = 138412546;
      *&v51[4] = v47;
      *&v51[12] = 2114;
      *&v51[14] = v48;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "[%@] Cannot load non-https manifest URL: %{public}@", v51, 0x16u);
    }
  }

  else
  {
    v8 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = objc_getProperty(self, v9, 90, 1);
      v11 = [*(&self->_manifestDigest + 2) processInfo];
      v12 = [v11 bundleIdentifier];
      *v51 = 138412546;
      *&v51[4] = v10;
      *&v51[12] = 2114;
      *&v51[14] = v12;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%@] No URL provided for request from client: %{public}@", v51, 0x16u);
    }
  }

LABEL_24:

  v30 = ASDErrorWithTitleAndMessage();
  if (v30)
  {
    sub_100216260(self, v30);
    v4[2](v4, v30);

    goto LABEL_32;
  }

LABEL_26:
  v31 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    v33 = objc_getProperty(self, v32, 90, 1);
    v34 = *(&self->_downloadIDs + 2);
    *v51 = 138412546;
    *&v51[4] = v33;
    *&v51[12] = 2114;
    *&v51[14] = v34;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "[%@] Downloading requested manifest at URL: %{public}@", v51, 0x16u);
  }

  v35 = *(&self->_downloadIDs + 2);
  v36 = v4;
  v37 = v35;
  v38 = [[NSMutableURLRequest alloc] initWithURL:v37];

  [v38 setCachePolicy:1];
  [v38 setTimeoutInterval:120.0];
  v39 = sub_1002D6988();
  [v38 setHTTPUserAgent:v39];

  if (*(&self->_session + 6))
  {
    v40 = *(&self->_session + 6);
  }

  else
  {
    v40 = 21;
  }

  v41 = +[NSURLSessionConfiguration ephemeralSessionConfiguration];
  v42 = [NSURLSession sessionWithConfiguration:v41 delegate:self delegateQueue:0];
  v43 = *(&self->_receivedDigest + 2);
  *(&self->_receivedDigest + 2) = v42;

  v44 = *(&self->_receivedDigest + 2);
  *v51 = _NSConcreteStackBlock;
  *&v51[8] = 3221225472;
  *&v51[16] = sub_1002199C0;
  v52 = &unk_10051D6F0;
  v55 = v40;
  v53 = self;
  v45 = v36;
  v54 = v45;
  v46 = [v44 dataTaskWithRequest:v38 completionHandler:v51];
  [v46 resume];

LABEL_32:
}

@end
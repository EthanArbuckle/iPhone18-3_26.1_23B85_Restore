@interface UpdatePluginsInputs
- (BOOL)_readUseMobileAssetFromDefaults;
- (BOOL)validateAndInitializeParameters:(id)a3;
@end

@implementation UpdatePluginsInputs

- (BOOL)_readUseMobileAssetFromDefaults
{
  has_internal_content = os_variant_has_internal_content();
  if (has_internal_content)
  {
    v3 = [[CRUserDefaults alloc] initWithSuiteName:@"com.apple.corerepaird.test"];
    v4 = [v3 dictionaryForKey:@"8262"];
    v5 = v4;
    if (v4 && ([v4 objectForKey:@"useMobileAsset"], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
    {
      v7 = handleForCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Using MobileAsset", v9, 2u);
      }

      LOBYTE(has_internal_content) = 1;
    }

    else
    {

      LOBYTE(has_internal_content) = 0;
    }
  }

  return has_internal_content;
}

- (BOOL)validateAndInitializeParameters:(id)a3
{
  v5 = a3;
  v43 = 0;
  self->useMobileAsset = 1;
  v6 = handleForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    if (self->useMobileAsset)
    {
      v7 = @"YES";
    }

    *buf = 138412290;
    v45 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "useMobileAsset: %@", buf, 0xCu);
  }

  if (!self->useMobileAsset)
  {
    self->needRequestURL = [v5 BOOLFromKey:@"needRequestURL" defaultValue:0 failed:&v43];
    v8 = handleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = @"NO";
      if (self->needRequestURL)
      {
        v9 = @"YES";
      }

      *buf = 138412290;
      v45 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Get repair update PDI URL & digest from AST2: %@", buf, 0xCu);
    }

    if (self->needRequestURL)
    {
      v10 = [v5 NSStringFromKey:@"ast2RequestURL" defaultValue:@"https://diagnostics-mdn1.apple.com/api/v1/ast2-companion/public/services/assets/plugin" failed:&v43];
      ast2RequestURL = self->ast2RequestURL;
      self->ast2RequestURL = v10;

      v12 = handleForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = self->ast2RequestURL;
        *buf = 138412290;
        v45 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Requesting repair update PDI URL and digest from: %@", buf, 0xCu);
      }

LABEL_29:

      goto LABEL_30;
    }

    v12 = [v5 NSStringFromRequiredKey:@"pdiURL" maxLength:1024 failed:&v43];
    v14 = handleForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v45 = v12;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "PDIURL: %@", buf, 0xCu);
    }

    v15 = [NSURL URLWithString:v12];
    PDIURL = self->PDIURL;
    self->PDIURL = v15;

    v17 = self->PDIURL;
    if (v17)
    {
      v18 = [(NSURL *)v17 scheme];
      v19 = [v18 caseInsensitiveCompare:@"http"];
      if (v19 || (-[NSURL scheme](self->PDIURL, "scheme"), v3 = objc_claimAutoreleasedReturnValue(), [v3 caseInsensitiveCompare:@"https"]))
      {
        v20 = [(NSURL *)self->PDIURL host];

        if (!v19)
        {
        }

        if (v20)
        {
          goto LABEL_26;
        }
      }

      else
      {
      }
    }

    v21 = handleForCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_10000439C(v21);
    }

    v43 = 1;
LABEL_26:
    v22 = [v5 NSStringFromRequiredKey:@"pdiDigest" maxLength:1024 failed:&v43];
    PDIDigest = self->PDIDigest;
    self->PDIDigest = v22;

    v24 = handleForCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = self->PDIDigest;
      *buf = 138412290;
      v45 = v25;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "PDIDigest: %@", buf, 0xCu);
    }

    goto LABEL_29;
  }

LABEL_30:
  v26 = [v5 NSNumberFromKey:@"timeoutPeriod" lowerBound:&off_100008C70 upperBound:&off_100008C88 defaultValue:&off_100008CA0 failed:&v43];
  timeoutPeriod = self->timeoutPeriod;
  self->timeoutPeriod = v26;

  v28 = handleForCategory();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v29 = self->timeoutPeriod;
    *buf = 138412290;
    v45 = v29;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Timeout period : %@ s", buf, 0xCu);
  }

  v30 = [v5 NSStringFromKey:@"tatsuURL" defaultValue:@"https://gs.apple.com:443" failed:&v43];
  v31 = handleForCategory();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v45 = v30;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "tatsuURL: %@", buf, 0xCu);
  }

  v32 = [NSURL URLWithString:v30];
  tatsuURL = self->tatsuURL;
  self->tatsuURL = v32;

  v34 = self->tatsuURL;
  if (!v34)
  {
    goto LABEL_42;
  }

  v35 = [(NSURL *)v34 scheme];
  v36 = [v35 caseInsensitiveCompare:@"http"];
  if (!v36)
  {
    v3 = [(NSURL *)self->tatsuURL scheme];
    if (![v3 caseInsensitiveCompare:@"https"])
    {

LABEL_42:
      v38 = handleForCategory();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        sub_1000043E0(v38);
      }

      v43 = 1;
      goto LABEL_45;
    }
  }

  v37 = [(NSURL *)self->tatsuURL host];

  if (!v36)
  {
  }

  if (!v37)
  {
    goto LABEL_42;
  }

LABEL_45:
  self->useAppleConnect = [v5 BOOLFromKey:@"useAppleConnect" defaultValue:0 failed:&v43];
  v39 = handleForCategory();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    v40 = @"NO";
    if (self->useAppleConnect)
    {
      v40 = @"YES";
    }

    *buf = 138412290;
    v45 = v40;
    _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "useAppleConnect: %@", buf, 0xCu);
  }

  v41 = v43;
  return (v41 & 1) == 0;
}

@end
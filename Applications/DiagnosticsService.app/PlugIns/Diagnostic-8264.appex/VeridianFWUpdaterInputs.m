@interface VeridianFWUpdaterInputs
- (BOOL)validateAndInitializeParameters:(id)a3;
@end

@implementation VeridianFWUpdaterInputs

- (BOOL)validateAndInitializeParameters:(id)a3
{
  v5 = a3;
  v38 = 0;
  self->needRequestURL = [v5 BOOLFromKey:@"needRequestURL" defaultValue:0 failed:&v38];
  v6 = handleForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    if (self->needRequestURL)
    {
      v7 = @"YES";
    }

    else
    {
      v7 = @"NO";
    }

    *buf = 138412290;
    v40 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Need to request FWURL from AST2: %@", buf, 0xCu);
  }

  if (self->needRequestURL)
  {
    v8 = [v5 NSStringFromKey:@"ast2RequestURL" defaultValue:@"https://diagnostics-mdn1.apple.com/api/v1/ast2-companion/public/services/firmware/batteries" failed:&v38];
    ast2RequestURL = self->ast2RequestURL;
    self->ast2RequestURL = v8;

    v10 = handleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = self->ast2RequestURL;
      *buf = 138412290;
      v40 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Requesting Veridian FW URL and digest from: %@", buf, 0xCu);
    }

    goto LABEL_25;
  }

  v10 = [v5 NSStringFromKey:@"fwURL" defaultValue:0 failed:&v38];
  v12 = handleForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v40 = v10;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "FWURL: %@", buf, 0xCu);
  }

  v13 = [NSURL URLWithString:v10];
  FWURL = self->FWURL;
  self->FWURL = v13;

  v15 = self->FWURL;
  if (v15)
  {
    v16 = [(NSURL *)v15 scheme];
    v17 = [v16 caseInsensitiveCompare:@"http"];
    if (v17 || (-[NSURL scheme](self->FWURL, "scheme"), v3 = objc_claimAutoreleasedReturnValue(), [v3 caseInsensitiveCompare:@"https"]))
    {
      v18 = [(NSURL *)self->FWURL host];

      if (!v17)
      {
      }

      if (v18)
      {
        goto LABEL_22;
      }
    }

    else
    {
    }
  }

  v19 = handleForCategory();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    sub_100004528(v19);
  }

  v38 = 1;
LABEL_22:
  v20 = [v5 NSStringFromKey:@"fwDigest" defaultValue:0 failed:&v38];
  FWDigest = self->FWDigest;
  self->FWDigest = v20;

  v22 = handleForCategory();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = self->FWDigest;
    *buf = 138412290;
    v40 = v23;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "fwDigest: %@", buf, 0xCu);
  }

LABEL_25:
  v24 = [v5 NSNumberFromKey:@"timeoutPeriod" lowerBound:&off_1000089D8 upperBound:&off_1000089F0 defaultValue:&off_1000089D8 failed:&v38];
  timeoutPeriod = self->timeoutPeriod;
  self->timeoutPeriod = v24;

  v26 = handleForCategory();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v27 = self->timeoutPeriod;
    *buf = 138412290;
    v40 = v27;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Timeout period : %@ s", buf, 0xCu);
  }

  v28 = [v5 NSStringFromKey:@"MountPath" defaultValue:0 failed:0];
  mountPath = self->mountPath;
  self->mountPath = v28;

  v30 = handleForCategory();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    v31 = self->mountPath;
    *buf = 138412290;
    v40 = v31;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "PDI mountPath is %@", buf, 0xCu);
  }

  self->useAppleConnect = [v5 BOOLFromKey:@"UseAppleConnect" defaultValue:0 failed:&v38];
  v32 = handleForCategory();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    if (self->useAppleConnect)
    {
      v33 = @"YES";
    }

    else
    {
      v33 = @"NO";
    }

    *buf = 138412290;
    v40 = v33;
    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "useAppleConnect: %@", buf, 0xCu);
  }

  self->forceUpdate = [v5 BOOLFromKey:@"forceUpdate" defaultValue:0 failed:&v38];
  v34 = handleForCategory();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    if (self->forceUpdate)
    {
      v35 = @"YES";
    }

    else
    {
      v35 = @"NO";
    }

    *buf = 138412290;
    v40 = v35;
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Force update Veridian FW: %@", buf, 0xCu);
  }

  v36 = v38;
  return (v36 & 1) == 0;
}

@end
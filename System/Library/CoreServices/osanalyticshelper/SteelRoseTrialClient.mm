@interface SteelRoseTrialClient
- (BOOL)processSteelRoseUpdateAtPath:(id)a3;
- (SteelRoseTrialClient)init;
- (void)handleNewTrialFactors;
- (void)logOutcomeInternal:(const char *)a3;
- (void)sendMessage:(unint64_t)a3;
@end

@implementation SteelRoseTrialClient

- (SteelRoseTrialClient)init
{
  v3 = [TRIClient clientWithIdentifier:345];
  trialClient = self->_trialClient;
  self->_trialClient = v3;

  if (self->_trialClient)
  {
    self->_inTestCohort = 0;
    v5 = self;
  }

  else
  {
    v6 = sub_10000A8AC();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Creating trial client failed", v8, 2u);
    }

    v5 = 0;
  }

  return v5;
}

- (void)logOutcomeInternal:(const char *)a3
{
  v5 = +[OSASystemConfiguration sharedInstance];
  v6 = [v5 appleInternal];

  if (v6 && self->_inTestCohort)
  {
    v14[1] = &v15;
    v7 = [NSString stringWithUTF8String:a3];
    v8 = [[NSString alloc] initWithFormat:v7 arguments:&v15];
    v9 = +[OSASystemConfiguration sharedInstance];
    v10 = [v9 pathDiagnostics];
    v11 = [v10 stringByAppendingPathComponent:@"osatool_steelrose_outcome"];

    v14[0] = 0;
    LOBYTE(v10) = [v8 writeToFile:v11 atomically:0 encoding:4 error:v14];
    v12 = v14[0];
    if ((v10 & 1) == 0)
    {
      v13 = sub_10000A8AC();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_10001545C();
      }
    }
  }
}

- (void)handleNewTrialFactors
{
  [(TRIClient *)self->_trialClient refresh];
  v3 = [(TRIClient *)self->_trialClient levelForFactor:@"cohort_r" withNamespaceName:@"STEEL_ROSE_CHECK_IN_COHORT"];
  v4 = v3;
  if (!v3)
  {
    v13 = sub_10000A8AC();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10001550C();
    }

    goto LABEL_12;
  }

  v5 = [v3 fileValue];
  if (!v5)
  {
    v13 = sub_10000A8AC();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1000154D0();
    }

LABEL_12:

    v6 = 0;
    goto LABEL_16;
  }

  v6 = v5;
  v7 = [v5 hasPath];
  v8 = sub_10000A8AC();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v9)
    {
      v10 = [v6 path];
      v14 = 138412290;
      v15 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "asset path: %@", &v14, 0xCu);
    }

    v11 = [v6 path];
    v12 = [(SteelRoseTrialClient *)self processSteelRoseUpdateAtPath:v11];

    if ((v12 & 1) == 0)
    {
      [(SteelRoseTrialClient *)self logOutcomeInternal:"Error handling update"];
    }
  }

  else
  {
    if (v9)
    {
      LOWORD(v14) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Couldn't get asset path", &v14, 2u);
    }
  }

LABEL_16:
}

- (void)sendMessage:(unint64_t)a3
{
  v5 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.osanalytics"];
  v6 = [v5 BOOLForKey:@"UATSteelRoseServer"];

  if (v6 && (+[OSASystemConfiguration sharedInstance](OSASystemConfiguration, "sharedInstance"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 appleInternal], v7, (v8 & 1) != 0))
  {
    v9 = @"https://uat.steelrose.swe.apple.com/api/v1/checkin";
  }

  else
  {
    v9 = @"https://steelrose.swe.apple.com/api/v1/checkin";
  }

  v10 = [NSURL URLWithString:v9];
  v11 = [NSMutableURLRequest requestWithURL:v10];
  [v11 setHTTPMethod:@"POST"];
  v12 = [NSString stringWithFormat:@"cohort=%lu", a3];
  v13 = [v12 dataUsingEncoding:4];
  [v11 setTimeoutInterval:120.0];
  [v11 setHTTPBody:v13];
  v14 = +[NSURLSessionConfiguration ephemeralSessionConfiguration];
  v15 = [NSURLSession sessionWithConfiguration:v14];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10000AEF8;
  v17[3] = &unk_100025050;
  v17[4] = self;
  v16 = [v15 dataTaskWithRequest:v11 completionHandler:v17];
  [v16 set_APSRelayTopic:@"com.apple.private.alloy.steelrose"];
  [v16 resume];
}

- (BOOL)processSteelRoseUpdateAtPath:(id)a3
{
  v4 = a3;
  v50 = 0;
  v5 = +[OSASystemConfiguration sharedInstance];
  v6 = [v5 appleInternal];

  v7 = +[NSFileManager defaultManager];
  v8 = [v7 fileExistsAtPath:v4 isDirectory:&v50];

  if ((v8 & 1) == 0)
  {
    v9 = sub_10000A8AC();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100015548();
    }

    goto LABEL_7;
  }

  if (v50 != 1)
  {
    v49 = 0;
    v11 = [NSString stringWithContentsOfFile:v4 encoding:4 error:&v49];
    v9 = v49;
    if (v9)
    {
      v12 = sub_10000A8AC();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_1000155B8();
      }

      v10 = 0;
      goto LABEL_58;
    }

    v13 = +[NSCharacterSet newlineCharacterSet];
    v12 = [v11 componentsSeparatedByCharactersInSet:v13];

    if (!v12)
    {
      v15 = sub_10000A8AC();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_100015834();
      }

      goto LABEL_56;
    }

    v14 = [v12 count];
    if (v6)
    {
      if (v14 <= 1)
      {
        v15 = sub_10000A8AC();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          sub_1000157AC(v12, v15);
        }

        goto LABEL_56;
      }

      v41 = v11;
      v16 = 256;
    }

    else
    {
      if (v14 <= 0x19)
      {
        v15 = sub_10000A8AC();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          sub_10001562C(v12, v15);
        }

        goto LABEL_56;
      }

      v41 = v11;
      v16 = 255;
    }

    v17 = [v12 objectAtIndexedSubscript:0];
    v18 = [v17 intValue];

    if (!v18 || v16 < v18)
    {
      v15 = sub_10000A8AC();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_10001573C();
      }

      v10 = 0;
      v11 = v41;
      goto LABEL_57;
    }

    v40 = v18;
    if (v18 == 256)
    {
      v19 = sub_10000A8AC();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf.count[0]) = 0;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Using test cohort", &buf, 2u);
      }

      self->_inTestCohort = 1;
    }

    v20 = +[OSASystemConfiguration sharedInstance];
    v15 = [v20 crashReporterKey];

    if (v15)
    {
      if ([v15 length]!= 40)
      {
        v21 = sub_10000A8AC();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          sub_1000156C4();
        }
      }

      v39 = v15;
      v22 = [v15 UTF8String];
      strcpy(data, "STEEL_ROSE");
      memset(&buf, 0, sizeof(buf));
      CC_SHA256_Init(&buf);
      CC_SHA256_Update(&buf, data, 0xAu);
      v23 = strlen(v22);
      CC_SHA256_Update(&buf, v22, v23);
      CC_SHA256_Final(md, &buf);
      v24 = [(SteelRoseTrialClient *)self hexStringForSHA256Digest:md];
      v44 = 0u;
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      obj = v12;
      v25 = [obj countByEnumeratingWithState:&v44 objects:v51 count:16];
      if (v25)
      {
        v26 = v25;
        v27 = *v45;
        if (v40 == 256)
        {
          v28 = v6;
        }

        else
        {
          v28 = 0;
        }

LABEL_39:
        v29 = 0;
        while (1)
        {
          if (*v45 != v27)
          {
            objc_enumerationMutation(obj);
          }

          v30 = *(*(&v44 + 1) + 8 * v29);
          if (v28)
          {
            if ([*(*(&v44 + 1) + 8 * v29) isEqualToString:@"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"])
            {
              break;
            }
          }

          if ([v30 isEqualToString:v24])
          {
            v31 = v24;
            v35 = sub_10000A8AC();
            if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
            {
              *v43 = 0;
              v36 = "Match";
              v37 = v35;
              v38 = OS_LOG_TYPE_INFO;
              goto LABEL_64;
            }

            goto LABEL_65;
          }

          if (v26 == ++v29)
          {
            v26 = [obj countByEnumeratingWithState:&v44 objects:v51 count:16];
            if (v26)
            {
              goto LABEL_39;
            }

            goto LABEL_47;
          }
        }

        v31 = v24;
        v35 = sub_10000A8AC();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          *v43 = 0;
          v36 = "Matched internal testing key";
          v37 = v35;
          v38 = OS_LOG_TYPE_DEFAULT;
LABEL_64:
          _os_log_impl(&_mh_execute_header, v37, v38, v36, v43, 2u);
        }

LABEL_65:
        v15 = v39;
        v11 = v41;

        [(SteelRoseTrialClient *)self sendMessage:v40];
        goto LABEL_66;
      }

LABEL_47:
      v31 = v24;

      [(SteelRoseTrialClient *)self logOutcomeInternal:"Success (no match)"];
      v32 = sub_10000A8AC();
      v15 = v39;
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        *v43 = 0;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "Match Not found", v43, 2u);
      }

      v11 = v41;
LABEL_66:

      v10 = 1;
      goto LABEL_57;
    }

    v33 = sub_10000A8AC();
    v11 = v41;
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      sub_100015700();
    }

LABEL_56:
    v10 = 0;
LABEL_57:

LABEL_58:
    goto LABEL_59;
  }

  v9 = sub_10000A8AC();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    sub_100015870();
  }

LABEL_7:
  v10 = 0;
LABEL_59:

  return v10;
}

@end
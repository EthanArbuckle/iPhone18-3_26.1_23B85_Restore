@interface COSBruteForceNetworkReachabilityMonitor
+ (id)checkDomains;
+ (void)_issueResponse:(BOOL)response;
+ (void)checkCompleteStateForResponse:(id)response andError:(id)error;
+ (void)checkServerReachability:(id)reachability withCompletion:(id)completion;
+ (void)checkServerReachabilityWithCompletion:(id)completion;
+ (void)issueResponse;
@end

@implementation COSBruteForceNetworkReachabilityMonitor

+ (id)checkDomains
{
  if (qword_1002BD4C0 != -1)
  {
    sub_100188864();
  }

  v3 = qword_1002BD4B8;

  return v3;
}

+ (void)checkServerReachabilityWithCompletion:(id)completion
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10008BAE8;
  v5[3] = &unk_10026A228;
  completionCopy = completion;
  selfCopy = self;
  v4 = completionCopy;
  dispatch_async(&_dispatch_main_q, v5);
}

+ (void)checkCompleteStateForResponse:(id)response andError:(id)error
{
  responseCopy = response;
  errorCopy = error;
  v8 = errorCopy;
  if (responseCopy)
  {
    v9 = [NSNumber numberWithInt:errorCopy == 0];
    v10 = qword_1002BD4D0;
    v11 = [responseCopy URL];
    absoluteString = [v11 absoluteString];
    [v10 setObject:v9 forKeyedSubscript:absoluteString];

    v13 = pbb_bridge_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [responseCopy URL];
      localizedDescription = [v8 localizedDescription];
      v23 = 138412802;
      v24 = v14;
      v25 = 2112;
      v26 = v9;
      v27 = 2112;
      v28 = localizedDescription;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%@ did respond? %@ (Error: %@)", &v23, 0x20u);
    }
  }

  else
  {
    userInfo = [errorCopy userInfo];
    v9 = [userInfo objectForKeyedSubscript:NSURLErrorFailingURLStringErrorKey];

    v17 = pbb_bridge_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      localizedDescription2 = [v8 localizedDescription];
      v23 = 138412546;
      v24 = v9;
      v25 = 2112;
      v26 = localizedDescription2;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%@ failed with error Error: %@", &v23, 0x16u);
    }

    if (v9)
    {
      [qword_1002BD4D0 setObject:&__kCFBooleanFalse forKeyedSubscript:v9];
    }
  }

  allValues = [qword_1002BD4D0 allValues];
  v20 = [allValues count];
  checkDomains = [self checkDomains];
  v22 = [checkDomains count];

  if (v20 == v22)
  {
    [self issueResponse];
  }
}

+ (void)issueResponse
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  allKeys = [qword_1002BD4D0 allKeys];
  v4 = [allKeys countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    LODWORD(v7) = 1;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(allKeys);
        }

        v9 = [qword_1002BD4D0 objectForKeyedSubscript:*(*(&v10 + 1) + 8 * i)];
        v7 = v7 & [v9 BOOLValue];
      }

      v5 = [allKeys countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 1;
  }

  [self _issueResponse:v7];
}

+ (void)_issueResponse:(BOOL)response
{
  responseCopy = response;
  v4 = qword_1002BD4D0;
  qword_1002BD4D0 = 0;

  if (qword_1002BD4C8)
  {
    v5 = pbb_bridge_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [NSNumber numberWithBool:responseCopy];
      v8 = 138412290;
      v9 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Servers Reachable? %@", &v8, 0xCu);
    }

    (*(qword_1002BD4C8 + 16))(qword_1002BD4C8, responseCopy);
    v7 = qword_1002BD4C8;
    qword_1002BD4C8 = 0;
  }
}

+ (void)checkServerReachability:(id)reachability withCompletion:(id)completion
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10008C3D4;
  v7[3] = &unk_100268C18;
  reachabilityCopy = reachability;
  completionCopy = completion;
  v5 = completionCopy;
  v6 = reachabilityCopy;
  dispatch_async(&_dispatch_main_q, v7);
}

@end
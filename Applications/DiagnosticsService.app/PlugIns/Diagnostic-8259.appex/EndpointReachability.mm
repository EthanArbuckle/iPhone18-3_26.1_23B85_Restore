@interface EndpointReachability
- (BOOL)_flagIsReachable:(unsigned int)reachable;
- (BOOL)_httpSendRequestWithURL:(id)l timeout:(int64_t)timeout error:(id *)error;
- (id)_calculateTimeIntervalFrom:(id)from To:(id)to;
- (id)_connectionEstablishmentTime:(id)time;
- (id)_dnsResolutionTime:(id)time;
- (id)_httpRequestTime:(id)time;
- (id)_httpResponseTime:(id)time;
- (id)_requestURL:(id)l;
- (int64_t)_httpCheckWithURL:(id)l timeout:(int64_t)timeout;
- (int64_t)_localNetworkCheckWithHostName:(id)name;
- (void)URLSession:(id)session didReceiveChallenge:(id)challenge completionHandler:(id)handler;
- (void)URLSession:(id)session task:(id)task didFinishCollectingMetrics:(id)metrics;
- (void)URLSession:(id)session task:(id)task willPerformHTTPRedirection:(id)redirection newRequest:(id)request completionHandler:(id)handler;
- (void)_testURL:(id)l timeout:(int64_t)timeout completion:(id)completion;
- (void)cancel;
- (void)initEndpointsInfo;
- (void)setupWithInputs:(id)inputs responder:(id)responder;
- (void)start;
- (void)teardown;
@end

@implementation EndpointReachability

- (void)setupWithInputs:(id)inputs responder:(id)responder
{
  inputsCopy = inputs;
  responderCopy = responder;
  v8 = handleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315650;
    v12 = "[EndpointReachability setupWithInputs:responder:]";
    v13 = 2112;
    v14 = inputsCopy;
    v15 = 2112;
    v16 = responderCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s: %@, %@", &v11, 0x20u);
  }

  [(EndpointReachability *)self setInputs:inputsCopy];
  inputs = [(EndpointReachability *)self inputs];

  if (!inputs)
  {
    result = [(EndpointReachability *)self result];
    [result setStatusCode:&off_100008698];

    [(EndpointReachability *)self setFinished:1];
  }
}

- (void)start
{
  v2 = handleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[EndpointReachability start]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v73 = 0x3032000000;
  v74 = sub_100001A0C;
  v75 = sub_100001A1C;
  v76 = objc_opt_new();
  v60 = 0;
  v61 = &v60;
  v62 = 0x3032000000;
  v63 = sub_100001A0C;
  v64 = sub_100001A1C;
  v65 = objc_opt_new();
  v35 = objc_opt_new();
  v56 = 0;
  v57 = &v56;
  v58 = 0x2020000000;
  v59 = 1;
  inputs = [(EndpointReachability *)self inputs];
  timeout = [inputs timeout];
  intValue = [timeout intValue];

  if (intValue)
  {
    v6 = intValue;
  }

  else
  {
    v7 = handleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v69 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Timeout is 0, setting to default timeout.", v69, 2u);
    }

    v6 = 60;
  }

  [(EndpointReachability *)self initEndpointsInfo];
  v8 = dispatch_semaphore_create(32);
  group = dispatch_group_create();
  queue = dispatch_get_global_queue(21, 0);
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  endpointsInfo = [(EndpointReachability *)self endpointsInfo];
  v10 = [endpointsInfo countByEnumeratingWithState:&v52 objects:v71 count:16];
  if (v10)
  {
    v12 = *v53;
    *&v11 = 138412290;
    v34 = v11;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v53 != v12)
        {
          objc_enumerationMutation(endpointsInfo);
        }

        v14 = *(*(&v52 + 1) + 8 * i);
        dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
        v15 = handleForCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *v69 = v34;
          v70 = v14;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Testing endpoint: %@", v69, 0xCu);
        }

        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100001A24;
        block[3] = &unk_1000082B8;
        v16 = group;
        v44 = v16;
        selfCopy = self;
        v50 = &v56;
        v51 = v6;
        v46 = v14;
        v48 = &v60;
        p_buf = &buf;
        v47 = v8;
        dispatch_group_async(v16, queue, block);
      }

      v10 = [endpointsInfo countByEnumeratingWithState:&v52 objects:v71 count:16];
    }

    while (v10);
  }

  dispatch_group_wait(group, 0xFFFFFFFFFFFFFFFFLL);
  if (*(v57 + 24) == 1)
  {
    result = [(EndpointReachability *)self result];
    [result setStatusCode:&off_1000086B0];
  }

  else
  {
    result = [(EndpointReachability *)self result];
    [result setStatusCode:&off_1000086C8];
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  endpointsInfo2 = [(EndpointReachability *)self endpointsInfo];
  v19 = [endpointsInfo2 countByEnumeratingWithState:&v39 objects:v68 count:16];
  if (v19)
  {
    v20 = *v40;
    do
    {
      for (j = 0; j != v19; j = j + 1)
      {
        if (*v40 != v20)
        {
          objc_enumerationMutation(endpointsInfo2);
        }

        v22 = *(*(&v39 + 1) + 8 * j);
        endpointsInfo3 = [(EndpointReachability *)self endpointsInfo];
        v24 = [endpointsInfo3 valueForKey:v22];

        v25 = [v24 valueForKey:@"metrics"];
        [v35 setObject:v25 forKey:v22];
      }

      v19 = [endpointsInfo2 countByEnumeratingWithState:&v39 objects:v68 count:16];
    }

    while (v19);
  }

  v66[0] = @"endpointReachability";
  v26 = [v61[5] count];
  if (v26)
  {
    v27 = v61[5];
  }

  else
  {
    v27 = +[NSNull null];
  }

  v67[0] = v27;
  v66[1] = @"unreachableEndpoints";
  v28 = [*(*(&buf + 1) + 40) count];
  if (v28)
  {
    v29 = *(*(&buf + 1) + 40);
  }

  else
  {
    v29 = +[NSNull null];
  }

  v67[1] = v29;
  v66[2] = @"metrics";
  v30 = [v35 count];
  v31 = v35;
  if (!v30)
  {
    v31 = +[NSNull null];
  }

  v67[2] = v31;
  v32 = [NSDictionary dictionaryWithObjects:v67 forKeys:v66 count:3];
  result2 = [(EndpointReachability *)self result];
  [result2 setData:v32];

  if (!v30)
  {
  }

  if (!v28)
  {
  }

  if (!v26)
  {
  }

  [(EndpointReachability *)self setFinished:1];

  _Block_object_dispose(&v56, 8);
  _Block_object_dispose(&v60, 8);

  _Block_object_dispose(&buf, 8);
}

- (void)cancel
{
  v2 = handleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315138;
    v4 = "[EndpointReachability cancel]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s", &v3, 0xCu);
  }
}

- (void)teardown
{
  v2 = handleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315138;
    v4 = "[EndpointReachability teardown]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s", &v3, 0xCu);
  }
}

- (void)initEndpointsInfo
{
  v3 = objc_opt_new();
  [(EndpointReachability *)self setEndpointsInfo:v3];

  selfCopy = self;
  inputs = [(EndpointReachability *)self inputs];
  endpointURLs = [inputs endpointURLs];
  v6 = [NSSet setWithArray:endpointURLs];
  allObjects = [v6 allObjects];

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = allObjects;
  v41 = [obj countByEnumeratingWithState:&v45 objects:v53 count:16];
  if (v41)
  {
    v39 = *v46;
    v8 = &handleForCategory_ptr;
    do
    {
      v9 = 0;
      do
      {
        if (*v46 != v39)
        {
          objc_enumerationMutation(obj);
        }

        v44 = v9;
        v10 = *(*(&v45 + 1) + 8 * v9);
        v11 = handleForCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v52 = v10;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "endpoint: %@", buf, 0xCu);
        }

        v12 = [NSURL URLWithString:v10];
        host = [v12 host];
        port = [v12 port];
        if (!port)
        {
          v15 = handleForCategory();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v52 = v12;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%@: Port number not specified, using default.", buf, 0xCu);
          }

          scheme = [v12 scheme];
          v17 = [scheme caseInsensitiveCompare:@"http"];

          if (v17)
          {
            scheme2 = [v12 scheme];
            v19 = [scheme2 caseInsensitiveCompare:@"https"];

            if (v19)
            {
              port = 0;
              goto LABEL_17;
            }

            v20 = 443;
          }

          else
          {
            v20 = 80;
          }

          port = [NSNumber numberWithInt:v20];
        }

LABEL_17:
        v42 = [NSString stringWithFormat:@"%@:%@", host, port];
        v49[0] = @"remoteAddress";
        null = [v8[69] null];
        v50[0] = null;
        v49[1] = @"remotePort";
        null2 = [v8[69] null];
        v50[1] = null2;
        v49[2] = @"dnsResolutionTime";
        null3 = [v8[69] null];
        v50[2] = null3;
        v49[3] = @"connectionEstablishmentTime";
        null4 = [v8[69] null];
        v50[3] = null4;
        v49[4] = @"httpRequestTime";
        [v8[69] null];
        v26 = v25 = v8;
        v50[4] = v26;
        v49[5] = @"httpResponseTime";
        [v25[69] null];
        v28 = v27 = host;
        v50[5] = v28;
        v43 = [NSDictionary dictionaryWithObjects:v50 forKeys:v49 count:6];

        v29 = objc_opt_new();
        scheme3 = [v12 scheme];
        v31 = [NSString stringWithFormat:@"%@://%@", scheme3, v42];
        [v29 setObject:v31 forKey:@"url"];

        if (v27)
        {
          [v29 setObject:v27 forKey:@"hostname"];
        }

        else
        {
          null5 = [v25[69] null];
          [v29 setObject:null5 forKey:@"hostname"];
        }

        v8 = v25;
        if (port)
        {
          [v29 setObject:port forKey:@"port"];
          if (v43)
          {
            goto LABEL_22;
          }
        }

        else
        {
          null6 = [v25[69] null];
          [v29 setObject:null6 forKey:@"port"];

          if (v43)
          {
LABEL_22:
            [v29 setObject:v43 forKey:@"metrics"];
            goto LABEL_25;
          }
        }

        null7 = [v25[69] null];
        [v29 setObject:null7 forKey:@"metrics"];

LABEL_25:
        endpointsInfo = [(EndpointReachability *)selfCopy endpointsInfo];
        [endpointsInfo setObject:v29 forKey:v42];

        v9 = v44 + 1;
      }

      while (v41 != (v44 + 1));
      v41 = [obj countByEnumeratingWithState:&v45 objects:v53 count:16];
    }

    while (v41);
  }

  v36 = handleForCategory();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    endpointsInfo2 = [(EndpointReachability *)selfCopy endpointsInfo];
    *buf = 138412290;
    v52 = endpointsInfo2;
    _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "endpointsInfo: %@", buf, 0xCu);
  }
}

- (void)_testURL:(id)l timeout:(int64_t)timeout completion:(id)completion
{
  lCopy = l;
  completionCopy = completion;
  v10 = handleForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v33 = 136315394;
    v34 = "[EndpointReachability _testURL:timeout:completion:]";
    v35 = 2112;
    v36 = lCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s: %@", &v33, 0x16u);
  }

  endpointsInfo = [(EndpointReachability *)self endpointsInfo];
  v12 = [endpointsInfo objectForKeyedSubscript:lCopy];

  v13 = [v12 objectForKeyedSubscript:@"url"];
  v14 = [NSURL URLWithString:v13];

  v15 = [v12 objectForKeyedSubscript:@"hostname"];
  v16 = [v12 objectForKeyedSubscript:@"port"];
  v17 = handleForCategory();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v33 = 138412546;
    v34 = v15;
    v35 = 2112;
    v36 = v16;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Hostname: %@  Portnumber: %@", &v33, 0x16u);
  }

  v18 = [(EndpointReachability *)self _localNetworkCheckWithHostName:v15];
  if (v18)
  {
    v19 = v18;
    v20 = handleForCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_100003AE8(lCopy, v20, v21, v22, v23, v24, v25, v26);
    }
  }

  else
  {
    v19 = [(EndpointReachability *)self _httpCheckWithURL:v14 timeout:timeout];
    if (!v19)
    {
      goto LABEL_12;
    }

    v20 = handleForCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_100003B54(lCopy, v20, v27, v28, v29, v30, v31, v32);
    }
  }

LABEL_12:
  if (completionCopy)
  {
    completionCopy[2](completionCopy, v19);
  }
}

- (BOOL)_flagIsReachable:(unsigned int)reachable
{
  v3 = (reachable & 0x28) != 0;
  if ((reachable & 0x10) != 0)
  {
    v3 = 0;
  }

  v4 = (reachable & 4) == 0 || v3;
  return (reachable & 2) != 0 && v4;
}

- (int64_t)_localNetworkCheckWithHostName:(id)name
{
  nameCopy = name;
  v5 = handleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v23 = "[EndpointReachability _localNetworkCheckWithHostName:]";
    v24 = 2112;
    v25 = nameCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s: %@", buf, 0x16u);
  }

  uTF8String = [nameCopy UTF8String];
  if (uTF8String && (v7 = SCNetworkReachabilityCreateWithName(kCFAllocatorDefault, uTF8String)) != 0)
  {
    v8 = v7;
    flags = 0;
    if (SCNetworkReachabilityGetFlags(v7, &flags))
    {
      v9 = [(EndpointReachability *)self _flagIsReachable:flags];
      v10 = handleForCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = "No";
        if (v9)
        {
          v11 = "Yes";
        }

        *buf = 138412546;
        v23 = nameCopy;
        v24 = 2080;
        v25 = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%@ reachable: %s", buf, 0x16u);
      }

      v12 = v9 - 1;
    }

    else
    {
      v13 = handleForCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_100003BC0(nameCopy, v13, v14, v15, v16, v17, v18, v19);
      }

      v12 = -2;
    }

    CFRelease(v8);
  }

  else
  {
    v12 = -13;
  }

  return v12;
}

- (BOOL)_httpSendRequestWithURL:(id)l timeout:(int64_t)timeout error:(id *)error
{
  lCopy = l;
  v9 = handleForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = lCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%@: Sending HTTP Request...", &buf, 0xCu);
  }

  v10 = +[NSURLSessionConfiguration ephemeralSessionConfiguration];
  v11 = [NSURLSession sessionWithConfiguration:v10 delegate:self delegateQueue:0];
  v12 = [NSMutableURLRequest requestWithURL:lCopy cachePolicy:1 timeoutInterval:timeout];
  [v12 setHTTPMethod:@"GET"];
  *&buf = 0;
  *(&buf + 1) = &buf;
  v51 = 0x3032000000;
  v52 = sub_100001A0C;
  v53 = sub_100001A1C;
  v54 = 0;
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = sub_100001A0C;
  v44 = sub_100001A1C;
  v45 = 0;
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = sub_100001A0C;
  v38 = sub_100001A1C;
  v39 = 0;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100002CF0;
  v24[3] = &unk_1000082E0;
  p_buf = &buf;
  v27 = &v40;
  v28 = &v34;
  v29 = &v30;
  v13 = dispatch_semaphore_create(0);
  v25 = v13;
  v14 = [v11 dataTaskWithRequest:v12 completionHandler:v24];
  [v14 resume];
  dispatch_semaphore_wait(v13, 0xFFFFFFFFFFFFFFFFLL);
  v15 = handleForCategory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = v41[5];
    *v46 = 138412546;
    v47 = lCopy;
    v48 = 2112;
    v49 = v16;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%@: HTTP Response Header: %@", v46, 0x16u);
  }

  v17 = handleForCategory();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = *(v31 + 6);
    *v46 = 138412546;
    v47 = lCopy;
    v48 = 1024;
    LODWORD(v49) = v18;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%@: HTTP Status: %d", v46, 0x12u);
  }

  v19 = handleForCategory();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = v35[5];
    *v46 = 138412546;
    v47 = lCopy;
    v48 = 2112;
    v49 = v20;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%@: HTTP Error: %@", v46, 0x16u);
  }

  v21 = v35[5];
  if (error && v21)
  {
    v21 = v21;
    *error = v21;
  }

  v22 = v21 == 0;

  _Block_object_dispose(&v30, 8);
  _Block_object_dispose(&v34, 8);

  _Block_object_dispose(&v40, 8);
  _Block_object_dispose(&buf, 8);

  return v22;
}

- (int64_t)_httpCheckWithURL:(id)l timeout:(int64_t)timeout
{
  lCopy = l;
  v7 = handleForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v15 = "[EndpointReachability _httpCheckWithURL:timeout:]";
    v16 = 2112;
    v17 = lCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s: %@", buf, 0x16u);
  }

  v13 = 0;
  v8 = [(EndpointReachability *)self _httpSendRequestWithURL:lCopy timeout:timeout error:&v13];
  v9 = v13;
  v10 = v9;
  v11 = 0;
  if ((v8 & 1) == 0)
  {
    if ([v9 code] == -1001)
    {
      v11 = -11;
    }

    else if ([v10 code] == -1004)
    {
      v11 = -9;
    }

    else if ([v10 code] == -1009)
    {
      v11 = -8;
    }

    else if ([v10 code] == -1003)
    {
      v11 = -10;
    }

    else
    {
      v11 = -12;
    }
  }

  return v11;
}

- (id)_calculateTimeIntervalFrom:(id)from To:(id)to
{
  v5 = 0;
  if (from && to)
  {
    [to timeIntervalSinceDate:?];
    v5 = [NSString stringWithFormat:@"%lf", v6];
    v4 = vars8;
  }

  return v5;
}

- (id)_dnsResolutionTime:(id)time
{
  timeCopy = time;
  domainLookupStartDate = [timeCopy domainLookupStartDate];
  domainLookupEndDate = [timeCopy domainLookupEndDate];

  v7 = [(EndpointReachability *)self _calculateTimeIntervalFrom:domainLookupStartDate To:domainLookupEndDate];

  return v7;
}

- (id)_connectionEstablishmentTime:(id)time
{
  timeCopy = time;
  connectStartDate = [timeCopy connectStartDate];
  connectEndDate = [timeCopy connectEndDate];

  v7 = [(EndpointReachability *)self _calculateTimeIntervalFrom:connectStartDate To:connectEndDate];

  return v7;
}

- (id)_httpRequestTime:(id)time
{
  timeCopy = time;
  requestStartDate = [timeCopy requestStartDate];
  requestEndDate = [timeCopy requestEndDate];

  v7 = [(EndpointReachability *)self _calculateTimeIntervalFrom:requestStartDate To:requestEndDate];

  return v7;
}

- (id)_httpResponseTime:(id)time
{
  timeCopy = time;
  responseStartDate = [timeCopy responseStartDate];
  responseEndDate = [timeCopy responseEndDate];

  v7 = [(EndpointReachability *)self _calculateTimeIntervalFrom:responseStartDate To:responseEndDate];

  return v7;
}

- (id)_requestURL:(id)l
{
  request = [l request];
  v4 = [request URL];

  return v4;
}

- (void)URLSession:(id)session didReceiveChallenge:(id)challenge completionHandler:(id)handler
{
  challengeCopy = challenge;
  handlerCopy = handler;
  v8 = handleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "URLSession didReceiveChallenge...", buf, 2u);
  }

  protectionSpace = [challengeCopy protectionSpace];
  authenticationMethod = [protectionSpace authenticationMethod];
  v11 = [authenticationMethod isEqualToString:NSURLAuthenticationMethodServerTrust];

  v12 = handleForCategory();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (v11)
  {
    if (v13)
    {
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Continue without authentication. Accepting server.", v17, 2u);
    }

    protectionSpace2 = [challengeCopy protectionSpace];
    v15 = +[NSURLCredential credentialForTrust:](NSURLCredential, "credentialForTrust:", [protectionSpace2 serverTrust]);

    handlerCopy[2](handlerCopy, 0, v15);
  }

  else
  {
    if (v13)
    {
      v16[0] = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Perform default challenge handling.", v16, 2u);
    }

    handlerCopy[2](handlerCopy, 1, 0);
  }
}

- (void)URLSession:(id)session task:(id)task willPerformHTTPRedirection:(id)redirection newRequest:(id)request completionHandler:(id)handler
{
  handlerCopy = handler;
  v8 = handleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "URLSession willPerformHTTPRedirection...", v9, 2u);
  }

  handlerCopy[2](handlerCopy, 0);
}

- (void)URLSession:(id)session task:(id)task didFinishCollectingMetrics:(id)metrics
{
  sessionCopy = session;
  taskCopy = task;
  metricsCopy = metrics;
  v8 = handleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    originalRequest = [taskCopy originalRequest];
    v10 = [originalRequest URL];
    *buf = 138412546;
    v40 = v10;
    v41 = 2112;
    v42 = metricsCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Successfully collected URL(%@) metrics %@", buf, 0x16u);
  }

  transactionMetrics = [metricsCopy transactionMetrics];
  firstObject = [transactionMetrics firstObject];

  v35 = [(EndpointReachability *)self _dnsResolutionTime:firstObject];
  v34 = [(EndpointReachability *)self _connectionEstablishmentTime:firstObject];
  v33 = [(EndpointReachability *)self _httpRequestTime:firstObject];
  v13 = [(EndpointReachability *)self _httpResponseTime:firstObject];
  v14 = [(EndpointReachability *)self _remoteAddress:firstObject];
  v15 = [(EndpointReachability *)self _remotePort:firstObject];
  v16 = [(EndpointReachability *)self _requestURL:firstObject];
  host = [v16 host];
  port = [v16 port];
  v17 = [NSString stringWithFormat:@"%@:%@", host, port];
  v18 = handleForCategory();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v40 = v17;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "testpoint: %@", buf, 0xCu);
  }

  v19 = objc_opt_new();
  v20 = v19;
  if (v14)
  {
    [v19 setObject:v14 forKey:@"remoteAddress"];
  }

  else
  {
    v21 = +[NSNull null];
    [v20 setObject:v21 forKey:@"remoteAddress"];
  }

  if (v15)
  {
    [v20 setObject:v15 forKey:@"remotePort"];
  }

  else
  {
    v22 = +[NSNull null];
    [v20 setObject:v22 forKey:@"remotePort"];
  }

  if (v35)
  {
    [v20 setObject:v35 forKey:@"dnsResolutionTime"];
  }

  else
  {
    v23 = +[NSNull null];
    [v20 setObject:v23 forKey:@"dnsResolutionTime"];
  }

  if (v34)
  {
    [v20 setObject:v34 forKey:@"connectionEstablishmentTime"];
  }

  else
  {
    v24 = +[NSNull null];
    [v20 setObject:v24 forKey:@"connectionEstablishmentTime"];
  }

  if (v33)
  {
    [v20 setObject:v33 forKey:@"httpRequestTime"];
  }

  else
  {
    v25 = +[NSNull null];
    [v20 setObject:v25 forKey:@"httpRequestTime"];
  }

  if (v13)
  {
    [v20 setObject:v13 forKey:@"httpResponseTime"];
  }

  else
  {
    v26 = +[NSNull null];
    [v20 setObject:v26 forKey:@"httpResponseTime"];
  }

  v27 = handleForCategory();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v40 = v17;
    v41 = 2112;
    v42 = v20;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "%@ metrics: %@", buf, 0x16u);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  endpointsInfo = [(EndpointReachability *)selfCopy endpointsInfo];
  v30 = [endpointsInfo objectForKey:v17];
  [v30 setObject:v20 forKey:@"metrics"];

  objc_sync_exit(selfCopy);
}

@end
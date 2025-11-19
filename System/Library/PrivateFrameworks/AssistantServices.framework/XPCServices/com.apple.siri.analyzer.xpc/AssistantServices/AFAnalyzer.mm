@interface AFAnalyzer
+ (id)analyzer;
- (double)_measureTimeToLoadURL:(id)a3 withMethod:(id)a4;
- (id)_addressToPingForHost:(id)a3;
- (id)_resultForCommand:(const char *)a3;
- (void)_getDefaultGateway:(id *)a3 iface:(id *)a4;
- (void)_handleMessage:(id)a3;
- (void)_pingHost:(id)a3 time:(double *)a4 sentPackets:(int64_t *)a5 droppedPackets:(int64_t *)a6;
- (void)_startAnalysisWithMessage:(id)a3;
- (void)runAnalysis;
- (void)runAnalyzerService;
@end

@implementation AFAnalyzer

- (void)runAnalysis
{
  v3 = [NSURL URLWithString:@"https://guzzoni.apple.com"];
  [(AFAnalyzer *)self _logAnalysisForURL:v3 failedIFaceIndex:0 sendBufferSize:0 isUserFailure:0 isWWANPreferred:0 isRetrySuccess:0];
}

- (void)runAnalyzerService
{
  AFLogInitIfNeeded();
  v3 = AFSiriLogContextAnalysis;
  if (os_log_type_enabled(AFSiriLogContextAnalysis, OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "[AFAnalyzer runAnalyzerService]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s Running analyzer service", &v4, 0xCu);
  }

  objc_storeStrong(&qword_10000C238, self);
  xpc_main(sub_100000E58);
}

- (void)_handleMessage:(id)a3
{
  v5 = a3;
  string = xpc_dictionary_get_string(v5, "message");
  if (!strcmp(string, "analyze"))
  {
    [(AFAnalyzer *)self _startAnalysisWithMessage:v5];
  }
}

- (void)_startAnalysisWithMessage:(id)a3
{
  v4 = a3;
  string = xpc_dictionary_get_string(v4, "url");
  if (string)
  {
    v6 = string;
    v7 = [NSString stringWithUTF8String:string];
    v8 = [NSURL URLWithString:v7];

    v9 = AFSiriLogContextAnalysis;
    v10 = os_log_type_enabled(AFSiriLogContextAnalysis, OS_LOG_TYPE_INFO);
    if (v8)
    {
      if (v10)
      {
        v22 = 136315394;
        v23 = "[AFAnalyzer _startAnalysisWithMessage:]";
        v24 = 2112;
        v25 = v8;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s Attempting analysis on URL {%@}.", &v22, 0x16u);
      }

      v11 = xpc_dictionary_get_value(v4, "interface");
      v12 = v11;
      if (v11)
      {
        v13 = [NSNumber numberWithLongLong:xpc_int64_get_value(v11)];
      }

      else
      {
        v13 = 0;
      }

      v16 = xpc_dictionary_get_value(v4, "send buffer");
      v17 = v16;
      if (v16)
      {
        v18 = [NSNumber numberWithLongLong:xpc_int64_get_value(v16)];
      }

      else
      {
        v18 = 0;
      }

      v19 = xpc_dictionary_get_BOOL(v4, "request failure");
      v20 = xpc_dictionary_get_BOOL(v4, "wwan preferred");
      [(AFAnalyzer *)self _logAnalysisForURL:v8 failedIFaceIndex:v13 sendBufferSize:v18 isUserFailure:v19 isWWANPreferred:v20 isRetrySuccess:xpc_dictionary_get_BOOL(v4, "successful retry")];
      v21 = dispatch_time(0, 1000000000);
      dispatch_after(v21, &_dispatch_main_q, &stru_100008518);
    }

    else
    {
      if (!v10)
      {
LABEL_17:

        goto LABEL_18;
      }

      v13 = v9;
      v15 = [NSString stringWithUTF8String:v6];
      v22 = 136315394;
      v23 = "[AFAnalyzer _startAnalysisWithMessage:]";
      v24 = 2112;
      v25 = v15;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s Ending analysis. Instantiating a URL for {%@} returned nil.", &v22, 0x16u);
    }

    goto LABEL_17;
  }

  v14 = AFSiriLogContextAnalysis;
  if (os_log_type_enabled(AFSiriLogContextAnalysis, OS_LOG_TYPE_INFO))
  {
    v22 = 136315138;
    v23 = "[AFAnalyzer _startAnalysisWithMessage:]";
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s Ending analysis. Attempted analysis on a NULL URL.", &v22, 0xCu);
  }

LABEL_18:
}

- (double)_measureTimeToLoadURL:(id)a3 withMethod:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = AFSiriLogContextAnalysis;
  if (os_log_type_enabled(AFSiriLogContextAnalysis, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "[AFAnalyzer _measureTimeToLoadURL:withMethod:]";
    *&buf[12] = 2112;
    *&buf[14] = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s Attempting to load %@", buf, 0x16u);
  }

  v8 = [[NSMutableURLRequest alloc] initWithURL:v5];
  [v8 setHTTPMethod:v6];
  [v8 setHTTPShouldHandleCookies:0];
  v9 = +[NSProcessInfo processInfo];
  [v9 systemUptime];
  v11 = v10;

  v12 = dispatch_semaphore_create(0);
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v30 = 0xBFF0000000000000;
  v13 = +[NSURLSession sharedSession];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100002674;
  v21[3] = &unk_1000083E8;
  v23 = buf;
  v24 = v11;
  v14 = v12;
  v22 = v14;
  v15 = [v13 dataTaskWithRequest:v8 completionHandler:v21];

  [v15 resume];
  v16 = dispatch_time(0, 300000000000);
  dispatch_semaphore_wait(v14, v16);
  v17 = AFSiriLogContextAnalysis;
  if (os_log_type_enabled(AFSiriLogContextAnalysis, OS_LOG_TYPE_INFO))
  {
    if (*(*&buf[8] + 24) < 0.0)
    {
      v18 = @"failed";
    }

    else
    {
      v18 = @"succeeded";
    }

    *v25 = 136315394;
    v26 = "[AFAnalyzer _measureTimeToLoadURL:withMethod:]";
    v27 = 2112;
    v28 = v18;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%s URL load %@", v25, 0x16u);
  }

  v19 = *(*&buf[8] + 24);

  _Block_object_dispose(buf, 8);
  return v19;
}

- (void)_pingHost:(id)a3 time:(double *)a4 sentPackets:(int64_t *)a5 droppedPackets:(int64_t *)a6
{
  v8 = a3;
  v9 = [(AFAnalyzer *)self _addressToPingForHost:v8];
  if (v9)
  {
    v10 = arc4random_uniform(0xFFFFu);
    v11 = socket(2, 2, 1);
    if ((v11 & 0x80000000) == 0)
    {
      v12 = v11;
      v13 = AFSiriLogContextAnalysis;
      if (os_log_type_enabled(AFSiriLogContextAnalysis, OS_LOG_TYPE_INFO))
      {
        *buf = 136315650;
        *&buf[4] = "[AFAnalyzer _pingHost:time:sentPackets:droppedPackets:]";
        *&buf[12] = 2112;
        *&buf[14] = v8;
        *&buf[22] = 1024;
        LODWORD(v64) = v10;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s Pinging %@ using id %d", buf, 0x1Cu);
      }

      v15 = [NSString stringWithFormat:@"ping.queue.%d", v10];
      v16 = v15;
      v17 = dispatch_queue_create([v15 UTF8String], 0);

      v18 = dispatch_semaphore_create(0);
      v19 = dispatch_source_create(&_dispatch_source_type_read, v12, 0, v17);
      v59 = 0;
      v60 = &v59;
      v61 = 0x2020000000;
      v62 = 0;
      v55 = 0;
      v56 = &v55;
      v57 = 0x2020000000;
      v58 = 0;
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_100002C44;
      handler[3] = &unk_100008370;
      v52 = v12;
      v20 = v9;
      v54 = v10;
      v48 = v20;
      v50 = &v59;
      v51 = &v55;
      v53 = 5;
      v21 = v19;
      v49 = v21;
      dispatch_source_set_event_handler(v21, handler);
      v44[0] = _NSConcreteStackBlock;
      v44[1] = 3221225472;
      v44[2] = sub_100003000;
      v44[3] = &unk_100008398;
      v22 = v18;
      v45 = v22;
      v46 = v12;
      dispatch_source_set_cancel_handler(v21, v44);
      dispatch_resume(v21);
      v42[0] = 0;
      v42[1] = v42;
      v42[2] = 0x2020000000;
      v43 = 0;
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v64 = sub_10000303C;
      v65 = sub_100003068;
      v66 = 0;
      v33[0] = _NSConcreteStackBlock;
      v33[1] = 3221225472;
      v33[2] = sub_100003070;
      v33[3] = &unk_1000083C0;
      v23 = v21;
      v34 = v23;
      v41 = v10;
      v35 = v20;
      v37 = v42;
      v39 = v12;
      v40 = 5;
      v24 = v17;
      v36 = v24;
      v38 = buf;
      v25 = [v33 copy];
      v26 = objc_retainBlock(v25);
      v27 = *(*&buf[8] + 40);
      *(*&buf[8] + 40) = v26;

      dispatch_async(v24, v25);
      v28 = dispatch_time(0, 10000000000);
      dispatch_semaphore_wait(v22, v28);
      dispatch_source_cancel(v23);
      if (a4)
      {
        v29 = *(v60 + 6);
        if (v29 < 1)
        {
          v30 = -1.0;
        }

        else
        {
          v30 = v56[3] / v29;
        }

        *a4 = v30;
      }

      if (a5)
      {
        *a5 = 5;
      }

      if (a6)
      {
        *a6 = 5 - *(v60 + 6);
      }

      _Block_object_dispose(buf, 8);
      _Block_object_dispose(v42, 8);

      _Block_object_dispose(&v55, 8);
      _Block_object_dispose(&v59, 8);
    }
  }

  else
  {
    v14 = AFSiriLogContextAnalysis;
    if (os_log_type_enabled(AFSiriLogContextAnalysis, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      *&buf[4] = "[AFAnalyzer _pingHost:time:sentPackets:droppedPackets:]";
      *&buf[12] = 2112;
      *&buf[14] = v8;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s Couldn't find addr for host %@", buf, 0x16u);
    }
  }
}

- (id)_addressToPingForHost:(id)a3
{
  if (!a3)
  {
    goto LABEL_10;
  }

  v13 = 0;
  memset(&v12, 0, sizeof(v12));
  *&v12.ai_family = 0x200000002;
  v3 = getaddrinfo([a3 UTF8String], 0, &v12, &v13);
  if (v3)
  {
    v4 = v3;
    v5 = AFSiriLogContextAnalysis;
    if (os_log_type_enabled(AFSiriLogContextAnalysis, OS_LOG_TYPE_INFO))
    {
      v6 = v5;
      v7 = gai_strerror(v4);
      *buf = 136315394;
      v15 = "[AFAnalyzer _addressToPingForHost:]";
      v16 = 2080;
      v17 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s Couldn't getaddrinfo %s", buf, 0x16u);
    }

    goto LABEL_10;
  }

  v8 = v13;
  if (!v13)
  {
LABEL_10:
    v10 = 0;
    goto LABEL_11;
  }

  v9 = v13;
  while (v9->ai_family != 2)
  {
    v9 = v9->ai_next;
    if (!v9)
    {
      v10 = 0;
      goto LABEL_15;
    }
  }

  v10 = [NSData dataWithBytes:v9->ai_addr length:v9->ai_addrlen];
  v8 = v13;
  if (!v13)
  {
    goto LABEL_11;
  }

LABEL_15:
  freeaddrinfo(v8);
LABEL_11:

  return v10;
}

- (void)_getDefaultGateway:(id *)a3 iface:(id *)a4
{
  *v25 = xmmword_100004518;
  v26 = 1;
  size = 0;
  if (sysctl(v25, 6u, 0, &size, 0, 0) < 0 || (v6 = malloc_type_malloc(size, 0x415E278CuLL)) == 0)
  {
    v8 = 0;
    v20 = 0;
    if (!a3)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  v7 = v6;
  if (sysctl(v25, 6u, v6, &size, 0, 0) < 0 || size < 1)
  {
    v8 = 0;
LABEL_31:
    v20 = 0;
  }

  else
  {
    v8 = 0;
    v9 = v7 + size;
    v10 = v7;
    while (1)
    {

      if ((*(v10 + 2) & 0x20002) == 2 && (v10[11] & 1) == 0 && *(v10 + 93) == 2)
      {
        v11 = 0;
        v12 = v10 + 46;
        memset(v29, 0, sizeof(v29));
        v13 = *(v10 + 3);
        do
        {
          if ((v13 >> v11))
          {
            v14 = ((*v12 - 1) & 0xFFFFFFFC) + 4;
            if (!*v12)
            {
              v14 = 4;
            }

            v15 = v12;
            v12 += v14;
          }

          else
          {
            v15 = 0;
          }

          *(v29 + v11++) = v15;
        }

        while (v11 != 8);
        if (*(*(&v29[0] + 1) + 1) == 2 && (*v27 = 0, v28 = 0, (v16 = inet_ntop(2, (*(&v29[0] + 1) + 4), v27, 0x10u)) != 0))
        {
          v17 = [NSString stringWithUTF8String:v16];
          v18 = v17;
        }

        else
        {
          v17 = 0;
        }

        v19 = sub_100001CB0(v10[2]);
        v21 = v19;
      }

      else
      {
        v17 = 0;
        v19 = 0;
      }

      v20 = v17;
      v8 = v19;
      if (v20)
      {
        break;
      }

      v10 = (v10 + *v10);
      if (v10 >= v9)
      {
        goto LABEL_31;
      }
    }
  }

  free(v7);
  if (a3)
  {
LABEL_26:
    v22 = v20;
    *a3 = v20;
  }

LABEL_27:
  if (a4)
  {
    v23 = v8;
    *a4 = v8;
  }
}

- (id)_resultForCommand:(const char *)a3
{
  v4 = popen(a3, "r");
  if (v4)
  {
    v5 = v4;
    v6 = +[NSMutableString string];
    while (!feof(v5))
    {
      v7 = fread(&v13, 1uLL, 0x200uLL, v5);
      if (v7 >= 1)
      {
        v8 = [[NSString alloc] initWithBytes:&v13 length:v7 encoding:4];
        if (v8)
        {
          [v6 appendString:v8];
        }
      }
    }

    pclose(v5);
  }

  else
  {
    v9 = AFSiriLogContextAnalysis;
    if (os_log_type_enabled(AFSiriLogContextAnalysis, OS_LOG_TYPE_INFO))
    {
      v10 = v9;
      v11 = *__error();
      v13 = 136315650;
      v14 = "[AFAnalyzer _resultForCommand:]";
      v15 = 1024;
      v16 = v11;
      v17 = 2080;
      v18 = a3;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s Unable to run (%d): %s", &v13, 0x1Cu);
    }

    v6 = 0;
  }

  return v6;
}

+ (id)analyzer
{
  v2 = objc_alloc_init(AFAnalyzer);

  return v2;
}

@end
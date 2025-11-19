@interface PDURLRequestOperation
+ (id)appleIDSession;
+ (void)reset;
- (BOOL)httpRequestCompleted;
- (BOOL)httpRequestHadServerError;
- (BOOL)httpRequestHadTimeoutError;
- (BOOL)httpRequestSucceeded;
- (BOOL)shouldProcessResponseBody;
- (BOOL)urlRequestFailed;
- (BOOL)willAcceptResponseContentType:(id)a3;
- (PDURLRequestOperation)initWithDatabase:(id)a3;
- (id)_createRequestTask;
- (id)createNSURLRequest;
- (id)createSessionIfNeeded;
- (id)operationID;
- (id)sessionTaskForRequest:(id)a3 withData:(id)a4;
- (id)statusReport;
- (int64_t)clsErrorCodeForAuthenticationFailure;
- (int64_t)errorCodeForRequest;
- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveData:(id)a5;
- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveResponse:(id)a5 completionHandler:(id)a6;
- (void)URLSession:(id)a3 didBecomeInvalidWithError:(id)a4;
- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5;
- (void)URLSession:(id)a3 task:(id)a4 didReceiveChallenge:(id)a5 completionHandler:(id)a6;
- (void)_simulateResponseWithURL:(id)a3 statusCode:(int64_t)a4 headers:(id)a5 data:(id)a6 error:(id)a7;
- (void)abort;
- (void)abortWithError:(id)a3;
- (void)closeSession:(BOOL)a3;
- (void)didCompleteProcessingResponse;
- (void)execute;
- (void)flushCachedData;
- (void)handleHTTPStatusCode:(id)a3;
- (void)handleRequestError;
- (void)handleResponseBody:(BOOL)a3;
- (void)logHTTPHeaders:(id)a3 withMessage:(id)a4;
- (void)markAsFinished;
- (void)prepareForNextRequest;
- (void)prepareForNextRequestWithResponse:(id)a3;
- (void)releaseResponse;
- (void)requestCompletedWith:(id)a3 error:(id)a4;
- (void)rescheduleOperation;
- (void)sessionFailedWithError:(id)a3;
- (void)setAuthHeadersForRequest:(id)a3;
- (void)setHeadersForRequest:(id)a3;
@end

@implementation PDURLRequestOperation

+ (void)reset
{
  if (qword_10024DB08 != -1)
  {
    dispatch_once(&qword_10024DB08, &stru_100205390);
  }

  os_unfair_lock_lock(&dword_10024DAFC);
  v2 = qword_10024DB00;
  qword_10024DB00 = 0;

  if (qword_10024DB08 != -1)
  {
    dispatch_once(&qword_10024DB08, &stru_100205390);
  }

  os_unfair_lock_unlock(&dword_10024DAFC);
}

+ (id)appleIDSession
{
  if (qword_10024DB08 != -1)
  {
    dispatch_once(&qword_10024DB08, &stru_100205390);
  }

  os_unfair_lock_lock(&dword_10024DAFC);
  v2 = qword_10024DB00;
  if (!qword_10024DB00)
  {
    v3 = [[AKAppleIDSession alloc] initWithIdentifier:@"ClassKitServiceID"];
    v4 = qword_10024DB00;
    qword_10024DB00 = v3;

    v2 = qword_10024DB00;
  }

  v5 = v2;
  if (qword_10024DB08 != -1)
  {
    dispatch_once(&qword_10024DB08, &stru_100205390);
  }

  os_unfair_lock_unlock(&dword_10024DAFC);

  return v5;
}

- (PDURLRequestOperation)initWithDatabase:(id)a3
{
  v8.receiver = self;
  v8.super_class = PDURLRequestOperation;
  v3 = [(PDOperation *)&v8 initWithDatabase:a3];
  v4 = v3;
  if (v3)
  {
    *(v3 + 90) = 0;
    v3[98] = 1;
    *(v3 + 194) = 0x404E000000000000;
    v5 = sub_10009E7C0([PDURLOperationStats alloc], v3);
    v6 = *(v4 + 154);
    *(v4 + 154) = v5;

    v4[138] = 0;
  }

  return v4;
}

- (id)operationID
{
  if (*(&self->_error + 2))
  {
    v9.receiver = self;
    v9.super_class = PDURLRequestOperation;
    v3 = [(PDOperation *)&v9 operationID];
    v4 = *(&self->_requestUUID + 2);
    [NSString stringWithFormat:@"%@+%ld+%@", v3, v4, *(&self->_error + 2)];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = PDURLRequestOperation;
    v3 = [(PDOperation *)&v8 operationID];
    [NSString stringWithFormat:@"%@+%ld", v3, *(&self->_requestUUID + 2), v7];
  }
  v5 = ;

  return v5;
}

- (void)prepareForNextRequest
{
  v3 = [(PDURLRequestOperation *)self hasBigResponses];
  v4 = [PDURLResponse alloc];
  v5 = [(PDURLRequestOperation *)self operationID];
  v6 = sub_1001123FC(&v4->super.isa, v5, v3);

  [(PDURLRequestOperation *)self prepareForNextRequestWithResponse:v6];
}

- (void)prepareForNextRequestWithResponse:(id)a3
{
  v4 = a3;
  v5 = *(&self->_error + 2);
  v6 = +[NSUUID UUID];
  v7 = *(&self->_error + 2);
  *(&self->_error + 2) = v6;

  v8 = +[PDUserDefaults sharedDefaults];
  v9 = [v8 enableVerboseLogging];

  if (v9)
  {
    CLSInitLog();
    v10 = CLSLogOperations;
    if (os_log_type_enabled(CLSLogOperations, OS_LOG_TYPE_DEBUG))
    {
      v17 = v10;
      v18 = objc_opt_class();
      v19 = v18;
      v20 = [(PDURLRequestOperation *)self operationID];
      v21 = 138543874;
      v22 = v18;
      v23 = 2114;
      v24 = v20;
      v25 = 2112;
      v26 = v5;
      _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "OPS: prepareForNextRequest %{public}@:%{public}@ (was %@)", &v21, 0x20u);
    }
  }

  v11 = *(&self->_urlRequestAttempted + 2);
  *(&self->_urlRequestAttempted + 2) = v4;
  v12 = v4;

  v13 = sub_10009E7C0([PDURLOperationStats alloc], self);
  v14 = *(&self->_response + 2);
  *(&self->_response + 2) = v13;

  *(&self->_responseFailureCause + 2) = 0;
  v15 = *(&self->_wantsToExecute + 2);
  *(&self->_wantsToExecute + 2) = 0;

  v16 = *(&self->_request + 2);
  *(&self->_request + 2) = 0;
}

- (id)sessionTaskForRequest:(id)a3 withData:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PDOperation *)self isAborted];
  v9 = 0;
  if (v6 && (v8 & 1) == 0)
  {
    if ([(PDOperation *)self isAborted])
    {
      [(PDURLRequestOperation *)self markAsFinished];
      v9 = 0;
    }

    else
    {
      v10 = [(PDURLRequestOperation *)self createSessionIfNeeded];
      v11 = *(&self->_clsErrorCode + 2);
      *(&self->_clsErrorCode + 2) = v10;

      v12 = *(&self->_clsErrorCode + 2);
      if (v7)
      {
        [v12 uploadTaskWithRequest:v6 fromData:v7];
      }

      else
      {
        [v12 dataTaskWithRequest:v6];
      }
      v9 = ;
    }
  }

  return v9;
}

- (id)_createRequestTask
{
  v3 = [(PDURLRequestOperation *)self createNSURLRequest];
  v4 = *(&self->_wantsToExecute + 2);
  *(&self->_wantsToExecute + 2) = v3;

  if ([(PDOperation *)self isAborted])
  {
    goto LABEL_12;
  }

  if (!*(&self->_wantsToExecute + 2))
  {
    [(PDURLRequestOperation *)self markAsFinished];
LABEL_12:
    v9 = 0;
    goto LABEL_13;
  }

  [(PDURLRequestOperation *)self setHeadersForRequest:?];
  if ([(PDOperation *)self isAborted])
  {
    goto LABEL_12;
  }

  v5 = [(PDURLRequestOperation *)self requestData];
  v6 = *(&self->_acceptContentType + 2);
  *(&self->_acceptContentType + 2) = v5;

  v7 = [*(&self->_acceptContentType + 2) length];
  v8 = *(&self->_response + 2);
  if (v8)
  {
    *(v8 + 80) = v7;
  }

  if ([(PDOperation *)self isAborted]|| [(PDOperation *)self isFinished])
  {
    goto LABEL_12;
  }

  v9 = [(PDURLRequestOperation *)self sessionTaskForRequest:*(&self->_wantsToExecute + 2) withData:*(&self->_acceptContentType + 2)];
  if (!v9)
  {
    [(PDURLRequestOperation *)self abort];
  }

  v10 = [*(&self->_wantsToExecute + 2) allHTTPHeaderFields];
  v11 = objc_opt_class();
  v12 = [(PDURLRequestOperation *)self operationID];
  v13 = [NSString stringWithFormat:@"%@:%@ Request headers:", v11, v12];
  [(PDURLRequestOperation *)self logHTTPHeaders:v10 withMessage:v13];

LABEL_13:

  return v9;
}

- (void)execute
{
  if (![(PDOperation *)self isFinished])
  {
    if ([(PDURLRequestOperation *)self wantsToExecute])
    {
      v3 = *(&self->_requestUUID + 2);
      if (v3 >= [(PDOperation *)self maxExecutionCount])
      {
        CLSInitLog();
        v8 = CLSLogOperations;
        if (os_log_type_enabled(CLSLogOperations, OS_LOG_TYPE_DEBUG))
        {
          v9 = v8;
          v10 = objc_opt_class();
          v11 = v10;
          v12 = [(PDURLRequestOperation *)self operationID];
          v18 = 138543618;
          v19 = v10;
          v20 = 2114;
          v21 = v12;
          _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "OPS: execution limited %{public}@:%{public}@", &v18, 0x16u);
        }

        if ([(PDURLRequestOperation *)self wantsToExecute])
        {
          [(PDURLRequestOperation *)self rescheduleOperation];
        }

        [(PDURLRequestOperation *)self markAsFinished];
      }

      else
      {
        v4 = +[PDUserDefaults sharedDefaults];
        v5 = [v4 enableVerboseLogging];

        if (v5)
        {
          CLSInitLog();
          v6 = CLSLogOperations;
          if (os_log_type_enabled(CLSLogOperations, OS_LOG_TYPE_DEBUG))
          {
            if (*(&self->_requestUUID + 2))
            {
              v13 = @"again ";
            }

            else
            {
              v13 = &stru_100206880;
            }

            v14 = v6;
            v15 = objc_opt_class();
            v16 = v15;
            v17 = [(PDURLRequestOperation *)self operationID];
            v18 = 138412802;
            v19 = v13;
            v20 = 2114;
            v21 = v15;
            v22 = 2114;
            v23 = v17;
            _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "OPS: executing %@%{public}@:%{public}@", &v18, 0x20u);
          }
        }

        ++*(&self->_requestUUID + 2);
        BYTE2(self->_executionsCount) = 0;
        [(PDURLRequestOperation *)self prepareForNextRequest];
        v7 = [(PDURLRequestOperation *)self _createRequestTask];
        if (v7)
        {
          [(PDURLRequestOperation *)self setUrlRequestAttempted:1];
          [v7 resume];
        }
      }
    }

    else
    {

      [(PDURLRequestOperation *)self markAsFinished];
    }
  }
}

- (void)rescheduleOperation
{
  v3 = +[PDUserDefaults sharedDefaults];
  v4 = [v3 enableVerboseLogging];

  if (v4)
  {
    CLSInitLog();
    v5 = CLSLogOperations;
    if (os_log_type_enabled(CLSLogOperations, OS_LOG_TYPE_DEBUG))
    {
      v6 = v5;
      v7 = objc_opt_class();
      v8 = v7;
      v9 = [(PDURLRequestOperation *)self operationID];
      v10 = 138543618;
      v11 = v7;
      v12 = 2114;
      v13 = v9;
      _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "OPS: rescheduled %{public}@:%{public}@", &v10, 0x16u);
    }
  }
}

- (int64_t)clsErrorCodeForAuthenticationFailure
{
  if ([(PDOperation *)self requiresValidUser])
  {
    return 10;
  }

  else
  {
    return 105;
  }
}

- (BOOL)willAcceptResponseContentType:(id)a3
{
  v4 = a3;
  v5 = [(PDURLRequestOperation *)self acceptContentType];
  v6 = v5;
  v7 = (v4 | v5) == 0;
  if (v4 && v5)
  {
    v8 = [(PDURLRequestOperation *)self acceptContentType];
    v7 = [v4 caseInsensitiveCompare:v8] == 0;
  }

  return v7;
}

- (id)createNSURLRequest
{
  if ([(PDOperation *)self isAborted])
  {
    v3 = 0;
  }

  else
  {
    v4 = [(PDURLRequestOperation *)self URL];
    v5 = [(PDOperation *)self database];
    if (v4 && ([v4 host], v6 = objc_claimAutoreleasedReturnValue(), v7 = sub_10006F644(v5, v6), v6, (v7 & 1) != 0))
    {
      v8 = +[PDUserDefaults sharedDefaults];
      v9 = [v8 enableVerboseLogging];

      if (v9)
      {
        CLSInitLog();
        v10 = [(PDOperation *)self logSubsystem];
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          v15 = objc_opt_class();
          v16 = v15;
          v17 = [(PDURLRequestOperation *)self operationID];
          v18 = [(PDURLRequestOperation *)self URL];
          v19 = 138543874;
          v20 = v15;
          v21 = 2114;
          v22 = v17;
          v23 = 2114;
          v24 = v18;
          _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "%{public}@:%{public}@ Creating request for url: %{public}@", &v19, 0x20u);
        }
      }

      v11 = [NSMutableURLRequest alloc];
      [(PDURLRequestOperation *)self timeoutIntervalForRequest];
      v3 = [v11 initWithURL:v4 cachePolicy:1 timeoutInterval:?];
      v12 = [(PDURLRequestOperation *)self httpMethod];
      [v3 setHTTPMethod:v12];
    }

    else
    {
      CLSInitLog();
      v13 = [(PDOperation *)self logSubsystem];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 138412290;
        v20 = v4;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Unable to make request. Host for URL: %@ not allowed.", &v19, 0xCu);
      }

      [(PDURLRequestOperation *)self abort];
      v3 = 0;
    }
  }

  return v3;
}

- (void)setHeadersForRequest:(id)a3
{
  v4 = a3;
  if (*(&self->_error + 2))
  {
    v5 = [NSString stringWithFormat:@"%@", *(&self->_error + 2)];
    [v4 setValue:v5 forHTTPHeaderField:@"X-Apple-Request-UUID"];
  }

  v6 = [NSNumber numberWithUnsignedInteger:*(&self->_requestUUID + 2)];
  v7 = [v6 stringValue];
  [v4 setValue:v7 forHTTPHeaderField:@"X-Apple-ClassKit-ExecutionCount"];

  v8 = [(PDURLRequestOperation *)self requestContentType];
  if ([v8 length])
  {
    [v4 setValue:v8 forHTTPHeaderField:@"Content-Type"];
  }

  v9 = [(PDURLRequestOperation *)self acceptContentType];
  if ([v9 length])
  {
    [v4 setValue:v9 forHTTPHeaderField:@"Accept"];
  }

  if (qword_10024DB10 != -1)
  {
    dispatch_once(&qword_10024DB10, &stru_1002053B0);
  }

  if (byte_10024DAF8 == 1)
  {
    [v4 setValue:@"yes" forHTTPHeaderField:@"X-Apple-ClassKit-Dev"];
  }

  if (qword_10024DB18 != -1)
  {
    dispatch_once(&qword_10024DB18, &stru_1002053D0);
  }

  if (byte_10024DAF9 == 1)
  {
    [v4 setValue:@"1" forHTTPHeaderField:@"X-Apple-Canary-Request"];
  }

  if ([(PDURLRequestOperation *)self requiresAuth])
  {
    [(PDURLRequestOperation *)self setAuthHeadersForRequest:v4];
  }

  v10 = [(PDURLRequestOperation *)self customRequestHeaders];
  v11 = v10;
  if (v10)
  {
    v22 = v8;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v12 = [v10 allKeys];
    v13 = [v12 countByEnumeratingWithState:&v23 objects:v29 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v24;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v24 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v23 + 1) + 8 * i);
          v18 = [v11 objectForKeyedSubscript:v17];
          [v4 setValue:v18 forHTTPHeaderField:v17];
        }

        v14 = [v12 countByEnumeratingWithState:&v23 objects:v29 count:16];
      }

      while (v14);
    }

    v8 = v22;
  }

  v19 = sub_1000B2730();
  if ([v19 length])
  {
    [v4 setValue:v19 forHTTPHeaderField:@"X-Schoolwork-Info"];
  }

  v20 = [objc_opt_class() setAppleInternalHeadersForRequest:v4];
  if (v20)
  {
    CLSInitLog();
    v21 = [(PDOperation *)self logSubsystem];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v28 = v20;
      _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Failed to add Apple Headers. Error: %{public}@", buf, 0xCu);
    }
  }
}

- (void)setAuthHeadersForRequest:(id)a3
{
  v7 = a3;
  if (![(PDOperation *)self isAborted])
  {
    v4 = sub_10003E1B4();
    if (objc_opt_respondsToSelector())
    {
      if (v4)
      {
        v5 = v4[5];
      }

      else
      {
        v5 = 0;
      }

      v6 = v5;
      [v7 setValue:v6 forHTTPHeaderField:@"X-Apple-Alternate-Id"];
    }
  }
}

- (void)logHTTPHeaders:(id)a3 withMessage:(id)a4
{
  v6 = a3;
  v7 = a4;
  CLSInitLog();
  v8 = [(PDOperation *)self logSubsystem];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v24 = v7;
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%@ {", buf, 0xCu);
  }

  v18 = v7;

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v20;
    do
    {
      v13 = 0;
      do
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v19 + 1) + 8 * v13);
        CLSInitLog();
        v15 = [(PDOperation *)self logSubsystem];
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          v16 = [v9 objectForKeyedSubscript:v14];
          *buf = 138412546;
          v24 = v14;
          v25 = 2112;
          v26 = v16;
          _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "    %@: %@", buf, 0x16u);
        }

        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v11);
  }

  CLSInitLog();
  v17 = [(PDOperation *)self logSubsystem];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "}", buf, 2u);
  }
}

- (BOOL)urlRequestFailed
{
  v3 = *(&self->_responseFailureCause + 2);
  if (v3 == 317 || v3 == 103)
  {
    CLSInitLog();
    v4 = CLSLogOperations;
    if (!os_log_type_enabled(CLSLogOperations, OS_LOG_TYPE_DEBUG))
    {
      return 1;
    }

    v10 = v4;
    v21 = objc_opt_class();
    v12 = v21;
    v13 = [(PDURLRequestOperation *)self operationID];
    v22 = *(&self->_responseFailureCause + 2);
    v23 = 138543874;
    v24 = v21;
    v25 = 2114;
    v26 = v13;
    v27 = 2048;
    v28 = v22;
    v15 = "%{public}@:%{public}@ Network layer error (clsErrorCode:%ld)";
    goto LABEL_15;
  }

  v6 = *(&self->super._executing + 1);
  if (v6)
  {
    v7 = [v6 domain];
    v8 = [NSURLErrorDomain isEqualToString:v7];

    if (v8)
    {
      CLSInitLog();
      v9 = CLSLogOperations;
      if (!os_log_type_enabled(CLSLogOperations, OS_LOG_TYPE_DEBUG))
      {
        return 1;
      }

      v10 = v9;
      v11 = objc_opt_class();
      v12 = v11;
      v13 = [(PDURLRequestOperation *)self operationID];
      v14 = [*(&self->super._executing + 1) code];
      v23 = 138543874;
      v24 = v11;
      v25 = 2114;
      v26 = v13;
      v27 = 2048;
      v28 = v14;
      v15 = "%{public}@:%{public}@ Network layer error (code:%ld)";
LABEL_15:
      _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, v15, &v23, 0x20u);

LABEL_16:
      return 1;
    }
  }

  if (![(PDURLRequestOperation *)self httpRequestCompleted])
  {
    v16 = +[PDUserDefaults sharedDefaults];
    v17 = [v16 enableVerboseLogging];

    if (!v17)
    {
      return 1;
    }

    CLSInitLog();
    v18 = CLSLogOperations;
    if (!os_log_type_enabled(CLSLogOperations, OS_LOG_TYPE_DEBUG))
    {
      return 1;
    }

    v10 = v18;
    v19 = objc_opt_class();
    v12 = v19;
    v20 = [(PDURLRequestOperation *)self operationID];
    v23 = 138543618;
    v24 = v19;
    v25 = 2114;
    v26 = v20;
    _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "%{public}@:%{public}@ !httpRequestCompleted", &v23, 0x16u);

    goto LABEL_16;
  }

  return 0;
}

- (BOOL)httpRequestCompleted
{
  v2 = *(&self->_urlRequestAttempted + 2);
  if (v2)
  {
    LOBYTE(v2) = *(v2 + 48);
  }

  return v2 & 1;
}

- (BOOL)httpRequestSucceeded
{
  if (![(PDURLRequestOperation *)self httpRequestCompleted])
  {
    return 0;
  }

  v3 = [(PDURLRequestOperation *)self response];
  v4 = v3;
  v6 = v3 && (v5 = *(v3 + 56)) != 0 && [v5 statusCode] - 200 < 0x64;

  return v6;
}

- (BOOL)httpRequestHadServerError
{
  if (![(PDURLRequestOperation *)self httpRequestCompleted])
  {
    return 0;
  }

  v3 = [(PDURLRequestOperation *)self response];
  v4 = v3;
  v6 = v3 && (v5 = *(v3 + 56)) != 0 && [v5 statusCode] - 400 < 0xC8;

  return v6;
}

- (BOOL)httpRequestHadTimeoutError
{
  v3 = [(PDURLRequestOperation *)self httpRequestCompleted];
  if (v3)
  {
    v4 = [(PDURLRequestOperation *)self response];
    if (!v4)
    {
      goto LABEL_5;
    }

    v5 = v4;
    v6 = *(v4 + 56);
    if (v6)
    {
      v7 = [v6 statusCode];

      if (v7 != -1)
      {
LABEL_5:
        LOBYTE(v3) = 0;
        return v3;
      }
    }

    else
    {
    }

    v8 = objc_opt_class();
    v9 = [(PDURLRequestOperation *)self operationID];
    v10 = [NSString stringWithFormat:@"%@:%@ Timeout error error: %ld %@", v8, v9, -1, *(&self->_request + 2)];
    v11 = [NSError cls_createErrorWithCode:320 description:v10];
    v12 = *(&self->super._executing + 1);
    *(&self->super._executing + 1) = v11;

    *(&self->_responseFailureCause + 2) = 320;
    LOBYTE(v3) = 1;
  }

  return v3;
}

- (void)releaseResponse
{
  sub_1001126F0(*(&self->_urlRequestAttempted + 2));
  v3 = *(&self->_urlRequestAttempted + 2);
  *(&self->_urlRequestAttempted + 2) = 0;
}

- (BOOL)shouldProcessResponseBody
{
  if ([(PDOperation *)self isFinished])
  {
    return 0;
  }

  else
  {
    return ![(PDOperation *)self isAborted];
  }
}

- (void)didCompleteProcessingResponse
{
  [(PDURLRequestOperation *)self releaseResponse];
  v3 = [(PDURLRequestOperation *)self stats];
  sub_10009ECCC(v3);
}

- (void)handleResponseBody:(BOOL)a3
{
  v3 = a3;
  v5 = [(PDURLRequestOperation *)self stats];
  sub_10009EC7C(v5);

  v6 = 0;
  if ([(PDURLRequestOperation *)self shouldProcessResponseBody]&& v3)
  {
    v25 = 0;
    v6 = [(PDURLRequestOperation *)self processResponse:&v25];
    v7 = v25;
    if (v7)
    {
      CLSInitLog();
      v8 = [(PDOperation *)self logSubsystem];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = objc_opt_class();
        v10 = v9;
        v11 = [(PDURLRequestOperation *)self operationID];
        *buf = 138543874;
        v27 = v9;
        v28 = 2114;
        v29 = v11;
        v30 = 2114;
        v31 = v7;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@:%{public}@ request processing failed error: %{public}@", buf, 0x20u);
      }

      [(PDURLRequestOperation *)self abortWithError:v7];
      v6 = 0;
    }
  }

  [(PDURLRequestOperation *)self didCompleteProcessingResponse];
  CLSInitLog();
  v12 = CLSLogOperations;
  if (os_log_type_enabled(CLSLogOperations, OS_LOG_TYPE_DEFAULT))
  {
    v13 = v12;
    v14 = [(PDURLRequestOperation *)self stats];
    v15 = sub_10009ED44(v14);
    *buf = 138543362;
    v27 = v15;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "STATS=req:%{public}@", buf, 0xCu);
  }

  CLSInitLog();
  v16 = CLSLogOperations;
  if (os_log_type_enabled(CLSLogOperations, OS_LOG_TYPE_DEFAULT))
  {
    v17 = v16;
    v18 = [(PDURLRequestOperation *)self stats];
    v19 = sub_10009EDA4(v18);
    *buf = 138543362;
    v27 = v19;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "STATS=resp:%{public}@", buf, 0xCu);
  }

  v20 = sub_1000B51E4();
  v21 = sub_1000B51E4();
  v22 = [(PDURLRequestOperation *)self statusReport];
  v23 = sub_1000B5648(v21, v22);
  v24 = [(PDOperation *)self database];
  sub_1000B5E40(v20, v23, v24);

  if (v6)
  {
    [(PDURLRequestOperation *)self execute];
  }
}

- (void)flushCachedData
{
  v6.receiver = self;
  v6.super_class = PDURLRequestOperation;
  [(PDOperation *)&v6 flushCachedData];
  v3 = *(&self->_wantsToExecute + 2);
  *(&self->_wantsToExecute + 2) = 0;

  sub_1001126F0(*(&self->_urlRequestAttempted + 2));
  v4 = *(&self->_urlRequestAttempted + 2);
  *(&self->_urlRequestAttempted + 2) = 0;

  v5 = *(&self->_request + 2);
  *(&self->_request + 2) = 0;
}

- (void)abortWithError:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PDURLRequestOperation;
  [(PDOperation *)&v11 abortWithError:v4];
  if (v4 && !*(&self->_responseFailureCause + 2))
  {
    v5 = [v4 cls_underlyingErrorWithDomain:CLSErrorCodeDomain];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 code];
    }

    else
    {
      v7 = 100;
    }

    *(&self->_responseFailureCause + 2) = v7;
    v8 = [(PDURLRequestOperation *)self stats];

    if (v8)
    {
      v9 = *(&self->_responseFailureCause + 2);
      v10 = [(PDURLRequestOperation *)self stats];
      if (v10)
      {
        v10[13] = v9;
      }
    }
  }
}

- (void)abort
{
  [(PDURLRequestOperation *)self closeSession:0];
  v3.receiver = self;
  v3.super_class = PDURLRequestOperation;
  [(PDOperation *)&v3 abort];
}

- (void)markAsFinished
{
  [(PDURLRequestOperation *)self closeSession:1];
  v3.receiver = self;
  v3.super_class = PDURLRequestOperation;
  [(PDAsyncOperation *)&v3 markAsFinished];
}

- (int64_t)errorCodeForRequest
{
  if ([(PDURLRequestOperation *)self httpRequestSucceeded])
  {
    return 0;
  }

  v4 = [(PDURLRequestOperation *)self response];
  v5 = v4;
  if (!v4 || (v6 = *(v4 + 56)) == 0)
  {

    return 100;
  }

  v7 = [v6 statusCode];

  if (v7 >= 500)
  {
    if (v7 != 503)
    {
      return 303;
    }

    v8 = [(PDURLRequestOperation *)self response];
    v9 = sub_100112E70(v8, @"Retry-After");

    if (v9)
    {
      return 306;
    }

    else
    {
      return 303;
    }
  }

  if (v7 < 400)
  {
    return 100;
  }

  if (v7 != 401)
  {
    return 302;
  }

  return [(PDURLRequestOperation *)self clsErrorCodeForAuthenticationFailure];
}

- (void)handleHTTPStatusCode:(id)a3
{
  v4 = a3;
  if ([(PDURLRequestOperation *)self httpRequestCompleted]&& ![(PDURLRequestOperation *)self httpRequestSucceeded])
  {
    CLSInitLog();
    v5 = [(PDOperation *)self logSubsystem];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_opt_class();
      v7 = v6;
      v8 = [(PDURLRequestOperation *)self operationID];
      v9 = [v4 statusCode];
      v10 = [v4 URL];
      *buf = 138544130;
      v26 = v6;
      v27 = 2114;
      v28 = v8;
      v29 = 2048;
      v30 = v9;
      v31 = 2112;
      v32 = v10;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@:%{public}@ Received %ld response for request url: %@", buf, 0x2Au);
    }

    v11 = sub_100112C30(*(&self->_urlRequestAttempted + 2));

    if (v11)
    {
      v12 = [NSString alloc];
      v13 = sub_100112C30(*(&self->_urlRequestAttempted + 2));
      v11 = [v12 initWithData:v13 encoding:4];
    }

    v14 = [(PDURLRequestOperation *)self response];
    v15 = sub_100112E70(v14, @"X-Orion-Failure-Cause");
    v16 = *(&self->_request + 2);
    *(&self->_request + 2) = v15;

    if (!*(&self->super._executing + 1))
    {
      v17 = [(PDURLRequestOperation *)self errorCodeForRequest];
      *(&self->_responseFailureCause + 2) = v17;
      v18 = objc_opt_class();
      v19 = [(PDURLRequestOperation *)self operationID];
      v20 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@:%@ Server returned error: %ld %@ data: %@", v18, v19, [v4 statusCode], *(&self->_request + 2), v11);
      v21 = [NSError cls_createErrorWithCode:v17 description:v20];
      v22 = *(&self->super._executing + 1);
      *(&self->super._executing + 1) = v21;
    }

    v23 = *(&self->_responseFailureCause + 2);
    v24 = [(PDURLRequestOperation *)self stats];
    if (v24)
    {
      v24[13] = v23;
    }
  }
}

- (void)handleRequestError
{
  CLSInitLog();
  v3 = [(PDOperation *)self logSubsystem];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = [(PDURLRequestOperation *)self operationID];
    v5 = *(&self->super._executing + 1);
    v6 = 138543618;
    v7 = v4;
    v8 = 2114;
    v9 = v5;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Request %{public}@ failed with error=%{public}@. Aborting the operation", &v6, 0x16u);
  }

  [(PDURLRequestOperation *)self abortWithError:*(&self->super._executing + 1)];
}

- (id)statusReport
{
  v40.receiver = self;
  v40.super_class = PDURLRequestOperation;
  v3 = [(PDAsyncOperation *)&v40 statusReport];
  v4 = [(PDURLRequestOperation *)self response];
  v5 = v4;
  if (v4)
  {
    v6 = *(v4 + 56);
    if (v6)
    {
      v7 = [v6 statusCode];
    }

    else
    {
      v7 = -1;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = [NSNumber numberWithInteger:v7];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = @"None";
  }

  [v3 setObject:v10 forKeyedSubscript:@"httpStatusCode"];

  v11 = [NSNumber numberWithBool:[(PDURLRequestOperation *)self httpRequestCompleted]];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = @"None";
  }

  [v3 setObject:v13 forKeyedSubscript:@"httpRequestCompleted"];

  v14 = [NSNumber numberWithBool:[(PDURLRequestOperation *)self httpRequestSucceeded]];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = @"None";
  }

  [v3 setObject:v16 forKeyedSubscript:@"httpRequestSucceeded"];

  v17 = [(PDURLRequestOperation *)self stats];
  v18 = sub_10009EED8(v17);
  [v3 setObject:v18 forKeyedSubscript:@"stats"];

  v19 = [(PDURLRequestOperation *)self URL];
  v20 = [v19 absoluteString];
  v21 = v20;
  if (v20)
  {
    v22 = v20;
  }

  else
  {
    v22 = @"None";
  }

  [v3 setObject:v22 forKeyedSubscript:@"URL"];

  v23 = [(PDURLRequestOperation *)self httpMethod];
  v24 = v23;
  if (v23)
  {
    v25 = v23;
  }

  else
  {
    v25 = @"None";
  }

  [v3 setObject:v25 forKeyedSubscript:@"httpMethod"];

  v26 = [(PDURLRequestOperation *)self requestContentType];
  v27 = v26;
  if (v26)
  {
    v28 = v26;
  }

  else
  {
    v28 = @"None";
  }

  [v3 setObject:v28 forKeyedSubscript:@"requestContentType"];

  v29 = [(PDURLRequestOperation *)self acceptContentType];
  v30 = v29;
  if (v29)
  {
    v31 = v29;
  }

  else
  {
    v31 = @"None";
  }

  [v3 setObject:v31 forKeyedSubscript:@"acceptContentType"];

  [(PDURLRequestOperation *)self timeoutIntervalForRequest];
  v32 = [NSNumber numberWithDouble:?];
  [v3 setObject:v32 forKeyedSubscript:@"timeoutIntervalForRequest"];

  v33 = [*(&self->_wantsToExecute + 2) allHTTPHeaderFields];
  v34 = v33;
  if (v33)
  {
    v35 = v33;
  }

  else
  {
    v35 = @"None";
  }

  [v3 setObject:v35 forKeyedSubscript:@"requestHeaders"];

  v36 = sub_100112E38(*(&self->_urlRequestAttempted + 2));
  v37 = v36;
  if (v36)
  {
    v38 = v36;
  }

  else
  {
    v38 = @"None";
  }

  [v3 setObject:v38 forKeyedSubscript:@"responseHeaders"];

  return v3;
}

- (id)createSessionIfNeeded
{
  if (!*(&self->_clsErrorCode + 2))
  {
    v3 = +[NSURLSessionConfiguration defaultSessionConfiguration];
    v4 = [v3 copy];

    [v4 setURLCache:0];
    [v4 setDiscretionary:0];
    [v4 setWaitsForConnectivity:0];
    [v4 setAllowsCellularAccess:{-[PDOperation mayUseCellularData](self, "mayUseCellularData")}];
    [(PDOperation *)self timeoutIntervalForRequests];
    [v4 setTimeoutIntervalForRequest:?];
    v5 = +[PDURLRequestOperation appleIDSession];
    [v4 set_appleIDContext:v5];

    v6 = [(PDOperation *)self sourceApplicationBundleIdentifier];
    [v4 set_sourceApplicationBundleIdentifier:v6];

    [v4 setMultipathServiceType:2];
    v7 = [NSURLSession sessionWithConfiguration:v4 delegate:self delegateQueue:0];
    v8 = *(&self->_clsErrorCode + 2);
    *(&self->_clsErrorCode + 2) = v7;

    v9 = +[PDUserDefaults sharedDefaults];
    v10 = [v9 enableVerboseLogging];

    if (v10)
    {
      CLSInitLog();
      v11 = CLSLogOperations;
      if (os_log_type_enabled(CLSLogOperations, OS_LOG_TYPE_DEBUG))
      {
        v15 = v11;
        v16 = objc_opt_class();
        v17 = v16;
        v18 = [(PDURLRequestOperation *)self operationID];
        v19 = 138543618;
        v20 = v16;
        v21 = 2114;
        v22 = v18;
        _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "OPS: session %{public}@:%{public}@ created", &v19, 0x16u);
      }
    }
  }

  v12 = [(PDURLRequestOperation *)self operationID];
  [*(&self->_clsErrorCode + 2) setSessionDescription:v12];

  v13 = *(&self->_clsErrorCode + 2);

  return v13;
}

- (void)closeSession:(BOOL)a3
{
  if (*(&self->_clsErrorCode + 2))
  {
    v3 = a3;
    v5 = +[PDUserDefaults sharedDefaults];
    v6 = [v5 enableVerboseLogging];

    if (v6)
    {
      CLSInitLog();
      v7 = CLSLogOperations;
      if (os_log_type_enabled(CLSLogOperations, OS_LOG_TYPE_DEBUG))
      {
        v10 = v7;
        v11 = objc_opt_class();
        v12 = v11;
        if (v3)
        {
          v13 = @"finished";
        }

        else
        {
          v13 = @"cancelled & invalidated";
        }

        v14 = *(&self->_clsErrorCode + 2);
        v15 = v11;
        v16 = [v14 sessionDescription];
        v17 = 138543874;
        v18 = v12;
        v19 = 2114;
        v20 = v13;
        v21 = 2112;
        v22 = v16;
        _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "OPS: session %{public}@:%{public}@ %@", &v17, 0x20u);
      }
    }

    v8 = *(&self->_clsErrorCode + 2);
    if (v3)
    {
      [v8 finishTasksAndInvalidate];
    }

    else
    {
      [v8 invalidateAndCancel];
    }

    v9 = *(&self->_clsErrorCode + 2);
    *(&self->_clsErrorCode + 2) = 0;
  }
}

- (void)sessionFailedWithError:(id)a3
{
  v4 = a3;
  if (v4)
  {
    *(&self->_responseFailureCause + 2) = 317;
    v13 = v4;
    v5 = [v4 domain];
    if (NSURLErrorDomain == v5)
    {
      v6 = [v13 code];

      if (v6 == -1009)
      {
        *(&self->_responseFailureCause + 2) = 103;
      }
    }

    else
    {
    }

    v4 = v13;
    if (!*(&self->super._executing + 1))
    {
      v7 = *(&self->_responseFailureCause + 2);
      v8 = objc_opt_class();
      v9 = [(PDURLRequestOperation *)self operationID];
      v10 = [NSString stringWithFormat:@"%@:%@ session failed with error: %@ (%ld) ", v8, v9, v13, *(&self->_responseFailureCause + 2)];
      v11 = [NSError cls_createErrorWithCode:v7 underlyingError:v13 description:v10];
      v12 = *(&self->super._executing + 1);
      *(&self->super._executing + 1) = v11;

      v4 = v13;
    }
  }
}

- (void)requestCompletedWith:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  if (![(PDOperation *)self isAborted])
  {
    v9 = [(PDURLRequestOperation *)self response];
    v10 = [(PDURLRequestOperation *)self stats];
    sub_100112B90(v9, v10);

    v11 = +[PDUserDefaults sharedDefaults];
    LODWORD(v10) = [v11 enableVerboseLogging];

    if (v10)
    {
      CLSInitLog();
      v12 = [(PDOperation *)self logSubsystem];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = objc_opt_class();
        v29 = v13;
        v28 = [(PDURLRequestOperation *)self operationID];
        v14 = [(PDURLRequestOperation *)self stats];
        v15 = v14;
        if (v14)
        {
          v16 = *(v14 + 88);
        }

        else
        {
          v16 = 0;
        }

        v17 = [(PDURLRequestOperation *)self stats];
        v18 = v17;
        if (v17)
        {
          v19 = *(v17 + 96);
        }

        else
        {
          v19 = 0;
        }

        *buf = 138544130;
        v31 = v13;
        v32 = 2114;
        v33 = v28;
        v34 = 2048;
        v35 = v16;
        v36 = 2048;
        v37 = v19;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%{public}@:%{public}@ Received %ld byte response with httpStatus: %ld", buf, 0x2Au);
      }
    }

    v20 = [(PDURLRequestOperation *)self response];
    v21 = sub_100112E38(v20);
    v22 = objc_opt_class();
    v23 = [(PDURLRequestOperation *)self operationID];
    v24 = [NSString stringWithFormat:@"%@:%@ Response headers:", v22, v23];
    [(PDURLRequestOperation *)self logHTTPHeaders:v21 withMessage:v24];

    [(PDURLRequestOperation *)self sessionFailedWithError:v7];
    if (v6)
    {
      v25 = v6[7];
    }

    else
    {
      v25 = 0;
    }

    v26 = v25;
    [(PDURLRequestOperation *)self handleHTTPStatusCode:v26];

    v27 = ![(PDURLRequestOperation *)self httpRequestHadTimeoutError]&& ![(PDURLRequestOperation *)self httpRequestHadServerError]&& [(PDURLRequestOperation *)self verifyResponse];
    if (*(&self->super._executing + 1) || (objc_storeStrong((&self->super._executing + 1), a4), *(&self->super._executing + 1)))
    {
      [(PDURLRequestOperation *)self handleRequestError];
    }

    [(PDURLRequestOperation *)self handleResponseBody:v27];
  }

  objc_autoreleasePoolPop(v8);
}

- (void)URLSession:(id)a3 didBecomeInvalidWithError:(id)a4
{
  v5 = a4;
  v6 = +[PDUserDefaults sharedDefaults];
  v7 = [v6 enableVerboseLogging];

  if (v7)
  {
    CLSInitLog();
    v8 = CLSLogConnection;
    if (os_log_type_enabled(CLSLogConnection, OS_LOG_TYPE_DEBUG))
    {
      v9 = v8;
      v10 = objc_opt_class();
      v11 = *(&self->_clsErrorCode + 2);
      v12 = v10;
      v13 = [v11 sessionDescription];
      v14 = 138543874;
      v15 = v10;
      v16 = 2114;
      v17 = v13;
      v18 = 2112;
      v19 = v5;
      _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "OPS: session %{public}@:%{public}@ URLSession:didBecomeInvalidWithError:%@", &v14, 0x20u);
    }
  }

  [(PDURLRequestOperation *)self sessionFailedWithError:v5];
}

- (void)URLSession:(id)a3 task:(id)a4 didReceiveChallenge:(id)a5 completionHandler:(id)a6
{
  v8 = a5;
  v9 = a6;
  v10 = [v8 protectionSpace];
  v11 = [v10 authenticationMethod];
  v12 = +[PDUserDefaults sharedDefaults];
  v13 = [v12 enableVerboseLogging];

  if (v13)
  {
    CLSInitLog();
    v14 = CLSLogOperations;
    if (os_log_type_enabled(CLSLogOperations, OS_LOG_TYPE_DEBUG))
    {
      v16 = v14;
      v17 = objc_opt_class();
      v18 = *(&self->_clsErrorCode + 2);
      v19 = v17;
      v20 = [v18 sessionDescription];
      v21 = 138543618;
      v22 = v17;
      v23 = 2114;
      v24 = v20;
      _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "OPS: session %{public}@:%{public}@ didReceiveChallenge", &v21, 0x16u);
    }
  }

  if (([v11 isEqualToString:NSURLAuthenticationMethodServerTrust] & 1) != 0 || objc_msgSend(v11, "isEqualToString:", NSURLAuthenticationMethodClientCertificate))
  {
    v15 = [v8 proposedCredential];
    v9[2](v9, 1, v15);
  }

  else
  {
    v9[2](v9, 1, 0);
  }
}

- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    CLSInitLog();
    v11 = CLSLogOperations;
    if (os_log_type_enabled(CLSLogOperations, OS_LOG_TYPE_ERROR))
    {
      v12 = v11;
      v13 = objc_opt_class();
      v14 = *(&self->_clsErrorCode + 2);
      v15 = v13;
      v16 = [v14 sessionDescription];
      *buf = 138543874;
      v35 = v13;
      v36 = 2114;
      v37 = v16;
      v38 = 2112;
      v39 = v10;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "OPS: session %{public}@:%{public}@ didComplete error:%@", buf, 0x20u);
LABEL_7:
    }
  }

  else
  {
    v17 = +[PDUserDefaults sharedDefaults];
    v18 = [v17 enableVerboseLogging];

    if (v18)
    {
      CLSInitLog();
      v19 = CLSLogOperations;
      if (os_log_type_enabled(CLSLogOperations, OS_LOG_TYPE_DEBUG))
      {
        v12 = v19;
        v20 = objc_opt_class();
        v21 = *(&self->_clsErrorCode + 2);
        v15 = v20;
        v16 = [v21 sessionDescription];
        *buf = 138543618;
        v35 = v20;
        v36 = 2114;
        v37 = v16;
        _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "OPS: session %{public}@:%{public}@ didComplete", buf, 0x16u);
        goto LABEL_7;
      }
    }
  }

  v22 = *(&self->_urlRequestAttempted + 2);
  v33 = 0;
  v23 = sub_100112A30(v22, &v33);
  v24 = v33;
  if ((v23 & 1) == 0)
  {
    CLSInitLog();
    v25 = CLSLogOperations;
    if (os_log_type_enabled(CLSLogOperations, OS_LOG_TYPE_DEBUG))
    {
      v28 = v25;
      v29 = objc_opt_class();
      v30 = *(&self->_clsErrorCode + 2);
      v31 = v29;
      v32 = [v30 sessionDescription];
      *buf = 138543874;
      v35 = v29;
      v36 = 2114;
      v37 = v32;
      v38 = 2112;
      v39 = v24;
      _os_log_debug_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEBUG, "OPS: session %{public}@:%{public}@ failed to close response %@", buf, 0x20u);
    }
  }

  v26 = objc_autoreleasePoolPush();
  v27 = [(PDURLRequestOperation *)self response];
  [(PDURLRequestOperation *)self requestCompletedWith:v27 error:v10];

  objc_autoreleasePoolPop(v26);
}

- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveResponse:(id)a5 completionHandler:(id)a6
{
  v8 = a5;
  v9 = a6;
  v10 = +[PDUserDefaults sharedDefaults];
  v11 = [v10 enableVerboseLogging];

  if (v11)
  {
    CLSInitLog();
    v12 = CLSLogOperations;
    if (os_log_type_enabled(CLSLogOperations, OS_LOG_TYPE_DEBUG))
    {
      v14 = v12;
      v15 = objc_opt_class();
      v16 = *(&self->_clsErrorCode + 2);
      v17 = v15;
      v18 = [v16 sessionDescription];
      v26 = 138543618;
      v27 = v15;
      v28 = 2114;
      v29 = v18;
      _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "OPS: session %{public}@:%{public}@ URLSession:dataTask:didRecieveResponse", &v26, 0x16u);
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    sub_10003F69C(*(&self->_urlRequestAttempted + 2), v8);
  }

  else
  {
    CLSInitLog();
    v13 = CLSLogOperations;
    if (os_log_type_enabled(CLSLogOperations, OS_LOG_TYPE_ERROR))
    {
      v19 = v13;
      v20 = objc_opt_class();
      v21 = *(&self->_clsErrorCode + 2);
      v22 = v20;
      v23 = [v21 sessionDescription];
      v24 = objc_opt_class();
      v26 = 138543874;
      v27 = v20;
      v28 = 2114;
      v29 = v23;
      v30 = 2112;
      v31 = v24;
      v25 = v24;
      _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "OPS: session %{public}@:%{public}@ unexpected response class: %@", &v26, 0x20u);
    }
  }

  v9[2](v9, 1);
}

- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveData:(id)a5
{
  v6 = a5;
  v7 = +[PDUserDefaults sharedDefaults];
  v8 = [v7 enableVerboseLogging];

  if (v8)
  {
    CLSInitLog();
    v9 = CLSLogOperations;
    if (os_log_type_enabled(CLSLogOperations, OS_LOG_TYPE_DEBUG))
    {
      v13 = v9;
      v14 = objc_opt_class();
      v15 = *(&self->_clsErrorCode + 2);
      v16 = v14;
      v17 = [v15 sessionDescription];
      *buf = 138543874;
      v20 = v14;
      v21 = 2114;
      v22 = v17;
      v23 = 2048;
      v24 = [v6 length];
      _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "OPS: session %{public}@:%{public}@ URLSession:dataTask:didReceiveData:wrote %ld bytes", buf, 0x20u);
    }
  }

  v10 = *(&self->_urlRequestAttempted + 2);
  v18 = 0;
  v11 = sub_10011275C(v10, v6, &v18);
  v12 = v18;
  if ((v11 & 1) == 0)
  {
    [(PDURLRequestOperation *)self abortWithError:v12];
  }
}

- (void)_simulateResponseWithURL:(id)a3 statusCode:(int64_t)a4 headers:(id)a5 data:(id)a6 error:(id)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  if (!*(&self->_urlRequestAttempted + 2))
  {
    v16 = [PDURLResponse alloc];
    v17 = [(PDURLRequestOperation *)self operationID];
    v18 = sub_1001123FC(&v16->super.isa, v17, [(PDURLRequestOperation *)self hasBigResponses]);
    v19 = *(&self->_urlRequestAttempted + 2);
    *(&self->_urlRequestAttempted + 2) = v18;
  }

  objc_storeStrong((&self->super._executing + 1), a7);
  [(PDAsyncOperation *)self setDidExecute:1];
  [(PDURLRequestOperation *)self setUrlRequestAttempted:1];
  [*(&self->_urlRequestAttempted + 2) _simulateHTTPResponseWithURL:v12 statusCode:a4 headers:v13];
  if (v14)
  {
    v20 = *(&self->_urlRequestAttempted + 2);
    v27 = 0;
    v21 = sub_10011275C(v20, v14, &v27);
    v22 = v27;
    if ((v21 & 1) == 0)
    {
      [(PDURLRequestOperation *)self abortWithError:v22];
    }
  }

  v23 = *(&self->_urlRequestAttempted + 2);
  v26 = 0;
  v24 = sub_100112A30(v23, &v26);
  v25 = v26;
  if ((v24 & 1) == 0)
  {
    [(PDURLRequestOperation *)self abortWithError:v25];
  }
}

@end
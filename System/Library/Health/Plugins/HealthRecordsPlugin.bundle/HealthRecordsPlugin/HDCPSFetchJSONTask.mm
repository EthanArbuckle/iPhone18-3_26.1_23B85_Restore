@interface HDCPSFetchJSONTask
- (BOOL)_performRetryIfNeededForStatusCode:(int64_t)code retryCount:(int64_t)count retryHandler:(id)handler;
- (HDCPSFetchJSONTask)init;
- (HDCPSFetchJSONTask)initWithSession:(id)session request:(id)request maxRetriesAllowed:(int64_t)allowed retryInterval:(double)interval;
- (id)_errorFromResponse:(id)response;
- (void)_startTaskWithCompletion:(id)completion;
- (void)_startTaskWithRetryCount:(int64_t)count completion:(id)completion;
- (void)resume;
- (void)waitUntilFinished;
@end

@implementation HDCPSFetchJSONTask

- (HDCPSFetchJSONTask)init
{
  v3 = NSStringFromSelector(a2);
  [NSException raise:NSInvalidArgumentException format:@"The -%@ method is not available on %@", v3, objc_opt_class()];

  return 0;
}

- (HDCPSFetchJSONTask)initWithSession:(id)session request:(id)request maxRetriesAllowed:(int64_t)allowed retryInterval:(double)interval
{
  sessionCopy = session;
  requestCopy = request;
  v19.receiver = self;
  v19.super_class = HDCPSFetchJSONTask;
  v13 = [(HDCPSFetchJSONTask *)&v19 init];
  if (v13)
  {
    v14 = dispatch_group_create();
    group = v13->_group;
    v13->_group = v14;

    v16 = [requestCopy copy];
    request = v13->_request;
    v13->_request = v16;

    objc_storeStrong(&v13->_session, session);
    v13->_maxRetryCount = allowed;
    v13->_retryInterval = interval;
  }

  return v13;
}

- (void)resume
{
  if (atomic_exchange(&self->_resumedFlag._Value, 1u))
  {
    v5 = +[NSAssertionHandler currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"HDCPSFetchJSONTask.m" lineNumber:61 description:@"Do not call resume twice"];
  }

  else
  {
    self->_resumed = 1;
    dispatch_group_enter(self->_group);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_6A158;
    v6[3] = &unk_107A88;
    v6[4] = self;
    v4 = objc_retainBlock(v6);
    [(HDCPSFetchJSONTask *)self _startTaskWithCompletion:v4];
  }
}

- (void)waitUntilFinished
{
  if (!self->_resumed)
  {
    sub_A5A50(a2, self);
  }

  group = self->_group;

  dispatch_group_wait(group, 0xFFFFFFFFFFFFFFFFLL);
}

- (void)_startTaskWithCompletion:(id)completion
{
  completionCopy = completion;
  [(HDCPSFetchJSONTask *)self _startTaskWithRetryCount:[(HDCPSFetchJSONTask *)self maxRetryCount] completion:completionCopy];
}

- (void)_startTaskWithRetryCount:(int64_t)count completion:(id)completion
{
  completionCopy = completion;
  v8 = [(NSURLRequest *)self->_request mutableCopy];
  v24 = 0;
  v9 = [HDProviderServiceSpecification addAuthorizationHeadersToRequest:v8 error:&v24];
  v10 = v24;
  v11 = v24;
  if (v9)
  {
    _HKInitializeLogging();
    v12 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEBUG))
    {
      sub_A5AC4(v12, self, v8);
    }

    session = [(HDCPSFetchJSONTask *)self session];
    v15 = _NSConcreteStackBlock;
    v16 = 3221225472;
    v17 = sub_6A3A4;
    v18 = &unk_108128;
    v22 = a2;
    selfCopy = self;
    v20 = v8;
    countCopy = count;
    v21 = completionCopy;
    v14 = [session dataTaskWithRequest:v20 completionHandler:&v15];

    [v14 resume];
  }

  else
  {
    objc_storeStrong(&self->_error, v10);
    completionCopy[2](completionCopy);
  }
}

- (id)_errorFromResponse:(id)response
{
  statusCode = [response statusCode];
  v4 = statusCode;
  if (statusCode <= 403)
  {
    if (statusCode > 400)
    {
      if (statusCode == &stru_158.reloff + 1)
      {
        v5 = @"unauthorized";
        v6 = 600;
        goto LABEL_22;
      }

      if (statusCode == &stru_158.reloff + 3)
      {
        v5 = @"access error";
        v6 = 603;
        goto LABEL_22;
      }
    }

    else
    {
      if (statusCode == stru_B8.segname)
      {
        v7 = 0;
        goto LABEL_25;
      }

      if (statusCode == &stru_158.reloff)
      {
        v5 = @"missing required parameter";
        v6 = 606;
        goto LABEL_22;
      }
    }

    goto LABEL_21;
  }

  if (statusCode <= 499)
  {
    if (statusCode == &stru_158.nreloc)
    {
      v5 = @"nothing found";
      v6 = 605;
      goto LABEL_22;
    }

    if (statusCode == &stru_158.reserved2 + 2)
    {
      goto LABEL_16;
    }

LABEL_21:
    v5 = @"unexpected error";
    v6 = 607;
    goto LABEL_22;
  }

  if (statusCode == &stru_1A8.reserved3)
  {
LABEL_16:
    v5 = @"service down";
    v6 = 601;
    goto LABEL_22;
  }

  if (statusCode == &stru_1A8.reserved3 + 2)
  {
    v5 = @"bad gateway";
    v6 = 604;
    goto LABEL_22;
  }

  if (statusCode != &stru_1A8.reserved3 + 3)
  {
    goto LABEL_21;
  }

  v5 = @"temporarily unavailable";
  v6 = 602;
LABEL_22:
  v8 = HDProviderServiceErrorDomain;
  v13 = NSLocalizedDescriptionKey;
  v14 = v5;
  v9 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v10 = [NSError errorWithDomain:v8 code:v4 userInfo:v9];

  _HKInitializeLogging();
  v11 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
  {
    sub_A5D44(v10, v11);
  }

  v7 = [NSError hk_error:v6 description:@"Service error" underlyingError:v10];

LABEL_25:

  return v7;
}

- (BOOL)_performRetryIfNeededForStatusCode:(int64_t)code retryCount:(int64_t)count retryHandler:(id)handler
{
  handlerCopy = handler;
  v9 = handlerCopy;
  v10 = count < 1;
  v11 = count - 1;
  if (!v10)
  {
    if (code == 503)
    {
      [(HDCPSFetchJSONTask *)self retryInterval];
      v14 = dispatch_time(0, (v13 * 1000000000.0));
      v15 = dispatch_get_global_queue(17, 0);
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_6AAA8;
      v17[3] = &unk_108150;
      v18 = v9;
      v19 = v11;
      dispatch_after(v14, v15, v17);

      goto LABEL_7;
    }

    if (code == 401)
    {
      (*(handlerCopy + 2))(handlerCopy, v11);
LABEL_7:
      v12 = 1;
      goto LABEL_8;
    }
  }

  v12 = 0;
LABEL_8:

  return v12;
}

@end
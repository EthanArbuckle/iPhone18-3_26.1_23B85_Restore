@interface BYODServiceManager
- (BOOL)receivedValidResponse:(id)response forRequest:(id)request;
- (BYODServiceManager)init;
- (void)_finishedLoading;
- (void)_preLoadCancel;
- (void)loadRequest:(id)request withCompletion:(id)completion;
@end

@implementation BYODServiceManager

- (BYODServiceManager)init
{
  v3.receiver = self;
  v3.super_class = BYODServiceManager;
  return [(BYODServiceManager *)&v3 init];
}

- (void)loadRequest:(id)request withCompletion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  [(BYODServiceManager *)self _preLoadCancel];
  if (self->_request)
  {
    v15 = "!_request";
    v16 = 27;
    goto LABEL_8;
  }

  if (self->_dataTask)
  {
    v15 = "!_dataTask";
    v16 = 28;
LABEL_8:
    __assert_rtn("[BYODServiceManager loadRequest:withCompletion:]", "BYODServiceManager.m", v16, v15);
  }

  if (!self->_urlSession)
  {
    v8 = +[NSURLSessionConfiguration defaultSessionConfiguration];
    v9 = +[NSOperationQueue mainQueue];
    v10 = [NSURLSession sessionWithConfiguration:v8 delegate:self delegateQueue:v9];
    urlSession = self->_urlSession;
    self->_urlSession = v10;

    v12 = self->_urlSession;
    v17 = _NSConcreteStackBlock;
    v18 = 3221225472;
    v19 = sub_6138C;
    v20 = &unk_B9850;
    selfCopy = self;
    v22 = completionCopy;
    v13 = [(NSURLSession *)v12 dataTaskWithRequest:requestCopy completionHandler:&v17];
    dataTask = self->_dataTask;
    self->_dataTask = v13;

    [(NSURLSessionDataTask *)self->_dataTask resume:v17];
  }
}

- (void)_preLoadCancel
{
  dataTask = self->_dataTask;
  if (dataTask)
  {
    [(NSURLSessionDataTask *)dataTask cancel];
    [(BYODServiceManager *)self _finishedLoading];
  }

  request = self->_request;
  self->_request = 0;
}

- (void)_finishedLoading
{
  dataTask = self->_dataTask;
  self->_dataTask = 0;

  request = self->_request;
  self->_request = 0;
}

- (BOOL)receivedValidResponse:(id)response forRequest:(id)request
{
  responseCopy = response;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) == 0 || [responseCopy statusCode] - 600 < 0xFFFFFFFFFFFFFF38;

  return v5;
}

@end
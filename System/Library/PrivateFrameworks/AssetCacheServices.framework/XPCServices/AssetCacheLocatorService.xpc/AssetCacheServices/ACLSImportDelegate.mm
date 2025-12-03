@interface ACLSImportDelegate
- (void)URLSession:(id)session dataTask:(id)task didReceiveResponse:(id)response completionHandler:(id)handler;
- (void)URLSession:(id)session didReceiveChallenge:(id)challenge completionHandler:(id)handler;
- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error;
- (void)URLSession:(id)session task:(id)task didReceiveChallenge:(id)challenge completionHandler:(id)handler;
- (void)URLSession:(id)session task:(id)task needNewBodyStream:(id)stream;
@end

@implementation ACLSImportDelegate

- (void)URLSession:(id)session didReceiveChallenge:(id)challenge completionHandler:(id)handler
{
  sessionCopy = session;
  challengeCopy = challenge;
  handlerCopy = handler;
  v11 = gLogHandle;
  if (os_log_type_enabled(gLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v12 = v11;
    v13[0] = 67109890;
    v13[1] = [(ACLSImportDelegate *)self tag];
    v14 = 2080;
    v15 = currentQueueName();
    v16 = 2112;
    v17 = sessionCopy;
    v18 = 2112;
    v19 = challengeCopy;
    _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "#%08x [%s] URLSession:%@ didReceiveChallenge:%@", v13, 0x26u);
  }

  handlerCopy[2](handlerCopy, 2, 0);
}

- (void)URLSession:(id)session task:(id)task didReceiveChallenge:(id)challenge completionHandler:(id)handler
{
  sessionCopy = session;
  taskCopy = task;
  challengeCopy = challenge;
  handlerCopy = handler;
  v14 = gLogHandle;
  if (os_log_type_enabled(gLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v15 = v14;
    v16[0] = 67110146;
    v16[1] = [(ACLSImportDelegate *)self tag];
    v17 = 2080;
    v18 = currentQueueName();
    v19 = 2112;
    v20 = sessionCopy;
    v21 = 2112;
    v22 = taskCopy;
    v23 = 2112;
    v24 = challengeCopy;
    _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "#%08x [%s] URLSession:%@ task:%@ didReceiveChallenge:%@", v16, 0x30u);
  }

  handlerCopy[2](handlerCopy, 2, 0);
}

- (void)URLSession:(id)session task:(id)task needNewBodyStream:(id)stream
{
  sessionCopy = session;
  taskCopy = task;
  streamCopy = stream;
  v11 = gLogHandle;
  if (os_log_type_enabled(gLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v15 = v11;
    v16[0] = 67109890;
    v16[1] = [(ACLSImportDelegate *)self tag];
    v17 = 2080;
    v18 = currentQueueName();
    v19 = 2112;
    v20 = sessionCopy;
    v21 = 2112;
    v22 = taskCopy;
    _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "#%08x [%s] URLSession:%@ task:%@ needNewBodyStream", v16, 0x26u);
  }

  v12 = [ACLSFileHandleInputStream alloc];
  fileHandle = [(ACLSImportDelegate *)self fileHandle];
  v14 = [(ACLSFileHandleInputStream *)v12 initWithFileHandle:fileHandle fileOffset:[(ACLSImportDelegate *)self fileOffset] length:[(ACLSImportDelegate *)self length]];
  streamCopy[2](streamCopy, v14);
}

- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error
{
  sessionCopy = session;
  taskCopy = task;
  errorCopy = error;
  v11 = gLogHandle;
  if (os_log_type_enabled(gLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v17 = v11;
    *buf = 67110146;
    v22 = [(ACLSImportDelegate *)self tag];
    v23 = 2080;
    v24 = currentQueueName();
    v25 = 2112;
    v26 = sessionCopy;
    v27 = 2112;
    v28 = taskCopy;
    v29 = 2112;
    v30 = errorCopy;
    _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "#%08x [%s] URLSession:%@ task:%@ didCompleteWithError:%@", buf, 0x30u);

    if (!errorCopy)
    {
      goto LABEL_3;
    }

LABEL_11:
    v12 = 0;
    goto LABEL_12;
  }

  if (errorCopy)
  {
    goto LABEL_11;
  }

LABEL_3:
  if ([(ACLSImportDelegate *)self responseCode]< 200 || [(ACLSImportDelegate *)self responseCode]>= 300)
  {
    responseCode = [(ACLSImportDelegate *)self responseCode];
    if (responseCode)
    {
      v14 = [NSString stringWithFormat:@"HTTP response %d from server", [(ACLSImportDelegate *)self responseCode]];
    }

    else
    {
      v14 = @"bad response from server";
    }

    errorCopy = createTaggedError(NSURLErrorDomain, -1011, v14, [(ACLSImportDelegate *)self tag]);
    if (responseCode)
    {
    }

    goto LABEL_11;
  }

  errorCopy = 0;
  v12 = 1;
LABEL_12:
  callbackQueue = [(ACLSImportDelegate *)self callbackQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100005D30;
  block[3] = &unk_100034AF0;
  v20 = v12;
  block[4] = self;
  v19 = errorCopy;
  v16 = errorCopy;
  dispatch_async(callbackQueue, block);

  [sessionCopy finishTasksAndInvalidate];
}

- (void)URLSession:(id)session dataTask:(id)task didReceiveResponse:(id)response completionHandler:(id)handler
{
  sessionCopy = session;
  taskCopy = task;
  responseCopy = response;
  handlerCopy = handler;
  v14 = gLogHandle;
  if (os_log_type_enabled(gLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v16 = v14;
    v17[0] = 67110146;
    v17[1] = [(ACLSImportDelegate *)self tag];
    v18 = 2080;
    v19 = currentQueueName();
    v20 = 2112;
    v21 = sessionCopy;
    v22 = 2112;
    v23 = taskCopy;
    v24 = 2112;
    v25 = responseCopy;
    _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "#%08x [%s] URLSession:%@ dataTask:%@ didReceiveResponse:%@", v17, 0x30u);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    -[ACLSImportDelegate setResponseCode:](self, "setResponseCode:", [responseCopy statusCode]);
    v15 = 1;
  }

  else
  {
    v15 = 0;
  }

  handlerCopy[2](handlerCopy, v15);
}

@end
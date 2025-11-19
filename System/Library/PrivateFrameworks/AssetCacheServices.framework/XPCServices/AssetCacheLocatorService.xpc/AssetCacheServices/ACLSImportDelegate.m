@interface ACLSImportDelegate
- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveResponse:(id)a5 completionHandler:(id)a6;
- (void)URLSession:(id)a3 didReceiveChallenge:(id)a4 completionHandler:(id)a5;
- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5;
- (void)URLSession:(id)a3 task:(id)a4 didReceiveChallenge:(id)a5 completionHandler:(id)a6;
- (void)URLSession:(id)a3 task:(id)a4 needNewBodyStream:(id)a5;
@end

@implementation ACLSImportDelegate

- (void)URLSession:(id)a3 didReceiveChallenge:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = gLogHandle;
  if (os_log_type_enabled(gLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v12 = v11;
    v13[0] = 67109890;
    v13[1] = [(ACLSImportDelegate *)self tag];
    v14 = 2080;
    v15 = currentQueueName();
    v16 = 2112;
    v17 = v8;
    v18 = 2112;
    v19 = v9;
    _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "#%08x [%s] URLSession:%@ didReceiveChallenge:%@", v13, 0x26u);
  }

  v10[2](v10, 2, 0);
}

- (void)URLSession:(id)a3 task:(id)a4 didReceiveChallenge:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = gLogHandle;
  if (os_log_type_enabled(gLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v15 = v14;
    v16[0] = 67110146;
    v16[1] = [(ACLSImportDelegate *)self tag];
    v17 = 2080;
    v18 = currentQueueName();
    v19 = 2112;
    v20 = v10;
    v21 = 2112;
    v22 = v11;
    v23 = 2112;
    v24 = v12;
    _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "#%08x [%s] URLSession:%@ task:%@ didReceiveChallenge:%@", v16, 0x30u);
  }

  v13[2](v13, 2, 0);
}

- (void)URLSession:(id)a3 task:(id)a4 needNewBodyStream:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = gLogHandle;
  if (os_log_type_enabled(gLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v15 = v11;
    v16[0] = 67109890;
    v16[1] = [(ACLSImportDelegate *)self tag];
    v17 = 2080;
    v18 = currentQueueName();
    v19 = 2112;
    v20 = v8;
    v21 = 2112;
    v22 = v9;
    _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "#%08x [%s] URLSession:%@ task:%@ needNewBodyStream", v16, 0x26u);
  }

  v12 = [ACLSFileHandleInputStream alloc];
  v13 = [(ACLSImportDelegate *)self fileHandle];
  v14 = [(ACLSFileHandleInputStream *)v12 initWithFileHandle:v13 fileOffset:[(ACLSImportDelegate *)self fileOffset] length:[(ACLSImportDelegate *)self length]];
  v10[2](v10, v14);
}

- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = gLogHandle;
  if (os_log_type_enabled(gLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v17 = v11;
    *buf = 67110146;
    v22 = [(ACLSImportDelegate *)self tag];
    v23 = 2080;
    v24 = currentQueueName();
    v25 = 2112;
    v26 = v8;
    v27 = 2112;
    v28 = v9;
    v29 = 2112;
    v30 = v10;
    _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "#%08x [%s] URLSession:%@ task:%@ didCompleteWithError:%@", buf, 0x30u);

    if (!v10)
    {
      goto LABEL_3;
    }

LABEL_11:
    v12 = 0;
    goto LABEL_12;
  }

  if (v10)
  {
    goto LABEL_11;
  }

LABEL_3:
  if ([(ACLSImportDelegate *)self responseCode]< 200 || [(ACLSImportDelegate *)self responseCode]>= 300)
  {
    v13 = [(ACLSImportDelegate *)self responseCode];
    if (v13)
    {
      v14 = [NSString stringWithFormat:@"HTTP response %d from server", [(ACLSImportDelegate *)self responseCode]];
    }

    else
    {
      v14 = @"bad response from server";
    }

    v10 = createTaggedError(NSURLErrorDomain, -1011, v14, [(ACLSImportDelegate *)self tag]);
    if (v13)
    {
    }

    goto LABEL_11;
  }

  v10 = 0;
  v12 = 1;
LABEL_12:
  v15 = [(ACLSImportDelegate *)self callbackQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100005D30;
  block[3] = &unk_100034AF0;
  v20 = v12;
  block[4] = self;
  v19 = v10;
  v16 = v10;
  dispatch_async(v15, block);

  [v8 finishTasksAndInvalidate];
}

- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveResponse:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = gLogHandle;
  if (os_log_type_enabled(gLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v16 = v14;
    v17[0] = 67110146;
    v17[1] = [(ACLSImportDelegate *)self tag];
    v18 = 2080;
    v19 = currentQueueName();
    v20 = 2112;
    v21 = v10;
    v22 = 2112;
    v23 = v11;
    v24 = 2112;
    v25 = v12;
    _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "#%08x [%s] URLSession:%@ dataTask:%@ didReceiveResponse:%@", v17, 0x30u);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    -[ACLSImportDelegate setResponseCode:](self, "setResponseCode:", [v12 statusCode]);
    v15 = 1;
  }

  else
  {
    v15 = 0;
  }

  v13[2](v13, v15);
}

@end
@interface PDURLResponse
- (id)createFileHandleForURL:(id)l;
- (id)createResponseFileURL;
- (void)_simulateHTTPResponseWithURL:(id)l statusCode:(int64_t)code headers:(id)headers;
- (void)cleanupFileResources;
@end

@implementation PDURLResponse

- (id)createResponseFileURL
{
  operationID = [(PDURLResponse *)self operationID];
  v3 = [NSString stringWithFormat:@"%@-response.data", operationID];

  v4 = sub_1000E0594();
  v5 = sub_1000E0C78(v4);
  v6 = [v5 URLByAppendingPathComponent:v3 isDirectory:0];

  return v6;
}

- (id)createFileHandleForURL:(id)l
{
  lCopy = l;
  if (!lCopy)
  {
LABEL_13:
    v11 = 0;
    goto LABEL_17;
  }

  v5 = +[PDUserDefaults sharedDefaults];
  enableVerboseLogging = [v5 enableVerboseLogging];

  if (enableVerboseLogging)
  {
    CLSInitLog();
    v7 = CLSLogOperations;
    if (os_log_type_enabled(CLSLogOperations, OS_LOG_TYPE_DEBUG))
    {
      v21 = v7;
      operationID = [(PDURLResponse *)self operationID];
      *buf = 138543618;
      *&buf[4] = operationID;
      v30 = 2112;
      v31 = lCopy;
      _os_log_debug_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "%{public}@ createFileHandleForURL responseDataURL:%@", buf, 0x16u);
    }
  }

  v8 = +[NSFileManager defaultManager];
  path = [lCopy path];
  v10 = [v8 createFileAtPath:path contents:0 attributes:0];

  if ((v10 & 1) == 0)
  {
    CLSInitLog();
    v18 = CLSLogOperations;
    if (os_log_type_enabled(CLSLogOperations, OS_LOG_TYPE_ERROR))
    {
      v23 = v18;
      operationID2 = [(PDURLResponse *)self operationID];
      *buf = 138543618;
      *&buf[4] = operationID2;
      v30 = 2114;
      v31 = lCopy;
      _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%{public}@ createFileHandleForURL failed to create file at '%{public}@'", buf, 0x16u);
    }

    goto LABEL_13;
  }

  v28 = 0;
  v11 = [NSFileHandle fileHandleForWritingToURL:lCopy error:&v28];
  v12 = v28;
  if (v11)
  {
    *buf = 0;
    v27 = 0;
    v13 = [v11 seekToEndReturningOffset:buf error:&v27];
    v14 = v27;

    if ((v13 & 1) == 0)
    {
      CLSInitLog();
      v15 = CLSLogOperations;
      if (os_log_type_enabled(CLSLogOperations, OS_LOG_TYPE_DEFAULT))
      {
        v16 = v15;
        operationID3 = [(PDURLResponse *)self operationID];
        *buf = 138543874;
        *&buf[4] = operationID3;
        v30 = 2114;
        v31 = lCopy;
        v32 = 2114;
        v33 = v14;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ createFileHandleForURL failed to create fileHandle for file at '%{public}@' error:%{public}@", buf, 0x20u);
      }
    }

    v12 = v14;
  }

  else
  {
    CLSInitLog();
    v19 = CLSLogOperations;
    if (os_log_type_enabled(CLSLogOperations, OS_LOG_TYPE_DEBUG))
    {
      v25 = v19;
      operationID4 = [(PDURLResponse *)self operationID];
      *buf = 138543618;
      *&buf[4] = operationID4;
      v30 = 2112;
      v31 = v12;
      _os_log_debug_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "%{public}@ createFileHandleForURL failed to open fileHandle error:%@", buf, 0x16u);
    }
  }

LABEL_17:

  return v11;
}

- (void)cleanupFileResources
{
  responseFileHandle = self->_responseFileHandle;
  if (responseFileHandle)
  {
    v21 = 0;
    v4 = [(NSFileHandle *)responseFileHandle closeAndReturnError:&v21];
    v5 = v21;
    if ((v4 & 1) == 0)
    {
      CLSInitLog();
      v6 = CLSLogOperations;
      if (os_log_type_enabled(CLSLogOperations, OS_LOG_TYPE_ERROR))
      {
        operationID = self->_operationID;
        *buf = 138543618;
        v23 = operationID;
        v24 = 2114;
        v25 = v5;
        _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%{public}@ PDURLResponse cleanup failed to close filehandle: error:%{public}@", buf, 0x16u);
      }
    }

    v7 = self->_responseFileHandle;
    self->_responseFileHandle = 0;
  }

  responseFileURL = self->_responseFileURL;
  if (responseFileURL)
  {
    path = [(NSURL *)responseFileURL path];
    v10 = self->_responseFileURL;
    v11 = self->_responseFileURL;
    self->_responseFileURL = 0;

    if (path)
    {
      v12 = +[NSFileManager defaultManager];
      v13 = [v12 fileExistsAtPath:path];

      if (v13)
      {
        v14 = +[NSFileManager defaultManager];
        v20 = 0;
        v15 = [v14 removeItemAtURL:v10 error:&v20];
        v16 = v20;

        if ((v15 & 1) == 0)
        {
          CLSInitLog();
          v17 = CLSLogOperations;
          if (os_log_type_enabled(CLSLogOperations, OS_LOG_TYPE_ERROR))
          {
            v19 = self->_operationID;
            *buf = 138543874;
            v23 = v19;
            v24 = 2114;
            v25 = v10;
            v26 = 2114;
            v27 = v16;
            _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%{public}@ cleanup failed to remove fileURL:%{public}@ error:%{public}@", buf, 0x20u);
          }
        }
      }
    }
  }
}

- (void)_simulateHTTPResponseWithURL:(id)l statusCode:(int64_t)code headers:(id)headers
{
  lCopy = l;
  headersCopy = headers;
  if (code == -1)
  {
    v9 = 0;
  }

  else
  {
    v9 = [[NSHTTPURLResponse alloc] initWithURL:lCopy statusCode:code HTTPVersion:@"1.1" headerFields:headersCopy];
  }

  urlResponse = self->_urlResponse;
  self->_urlResponse = v9;
}

@end
@interface NWURLSessionResponseConsumerDownload
- (NSURL)downloadFileURL;
- (NSURLResponse)response;
- (NWURLError)error;
- (NWURLError)errorForErrorCode:(uint64_t)code withPOSIXCode:(void *)xCode andTask:;
- (id)initWithResumeInfo:(void *)info completionHandler:;
- (id)prepareNextRequest:(id)request forTask:(id)task error:(id *)error;
- (int64_t)countOfBytesReceived;
- (void)deliverCompletionForTask:(uint64_t)task;
- (void)populateDownloadResumeInfo:(id)info;
- (void)setInternalError:(uint64_t)error;
- (void)setIo:(uint64_t)io;
- (void)task:(id)task deliverData:(id)data complete:(BOOL)complete error:(id)error completionHandler:(id)handler;
- (void)task:(id)task deliverResponse:(id)response completionHandler:(id)handler;
@end

@implementation NWURLSessionResponseConsumerDownload

- (id)prepareNextRequest:(id)request forTask:(id)task error:(id *)error
{
  v64 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  taskCopy = task;
  v10 = taskCopy;
  if (!taskCopy)
  {
    v12 = 0;
    _pathToDownloadTaskFile = 0;
    goto LABEL_75;
  }

  v11 = taskCopy[53];
  v12 = v11;
  if (!v11)
  {
    _pathToDownloadTaskFile = 0;
    goto LABEL_75;
  }

  _pathToDownloadTaskFile = [v11[3] _pathToDownloadTaskFile];

  if (_pathToDownloadTaskFile)
  {
    v12 = [MEMORY[0x1E695DFF8] fileURLWithPath:_pathToDownloadTaskFile isDirectory:0];
    if (self)
    {
      objc_setProperty_atomic(self, v50, v12, 32);
    }

LABEL_75:

    if (!self)
    {
      goto LABEL_18;
    }

    goto LABEL_5;
  }

  if (!self)
  {
    goto LABEL_18;
  }

LABEL_5:
  if (self->_isResuming || self->_firstPrepareCalled)
  {
    io = self->_io;
    if (io)
    {
      dispatch_io_close(io, 0);
      v16 = self->_io;
      self->_io = 0;
    }

    if ((self->_fd & 0x80000000) == 0)
    {
LABEL_13:
      response = [(NWURLSessionResponseConsumerDownload *)self response];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        response2 = [(NWURLSessionResponseConsumerDownload *)self response];
        v22 = [response2 valueForHTTPHeaderField:@"ETag"];
        if (v22)
        {
          v23 = v22;
        }

        else
        {
          v23 = [response2 valueForHTTPHeaderField:@"Last-Modified"];

          if (!v23)
          {
            goto LABEL_44;
          }
        }

        if (self->_countOfBytesReceivedInternal)
        {
          v37 = [requestCopy mutableCopy];
          [v37 setValue:v23 forHTTPHeaderField:@"If-Range"];
          v38 = [requestCopy valueForHTTPHeaderField:@"Range"];
          if ([v38 hasPrefix:@"bytes="])
          {
            v39 = [v38 componentsSeparatedByString:@"="];
            if ([v39 count] <= 1)
            {
            }

            else
            {
              v40 = [v39 objectAtIndexedSubscript:1];

              if (v40)
              {
                v41 = [v40 componentsSeparatedByString:@"-"];
                if ([v41 count] != 2)
                {
                  if (__nwlog_url_log::onceToken != -1)
                  {
                    dispatch_once(&__nwlog_url_log::onceToken, &__block_literal_global_72);
                  }

                  v46 = gurlLogObj;
                  if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
                  {
                    v63.st_dev = 138412290;
                    *&v63.st_mode = v38;
                    _os_log_impl(&dword_181A37000, v46, OS_LOG_TYPE_ERROR, "Unsupported Range header value: %@", &v63, 0xCu);
                  }

                  v36 = 0;
                  goto LABEL_52;
                }

                if ([v40 hasSuffix:@"-"])
                {
                  v42 = [v41 objectAtIndexedSubscript:0];
                  longLongValue = [v42 longLongValue];

                  v43 = [MEMORY[0x1E696AEC0] stringWithFormat:@"bytes=%lld-", self->_countOfBytesReceivedInternal + longLongValue];
                  [v37 setValue:v43 forHTTPHeaderField:@"Range"];
                  if (__nwlog_url_log::onceToken != -1)
                  {
                    dispatch_once(&__nwlog_url_log::onceToken, &__block_literal_global_72);
                  }

                  v44 = gurlLogObj;
                  if (!os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
                  {
                    goto LABEL_72;
                  }

                  v63.st_dev = 138412290;
                  *&v63.st_mode = v43;
                }

                else if ([v40 hasPrefix:@"-"])
                {
                  v47 = [v41 objectAtIndexedSubscript:1];
                  longLongValue2 = [v47 longLongValue];

                  v43 = [MEMORY[0x1E696AEC0] stringWithFormat:@"bytes=-%lld", longLongValue2 - self->_countOfBytesReceivedInternal];
                  [v37 setValue:v43 forHTTPHeaderField:@"Range"];
                  if (__nwlog_url_log::onceToken != -1)
                  {
                    dispatch_once(&__nwlog_url_log::onceToken, &__block_literal_global_72);
                  }

                  v44 = gurlLogObj;
                  if (!os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
                  {
                    goto LABEL_72;
                  }

                  v63.st_dev = 138412290;
                  *&v63.st_mode = v43;
                }

                else
                {
                  v48 = [v41 objectAtIndexedSubscript:0];
                  longLongValue3 = [v48 longLongValue];

                  v49 = [v41 objectAtIndexedSubscript:1];
                  longLongValue4 = [v49 longLongValue];

                  v43 = [MEMORY[0x1E696AEC0] stringWithFormat:@"bytes=%lld-%lld", self->_countOfBytesReceivedInternal + longLongValue3, longLongValue4];
                  [v37 setValue:v43 forHTTPHeaderField:@"Range"];
                  if (__nwlog_url_log::onceToken != -1)
                  {
                    dispatch_once(&__nwlog_url_log::onceToken, &__block_literal_global_72);
                  }

                  v44 = gurlLogObj;
                  if (!os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
                  {
                    goto LABEL_72;
                  }

                  v63.st_dev = 138412290;
                  *&v63.st_mode = v43;
                }

                _os_log_impl(&dword_181A37000, v44, OS_LOG_TYPE_DEBUG, "Request Range header value: %@", &v63, 0xCu);
LABEL_72:

LABEL_51:
                v36 = v37;
LABEL_52:

                goto LABEL_53;
              }
            }
          }

          v41 = [MEMORY[0x1E696AEC0] stringWithFormat:@"bytes=%lld-", self->_countOfBytesReceivedInternal];
          [v37 setValue:v41 forHTTPHeaderField:@"Range"];
          if (__nwlog_url_log::onceToken != -1)
          {
            dispatch_once(&__nwlog_url_log::onceToken, &__block_literal_global_72);
          }

          v43 = gurlLogObj;
          if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
          {
            v63.st_dev = 138412290;
            *&v63.st_mode = v41;
            _os_log_impl(&dword_181A37000, v43, OS_LOG_TYPE_DEBUG, "Request Range header value: %@", &v63, 0xCu);
          }

          v40 = 0;
          goto LABEL_51;
        }
      }

      else
      {
        v23 = 0;
      }

LABEL_44:
      ftruncate(self->_fd, 0);
      self->_countOfBytesReceivedInternal = 0;
      v36 = requestCopy;
LABEL_53:

      goto LABEL_54;
    }

    temporaryDirectory = objc_getProperty(self, v14, 32, 1);
    v18 = open([temporaryDirectory fileSystemRepresentation], 521, 438);
    self->_fd = v18;
    if ((v18 & 0x80000000) == 0)
    {
      memset(&v63, 0, sizeof(v63));
      if (!fstat(v18, &v63))
      {
        self->_countOfBytesReceivedInternal = v63.st_size;

        goto LABEL_13;
      }
    }

    goto LABEL_77;
  }

  self->_firstPrepareCalled = 1;
  if (!objc_getProperty(self, v14, 32, 1))
  {
LABEL_18:
    if (!v10 || (v25 = v10[53]) == 0 || (v26 = v25, [v25[2] _directoryForDownloadedFiles], temporaryDirectory = objc_claimAutoreleasedReturnValue(), v26, !temporaryDirectory))
    {
      defaultManager = [MEMORY[0x1E696AC08] defaultManager];
      temporaryDirectory = [defaultManager temporaryDirectory];
    }

    v28 = [temporaryDirectory URLByAppendingPathComponent:@"URLSessionDownload_XXXXXX.tmp" isDirectory:0];
    if ([v28 getFileSystemRepresentation:&v63 maxLength:1024])
    {
      v29 = mkstemps(&v63, 4);
      if (!self || (self->_fd = v29, (v29 & 0x80000000) == 0))
      {
        v30 = [MEMORY[0x1E695DFF8] fileURLWithFileSystemRepresentation:&v63 isDirectory:0 relativeToURL:0];
        v32 = v30;
        if (self)
        {
          objc_setProperty_atomic(self, v31, v30, 32);

          if (!temporaryDirectory)
          {
            Property = objc_getProperty(self, v33, 32, 1);
LABEL_28:
            lastPathComponent = [Property lastPathComponent];
            if (self)
            {
              objc_storeStrong(&self->_tempFileName, lastPathComponent);
            }
          }
        }

        else
        {

          if (!temporaryDirectory)
          {
            Property = 0;
            goto LABEL_28;
          }
        }

LABEL_32:
        v36 = requestCopy;
        goto LABEL_54;
      }

      v56 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
      selfCopy2 = self;
      v55 = 0;
    }

    else
    {
      selfCopy2 = self;
      v55 = -3000;
      v56 = 63;
    }

    v57 = [(NWURLSessionResponseConsumerDownload *)selfCopy2 errorForErrorCode:v55 withPOSIXCode:v56 andTask:v10];
    v58 = *error;
    *error = v57;

    goto LABEL_83;
  }

  temporaryDirectory = objc_getProperty(self, v24, 32, 1);
  v53 = open([temporaryDirectory fileSystemRepresentation], 2561, 438);
  self->_fd = v53;
  if ((v53 & 0x80000000) == 0)
  {
    goto LABEL_32;
  }

LABEL_77:
  v51 = [(NWURLSessionResponseConsumerDownload *)self errorForErrorCode:**(_ReadStatusReg(ARM64_SYSREG(3 withPOSIXCode:3 andTask:13, 0, 3)) + 8), v10];
  v52 = *error;
  *error = v51;

LABEL_83:
  v36 = 0;
LABEL_54:

  return v36;
}

- (NWURLError)errorForErrorCode:(uint64_t)code withPOSIXCode:(void *)xCode andTask:
{
  if (self)
  {
    v6 = MEMORY[0x1E696ABC0];
    v7 = *MEMORY[0x1E696A798];
    xCodeCopy = xCode;
    v9 = [v6 errorWithDomain:v7 code:code userInfo:0];
    v10 = [NWURLError alloc];
    v11 = xCodeCopy;
    if (v10)
    {
      v12 = [(NWURLError *)v10 initWithErrorCode:a2];
      v13 = v12;
      if (v12)
      {
        [(NWURLError *)v12 fillErrorForLoader:0 andTask:v11];
      }
    }

    else
    {
      v13 = 0;
    }

    [(NWURLError *)v13 setUnderlyingError:v9];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)populateDownloadResumeInfo:(id)info
{
  infoCopy = info;
  v7 = infoCopy;
  if (self)
  {
    if (self->_tempFileName)
    {
      [infoCopy setTempFileName:?];
      goto LABEL_6;
    }

    Property = objc_getProperty(self, v5, 32, 1);
  }

  else
  {
    Property = 0;
  }

  [v7 setFileURL:Property];
LABEL_6:
}

- (NSURL)downloadFileURL
{
  if (self)
  {
    self = objc_getProperty(self, a2, 32, 1);
    v2 = vars8;
  }

  return self;
}

- (int64_t)countOfBytesReceived
{
  if (self)
  {
    return *(self + 72);
  }

  return self;
}

- (NWURLError)error
{
  if (self)
  {
    self = self->_internalError;
  }

  return self;
}

- (NSURLResponse)response
{
  if (self)
  {
    self = objc_getProperty(self, a2, 24, 1);
    v2 = vars8;
  }

  return self;
}

- (void)task:(id)task deliverData:(id)data complete:(BOOL)complete error:(id)error completionHandler:(id)handler
{
  completeCopy = complete;
  taskCopy = task;
  dataCopy = data;
  errorCopy = error;
  handlerCopy = handler;
  if (self)
  {
    if (self->_hasCompleted)
    {
LABEL_32:
      handlerCopy[2](handlerCopy);
      goto LABEL_24;
    }

    self->_hasCompleted = completeCopy;
  }

  if (!dataCopy)
  {
    size = 0;
    if (self)
    {
      goto LABEL_6;
    }

LABEL_26:
    v17 = 0;
    goto LABEL_7;
  }

  size = dispatch_data_get_size(dataCopy);
  if (!self)
  {
    goto LABEL_26;
  }

LABEL_6:
  v17 = self->_countOfBytesReceivedInternal + size;
  self->_countOfBytesReceivedInternal = v17;
LABEL_7:
  [(NWURLSessionTask *)taskCopy setCountOfBytesReceived:v17];
  v18 = size != 0;
  if (errorCopy || !completeCopy)
  {
    if (errorCopy)
    {
      if (!self)
      {
        goto LABEL_30;
      }

      objc_storeStrong(&self->_internalError, error);
      goto LABEL_17;
    }
  }

  else
  {
    countOfBytesExpectedToReceive = [taskCopy countOfBytesExpectedToReceive];
    if (self)
    {
      countOfBytesReceivedInternal = self->_countOfBytesReceivedInternal;
      if (countOfBytesExpectedToReceive == countOfBytesReceivedInternal)
      {
        goto LABEL_17;
      }
    }

    else
    {
      if (!countOfBytesExpectedToReceive)
      {
        goto LABEL_30;
      }

      countOfBytesReceivedInternal = 0;
    }

    [(NWURLSessionTask *)taskCopy setCountOfBytesExpectedToReceive:?];
    v18 = 1;
  }

  if (!self)
  {
LABEL_30:
    if (completeCopy)
    {
      [(NWURLSessionResponseConsumerDownload *)self deliverCompletionForTask:taskCopy];
    }

    goto LABEL_32;
  }

LABEL_17:
  if (!self->_io)
  {
    goto LABEL_30;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __90__NWURLSessionResponseConsumerDownload_task_deliverData_complete_error_completionHandler___block_invoke;
  aBlock[3] = &unk_1E6A35720;
  v36 = completeCopy;
  aBlock[4] = self;
  v21 = taskCopy;
  v33 = v21;
  v37 = v18;
  v34 = handlerCopy;
  v35 = size;
  v22 = _Block_copy(aBlock);
  v23 = v22;
  if (dataCopy)
  {
    v24 = self->_io;
    if (v21)
    {
      v25 = v21[52];
      v26 = v25;
      if (v25)
      {
        v27 = *(v25 + 18);
      }

      else
      {
        v27 = 0;
      }
    }

    else
    {
      v26 = 0;
      v27 = 0;
    }

    v28 = v27;
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __90__NWURLSessionResponseConsumerDownload_task_deliverData_complete_error_completionHandler___block_invoke_3;
    v29[3] = &unk_1E6A35748;
    v29[4] = self;
    v30 = v21;
    v31 = v23;
    dispatch_io_write(v24, 0, dataCopy, v28, v29);
  }

  else
  {
    (*(v22 + 2))(v22);
  }

LABEL_24:
}

- (void)setInternalError:(uint64_t)error
{
  if (error)
  {
    objc_storeStrong((error + 64), a2);
  }
}

- (void)deliverCompletionForTask:(uint64_t)task
{
  v4 = a2;
  if (task)
  {
    v5 = objc_getProperty(task, v3, 32, 1);
    v6 = *(task + 64);
    downloadTaskResumeData = [v6 downloadTaskResumeData];
    v8 = downloadTaskResumeData != 0;

    if (v4)
    {
      v9 = v4[53];
      v10 = v9;
      if (v9 && ([v9[3] _keepDownloadTaskFile] & 1) != 0)
      {
        v11 = 1;

        if (!v5)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }
    }

    else
    {
      v10 = 0;
    }

    v11 = *(task + 40) == 0;

    if (!v5)
    {
LABEL_10:
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __65__NWURLSessionResponseConsumerDownload_deliverCompletionForTask___block_invoke;
      v15[3] = &unk_1E6A35798;
      v15[4] = task;
      v16 = v4;
      v17 = v5;
      v18 = v6;
      v19 = v11;
      v20 = v8;
      v12 = v6;
      v13 = v5;
      [(NWURLSessionTask *)v16 complete:v15];

      goto LABEL_11;
    }

LABEL_9:
    if (v6)
    {
      if (!downloadTaskResumeData && *(task + 40))
      {
        defaultManager = [MEMORY[0x1E696AC08] defaultManager];
        [defaultManager removeItemAtURL:v5 error:0];
      }

      v5 = 0;
    }

    goto LABEL_10;
  }

LABEL_11:
}

void __90__NWURLSessionResponseConsumerDownload_task_deliverData_complete_error_completionHandler___block_invoke(uint64_t a1)
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __90__NWURLSessionResponseConsumerDownload_task_deliverData_complete_error_completionHandler___block_invoke_2;
  aBlock[3] = &unk_1E6A39CC0;
  v26 = *(a1 + 64);
  v2 = *(a1 + 40);
  aBlock[4] = *(a1 + 32);
  v24 = v2;
  v25 = *(a1 + 48);
  v3 = _Block_copy(aBlock);
  v4 = v3;
  if (*(a1 + 65) != 1)
  {
    (*(v3 + 2))(v3);
    goto LABEL_14;
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    v6 = 248;
    if (!*(v5 + 248))
    {
      v6 = 240;
    }

    v7 = *(v5 + v6);
    v8 = *(a1 + 40);
    v9 = *(a1 + 32);
    if (v9)
    {
      goto LABEL_6;
    }

LABEL_16:
    v10 = 0;
    goto LABEL_7;
  }

  v8 = 0;
  v7 = 0;
  v9 = *(a1 + 32);
  if (!v9)
  {
    goto LABEL_16;
  }

LABEL_6:
  v10 = *(v9 + 72);
LABEL_7:
  v11 = *(a1 + 56);
  v12 = [v8 countOfBytesExpectedToReceive];
  v13 = v8;
  v15 = v4;
  if (v7)
  {
    v16 = [(NWURLSessionDelegateWrapper *)v7 delegateFor_didWriteData];
    if (v16)
    {
      v17 = v7[5];
      v18 = v7[6];
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __119__NWURLSessionDelegateWrapper_downloadTask_didWriteData_totalBytesWritten_totalBytesExpectedToWrite_completionHandler___block_invoke;
      v27[3] = &unk_1E6A3B698;
      v28 = v16;
      v29 = v17;
      v19 = v13;
      v33 = v11;
      v34 = v10;
      v35 = v12;
      v30 = v19;
      v31 = v18;
      v32 = v15;
      v20 = v7[7];
      v21 = v18;
      v22 = v17;
      [(NWURLSessionDelegateQueue *)v20 runDelegateBlock:v27];
    }

    else
    {
      v15[2](v15);
    }
  }

LABEL_14:
}

void __90__NWURLSessionResponseConsumerDownload_task_deliverData_complete_error_completionHandler___block_invoke_3(uint64_t a1, int a2, void *a3, int a4)
{
  v7 = a3;
  if (a2)
  {
    v11 = v7;
    if (a4)
    {
      v8 = *(a1 + 32);
      if (!v8 || !*(v8 + 64))
      {
        v9 = [(NWURLSessionResponseConsumerDownload *)v8 errorForErrorCode:a4 withPOSIXCode:*(a1 + 40) andTask:?];
        v10 = *(a1 + 32);
        if (v10)
        {
          objc_storeStrong((v10 + 64), v9);
        }

        [(NWURLSessionResponseConsumerDownload *)*(a1 + 32) deliverCompletionForTask:?];
      }
    }

    (*(*(a1 + 48) + 16))();
    v7 = v11;
  }
}

void __90__NWURLSessionResponseConsumerDownload_task_deliverData_complete_error_completionHandler___block_invoke_2(uint64_t a1, const char *a2)
{
  if (*(a1 + 56) != 1)
  {
    v2 = *(a1 + 48);
LABEL_3:
    v3 = *(v2 + 16);

    v3();
    return;
  }

  v4 = *(a1 + 32);
  if (!v4 || !*(v4 + 48))
  {
    [(NWURLSessionResponseConsumerDownload *)*(a1 + 32) deliverCompletionForTask:?];
    v2 = *(a1 + 48);
    goto LABEL_3;
  }

  objc_setProperty_nonatomic_copy(*(a1 + 32), a2, *(a1 + 48), 56);
  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = *(v6 + 48);
  }

  else
  {
    v7 = 0;
  }

  dispatch_io_close(v7, 0);
}

void __65__NWURLSessionResponseConsumerDownload_deliverCompletionForTask___block_invoke(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = v3[2];
    if (v4)
    {
      v6 = v4;
      Property = *(a1 + 32);
      if (Property)
      {
        objc_setProperty_nonatomic_copy(Property, v5, 0, 16);
        Property = *(a1 + 32);
        if (Property)
        {
          Property = objc_getProperty(Property, v8, 24, 1);
        }
      }

      v9 = Property;
      v10 = *(a1 + 40);
      if (v10)
      {
        v11 = 248;
        if (!*(v10 + 248))
        {
          v11 = 240;
        }

        v12 = *(v10 + v11);
      }

      else
      {
        v12 = 0;
      }

      v64[0] = MEMORY[0x1E69E9820];
      v64[1] = 3221225472;
      v64[2] = __65__NWURLSessionResponseConsumerDownload_deliverCompletionForTask___block_invoke_2;
      v64[3] = &unk_1E6A35770;
      v68 = v6;
      v65 = *(a1 + 48);
      v66 = v9;
      v67 = *(a1 + 56);
      v69 = *(a1 + 64);
      v13 = *(a1 + 40);
      v14 = v9;
      v16 = v6;
      if (v13 && (v17 = v13[53], (v13 = v17) != 0))
      {
        v18 = [v17[3] _callCompletionHandlerInline];
        v19 = *(a1 + 40);
        if (v19)
        {
LABEL_13:
          v20 = objc_getProperty(v19, v15, 456, 1);
LABEL_14:
          v21 = v20;
          [(NWURLSessionDelegateWrapper *)v12 runCompletionHandler:v64 noAsync:v18 task:v19 metrics:v21 cachedResponse:0 cache:0];

          return;
        }
      }

      else
      {
        v18 = 0;
        v19 = *(a1 + 40);
        if (v19)
        {
          goto LABEL_13;
        }
      }

      v20 = 0;
      goto LABEL_14;
    }
  }

  if (*(a1 + 48) && !*(a1 + 56))
  {
    v22 = *(a1 + 40);
    if (v22)
    {
      v23 = 248;
      if (!*(v22 + 248))
      {
        v23 = 240;
      }

      v24 = *(v22 + v23);
      v3 = *(a1 + 32);
      v25 = *(a1 + 40);
      if (v3)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v25 = 0;
      v24 = 0;
      if (v3)
      {
LABEL_21:
        v3 = objc_getProperty(v3, a2, 32, 1);
        v26 = *(a1 + 40);
LABEL_22:
        v27 = *(a1 + 56);
        v29 = v3;
        if (v26)
        {
          v30 = objc_getProperty(v26, v28, 456, 1);
        }

        else
        {
          v30 = 0;
        }

        v31 = v30;
        v59[0] = MEMORY[0x1E69E9820];
        v59[1] = 3221225472;
        v60 = __65__NWURLSessionResponseConsumerDownload_deliverCompletionForTask___block_invoke_3;
        v61 = &unk_1E6A3A258;
        v63 = *(a1 + 64);
        v62 = *(a1 + 48);
        v32 = v25;
        v33 = v29;
        v34 = v27;
        v35 = v31;
        v37 = v59;
        if (v24)
        {
          v39 = [(NWURLSessionDelegateWrapper *)v24 delegateFor_didFinishDownloadingToURL];
          if (v35)
          {
            v40 = [(NWURLSessionDelegateWrapper *)v24 delegateFor_didFinishCollectingMetrics];
          }

          else
          {
            v40 = 0;
          }

          v41 = [(NWURLSessionDelegateWrapper *)v24 delegateFor_didCompleteWithError];
          v42 = v41;
          if (v39 || v40 || v41)
          {
            v55 = v24[5];
            v57 = v37;
            v43 = v24[6];
            v70[0] = MEMORY[0x1E69E9820];
            v70[1] = 3221225472;
            v70[2] = __102__NWURLSessionDelegateWrapper_downloadTask_didFinishDownloadingToURL_error_metrics_completionHandler___block_invoke;
            v70[3] = &unk_1E6A3B738;
            v71 = v39;
            v72 = v55;
            v73 = v32;
            v74 = v33;
            v75 = v40;
            v76 = v35;
            v77 = v42;
            v78 = v34;
            v79 = v43;
            v80 = v57;
            v44 = v33;
            v45 = v34;
            v46 = v32;
            v47 = v24[7];
            v56 = v43;
            v48 = v55;
            v49 = v47;
            v32 = v46;
            v34 = v45;
            v33 = v44;
            [(NWURLSessionDelegateQueue *)v49 runDelegateBlock:v70];

            v37 = v57;
          }

          else
          {
            v60(v37);
          }
        }

        return;
      }
    }

    v26 = v25;
    goto LABEL_22;
  }

  v58 = [(NWURLSessionTask *)*(a1 + 40) delegateWrapper];
  v51 = *(a1 + 40);
  v52 = *(a1 + 56);
  if (v51)
  {
    v53 = objc_getProperty(v51, v50, 456, 1);
  }

  else
  {
    v53 = 0;
  }

  v54 = v53;
  [(NWURLSessionDelegateWrapper *)v58 task:v51 didCompleteWithError:v52 metrics:v54];
}

void __65__NWURLSessionResponseConsumerDownload_deliverCompletionForTask___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 56) + 16))();
  if (*(a1 + 32) && (*(a1 + 64) & 1) == 0 && (*(a1 + 65) & 1) == 0)
  {
    v2 = [MEMORY[0x1E696AC08] defaultManager];
    [v2 removeItemAtURL:*(a1 + 32) error:0];
  }
}

void __65__NWURLSessionResponseConsumerDownload_deliverCompletionForTask___block_invoke_3(uint64_t a1)
{
  if ((*(a1 + 40) & 1) == 0)
  {
    v2 = [MEMORY[0x1E696AC08] defaultManager];
    [v2 removeItemAtURL:*(a1 + 32) error:0];
  }
}

- (void)task:(id)task deliverResponse:(id)response completionHandler:(id)handler
{
  taskCopy = task;
  responseCopy = response;
  if (self)
  {
    io = self->_io;
    handlerCopy = handler;
    if (io)
    {
      dispatch_io_close(self->_io, 0);
      [NWURLSessionResponseConsumerDownload setIo:?];
    }

    objc_setProperty_atomic(self, v12, responseCopy, 24);
    v13 = countOfBytesExpectedToReceive(responseCopy);
    if (self->_isResuming)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && [responseCopy statusCode] == 206)
      {
        if (v13 != *MEMORY[0x1E695ABD8])
        {
          v13 += self->_countOfBytesReceivedInternal;
        }

        [(NWURLSessionTask *)taskCopy setCountOfBytesExpectedToReceive:v13];
        countOfBytesReceivedInternal = self->_countOfBytesReceivedInternal;
      }

      else
      {
        ftruncate(self->_fd, 0);
        [(NWURLSessionTask *)taskCopy setCountOfBytesExpectedToReceive:v13];
        countOfBytesReceivedInternal = 0;
      }

      [(NWURLSessionTask *)taskCopy setCountOfBytesReceived:?];
      if (!self->_calledDidResumeAtOffset)
      {
        self->_calledDidResumeAtOffset = 1;
        delegateWrapper = [(NWURLSessionTask *)taskCopy delegateWrapper];
        -[NWURLSessionDelegateWrapper downloadTask:didResumeAtOffset:expectedTotalBytes:](delegateWrapper, taskCopy, [taskCopy countOfBytesReceived], objc_msgSend(taskCopy, "countOfBytesExpectedToReceive"));
      }
    }

    else
    {
      [(NWURLSessionTask *)taskCopy setCountOfBytesExpectedToReceive:v13];
      self->_isResuming = 1;
      self->_calledDidResumeAtOffset = 1;
    }

    fd = self->_fd;
    self->_fd = -1;
    if (taskCopy)
    {
      goto LABEL_7;
    }
  }

  else
  {
    handlerCopy2 = handler;
    v35 = countOfBytesExpectedToReceive(responseCopy);
    [(NWURLSessionTask *)taskCopy setCountOfBytesExpectedToReceive:v35];
    fd = 0;
    if (taskCopy)
    {
LABEL_7:
      v15 = taskCopy[52];
      v16 = v15;
      if (v15)
      {
        v17 = *(v15 + 18);
      }

      else
      {
        v17 = 0;
      }

      goto LABEL_9;
    }
  }

  v16 = 0;
  v17 = 0;
LABEL_9:
  v18 = v17;
  cleanup_handler[0] = MEMORY[0x1E69E9820];
  cleanup_handler[1] = 3221225472;
  cleanup_handler[2] = __79__NWURLSessionResponseConsumerDownload_task_deliverResponse_completionHandler___block_invoke;
  cleanup_handler[3] = &unk_1E6A356F8;
  cleanup_handler[4] = self;
  v38 = fd;
  v19 = taskCopy;
  v37 = v19;
  v20 = dispatch_io_create(0, fd, v18, cleanup_handler);
  if (self)
  {
    v21 = self->_io;
    self->_io = v20;

    v22 = self->_io;
  }

  else
  {

    v22 = 0;
  }

  dispatch_io_set_low_water(v22, 0xFFFFFFFFFFFFFFFFLL);
  if (taskCopy)
  {
    v23 = 31;
    if (!v19[31])
    {
      v23 = 30;
    }

    v24 = v19[v23];
  }

  else
  {
    v24 = 0;
  }

  v25 = v19;
  v27 = responseCopy;
  if (v24)
  {
    delegateFor_downloadDidReceiveResponse = [(NWURLSessionDelegateWrapper *)v24 delegateFor_downloadDidReceiveResponse];
    if (delegateFor_downloadDidReceiveResponse)
    {
      v29 = v24[5];
      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 3221225472;
      v39[2] = __63__NWURLSessionDelegateWrapper_downloadTask_didReceiveResponse___block_invoke;
      v39[3] = &unk_1E6A3C038;
      v40 = delegateFor_downloadDidReceiveResponse;
      v41 = v29;
      v42 = v25;
      v43 = v27;
      v30 = v24[7];
      v31 = v29;
      [(NWURLSessionDelegateQueue *)v30 runDelegateBlock:v39];
    }
  }

  (*(handler + 2))(handler, 1);
}

- (void)setIo:(uint64_t)io
{
  if (io)
  {
    objc_storeStrong((io + 48), 0);
  }
}

void __79__NWURLSessionResponseConsumerDownload_task_deliverResponse_completionHandler___block_invoke(uint64_t a1, int a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = a2 != 0;
    if (!a2 && !*(v4 + 64))
    {
      goto LABEL_4;
    }

    v15 = 65541;
    v11 = *(v4 + 12);
  }

  else
  {
    v5 = a2 != 0;
    if (!a2)
    {
LABEL_4:
      close(*(a1 + 48));
      goto LABEL_5;
    }

    v11 = 0;
    v15 = 65541;
  }

  if (ffsctl(v11, 0xC0084A44uLL, &v15, 0))
  {
    if (__nwlog_url_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_url_log::onceToken, &__block_literal_global_72);
    }

    v12 = gurlLogObj;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
      *buf = 67109120;
      v17 = v13;
      _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_ERROR, "Failed to make download file purgeable: %{errno}d", buf, 8u);
    }
  }

  close(*(a1 + 48));
  if (v5)
  {
    v14 = [(NWURLSessionResponseConsumerDownload *)*(a1 + 32) errorForErrorCode:a2 withPOSIXCode:*(a1 + 40) andTask:?];
    [(NWURLSessionResponseConsumerDownload *)*(a1 + 32) setInternalError:v14];

    [NWURLSessionResponseConsumerDownload setIo:?];
    return;
  }

LABEL_5:
  v6 = *(a1 + 32);
  if (v6 && *(v6 + 56))
  {
    [(NWURLSessionResponseConsumerDownload *)v6 deliverCompletionForTask:?];
    v7 = *(a1 + 32);
    if (v7)
    {
      v8 = *(v7 + 56);
    }

    else
    {
      v8 = 0;
    }

    (*(v8 + 16))();
    v10 = *(a1 + 32);
    if (v10)
    {
      objc_setProperty_nonatomic_copy(v10, v9, 0, 56);
    }
  }
}

- (id)initWithResumeInfo:(void *)info completionHandler:
{
  v5 = a2;
  infoCopy = info;
  if (self)
  {
    v19.receiver = self;
    v19.super_class = NWURLSessionResponseConsumerDownload;
    self = objc_msgSendSuper2(&v19, sel_init);
    if (self)
    {
      v7 = _Block_copy(infoCopy);
      v8 = *(self + 2);
      *(self + 2) = v7;

      *(self + 3) = -1;
      tempFileName = [v5 tempFileName];
      v10 = *(self + 5);
      *(self + 5) = tempFileName;

      if (*(self + 5))
      {
        defaultManager = [MEMORY[0x1E696AC08] defaultManager];
        temporaryDirectory = [defaultManager temporaryDirectory];
        v13 = [temporaryDirectory URLByAppendingPathComponent:*(self + 5) isDirectory:0];
        v14 = *(self + 4);
        *(self + 4) = v13;
      }

      else
      {
        fileURL = [v5 fileURL];
        defaultManager = *(self + 4);
        *(self + 4) = fileURL;
      }

      response = [v5 response];
      v17 = *(self + 3);
      *(self + 3) = response;

      *(self + 9) = *(self + 4) != 0;
      *(self + 3) = -1;
    }
  }

  return self;
}

@end
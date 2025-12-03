@interface FileWriteStreamAdapter
- (void)consumeData:(id)data withCompletionHandler:(id)handler;
- (void)finishWithCompletionHandler:(id)handler;
- (void)prepareWithCompletionHandler:(id)handler;
- (void)resetWithCompletionHandler:(id)handler;
- (void)suspendWithCompletionHandler:(id)handler;
- (void)truncateWithCompletionHandler:(id)handler;
@end

@implementation FileWriteStreamAdapter

- (void)consumeData:(id)data withCompletionHandler:(id)handler
{
  dataCopy = data;
  handlerCopy = handler;
  verifier = self->_verifier;
  if (verifier)
  {
    v12 = 0;
    v9 = sub_1002BE584(verifier, dataCopy, &v12);
    v10 = v12;
    if (!v9)
    {
      handlerCopy[2](handlerCopy, v10, 0);
      goto LABEL_9;
    }
  }

  else
  {
    v10 = 0;
  }

  if (-[NSOutputStream write:maxLength:](self->_outputStream, "write:maxLength:", [dataCopy bytes], objc_msgSend(dataCopy, "length")) == -1)
  {
    streamError = [(NSOutputStream *)self->_outputStream streamError];
  }

  else
  {
    streamError = 0;
    self->_savedBytes += [dataCopy length];
  }

  handlerCopy[2](handlerCopy, streamError, 0);

LABEL_9:
}

- (void)finishWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  verifier = self->_verifier;
  if (verifier)
  {
    v10 = 0;
    v6 = sub_1002BE160(verifier, &v10);
    v7 = v10;
    v8 = v7;
    if (v6)
    {
      v9 = 0;
    }

    else
    {
      v9 = v7;
    }
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  [(NSOutputStream *)self->_outputStream close];
  (handlerCopy)[2](handlerCopy, v9);
}

- (void)prepareWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (self->_digest)
  {
    v5 = sub_1002BE07C([DigestVerifier alloc], self->_digest, 0);
    verifier = self->_verifier;
    self->_verifier = v5;
  }

  self->_savedBytes = 0;
  v7 = [NSFileHandle fileHandleForUpdatingAtPath:self->_downloadPath];
  if (v7)
  {
    digest = self->_digest;
    if (digest)
    {
      v9 = digest->_chunkSize == 0;
    }

    else
    {
      v9 = 1;
    }

    v10 = ASDLogHandleForCategory();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (v9)
    {
      if (v11)
      {
        logKey = self->_logKey;
        downloadPath = self->_downloadPath;
        *buf = 138412546;
        v56 = logKey;
        v57 = 2114;
        v58 = downloadPath;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[%@] Not validating existing partial download because chunkSize is zero: %{public}@", buf, 0x16u);
      }
    }

    else
    {
      if (v11)
      {
        v14 = self->_logKey;
        v15 = self->_downloadPath;
        *buf = 138412546;
        v56 = v14;
        v57 = 2114;
        v58 = v15;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[%@] Validating existing partial download: %{public}@", buf, 0x16u);
      }

      while (1)
      {
        v16 = objc_autoreleasePoolPush();
        v17 = self->_digest;
        v18 = v17 ? v17->_chunkSize : 0;
        v54 = 0;
        v19 = [v7 readDataUpToLength:v18 error:&v54];
        v20 = v54;
        if (v20)
        {
          break;
        }

        v21 = [v19 length];
        v22 = self->_digest;
        if (v22)
        {
          v22 = v22->_chunkSize;
        }

        if (v21 != v22)
        {
          break;
        }

        v23 = self->_verifier;
        v53 = 0;
        v24 = sub_1002BE584(v23, v19, &v53);

        objc_autoreleasePoolPop(v16);
        if ((v24 & 1) == 0)
        {
          goto LABEL_23;
        }
      }

      objc_autoreleasePoolPop(v16);
    }

LABEL_23:
    v25 = self->_verifier;
    if (v25)
    {
      bytesValidated = v25->_bytesValidated;
    }

    else
    {
      bytesValidated = 0;
    }

    v52 = 0;
    v27 = [v7 truncateAtOffset:bytesValidated error:&v52];
    v28 = v52;
    if (v27)
    {
      v29 = self->_verifier;
      if (v29)
      {
        v29 = v29->_bytesValidated;
      }

      self->_savedBytes = v29;
      v30 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v31 = self->_logKey;
        savedBytes = self->_savedBytes;
        v33 = self->_downloadPath;
        *buf = 138412802;
        v56 = v31;
        v57 = 2048;
        v58 = savedBytes;
        v59 = 2114;
        v60 = v33;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "[%@] Validated %{bytes}llu at: %{public}@", buf, 0x20u);
      }
    }

    else
    {
      v30 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v48 = self->_logKey;
        *buf = 138412546;
        v56 = v48;
        v57 = 2114;
        v58 = v28;
        _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "[%@] Error attempting to truncate partial download: %{public}@", buf, 0x16u);
      }
    }

    v51 = 0;
    v34 = [v7 closeAndReturnError:&v51];
    v35 = v51;
    if ((v34 & 1) == 0)
    {
      v36 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        v49 = self->_logKey;
        *buf = 138412546;
        v56 = v49;
        v57 = 2114;
        v58 = v35;
        _os_log_error_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "[%@] Error attempting to close file handle: %{public}@", buf, 0x16u);
      }
    }

    if (v28 | v35)
    {
      v37 = +[NSFileManager defaultManager];
      v38 = self->_downloadPath;
      v50 = 0;
      [v37 removeItemAtPath:v38 error:&v50];
      v39 = v50;

      v40 = ASDLogHandleForCategory();
      v41 = v40;
      if (v39)
      {
        if (os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
        {
          v42 = self->_logKey;
          *buf = 138412546;
          v56 = v42;
          v57 = 2114;
          v58 = v39;
          _os_log_fault_impl(&_mh_execute_header, v41, OS_LOG_TYPE_FAULT, "[%@] Unable to delete previous download: %{public}@", buf, 0x16u);
        }
      }

      else if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        v43 = self->_logKey;
        v44 = self->_downloadPath;
        *buf = 138412546;
        v56 = v43;
        v57 = 2114;
        v58 = v44;
        _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "[%@] Deleted partially downloaded file due to previous errors: %{public}@", buf, 0x16u);
      }
    }
  }

  v45 = [NSOutputStream outputStreamToFileAtPath:self->_downloadPath append:self->_savedBytes != 0];
  outputStream = self->_outputStream;
  self->_outputStream = v45;

  [(NSOutputStream *)self->_outputStream open];
  streamError = [(NSOutputStream *)self->_outputStream streamError];
  handlerCopy[2](handlerCopy, self->_savedBytes, streamError);
}

- (void)suspendWithCompletionHandler:(id)handler
{
  outputStream = self->_outputStream;
  handlerCopy = handler;
  [(NSOutputStream *)outputStream close];
  handlerCopy[2](handlerCopy, 0);
}

- (void)truncateWithCompletionHandler:(id)handler
{
  outputStream = self->_outputStream;
  handlerCopy = handler;
  [(NSOutputStream *)outputStream close];
  v6 = +[NSFileManager defaultManager];
  downloadPath = self->_downloadPath;
  v9 = 0;
  [v6 removeItemAtPath:downloadPath error:&v9];
  v8 = v9;

  handlerCopy[2](handlerCopy, v8);
}

- (void)resetWithCompletionHandler:(id)handler
{
  outputStream = self->_outputStream;
  handlerCopy = handler;
  [(NSOutputStream *)outputStream close];
  handlerCopy[2](handlerCopy, 0);
}

@end
@interface FileWriteStreamAdapter
- (FileWriteStreamAdapter)initWithDownloadPath:(id)a3;
- (void)consumeData:(id)a3 withCompletionHandler:(id)a4;
- (void)finishWithCompletionHandler:(id)a3;
- (void)prepareWithCompletionHandler:(id)a3;
- (void)resetWithCompletionHandler:(id)a3;
- (void)suspendWithCompletionHandler:(id)a3;
- (void)truncateWithCompletionHandler:(id)a3;
@end

@implementation FileWriteStreamAdapter

- (FileWriteStreamAdapter)initWithDownloadPath:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = FileWriteStreamAdapter;
  v6 = [(FileWriteStreamAdapter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_downloadPath, a3);
  }

  return v7;
}

- (void)consumeData:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  verifier = self->_verifier;
  if (verifier)
  {
    v12 = 0;
    v9 = [(DigestVerifier *)verifier verifyData:v6 error:&v12];
    v10 = v12;
    if (!v9)
    {
      v7[2](v7, v10, 0);
      goto LABEL_9;
    }
  }

  else
  {
    v10 = 0;
  }

  if (-[NSOutputStream write:maxLength:](self->_outputStream, "write:maxLength:", [v6 bytes], objc_msgSend(v6, "length")) == -1)
  {
    v11 = [(NSOutputStream *)self->_outputStream streamError];
  }

  else
  {
    v11 = 0;
    self->_savedBytes += [v6 length];
  }

  v7[2](v7, v11, 0);

LABEL_9:
}

- (void)finishWithCompletionHandler:(id)a3
{
  v4 = a3;
  verifier = self->_verifier;
  if (verifier)
  {
    v10 = 0;
    v6 = [(DigestVerifier *)verifier finalAndVerifyError:&v10];
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
  (v4)[2](v4, v9);
}

- (void)prepareWithCompletionHandler:(id)a3
{
  v4 = a3;
  if (self->_digest)
  {
    v5 = [[DigestVerifier alloc] initWithChunkedDigest:self->_digest resumptionOffset:0];
    verifier = self->_verifier;
    self->_verifier = v5;
  }

  self->_savedBytes = 0;
  v7 = [NSFileHandle fileHandleForUpdatingAtPath:self->_downloadPath];
  if (v7)
  {
    if ([(ChunkedDigest *)self->_digest chunkSize])
    {
      if (qword_1003D4AB8 != -1)
      {
        sub_1002D185C();
      }

      v8 = off_1003CBBA8;
      if (os_log_type_enabled(off_1003CBBA8, OS_LOG_TYPE_DEFAULT))
      {
        logKey = self->_logKey;
        downloadPath = self->_downloadPath;
        *buf = 138543618;
        v44 = logKey;
        v45 = 2114;
        v46 = downloadPath;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Validating existing partial download: %{public}@", buf, 0x16u);
      }

      while (1)
      {
        v11 = [(ChunkedDigest *)self->_digest chunkSize];
        v42 = 0;
        v12 = [v7 readDataUpToLength:v11 error:&v42];
        v13 = v42;
        if (v13)
        {
          break;
        }

        v14 = [v12 length];
        if (v14 != [(ChunkedDigest *)self->_digest chunkSize])
        {
          break;
        }

        v15 = self->_verifier;
        v41 = 0;
        v16 = [(DigestVerifier *)v15 verifyData:v12 error:&v41];

        if ((v16 & 1) == 0)
        {
          goto LABEL_18;
        }
      }
    }

    else
    {
      if (qword_1003D4AB8 != -1)
      {
        sub_1002D185C();
      }

      v17 = off_1003CBBA8;
      if (os_log_type_enabled(off_1003CBBA8, OS_LOG_TYPE_DEFAULT))
      {
        v18 = self->_logKey;
        v19 = self->_downloadPath;
        *buf = 138543618;
        v44 = v18;
        v45 = 2114;
        v46 = v19;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[%{public}@] Not validating existing partial download because chunkSize is zero: %{public}@", buf, 0x16u);
      }
    }

LABEL_18:
    v20 = [(DigestVerifier *)self->_verifier bytesValidated];
    v40 = 0;
    v21 = [v7 truncateAtOffset:v20 error:&v40];
    v22 = v40;
    if (v21)
    {
      self->_savedBytes = [(DigestVerifier *)self->_verifier bytesValidated];
      if (qword_1003D4AB8 != -1)
      {
        sub_1002D1870();
      }

      v23 = off_1003CBBA8;
      if (os_log_type_enabled(off_1003CBBA8, OS_LOG_TYPE_DEFAULT))
      {
        v24 = self->_logKey;
        savedBytes = self->_savedBytes;
        v26 = self->_downloadPath;
        *buf = 138543874;
        v44 = v24;
        v45 = 2048;
        v46 = savedBytes;
        v47 = 2114;
        v48 = v26;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "[%{public}@] Validated %llu bytes at: %{public}@", buf, 0x20u);
      }
    }

    else
    {
      if (qword_1003D4AB8 != -1)
      {
        sub_1002D1870();
      }

      if (os_log_type_enabled(off_1003CBBA8, OS_LOG_TYPE_ERROR))
      {
        sub_1002D1898();
      }
    }

    v39 = 0;
    v27 = [v7 closeAndReturnError:&v39];
    v28 = v39;
    if ((v27 & 1) == 0)
    {
      if (qword_1003D4AB8 != -1)
      {
        sub_1002D1870();
      }

      if (os_log_type_enabled(off_1003CBBA8, OS_LOG_TYPE_ERROR))
      {
        sub_1002D1904();
      }
    }

    if (v22 | v28)
    {
      v29 = +[NSFileManager defaultManager];
      v30 = self->_downloadPath;
      v38 = 0;
      [v29 removeItemAtPath:v30 error:&v38];
      v31 = v38;

      if (v31)
      {
        if (qword_1003D4AB8 != -1)
        {
          sub_1002D1870();
        }

        if (os_log_type_enabled(off_1003CBBA8, OS_LOG_TYPE_FAULT))
        {
          sub_1002D1970();
        }
      }

      else
      {
        if (qword_1003D4AB8 != -1)
        {
          sub_1002D1870();
        }

        v32 = off_1003CBBA8;
        if (os_log_type_enabled(off_1003CBBA8, OS_LOG_TYPE_DEFAULT))
        {
          v33 = self->_logKey;
          v34 = self->_downloadPath;
          *buf = 138543618;
          v44 = v33;
          v45 = 2114;
          v46 = v34;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "[%{public}@] Deleted partially downloaded file due to previous errors: %{public}@", buf, 0x16u);
        }
      }
    }
  }

  v35 = [NSOutputStream outputStreamToFileAtPath:self->_downloadPath append:self->_savedBytes != 0];
  outputStream = self->_outputStream;
  self->_outputStream = v35;

  [(NSOutputStream *)self->_outputStream open];
  v37 = [(NSOutputStream *)self->_outputStream streamError];
  v4[2](v4, self->_savedBytes, v37);
}

- (void)suspendWithCompletionHandler:(id)a3
{
  outputStream = self->_outputStream;
  v4 = a3;
  [(NSOutputStream *)outputStream close];
  v4[2](v4, 0);
}

- (void)truncateWithCompletionHandler:(id)a3
{
  outputStream = self->_outputStream;
  v5 = a3;
  [(NSOutputStream *)outputStream close];
  v6 = +[NSFileManager defaultManager];
  downloadPath = self->_downloadPath;
  v9 = 0;
  [v6 removeItemAtPath:downloadPath error:&v9];
  v8 = v9;

  v5[2](v5, v8);
}

- (void)resetWithCompletionHandler:(id)a3
{
  outputStream = self->_outputStream;
  v4 = a3;
  [(NSOutputStream *)outputStream close];
  v4[2](v4, 0);
}

@end
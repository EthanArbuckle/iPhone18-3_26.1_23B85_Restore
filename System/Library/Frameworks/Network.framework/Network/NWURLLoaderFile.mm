@interface NWURLLoaderFile
- (NWURLError)errorForErrorCode:(int)code withPOSIXCode:;
- (OS_nw_connection)underlyingConnection;
- (void)readDataOfMinimumIncompleteLength:(unint64_t)length maximumLength:(unint64_t)maximumLength completionHandler:(id)handler;
- (void)readResponse:(id)response;
- (void)setError:(uint64_t)error;
- (void)start:(id)start;
- (void)stop;
- (void)writeData:(id)data complete:(BOOL)complete completionHandler:(id)handler;
@end

@implementation NWURLLoaderFile

- (OS_nw_connection)underlyingConnection
{
  result = _os_crash();
  __break(1u);
  return result;
}

- (void)writeData:(id)data complete:(BOOL)complete completionHandler:(id)handler
{
  dataCopy = data;
  handlerCopy = handler;
  _os_crash();
  __break(1u);
}

- (void)readDataOfMinimumIncompleteLength:(unint64_t)length maximumLength:(unint64_t)maximumLength completionHandler:(id)handler
{
  handlerCopy = handler;
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x3032000000;
  v16[3] = __Block_byref_object_copy__45462;
  v16[4] = __Block_byref_object_dispose__45463;
  v8 = MEMORY[0x1E69E9668];
  v9 = MEMORY[0x1E69E9668];
  v17 = v8;
  if (self)
  {
    v10 = self->_io;
    queue = self->_queue;
  }

  else
  {
    v10 = 0;
    queue = 0;
  }

  io_handler[0] = MEMORY[0x1E69E9820];
  io_handler[1] = 3221225472;
  io_handler[2] = __85__NWURLLoaderFile_readDataOfMinimumIncompleteLength_maximumLength_completionHandler___block_invoke;
  io_handler[3] = &unk_1E6A332F8;
  if (length <= 0x4000)
  {
    length = 0x4000;
  }

  io_handler[4] = self;
  v14 = handlerCopy;
  v15 = v16;
  v12 = handlerCopy;
  dispatch_io_read(v10, 0, length, queue, io_handler);

  _Block_object_dispose(v16, 8);
}

void __85__NWURLLoaderFile_readDataOfMinimumIncompleteLength_maximumLength_completionHandler___block_invoke(uint64_t *a1, int a2, void *a3, int a4)
{
  v7 = a3;
  data = v7;
  if (v7)
  {
    concat = dispatch_data_create_concat(*(*(a1[6] + 8) + 40), v7);
    v9 = *(a1[6] + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = concat;

    if (a2)
    {
      v11 = a1[5];
      v12 = *(*(a1[6] + 8) + 40);
      v13 = dispatch_data_get_size(data) == 0;
      (*(v11 + 16))(v11, v12, v13, 0);
    }
  }

  else
  {
    v14 = -1101;
    v15 = -3001;
    if (a4 == 13)
    {
      v15 = -1102;
    }

    if (a4 != 21)
    {
      v14 = v15;
    }

    if (a4 == 2)
    {
      v16 = -1100;
    }

    else
    {
      v16 = v14;
    }

    v17 = a1[5];
    v18 = [(NWURLLoaderFile *)a1[4] errorForErrorCode:v16 withPOSIXCode:a4];
    (*(v17 + 16))(v17, 0, 1, v18);
  }
}

- (NWURLError)errorForErrorCode:(int)code withPOSIXCode:
{
  if (self)
  {
    v5 = [[NWURLError alloc] initWithErrorCode:a2];
    if (code)
    {
      v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:code userInfo:0];
      [(NWURLError *)v5 setUnderlyingError:v6];
    }

    [(NWURLError *)v5 setFailingURL:*(self + 8)];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)readResponse:(id)response
{
  responseCopy = response;
  v5 = responseCopy;
  if (self)
  {
    if (self->_error)
    {
      (*(responseCopy + 2))(responseCopy, 0);
      goto LABEL_10;
    }

    URL = self->_URL;
  }

  else
  {
    URL = 0;
  }

  v19 = 0;
  v7 = *MEMORY[0x1E695DAA0];
  v8 = URL;
  [(NSURL *)v8 getResourceValue:&v19 forKey:v7 error:0];
  v9 = v19;

  preferredMIMEType = [v9 preferredMIMEType];
  if (!preferredMIMEType)
  {
    Helper_x8__UTTypePlainText = gotLoadHelper_x8__UTTypePlainText(v11);
    v18 = *(v17 + 3912);
    preferredMIMEType = *v18;
    if (*v18)
    {
      if ([v9 isSubtypeOfType:{*v18, Helper_x8__UTTypePlainText}])
      {
        preferredMIMEType = [preferredMIMEType preferredMIMEType];
      }

      else
      {
        preferredMIMEType = 0;
      }
    }
  }

  v12 = objc_alloc(MEMORY[0x1E695AC70]);
  if (self)
  {
    v13 = self->_URL;
    if ((self->_fileSize & 0x8000000000000000) != 0)
    {
      fileSize = -1;
    }

    else
    {
      fileSize = self->_fileSize;
    }
  }

  else
  {
    v13 = 0;
    fileSize = 0;
  }

  v15 = [v12 initWithURL:v13 MIMEType:preferredMIMEType expectedContentLength:fileSize textEncodingName:0];
  (v5)[2](v5, v15, 0);

LABEL_10:
}

- (void)stop
{
  if (self)
  {
    io = self->_io;
    if (io)
    {
      dispatch_io_close(io, 1uLL);
      v4 = self->_io;
      self->_io = 0;
    }
  }
}

- (void)start:(id)start
{
  v39 = *MEMORY[0x1E69E9840];
  startCopy = start;
  if (self)
  {
    URL = self->_URL;
  }

  else
  {
    URL = 0;
  }

  v6 = URL;
  v7 = open([(NSURL *)v6 fileSystemRepresentation], 0);
  v8 = v7;
  if ((v7 & 0x80000000) == 0)
  {
    memset(&v34, 0, sizeof(v34));
    if (fstat(v7, &v34))
    {
      v27 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
      v28 = -1101;
      v29 = -3001;
      if (v27 == 13)
      {
        v29 = -1102;
      }

      if (v27 != 21)
      {
        v28 = v29;
      }

      if (v27 == 2)
      {
        v30 = -1100;
      }

      else
      {
        v30 = v28;
      }

      v31 = [(NWURLLoaderFile *)self errorForErrorCode:v30 withPOSIXCode:v27];
      [(NWURLLoaderFile *)self setError:v31];

      goto LABEL_17;
    }

    if (self)
    {
      self->_fileSize = v34.st_size;
      v9 = self->_expectedDevice;
      if (v9)
      {
        v10 = v9;
        st_dev = v34.st_dev;
        LOBYTE(st_dev) = st_dev == [(NSNumber *)self->_expectedDevice intValue];

        if ((st_dev & 1) == 0)
        {
          if (__nwlog_url_log::onceToken != -1)
          {
            dispatch_once(&__nwlog_url_log::onceToken, &__block_literal_global_72);
          }

          v18 = gurlLogObj;
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            intValue = [(NSNumber *)self->_expectedDevice intValue];
            *buf = 138412546;
            v36 = v6;
            v37 = 1024;
            v38 = intValue;
            _os_log_impl(&dword_181A37000, v18, OS_LOG_TYPE_ERROR, "File %@ not on the expected device %d", buf, 0x12u);
          }

          v20 = [[NWURLError alloc] initWithErrorCode:-1104];
          [(NWURLError *)v20 setFailingURL:self->_URL];
          error = self->_error;
          self->_error = v20;

          goto LABEL_17;
        }
      }

      queue = self->_queue;
    }

    else
    {
      queue = 0;
    }

    v13 = queue;
    cleanup_handler[0] = MEMORY[0x1E69E9820];
    cleanup_handler[1] = 3221225472;
    cleanup_handler[2] = __25__NWURLLoaderFile_start___block_invoke;
    cleanup_handler[3] = &__block_descriptor_36_e8_v12__0i8l;
    v33 = v8;
    v14 = dispatch_io_create(0, v8, v13, cleanup_handler);
    if (self)
    {
      io = self->_io;
      p_io = &self->_io;
      *p_io = v14;

      v17 = *p_io;
    }

    else
    {

      v17 = 0;
    }

    dispatch_io_set_low_water(v17, 0xFFFFFFFFFFFFFFFFLL);
LABEL_17:
    startCopy[2](startCopy);
    goto LABEL_18;
  }

  v22 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
  v23 = -1101;
  v24 = -3001;
  if (v22 == 13)
  {
    v24 = -1102;
  }

  if (v22 != 21)
  {
    v23 = v24;
  }

  if (v22 == 2)
  {
    v25 = -1100;
  }

  else
  {
    v25 = v23;
  }

  v26 = [(NWURLLoaderFile *)self errorForErrorCode:v25 withPOSIXCode:v22];
  [(NWURLLoaderFile *)self setError:v26];

  startCopy[2](startCopy);
LABEL_18:
}

- (void)setError:(uint64_t)error
{
  if (error)
  {
    objc_storeStrong((error + 48), a2);
  }
}

uint64_t __25__NWURLLoaderFile_start___block_invoke(uint64_t a1, int a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (a2 && gLogDatapath == 1)
  {
    v5 = a1;
    if (__nwlog_url_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_url_log::onceToken, &__block_literal_global_72);
    }

    v3 = gurlLogObj;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446466;
      v7 = "[NWURLLoaderFile start:]_block_invoke";
      v8 = 1024;
      v9 = a2;
      _os_log_impl(&dword_181A37000, v3, OS_LOG_TYPE_DEBUG, "%{public}s Failed to read file %{errno}d", buf, 0x12u);
    }

    a1 = v5;
  }

  return close(*(a1 + 32));
}

@end
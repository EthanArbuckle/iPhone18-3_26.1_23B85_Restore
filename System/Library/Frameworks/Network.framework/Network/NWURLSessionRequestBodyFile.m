@interface NWURLSessionRequestBodyFile
- (int64_t)countOfBytesSent;
- (void)close;
- (void)readMinimumIncompleteLength:(unint64_t)a3 maximumLength:(unint64_t)a4 completionHandler:(id)a5;
@end

@implementation NWURLSessionRequestBodyFile

- (void)close
{
  if (self)
  {
    io = self->_io;
    if (io)
    {
      dispatch_io_close(io, 1uLL);
    }
  }
}

- (void)readMinimumIncompleteLength:(unint64_t)a3 maximumLength:(unint64_t)a4 completionHandler:(id)a5
{
  v7 = a5;
  if (self && (error = self->_error, error))
  {
    v9 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:error userInfo:0];
    v10 = [[NWURLError alloc] initWithErrorCode:-3001];
    [(NWURLError *)v10 setUnderlyingError:v9];
    v7[2](v7, 0, 1, v10);
  }

  else
  {
    v18[0] = 0;
    v18[1] = v18;
    v18[2] = 0x3032000000;
    v18[3] = __Block_byref_object_copy__15258;
    v18[4] = __Block_byref_object_dispose__15259;
    v11 = MEMORY[0x1E69E9668];
    v12 = MEMORY[0x1E69E9668];
    v19 = v11;
    if (self)
    {
      v13 = self->_io;
      queue = self->_queue;
    }

    else
    {
      v13 = 0;
      queue = 0;
    }

    if (a3 <= 0x4000)
    {
      a3 = 0x4000;
    }

    io_handler[0] = MEMORY[0x1E69E9820];
    io_handler[1] = 3221225472;
    io_handler[2] = __91__NWURLSessionRequestBodyFile_readMinimumIncompleteLength_maximumLength_completionHandler___block_invoke;
    io_handler[3] = &unk_1E6A332F8;
    io_handler[4] = self;
    v16 = v7;
    v17 = v18;
    dispatch_io_read(v13, 0, a3, queue, io_handler);

    _Block_object_dispose(v18, 8);
  }
}

void __91__NWURLSessionRequestBodyFile_readMinimumIncompleteLength_maximumLength_completionHandler___block_invoke(void *a1, int a2, void *a3, int a4)
{
  v7 = a3;
  data2 = v7;
  if (v7)
  {
    size = dispatch_data_get_size(v7);
    v9 = size;
    v10 = a1[4];
    if (v10)
    {
      *(v10 + 32) += size;
    }

    concat = dispatch_data_create_concat(*(*(a1[6] + 8) + 40), data2);
    v12 = *(a1[6] + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = concat;

    if (a2)
    {
      (*(a1[5] + 16))(a1[5], *(*(a1[6] + 8) + 40), v9 == 0, 0);
    }
  }

  else
  {
    v14 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:a4 userInfo:0];
    v15 = [[NWURLError alloc] initWithErrorCode:-3001];
    [(NWURLError *)v15 setUnderlyingError:v14];
    (*(a1[5] + 16))();
  }
}

- (int64_t)countOfBytesSent
{
  if (self)
  {
    return *(self + 32);
  }

  return self;
}

uint64_t __60__NWURLSessionRequestBodyFile_initWithFileURL_offset_queue___block_invoke(uint64_t a1, int a2)
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
      v7 = "[NWURLSessionRequestBodyFile initWithFileURL:offset:queue:]_block_invoke";
      v8 = 1024;
      v9 = a2;
      _os_log_impl(&dword_181A37000, v3, OS_LOG_TYPE_DEBUG, "%{public}s Failed to read file %{errno}d", buf, 0x12u);
    }

    a1 = v5;
  }

  return close(*(a1 + 32));
}

@end
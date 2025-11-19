@interface SecAsyncPiper
- (SecAsyncPiper)initWithError:(id *)a3;
- (id)dictWithError:(id *)a3;
- (id)xpcFd;
- (void)moreData;
- (void)waitAndReleaseFd_ForTestingOnly;
@end

@implementation SecAsyncPiper

- (id)dictWithError:(id *)a3
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__885;
  v19 = __Block_byref_object_dispose__886;
  v20 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__885;
  v13 = __Block_byref_object_dispose__886;
  v14 = 0;
  v5 = [(SecAsyncPiper *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31__SecAsyncPiper_dictWithError___block_invoke;
  block[3] = &unk_1E70D6D78;
  block[4] = self;
  block[5] = &v15;
  block[6] = &v9;
  dispatch_sync(v5, block);

  if (a3)
  {
    *a3 = v10[5];
  }

  v6 = v16[5];
  _Block_object_dispose(&v9, 8);

  _Block_object_dispose(&v15, 8);

  return v6;
}

void __31__SecAsyncPiper_dictWithError___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E696ACB0];
  v3 = [*(a1 + 32) bigData];
  v4 = *(*(a1 + 48) + 8);
  obj = *(v4 + 40);
  v5 = [v2 JSONObjectWithData:v3 options:0 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (void)waitAndReleaseFd_ForTestingOnly
{
  v3 = dispatch_semaphore_create(0);
  [(SecAsyncPiper *)self setSemaForTestingOnly:v3];

  [(SecAsyncPiper *)self moreData];
  v4 = [(SecAsyncPiper *)self semaForTestingOnly];
  dispatch_semaphore_wait(v4, 0xFFFFFFFFFFFFFFFFLL);

  [(SecAsyncPiper *)self setWriteXpcFd:0];
  v5 = [(SecAsyncPiper *)self semaForTestingOnly];
  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
}

- (id)xpcFd
{
  [(SecAsyncPiper *)self moreData];

  return [(SecAsyncPiper *)self writeXpcFd];
}

- (void)moreData
{
  v3 = [(SecAsyncPiper *)self queue];
  objc_initWeak(&location, self);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __25__SecAsyncPiper_moreData__block_invoke;
  v4[3] = &unk_1E70E0AD0;
  objc_copyWeak(&v5, &location);
  dispatch_async(v3, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __25__SecAsyncPiper_moreData__block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = secLogObjForScope("SecAsyncPiper");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v19[0]) = 0;
    _os_log_debug_impl(&dword_1887D2000, v2, OS_LOG_TYPE_DEBUG, "Attempting to read data...", v19, 2u);
  }

  v3 = [WeakRetained semaForTestingOnly];

  if (v3)
  {
    v4 = [WeakRetained semaForTestingOnly];
    dispatch_semaphore_signal(v4);
  }

  v5 = [WeakRetained readHandle];
  v6 = [v5 availableData];

  v7 = secLogObjForScope("SecAsyncPiper");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v18 = [v6 length];
    v19[0] = 67109120;
    v19[1] = v18;
    _os_log_debug_impl(&dword_1887D2000, v7, OS_LOG_TYPE_DEBUG, "Read %u bytes", v19, 8u);
  }

  if (v6 && [v6 length])
  {
    v8 = [WeakRetained bigData];
    [v8 appendData:v6];

    v9 = [WeakRetained bigData];
    v10 = [v9 length];

    v11 = [WeakRetained bigData];
    LODWORD(v10) = *([v11 bytes] + v10 - 1);

    if (v10)
    {
      [WeakRetained moreData];
    }

    else
    {
      v12 = [WeakRetained bigData];
      v13 = [v12 length] - 1;
      v14 = [WeakRetained bigData];
      [v14 setLength:v13];
    }
  }

  v15 = [WeakRetained semaForTestingOnly];

  if (v15)
  {
    v16 = [WeakRetained semaForTestingOnly];
    dispatch_semaphore_signal(v16);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (SecAsyncPiper)initWithError:(id *)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v21.receiver = self;
  v21.super_class = SecAsyncPiper;
  v4 = [(SecAsyncPiper *)&v21 init];
  if (!v4)
  {
    goto LABEL_17;
  }

  *fd = -1;
  if (g_failPipe)
  {
    v5 = 1;
    goto LABEL_6;
  }

  if (pipe(fd))
  {
    v5 = *__error();
    if (v5)
    {
LABEL_6:
      v6 = secLogObjForScope("SecError");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v23 = v5;
        v7 = "Could not create pipe: %d";
LABEL_8:
        _os_log_impl(&dword_1887D2000, v6, OS_LOG_TYPE_DEFAULT, v7, buf, 8u);
        goto LABEL_9;
      }

      goto LABEL_9;
    }
  }

  v9 = objc_alloc(MEMORY[0x1E696AC00]);
  v10 = [v9 initWithFileDescriptor:fd[0] closeOnDealloc:1];
  readHandle = v4->_readHandle;
  v4->_readHandle = v10;

  if (g_failXpcFdWrapping)
  {
    v12 = 0;
  }

  else
  {
    v12 = xpc_fd_create(fd[1]);
  }

  writeXpcFd = v4->_writeXpcFd;
  v4->_writeXpcFd = v12;

  close(fd[1]);
  if (v4->_writeXpcFd)
  {
    v14 = [MEMORY[0x1E695DF88] dataWithCapacity:0];
    bigData = v4->_bigData;
    v4->_bigData = v14;

    v16 = dispatch_queue_create("SecAsyncPiper", 0);
    queue = v4->_queue;
    v4->_queue = v16;

    semaForTestingOnly = v4->_semaForTestingOnly;
    v4->_semaForTestingOnly = 0;

LABEL_17:
    v8 = v4;
    goto LABEL_18;
  }

  if (g_failXpcFdWrapping)
  {
    v5 = 1;
  }

  else
  {
    v5 = *__error();
  }

  v6 = secLogObjForScope("SecError");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v23 = v5;
    v7 = "Could not box FD: %d";
    goto LABEL_8;
  }

LABEL_9:

  if (a3)
  {
    *a3 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:v5 userInfo:0];
  }

  v8 = 0;
LABEL_18:

  v19 = *MEMORY[0x1E69E9840];
  return v8;
}

@end
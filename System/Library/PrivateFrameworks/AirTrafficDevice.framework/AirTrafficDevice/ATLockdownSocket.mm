@interface ATLockdownSocket
- (ATLockdownSocket)initWithLockdownInfo:(void *)info;
- (BOOL)open;
- (int)recv:(char *)recv offset:(unsigned int)offset len:(unsigned int)len error:(id *)error;
- (int)send:(const char *)send offset:(unsigned int)offset len:(unsigned int)len error:(id *)error;
- (void)_readLength:(unint64_t)length;
- (void)close;
- (void)writeData:(id)data withCompletion:(id)completion;
@end

@implementation ATLockdownSocket

- (void)_readLength:(unint64_t)length
{
  if (self->_connection)
  {
    v4 = lockdown_recv();
    if (v4 >= 1)
    {

      [(ATSocket *)self notifyHasDataAvailable:self->_readBuffer length:v4];
    }
  }
}

- (int)recv:(char *)recv offset:(unsigned int)offset len:(unsigned int)len error:(id *)error
{
  v11 = 0;
  do
  {
    if (self->_connection)
    {
      v12 = v11 >= len;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      break;
    }

    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v22 = 0;
    socketRWQueue = self->_socketRWQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __42__ATLockdownSocket_recv_offset_len_error___block_invoke;
    block[3] = &unk_2784E54F8;
    block[4] = self;
    block[5] = &v19;
    block[6] = recv;
    offsetCopy = offset;
    lenCopy = len;
    dispatch_sync(socketRWQueue, block);
    v14 = *(v20 + 6);
    if (v14 <= 0)
    {
      if (error)
      {
        *error = [MEMORY[0x277CE5418] errorWithPosixError:*__error() format:{@"%@: lockdown_recv returned an error: %d", self, *(v20 + 6)}];
      }
    }

    else
    {
      v11 += v14;
    }

    _Block_object_dispose(&v19, 8);
  }

  while (v14 > 0);
  return v11;
}

uint64_t __42__ATLockdownSocket_recv_offset_len_error___block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 65664);
  if (result)
  {
    result = lockdown_recv();
    *(*(*(a1 + 40) + 8) + 24) = result;
  }

  return result;
}

- (int)send:(const char *)send offset:(unsigned int)offset len:(unsigned int)len error:(id *)error
{
  v11 = 0;
  do
  {
    if (self->_connection)
    {
      v12 = v11 >= len;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      break;
    }

    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v22 = 0;
    socketRWQueue = self->_socketRWQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __42__ATLockdownSocket_send_offset_len_error___block_invoke;
    block[3] = &unk_2784E54F8;
    block[4] = self;
    block[5] = &v19;
    block[6] = send;
    offsetCopy = offset;
    lenCopy = len;
    dispatch_sync(socketRWQueue, block);
    v14 = *(v20 + 6);
    if (v14 <= 0)
    {
      if (error)
      {
        *error = [MEMORY[0x277CE5418] errorWithPosixError:*__error() format:{@"%@: lockdown_send returned an error: %d", self, *(v20 + 6)}];
      }
    }

    else
    {
      v11 += v14;
    }

    _Block_object_dispose(&v19, 8);
  }

  while (v14 > 0);
  return v11;
}

uint64_t __42__ATLockdownSocket_send_offset_len_error___block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 65664);
  if (result)
  {
    result = lockdown_send();
    *(*(*(a1 + 40) + 8) + 24) = result;
  }

  return result;
}

- (void)writeData:(id)data withCompletion:(id)completion
{
  dataCopy = data;
  completionCopy = completion;
  v8 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__ATLockdownSocket_writeData_withCompletion___block_invoke;
  block[3] = &unk_2784E58C0;
  block[4] = self;
  v12 = dataCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = dataCopy;
  dispatch_async(v8, block);
}

void __45__ATLockdownSocket_writeData_withCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) bytes];
  v4 = [*(a1 + 40) length];
  v8 = 0;
  LODWORD(v2) = [v2 send:v3 offset:0 len:v4 error:&v8];
  v5 = v8;
  v6 = *(a1 + 48);
  if ([*(a1 + 40) length] == v2)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  (*(v6 + 16))(v6, v7);
}

- (void)close
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = _ATLogCategoryiTunesSync();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_223819000, v3, OS_LOG_TYPE_DEFAULT, "Closing lockdown socket %{public}@", buf, 0xCu);
  }

  recvSource = self->_recvSource;
  if (recvSource)
  {
    dispatch_source_cancel(recvSource);
    v5 = self->_recvSource;
    self->_recvSource = 0;
  }

  socketRWQueue = self->_socketRWQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __25__ATLockdownSocket_close__block_invoke;
  block[3] = &unk_2784E5938;
  block[4] = self;
  dispatch_sync(socketRWQueue, block);
}

uint64_t __25__ATLockdownSocket_close__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = *(v2 + 65664);
  if (result)
  {
    result = lockdown_disconnect();
    v2 = *(a1 + 32);
  }

  *(v2 + 65664) = 0;
  return result;
}

- (BOOL)open
{
  v29 = *MEMORY[0x277D85DE8];
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277D829F8], self->_lockdownInfo);
  v24 = 0;
  v4 = secure_lockdown_checkin();
  if (v4)
  {
    v5 = _ATLogCategoryiTunesSync();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *v26 = v4;
      _os_log_impl(&dword_223819000, v5, OS_LOG_TYPE_ERROR, "error:%d checking in with lockdown", buf, 8u);
    }
  }

  else
  {
    v5 = v24;
    v6 = _ATLogCategoryiTunesSync();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      socket = lockdown_get_socket();
      securecontext = lockdown_get_securecontext();
      v9 = "";
      *buf = 67109634;
      *v26 = socket;
      if (!securecontext)
      {
        v9 = "out";
      }

      *&v26[4] = 2080;
      *&v26[6] = v9;
      v27 = 2114;
      v28 = v24;
      _os_log_impl(&dword_223819000, v6, OS_LOG_TYPE_DEFAULT, "Checked in with lockdown on socket %d with%s SSL. connectionInfo=%{public}@", buf, 0x1Cu);
    }

    v10 = [v24 objectForKey:*MEMORY[0x277D82A00]];
    longLongValue = [v10 longLongValue];

    self->_isWifiConnection = longLongValue == 3;
    if ([(ATSocket *)self socketMode]== 1)
    {
      v12 = lockdown_get_socket();
      v13 = dispatch_source_create(MEMORY[0x277D85D28], v12, 0, self->_socketRWQueue);
      objc_initWeak(buf, self);
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __24__ATLockdownSocket_open__block_invoke;
      handler[3] = &unk_2784E54A8;
      v14 = v13;
      v22 = v14;
      objc_copyWeak(&v23, buf);
      dispatch_source_set_event_handler(v14, handler);
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __24__ATLockdownSocket_open__block_invoke_2;
      v19[3] = &unk_2784E54D0;
      objc_copyWeak(&v20, buf);
      dispatch_source_set_cancel_handler(v14, v19);
      recvSource = self->_recvSource;
      self->_recvSource = v14;
      v16 = v14;

      dispatch_resume(self->_recvSource);
      objc_destroyWeak(&v20);
      objc_destroyWeak(&v23);

      objc_destroyWeak(buf);
    }
  }

  CFRelease(Mutable);
  v17 = _ATLogCategoryiTunesSync();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    *v26 = self;
    _os_log_impl(&dword_223819000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ opened", buf, 0xCu);
  }

  return v4 == 0;
}

void __24__ATLockdownSocket_open__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (dispatch_source_get_data(v2))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained _readLength:dispatch_source_get_data(*(a1 + 32))];
  }

  else
  {

    dispatch_source_cancel(v2);
  }
}

void __24__ATLockdownSocket_open__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained notifySocketDidClose];
}

- (ATLockdownSocket)initWithLockdownInfo:(void *)info
{
  v11.receiver = self;
  v11.super_class = ATLockdownSocket;
  v4 = [(ATSocket *)&v11 init];
  v5 = v4;
  if (v4)
  {
    v4->_lockdownInfo = info;
    v6 = dispatch_queue_create("com.apple.atc-ATMessageLink-worker", 0);
    socketRWQueue = v5->_socketRWQueue;
    v5->_socketRWQueue = v6;

    v8 = v5->_socketRWQueue;
    v9 = dispatch_get_global_queue(-32768, 0);
    dispatch_set_target_queue(v8, v9);
  }

  return v5;
}

@end
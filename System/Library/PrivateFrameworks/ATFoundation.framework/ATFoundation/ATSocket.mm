@interface ATSocket
+ (id)createBoundPair:(id)a3[2];
- (ATSocket)init;
- (ATSocket)initWithCoder:(id)a3;
- (BOOL)open;
- (BOOL)writeAllData:(id)a3 error:(id *)a4;
- (id)_flush;
- (id)description;
- (id)flush;
- (int)_send:(const char *)a3 offset:(unsigned int)a4 len:(unsigned int)a5 error:(id *)a6;
- (int)recv:(char *)a3 offset:(unsigned int)a4 len:(unsigned int)a5 error:(id *)a6;
- (int)send:(const char *)a3 offset:(unsigned int)a4 len:(unsigned int)a5 error:(id *)a6;
- (void)addDelegate:(id)a3;
- (void)close;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)notifyHasDataAvailable:(const char *)a3 length:(int64_t)a4;
- (void)notifySocketDidClose;
- (void)removeDelegate:(id)a3;
- (void)removeTransportUpgradeException;
- (void)setWriteBufferSize:(unsigned int)a3;
- (void)writeData:(id)a3 withCompletion:(id)a4;
@end

@implementation ATSocket

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = xpc_fd_create(self->_descriptor);
    [v5 encodeXPCObject:v4 forKey:@"fd"];
  }
}

- (ATSocket)initWithCoder:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(ATSocket *)self init];
    if (v5)
    {
      v6 = [v4 decodeXPCObjectOfType:MEMORY[0x277D86488] forKey:@"fd"];
      v5->_descriptor = xpc_fd_dup(v6);
    }

    self = v5;
    v7 = self;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_flush
{
  v3 = &self->_readBuffer[65512];
  memset(&v12, 0, sizeof(v12));
  descriptor = self->_descriptor;
  if (__darwin_check_fd_set_overflow(descriptor, &v12, 0))
  {
    *(v12.fds_bits + ((descriptor >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << descriptor;
  }

  v11 = xmmword_22394E530;
  if (*(v3 + 8))
  {
    v5 = 0;
    while (1)
    {
      v6 = select(*(v3 + 18) + 1, 0, &v12, 0, &v11);
      if (v6)
      {
        if (v6 < 0)
        {
          [ATInternalError errorWithPosixError:*__error() format:@"%@: select write failed", self];
          v8 = LABEL_12:;
          goto LABEL_13;
        }

        v7 = send(*(v3 + 18), (*(v3 + 3) + v5), *(v3 + 8) - v5, 0);
        if (v7 <= 0)
        {
          [ATInternalError errorWithPosixError:*__error() format:@"%@: send failed", self];
          goto LABEL_12;
        }

        v8 = 0;
        v5 += v7;
        *(v3 + 5) += v7 & 0x7FFFFFFF;
      }

      else
      {
        v8 = [ATInternalError errorWithCode:2 format:@"%@: select write timed out", self];
      }

LABEL_13:
      if (v5 >= *(v3 + 8) || v8 != 0)
      {
        goto LABEL_19;
      }
    }
  }

  v8 = 0;
LABEL_19:
  *(v3 + 8) = 0;

  return v8;
}

- (int)_send:(const char *)a3 offset:(unsigned int)a4 len:(unsigned int)a5 error:(id *)a6
{
  v25 = *MEMORY[0x277D85DE8];
  if (a5)
  {
    v9 = 0;
    v10 = &self->_readBuffer[65512];
    v11 = &a3[a4];
    while (1)
    {
      v12 = *(v10 + 8);
      v13 = *(v10 + 20) - v12;
      v14 = a5 - v9 >= v13 ? v13 : a5 - v9;
      memcpy((*(v10 + 3) + v12), &v11[v9], v14);
      v15 = *(v10 + 8) + v14;
      *(v10 + 8) = v15;
      if (v15 >= *(v10 + 20))
      {
        v16 = [(ATSocket *)self _flush];
        if (v16)
        {
          break;
        }
      }

      v9 += v14;
      if (v9 >= a5)
      {
        goto LABEL_11;
      }
    }

    v18 = v16;
    v19 = _ATLogCategoryFramework();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v23 = 138543362;
      v24 = v18;
      _os_log_impl(&dword_22392A000, v19, OS_LOG_TYPE_ERROR, "failed to flush socket. err=%{public}@", &v23, 0xCu);
    }

    if (a6)
    {
      v17 = v18;
      *a6 = v18;
LABEL_17:
      v20 = v17;
      *a6 = v20;
      v18 = v20;
    }
  }

  else
  {
    v9 = 0;
LABEL_11:
    v17 = 0;
    v18 = 0;
    if (a6)
    {
      goto LABEL_17;
    }
  }

  v21 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)setWriteBufferSize:(unsigned int)a3
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __31__ATSocket_setWriteBufferSize___block_invoke;
  v4[3] = &unk_2784E9328;
  v5 = a3;
  v4[4] = self;
  dispatch_async(queue, v4);
}

void __31__ATSocket_setWriteBufferSize___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  if (*(a1 + 40) != *(*(a1 + 32) + 65616))
  {
    v2 = _ATLogCategoryFramework();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 40);
      v10 = 67109120;
      LODWORD(v11) = v3;
      _os_log_impl(&dword_22392A000, v2, OS_LOG_TYPE_DEFAULT, "setting writeBufferSize=%u", &v10, 8u);
    }

    if ([*(a1 + 32) isOpen] && (objc_msgSend(*(a1 + 32), "_flush"), (v4 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v5 = v4;
      v6 = _ATLogCategoryFramework();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v10 = 138543362;
        v11 = v5;
        _os_log_impl(&dword_22392A000, v6, OS_LOG_TYPE_ERROR, "failed to flush socket. err=%{public}@", &v10, 0xCu);
      }
    }

    else
    {
      *(*(a1 + 32) + 65616) = *(a1 + 40);
      v7 = *(a1 + 32);
      v8 = *(v7 + 65560);
      if (v8)
      {
        free(v8);
        v7 = *(a1 + 32);
      }

      *(*(a1 + 32) + 65560) = malloc_type_malloc(*(v7 + 65616), 0x100004077774924uLL);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)removeTransportUpgradeException
{
  transportUpdgradeExceptionCount = self->_transportUpdgradeExceptionCount;
  v3 = __OFSUB__(transportUpdgradeExceptionCount, 1);
  v4 = transportUpdgradeExceptionCount - 1;
  if (v4 < 0 == v3)
  {
    self->_transportUpdgradeExceptionCount = v4;
  }
}

- (void)notifyHasDataAvailable:(const char *)a3 length:(int64_t)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = self;
  objc_sync_enter(v6);
  v7 = [(NSMutableArray *)v6->_delegates copy];
  objc_sync_exit(v6);

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = *v16;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v15 + 1) + 8 * v11);
        if (v12)
        {
          v13 = *(*(&v15 + 1) + 8 * v11);
          if (objc_opt_respondsToSelector())
          {
            [v12 socket:v6 hasDataAvailable:a3 length:{a4, v15}];
          }
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)notifySocketDidClose
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSMutableArray *)v2->_delegates copy];
  objc_sync_exit(v2);

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 socketDidClose:{v2, v10}];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (id)flush
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy_;
  v10 = __Block_byref_object_dispose_;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __17__ATSocket_flush__block_invoke;
  v5[3] = &unk_2784E94F8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __17__ATSocket_flush__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _flush];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (int)recv:(char *)a3 offset:(unsigned int)a4 len:(unsigned int)a5 error:(id *)a6
{
  v10 = &self->_readBuffer[65512];
  memset(&v19, 0, sizeof(v19));
  descriptor = self->_descriptor;
  if (__darwin_check_fd_set_overflow(descriptor, &v19, 0))
  {
    *(v19.fds_bits + ((descriptor >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << descriptor;
  }

  v18 = xmmword_22394E540;
  v12 = 0;
  if (a5)
  {
    while (1)
    {
      v13 = select(*(v10 + 18) + 1, &v19, 0, 0, &v18);
      if (v13)
      {
        if (v13 < 0)
        {
          [ATInternalError errorWithPosixError:*__error() format:@"%@: select read failed", self];
        }

        else
        {
          v14 = recv(*(v10 + 18), &a3[a4 + v12], a5 - v12, 0);
          if (v14 > 0)
          {
            v15 = 0;
            v12 += v14;
            *(v10 + 6) += v14 & 0x7FFFFFFF;
            goto LABEL_12;
          }

          [ATInternalError errorWithPosixError:*__error() format:@"%@: recv failed", self];
        }
        v15 = ;
      }

      else
      {
        v15 = [ATInternalError errorWithCode:2 format:@"%@: select read timed out", self];
      }

LABEL_12:
      if (v12 >= a5 || v15)
      {
        goto LABEL_16;
      }
    }
  }

  v15 = 0;
LABEL_16:
  if (a6)
  {
    v15 = v15;
    *a6 = v15;
  }

  return v12;
}

- (int)send:(const char *)a3 offset:(unsigned int)a4 len:(unsigned int)a5 error:(id *)a6
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy_;
  v18 = __Block_byref_object_dispose_;
  v19 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__ATSocket_send_offset_len_error___block_invoke;
  block[3] = &unk_2784E8E50;
  block[4] = self;
  block[5] = &v20;
  v12 = a4;
  v13 = a5;
  block[6] = &v14;
  block[7] = a3;
  dispatch_sync(queue, block);
  if (a6)
  {
    v8 = v15[5];
    if (v8)
    {
      *a6 = v8;
    }
  }

  v9 = *(v21 + 6);
  _Block_object_dispose(&v14, 8);

  _Block_object_dispose(&v20, 8);
  return v9;
}

void __34__ATSocket_send_offset_len_error___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 64);
  v4 = *(a1 + 68);
  v5 = *(a1 + 56);
  v6 = *(*(a1 + 48) + 8);
  obj = *(v6 + 40);
  v7 = [v2 _send:v5 offset:v3 len:v4 error:&obj];
  objc_storeStrong((v6 + 40), obj);
  *(*(*(a1 + 40) + 8) + 24) = v7;
}

- (void)writeData:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__ATSocket_writeData_withCompletion___block_invoke;
  block[3] = &unk_2784E96A8;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

void __37__ATSocket_writeData_withCompletion___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isOpen])
  {
    v2 = [*(a1 + 40) length];
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) bytes];
    v5 = [*(a1 + 40) length];
    v9 = 0;
    LODWORD(v4) = [v3 _send:v4 offset:0 len:v5 error:&v9];
    v6 = v9;
    if (v2 != v4)
    {
      [*(a1 + 32) close];
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v7 = *(a1 + 48);
    v8 = [ATInternalError errorWithCode:3 format:@"socket closed"];
    (*(v7 + 16))(v7, v8);
  }
}

- (BOOL)writeAllData:(id)a3 error:(id *)a4
{
  v6 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy_;
  v18 = __Block_byref_object_dispose_;
  v19 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__ATSocket_writeAllData_error___block_invoke;
  block[3] = &unk_2784E9590;
  block[4] = self;
  v8 = v6;
  v12 = v8;
  v13 = &v14;
  dispatch_sync(queue, block);
  if (a4)
  {
    *a4 = v15[5];
  }

  v9 = v15[5] == 0;

  _Block_object_dispose(&v14, 8);
  return v9;
}

void __31__ATSocket_writeAllData_error___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isOpen])
  {
    v2 = [*(a1 + 40) length];
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) bytes];
    v5 = [*(a1 + 40) length];
    v6 = *(*(a1 + 48) + 8);
    obj = *(v6 + 40);
    LODWORD(v3) = [v3 _send:v4 offset:0 len:v5 error:&obj];
    objc_storeStrong((v6 + 40), obj);
    if (v2 != v3)
    {
      [*(a1 + 32) close];
    }
  }

  else
  {
    v7 = [ATInternalError errorWithCode:3 format:@"socket closed"];
    v8 = *(*(a1 + 48) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    MEMORY[0x2821F96F8]();
  }
}

- (void)close
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = &self->_readBuffer[65512];
  v4 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(v3 + 5);
    v6 = *(v3 + 6);
    v11 = 138543874;
    v12 = self;
    v13 = 2048;
    v14 = v5;
    v15 = 2048;
    v16 = v6;
    _os_log_impl(&dword_22392A000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: closing. totalBytesSent=%llu, totalReceived=%llu", &v11, 0x20u);
  }

  if (*(v3 + 7))
  {
    CPSetPowerAssertionWithIdentifier();
  }

  if ([*(v3 + 8) isValid])
  {
    [*(v3 + 8) invalidate];
  }

  v7 = *(v3 + 8);
  *(v3 + 8) = 0;

  source = self->_source;
  if (source)
  {
    dispatch_source_cancel(source);
    v9 = self->_source;
    self->_source = 0;
  }

  [(ATSocket *)self closeDescriptor];
  [(ATSocket *)self notifySocketDidClose];
  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)open
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = &self->_readBuffer[65512];
  v4 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    *&buf[4] = self;
    *&buf[12] = 1024;
    *&buf[14] = [(ATSocket *)self socketMode];
    _os_log_impl(&dword_22392A000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: opening with mode %d", buf, 0x12u);
  }

  v5 = *(v3 + 18);
  if (v5)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.atc.%@", self];
    v7 = *(v3 + 7);
    *(v3 + 7) = v6;

    v8 = *(v3 + 7);
    CPSetPowerAssertionWithIdentifier();
    v9 = [objc_alloc(MEMORY[0x277D27F40]) initWithName:*(v3 + 7) pid:getpid() subsystem:@"com.apple.atc.ATSocket" reason:2 flags:1];
    v10 = *(v3 + 8);
    *(v3 + 8) = v9;

    if ([(ATSocket *)self socketMode]== 1)
    {
      v11 = dispatch_source_create(MEMORY[0x277D85D28], *(v3 + 18), 0, *(v3 + 13));
      source = self->_source;
      self->_source = v11;

      v13 = fcntl(*(v3 + 18), 3);
      fcntl(*(v3 + 18), 4, v13 & 0xFFFFFFFB);
      v22 = 1;
      setsockopt(*(v3 + 18), 0xFFFF, 1, &v22, 4u);
      *buf = xmmword_22394E530;
      setsockopt(*(v3 + 18), 0xFFFF, 4101, buf, 0x10u);
      objc_initWeak(&location, self);
      objc_initWeak(&from, self->_source);
      v14 = self->_source;
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __16__ATSocket_open__block_invoke;
      handler[3] = &unk_2784E8E28;
      objc_copyWeak(&v18, &location);
      handler[4] = self;
      objc_copyWeak(&v19, &from);
      dispatch_source_set_event_handler(v14, handler);
      dispatch_resume(self->_source);
      objc_destroyWeak(&v19);
      objc_destroyWeak(&v18);
      objc_destroyWeak(&from);
      objc_destroyWeak(&location);
    }
  }

  result = v5 != 0;
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

void __16__ATSocket_open__block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = read(*(*(a1 + 32) + 65608), (*(a1 + 32) + 24), 0x10000uLL);
    v4 = v3;
    if (v3 < 1)
    {
      v5 = *__error();
      v6 = _ATLogCategoryFramework();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = *(a1 + 32);
        v8 = *(v7 + 65608);
        v12 = 138544386;
        v13 = v7;
        v14 = 2048;
        v15 = v4;
        v16 = 1024;
        v17 = v8;
        v18 = 2080;
        v19 = strerror(v5);
        v20 = 1024;
        v21 = v5;
        _os_log_impl(&dword_22392A000, v6, OS_LOG_TYPE_ERROR, "%{public}@: read failed. bytesRead=%zd, fd=%d, err=%s (%d)", &v12, 0x2Cu);
      }

      v9 = objc_loadWeakRetained((a1 + 48));
      v10 = v9;
      if (v9)
      {
        dispatch_source_cancel(v9);
      }
    }

    else
    {
      *(*(a1 + 32) + 65584) += v3;
      [WeakRetained notifyHasDataAvailable:*(a1 + 32) + 24 length:v3];
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)removeDelegate:(id)a3
{
  v5 = a3;
  v4 = self;
  objc_sync_enter(v4);
  [(NSMutableArray *)v4->_delegates removeObject:v5];
  objc_sync_exit(v4);
}

- (void)addDelegate:(id)a3
{
  v5 = a3;
  v4 = self;
  objc_sync_enter(v4);
  [(NSMutableArray *)v4->_delegates addObject:v5];
  objc_sync_exit(v4);
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p, fd=%d>", v5, self, self->_descriptor];

  return v6;
}

- (void)dealloc
{
  writeBuffer = self->_writeBuffer;
  if (writeBuffer)
  {
    free(writeBuffer);
    self->_writeBuffer = 0;
  }

  v4.receiver = self;
  v4.super_class = ATSocket;
  [(ATSocket *)&v4 dealloc];
}

- (ATSocket)init
{
  v11.receiver = self;
  v11.super_class = ATSocket;
  v2 = [(ATSocket *)&v11 init];
  v3 = v2;
  if (v2)
  {
    *(v2 + 65624) = xmmword_22394E550;
    v4 = objc_opt_class();
    Name = class_getName(v4);
    v6 = dispatch_queue_create(Name, 0);
    queue = v3->_queue;
    v3->_queue = v6;

    v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:1];
    delegates = v3->_delegates;
    v3->_delegates = v8;

    v3->_writeBuffer = 0;
    v3->_transportUpdgradeExceptionCount = 0;
    v3->_writeBufferSize = 0;
    [(ATSocket *)v3 setWriteBufferSize:0x8000];
  }

  return v3;
}

+ (id)createBoundPair:(id)a3[2]
{
  v13 = *MEMORY[0x277D85DE8];
  if (socketpair(1, 1, 0, v12))
  {
    v4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:*__error() userInfo:0];
  }

  else
  {
    v5 = objc_alloc_init(ATSocket);
    v6 = objc_alloc_init(ATSocket);
    [(ATSocket *)v5 setDescriptor:v12[0]];
    [(ATSocket *)v6 setDescriptor:v12[1]];
    v7 = *a3;
    *a3 = v5;
    v8 = v5;

    v9 = a3[1];
    a3[1] = v6;

    v4 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v4;
}

@end
@interface NWURLSessionInputStream
- (BOOL)hasBytesAvailable;
- (id)delegate;
- (id)initWithStreamTask:(void *)task error:;
- (id)streamError;
- (int64_t)read:(char *)read maxLength:(unint64_t)length;
- (unint64_t)streamStatus;
- (void)close;
- (void)open;
- (void)readCompletion;
- (void)removeFromRunLoop:(id)loop forMode:(id)mode;
- (void)scheduleInRunLoop:(id)loop forMode:(id)mode;
- (void)setDelegate:(id)delegate;
- (void)signalEvent:(uint64_t)event;
@end

@implementation NWURLSessionInputStream

- (BOOL)hasBytesAvailable
{
  if (self)
  {
    self = objc_getProperty(self, a2, 200, 1);
  }

  return self != 0;
}

- (int64_t)read:(char *)read maxLength:(unint64_t)length
{
  if (self)
  {
    while (1)
    {
      os_unfair_lock_lock(&self->lock);
      if ([(NWURLSessionInputStream *)self hasBytesAvailable])
      {
        Property = objc_getProperty(self, v5, 200, 1);
        goto LABEL_11;
      }

      v6 = objc_getProperty(self, v5, 208, 1);
      if (v6)
      {

        goto LABEL_16;
      }

      if (!self->_streamTask)
      {
        goto LABEL_16;
      }

      if (self->_receivedEOF)
      {
        break;
      }

      self->_readSize = length;
      os_unfair_lock_assert_owner(&self->lock);
      if (!self->_reading)
      {
        self->_reading = 1;
        streamTask = self->_streamTask;
        readSize = self->_readSize;
        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = __31__NWURLSessionInputStream_read__block_invoke;
        v25[3] = &unk_1E6A38828;
        v25[4] = self;
        [(NSURLSessionStreamTask *)streamTask readDataOfMinLength:1 maxLength:readSize timeout:v25 completionHandler:0.0];
      }

      ++self->_readWaiters;
      os_unfair_lock_unlock(&self->lock);
      dispatch_semaphore_wait(self->_readSemaphore, 0xFFFFFFFFFFFFFFFFLL);
    }

    [(NWURLSessionInputStream *)self readCompletion];
    os_unfair_lock_unlock(&self->lock);
    return 0;
  }

  else
  {
    os_unfair_lock_lock(0x88);
    hasBytesAvailable = [0 hasBytesAvailable];
    Property = 0;
    if (hasBytesAvailable)
    {
LABEL_11:
      size = dispatch_data_get_size(Property);
      if (size <= length)
      {
        if (self)
        {
          subrange = objc_getProperty(self, v10, 200, 1);
          objc_setProperty_atomic(self, v19, 0, 200);
        }

        else
        {
          subrange = 0;
        }
      }

      else
      {
        if (self)
        {
          v12 = objc_getProperty(self, v10, 200, 1);
          subrange = dispatch_data_create_subrange(v12, 0, length);
          v15 = objc_getProperty(self, v14, 200, 1);
          v16 = dispatch_data_create_subrange(v15, length, 0xFFFFFFFFFFFFFFFFLL);
          objc_setProperty_atomic(self, v17, v16, 200);
        }

        else
        {
          subrange = dispatch_data_create_subrange(0, 0, length);
          v16 = dispatch_data_create_subrange(0, length, 0xFFFFFFFFFFFFFFFFLL);
        }
      }

      applier[0] = MEMORY[0x1E69E9820];
      applier[1] = 3221225472;
      applier[2] = __42__NWURLSessionInputStream_read_maxLength___block_invoke;
      applier[3] = &__block_descriptor_40_e47_B40__0__NSObject_OS_dispatch_data__8Q16r_v24Q32l;
      applier[4] = read;
      dispatch_data_apply(subrange, applier);
      [(NWURLSessionInputStream *)self readCompletion];
      os_unfair_lock_unlock(&self->lock);
      if (size >= length)
      {
        lengthCopy = length;
      }

      else
      {
        lengthCopy = size;
      }

      return lengthCopy;
    }

    else
    {
LABEL_16:
      [(NWURLSessionInputStream *)self readCompletion];
      os_unfair_lock_unlock(&self->lock);
      return -1;
    }
  }
}

- (void)readCompletion
{
  if (!self)
  {
    return;
  }

  os_unfair_lock_assert_owner((self + 136));
  if (*(self + 144))
  {
    --*(self + 144);
    v2 = *(self + 184);

    dispatch_semaphore_signal(v2);
    return;
  }

  if ([self hasBytesAvailable])
  {
    selfCopy2 = self;
    v5 = 2;
LABEL_8:

    [(NWURLSessionInputStream *)selfCopy2 signalEvent:v5];
    return;
  }

  if (*(self + 142) == 1)
  {
    if (*(self + 143))
    {
      return;
    }

    *(self + 143) = 1;
    selfCopy2 = self;
    v5 = 16;
    goto LABEL_8;
  }

  if (!objc_getProperty(self, v3, 208, 1))
  {
    os_unfair_lock_assert_owner((self + 136));
    if ((*(self + 141) & 1) == 0)
    {
      *(self + 141) = 1;
      v6 = *(self + 152);
      v7 = *(self + 192);
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __31__NWURLSessionInputStream_read__block_invoke;
      v8[3] = &unk_1E6A38828;
      v8[4] = self;
      [v6 readDataOfMinLength:1 maxLength:v7 timeout:v8 completionHandler:0.0];
    }
  }
}

void __31__NWURLSessionInputStream_read__block_invoke(uint64_t a1, void *a2, char a3, void *a4)
{
  _cmd = a2;
  v7 = a4;
  os_unfair_lock_lock((*(a1 + 32) + 136));
  v8 = _cmd;
  v9 = *(a1 + 32);
  if (!v9)
  {
    if (!_cmd)
    {
      goto LABEL_24;
    }

LABEL_11:
    v14 = [v8 _createDispatchData];
    v19 = *(a1 + 32);
    if (v19)
    {
      objc_setProperty_atomic(v19, v18, v14, 200);
    }

    goto LABEL_13;
  }

  *(v9 + 141) = 0;
  v10 = *(a1 + 32);
  if (!_cmd)
  {
    goto LABEL_14;
  }

  if (!v10)
  {
    goto LABEL_11;
  }

  Property = objc_getProperty(v10, _cmd, 200, 1);
  v8 = _cmd;
  if (!Property)
  {
    goto LABEL_11;
  }

  v12 = *(a1 + 32);
  if (v12)
  {
    v12 = objc_getProperty(v12, _cmd, 200, 1);
  }

  v13 = v12;
  v14 = [_cmd _createDispatchData];
  concat = dispatch_data_create_concat(v13, v14);

  v17 = *(a1 + 32);
  if (v17)
  {
    objc_setProperty_atomic(v17, v16, concat, 200);
  }

LABEL_13:
  v10 = *(a1 + 32);
LABEL_14:
  if (v10)
  {
    v10[142] = a3;
    v20 = *(a1 + 32);
    if (!v7)
    {
      goto LABEL_21;
    }

    if (!v20)
    {
      goto LABEL_26;
    }

    v22 = objc_getProperty(v20, v8, 208, 1);
    v20 = *(a1 + 32);
    if (v22)
    {
      goto LABEL_21;
    }

    if (v20)
    {
      objc_setProperty_atomic(v20, v21, v7, 208);
      v23 = *(a1 + 32);
    }

    else
    {
LABEL_26:
      v23 = 0;
    }

    goto LABEL_20;
  }

LABEL_24:
  v23 = 0;
  v20 = 0;
  if (v7)
  {
LABEL_20:
    [(NWURLSessionInputStream *)v23 signalEvent:?];
    v20 = *(a1 + 32);
  }

LABEL_21:
  [(NWURLSessionInputStream *)v20 readCompletion];
  os_unfair_lock_unlock((*(a1 + 32) + 136));
}

- (void)signalEvent:(uint64_t)event
{
  if (event)
  {
    os_unfair_lock_assert_owner((event + 136));
    delegate = [event delegate];
    if (!delegate || (objc_opt_respondsToSelector() & 1) == 0)
    {
      goto LABEL_10;
    }

    v5 = MEMORY[0x1865DB780](event);
    if (v5)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __39__NWURLSessionInputStream_signalEvent___block_invoke;
      block[3] = &unk_1E6A3BCF0;
      v6 = v13;
      v13[0] = delegate;
      v13[1] = event;
      v13[2] = a2;
      dispatch_async(v5, block);
    }

    else
    {
      v7 = *(event + 168);
      if (!v7)
      {
LABEL_9:

LABEL_10:
        return;
      }

      v8 = *(event + 176);
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __39__NWURLSessionInputStream_signalEvent___block_invoke_2;
      v10[3] = &unk_1E6A3BCF0;
      v6 = v11;
      v11[0] = delegate;
      v11[1] = event;
      v11[2] = a2;
      v9 = v7;
      [v9 performInModes:v8 block:v10];
    }

    goto LABEL_9;
  }
}

- (id)streamError
{
  if (self)
  {
    self = objc_getProperty(self, a2, 208, 1);
    v2 = vars8;
  }

  return self;
}

- (unint64_t)streamStatus
{
  os_unfair_lock_lock(&self->lock);
  if (self && self->_opened)
  {
    if (self->_streamTask)
    {
      if (objc_getProperty(self, v3, 208, 1))
      {
        v5 = 7;
      }

      else
      {
        v6 = objc_getProperty(self, v4, 200, 1);
        if (v6)
        {
        }

        else if (self->_receivedEOF)
        {
          v5 = 5;
          goto LABEL_15;
        }

        if (self->_reading)
        {
          v5 = 3;
        }

        else
        {
          v5 = 2;
        }
      }
    }

    else
    {
      v5 = 6;
    }
  }

  else
  {
    v5 = 0;
  }

LABEL_15:
  os_unfair_lock_unlock(&self->lock);
  return v5;
}

- (void)removeFromRunLoop:(id)loop forMode:(id)mode
{
  modeCopy = mode;
  loopCopy = loop;
  os_unfair_lock_lock(&self->lock);
  if (self)
  {
    runLoop = self->_runLoop;

    if (runLoop != loopCopy)
    {
      goto LABEL_9;
    }

    if ([(NSMutableArray *)self->_runLoopModes containsObject:modeCopy])
    {
      [(NSMutableArray *)self->_runLoopModes removeObject:modeCopy];
    }

    runLoopModes = self->_runLoopModes;
  }

  else
  {

    if (loopCopy)
    {
      goto LABEL_9;
    }

    v11 = [0 containsObject:modeCopy];
    runLoopModes = 0;
    if (v11)
    {
      [0 removeObject:modeCopy];
      runLoopModes = 0;
    }
  }

  v9 = [(NSMutableArray *)runLoopModes count];
  if (self && !v9)
  {
    v10 = self->_runLoop;
    self->_runLoop = 0;
  }

LABEL_9:
  os_unfair_lock_unlock(&self->lock);
}

- (void)scheduleInRunLoop:(id)loop forMode:(id)mode
{
  loopCopy = loop;
  modeCopy = mode;
  os_unfair_lock_lock(&self->lock);
  if (self)
  {
    if (self->_runLoop != loopCopy)
    {
      [(NSMutableArray *)self->_runLoopModes removeAllObjects];
    }

    objc_storeStrong(&self->_runLoop, loop);
    if (([(NSMutableArray *)self->_runLoopModes containsObject:modeCopy]& 1) == 0)
    {
      runLoopModes = self->_runLoopModes;
LABEL_6:
      [(NSMutableArray *)runLoopModes addObject:modeCopy];
    }
  }

  else
  {
    if (loopCopy)
    {
      [0 removeAllObjects];
    }

    v9 = [0 containsObject:modeCopy];
    runLoopModes = 0;
    if ((v9 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  os_unfair_lock_unlock(&self->lock);
}

- (void)setDelegate:(id)delegate
{
  if (self)
  {
    objc_storeWeak(&self->_streamDelegate, delegate);
  }
}

- (id)delegate
{
  if (self)
  {
    self = objc_loadWeakRetained(&self->_streamDelegate);
    v2 = vars8;
  }

  return self;
}

- (void)close
{
  os_unfair_lock_lock(&self->lock);
  if (self)
  {
    [(NSURLSessionStreamTask *)self->_streamTask closeRead];
    streamTask = self->_streamTask;
    self->_streamTask = 0;
  }

  else
  {
    [0 closeRead];
  }

  os_unfair_lock_unlock(&self->lock);
}

- (void)open
{
  os_unfair_lock_lock(&self->lock);
  if (!self)
  {
    selfCopy = 0;
    v5 = 1;
    goto LABEL_4;
  }

  self->_opened = 1;
  if (objc_getProperty(self, v3, 208, 1))
  {
    selfCopy = self;
    v5 = 8;
LABEL_4:
    [(NWURLSessionInputStream *)selfCopy signalEvent:v5];
    goto LABEL_7;
  }

  [(NWURLSessionInputStream *)self signalEvent:?];
  os_unfair_lock_assert_owner(&self->lock);
  if (!self->_reading)
  {
    self->_reading = 1;
    streamTask = self->_streamTask;
    readSize = self->_readSize;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __31__NWURLSessionInputStream_read__block_invoke;
    v8[3] = &unk_1E6A38828;
    v8[4] = self;
    [(NSURLSessionStreamTask *)streamTask readDataOfMinLength:1 maxLength:readSize timeout:v8 completionHandler:0.0];
  }

LABEL_7:
  os_unfair_lock_unlock(&self->lock);
}

- (id)initWithStreamTask:(void *)task error:
{
  v6 = a2;
  taskCopy = task;
  if (self)
  {
    v14.receiver = self;
    v14.super_class = NWURLSessionInputStream;
    v8 = objc_msgSendSuper2(&v14, sel_init);
    self = v8;
    if (v8)
    {
      objc_storeStrong(v8 + 19, a2);
      objc_storeStrong(self + 26, task);
      v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v10 = self[22];
      self[22] = v9;

      v11 = dispatch_semaphore_create(0);
      v12 = self[23];
      self[23] = v11;

      self[24] = 0x20000;
    }
  }

  return self;
}

@end
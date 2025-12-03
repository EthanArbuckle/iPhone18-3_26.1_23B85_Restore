@interface NWURLSessionOutputStream
- (BOOL)hasSpaceAvailable;
- (id)delegate;
- (id)initWithStreamTask:(void *)task error:;
- (id)streamError;
- (int64_t)write:(const char *)write maxLength:(unint64_t)length;
- (unint64_t)streamStatus;
- (void)close;
- (void)open;
- (void)removeFromRunLoop:(id)loop forMode:(id)mode;
- (void)scheduleInRunLoop:(id)loop forMode:(id)mode;
- (void)setDelegate:(id)delegate;
- (void)signalEvent:(uint64_t)event;
- (void)writeCompletion;
@end

@implementation NWURLSessionOutputStream

- (BOOL)hasSpaceAvailable
{
  if (!self)
  {
    return 1;
  }

  v2 = 1;
  v3 = objc_getProperty(self, a2, 192, 1);
  if (v3)
  {
    v4 = v3;
    v2 = dispatch_data_get_size(v3) < 0x20000;
  }

  return v2;
}

- (int64_t)write:(const char *)write maxLength:(unint64_t)length
{
  if (self)
  {
    while (1)
    {
      os_unfair_lock_lock(&self->lock);
      v8 = objc_getProperty(self, v7, 200, 1);
      if (v8)
      {

        goto LABEL_7;
      }

      if (!self->_streamTask)
      {
        goto LABEL_7;
      }

      if ([(NWURLSessionOutputStream *)self hasSpaceAvailable])
      {
        break;
      }

      ++self->_writeWaiters;
      os_unfair_lock_unlock(&self->lock);
      dispatch_semaphore_wait(self->_writeSemaphore, 0xFFFFFFFFFFFFFFFFLL);
    }

    if (objc_getProperty(self, v9, 192, 1))
    {
      Property = objc_getProperty(self, v11, 192, 1);
      v13 = 0x20000 - dispatch_data_get_size(Property);
    }

    else
    {
      v13 = 0x20000;
    }

    if (v13 >= length)
    {
      lengthCopy = length;
    }

    else
    {
      lengthCopy = v13;
    }

    v15 = lengthCopy;
    v16 = dispatch_data_create(write, lengthCopy, 0, 0);
    if (objc_getProperty(self, v17, 192, 1))
    {
      v19 = objc_getProperty(self, v18, 192, 1);
      concat = dispatch_data_create_concat(v19, v16);
      objc_setProperty_atomic(self, v21, concat, 192);
    }

    else
    {
      objc_setProperty_atomic(self, v18, v16, 192);
    }

    [(NWURLSessionOutputStream *)self writeCompletion];
    os_unfair_lock_unlock(&self->lock);

    return v15;
  }

  else
  {
    os_unfair_lock_lock(0x88);
LABEL_7:
    [(NWURLSessionOutputStream *)self writeCompletion];
    os_unfair_lock_unlock(&self->lock);
    return -1;
  }
}

- (void)writeCompletion
{
  if (!self)
  {
    return;
  }

  os_unfair_lock_assert_owner((self + 136));
  if (objc_getProperty(self, v2, 192, 1))
  {
    os_unfair_lock_assert_owner((self + 136));
    if ((*(self + 141) & 1) == 0)
    {
      *(self + 141) = 1;
      v4 = objc_getProperty(self, v3, 192, 1);
      objc_setProperty_atomic(self, v5, 0, 192);
      v6 = *(self + 152);
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __33__NWURLSessionOutputStream_write__block_invoke;
      v9[3] = &unk_1E6A38850;
      v9[4] = self;
      [v6 writeData:v4 timeout:v9 completionHandler:0.0];
    }

    goto LABEL_9;
  }

  if (*(self + 142) != 1)
  {
LABEL_9:
    if (*(self + 144))
    {
      --*(self + 144);
      v8 = *(self + 184);

      dispatch_semaphore_signal(v8);
    }

    else if ([self hasSpaceAvailable] && (*(self + 142) & 1) == 0)
    {

      [(NWURLSessionOutputStream *)self signalEvent:?];
    }

    return;
  }

  [*(self + 152) closeWrite];
  v7 = *(self + 152);
  *(self + 152) = 0;
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

    v5 = MEMORY[0x1865DBB00](event);
    if (v5)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __40__NWURLSessionOutputStream_signalEvent___block_invoke;
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
      v10[2] = __40__NWURLSessionOutputStream_signalEvent___block_invoke_2;
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

void __33__NWURLSessionOutputStream_write__block_invoke(uint64_t a1, void *a2)
{
  _cmd = a2;
  os_unfair_lock_lock((*(a1 + 32) + 136));
  v3 = *(a1 + 32);
  if (v3)
  {
    *(v3 + 141) = 0;
    v4 = *(a1 + 32);
    if (!_cmd)
    {
      goto LABEL_8;
    }

    if (!v4)
    {
      goto LABEL_13;
    }

    Property = objc_getProperty(v4, _cmd, 200, 1);
    v4 = *(a1 + 32);
    if (Property)
    {
      goto LABEL_8;
    }

    if (v4)
    {
      objc_setProperty_atomic(v4, v5, _cmd, 200);
      v3 = *(a1 + 32);
    }

    else
    {
LABEL_13:
      v3 = 0;
    }

    goto LABEL_7;
  }

  v4 = 0;
  if (_cmd)
  {
LABEL_7:
    [(NWURLSessionOutputStream *)v3 signalEvent:?];
    v4 = *(a1 + 32);
  }

LABEL_8:
  [(NWURLSessionOutputStream *)v4 writeCompletion];
  os_unfair_lock_unlock((*(a1 + 32) + 136));
}

- (id)streamError
{
  if (self)
  {
    self = objc_getProperty(self, a2, 200, 1);
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
      if (objc_getProperty(self, v3, 200, 1))
      {
        v4 = 7;
      }

      else if (self->_writing)
      {
        v4 = 4;
      }

      else
      {
        v4 = 2;
      }
    }

    else
    {
      v4 = 6;
    }
  }

  else
  {
    v4 = 0;
  }

  os_unfair_lock_unlock(&self->lock);
  return v4;
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
    self->_pendingClose = 1;
    [(NWURLSessionOutputStream *)self writeCompletion];
  }

  os_unfair_lock_unlock(&self->lock);
}

- (void)open
{
  os_unfair_lock_lock(&self->lock);
  if (self && (self->_opened = 1, objc_getProperty(self, v3, 200, 1)))
  {
    selfCopy2 = self;
    v5 = 8;
  }

  else
  {
    [(NWURLSessionOutputStream *)self signalEvent:?];
    selfCopy2 = self;
    v5 = 4;
  }

  [(NWURLSessionOutputStream *)selfCopy2 signalEvent:v5];

  os_unfair_lock_unlock(&self->lock);
}

- (id)initWithStreamTask:(void *)task error:
{
  v6 = a2;
  taskCopy = task;
  if (self)
  {
    v14.receiver = self;
    v14.super_class = NWURLSessionOutputStream;
    v8 = objc_msgSendSuper2(&v14, sel_init);
    self = v8;
    if (v8)
    {
      objc_storeStrong(v8 + 19, a2);
      objc_storeStrong(self + 25, task);
      v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v10 = self[22];
      self[22] = v9;

      v11 = dispatch_semaphore_create(0);
      v12 = self[23];
      self[23] = v11;
    }
  }

  return self;
}

@end
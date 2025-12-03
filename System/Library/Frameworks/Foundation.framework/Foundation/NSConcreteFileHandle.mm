@interface NSConcreteFileHandle
- (BOOL)closeAndReturnError:(id *)error;
- (BOOL)getOffset:(unint64_t *)offset error:(id *)error;
- (BOOL)seekToEndReturningOffset:(unint64_t *)offset error:(id *)error;
- (BOOL)seekToOffset:(unint64_t)offset error:(id *)error;
- (BOOL)synchronizeAndReturnError:(id *)error;
- (BOOL)truncateAtOffset:(unint64_t)offset error:(id *)error;
- (BOOL)writeData:(id)data error:(id *)error;
- (NSConcreteFileHandle)init;
- (NSConcreteFileHandle)initWithFileDescriptor:(int)descriptor closeOnDealloc:(BOOL)dealloc;
- (NSConcreteFileHandle)initWithPath:(id)path flags:(int64_t)flags createMode:(int64_t)mode error:(id *)error;
- (NSConcreteFileHandle)initWithURL:(id)l flags:(int64_t)flags createMode:(int64_t)mode error:(id *)error;
- (id)_monitor:(int)_monitor;
- (id)availableData;
- (id)readDataOfLength:(unint64_t)length;
- (id)readDataToEndOfFileAndReturnError:(id *)error;
- (id)readDataUpToLength:(unint64_t)length error:(id *)error;
- (id)readabilityHandler;
- (id)writeabilityHandler;
- (int)fileDescriptor;
- (unint64_t)offsetInFile;
- (unint64_t)readDataOfLength:(unint64_t)length buffer:(char *)buffer;
- (unint64_t)seekToEndOfFile;
- (void)_cancelDispatchSources;
- (void)_locked_clearHandler:(id *)handler forSource:(id *)source;
- (void)closeFile;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)performActivity:(int64_t)activity modes:(id)modes;
- (void)seekToFileOffset:(unint64_t)offset;
- (void)setReadabilityHandler:(id)handler;
- (void)setWriteabilityHandler:(id)handler;
- (void)synchronizeFile;
- (void)truncateFileAtOffset:(unint64_t)offset;
- (void)writeData:(id)data;
@end

@implementation NSConcreteFileHandle

- (void)_cancelDispatchSources
{
  os_unfair_lock_lock(&self->_lock);
  dsrc = self->_dsrc;
  self->_dsrc = 0;
  [(NSConcreteFileHandle *)self _locked_clearHandler:&self->_readabilityHandler forSource:&self->_readMonitoringSource];
  [(NSConcreteFileHandle *)self _locked_clearHandler:&self->_writeabilityHandler forSource:&self->_writeMonitoringSource];
  readChannel = self->_readChannel;
  if (readChannel)
  {
    dispatch_io_close(readChannel, 1uLL);
  }

  os_unfair_lock_unlock(&self->_lock);
  if (dsrc)
  {

    dispatch_source_cancel(dsrc);
  }
}

- (void)dealloc
{
  v9 = *MEMORY[0x1E69E9840];
  [(NSConcreteFileHandle *)self _cancelDispatchSources];
  if ((self->_fd & 0x80000000) == 0)
  {
    v3 = atomic_load(&self->_flags);
    if ((v3 & 4) == 0)
    {
      v4 = atomic_load(&self->_flags);
      if ((v4 & 2) == 0)
      {
        v5 = atomic_load(&self->_flags);
        if (v5)
        {
          close(self->_fd);
        }
      }
    }
  }

  fhQueue = self->_fhQueue;
  if (fhQueue)
  {
    dispatch_release(fhQueue);
  }

  monitoringQueue = self->_monitoringQueue;
  if (monitoringQueue)
  {
    dispatch_release(monitoringQueue);
  }

  v8.receiver = self;
  v8.super_class = NSConcreteFileHandle;
  [(NSConcreteFileHandle *)&v8 dealloc];
}

- (void)closeFile
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = atomic_load(&self->_flags);
  if ((v2 & 4) == 0)
  {
    [(NSConcreteFileHandle *)self _cancelDispatchSources];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __33__NSConcreteFileHandle_closeFile__block_invoke;
    v5[3] = &unk_1E69F2C00;
    selfCopy = self;
    monitoringQueue = self->_monitoringQueue;
    if (monitoringQueue)
    {
      dispatch_async(monitoringQueue, v5);
    }

    else
    {
      atomic_fetch_or(&self->_flags, 4u);
      close(selfCopy->_fd);
    }
  }
}

- (unint64_t)seekToEndOfFile
{
  v4 = atomic_load(&self->_flags);
  if ((v4 & 4) != 0 || (result = lseek(self->_fd, 0, 2), (result & 0x8000000000000000) != 0))
  {
    _NSFileHandleRaiseOperationExceptionWhileReading(self, a2, 1);
  }

  return result;
}

- (int)fileDescriptor
{
  v2 = atomic_load(&self->_flags);
  if ((v2 & 4) != 0)
  {
    _NSFileHandleRaiseOperationExceptionWhileReading(self, a2, 0);
  }

  return self->_fd;
}

- (id)availableData
{
  v10 = *MEMORY[0x1E69E9840];
  memset(&v9, 0, sizeof(v9));
  v4 = atomic_load(&self->_flags);
  if ((v4 & 4) != 0 || fstat(self->_fd, &v9) < 0)
  {
    goto LABEL_11;
  }

  if ((v9.st_mode & 0xF000) == 0x8000)
  {
    result = [(NSConcreteFileHandle *)self readDataToEndOfFile:*&v9.st_dev];
    if (result)
    {
      return result;
    }

    return [MEMORY[0x1E695DEF0] data];
  }

  v6 = *MEMORY[0x1E69E9AC8];
  v7 = malloc_type_malloc(*MEMORY[0x1E69E9AC8], 0x100004077774924uLL);
  v8 = _NSReadFromFileDescriptorWithProgress(self->_fd, v7, v6, 0, 0);
  if (v8 > 0)
  {
    return [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:v7 length:{v8, *&v9.st_dev, *&v9.st_uid, *&v9.st_atimespec, *&v9.st_mtimespec, *&v9.st_ctimespec, *&v9.st_birthtimespec, *&v9.st_size, *&v9.st_blksize, *v9.st_qspare}];
  }

  free(v7);
  if (v8 < 0)
  {
LABEL_11:
    _NSFileHandleRaiseOperationExceptionWhileReading(self, a2, 0);
  }

  return [MEMORY[0x1E695DEF0] data];
}

- (void)synchronizeFile
{
  v4 = atomic_load(&self->_flags);
  if ((v4 & 4) != 0 || fsync(self->_fd) < 0)
  {
    _NSFileHandleRaiseOperationExceptionWhileReading(self, a2, 0);
  }
}

- (unint64_t)offsetInFile
{
  v4 = atomic_load(&self->_flags);
  if ((v4 & 4) != 0 || (result = lseek(self->_fd, 0, 1), (result & 0x8000000000000000) != 0))
  {
    _NSFileHandleRaiseOperationExceptionWhileReading(self, a2, 1);
  }

  return result;
}

- (NSConcreteFileHandle)init
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = NSConcreteFileHandle;
  [(NSConcreteFileHandle *)&v3 dealloc];
  return 0;
}

- (void)encodeWithCoder:(id)coder
{
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"This object may only be encoded by an NSXPCCoder." userInfo:0]);
  }

  v6 = atomic_load(&self->_flags);
  if ((v6 & 4) != 0)
  {
    _NSFileHandleRaiseOperationExceptionWhileReading(self, a2, 0);
  }

  v7 = xpc_fd_create(self->_fd);
  if (v7)
  {
    v8 = v7;
    [coder encodeXPCObject:v7 forKey:@"NS.fd"];

    xpc_release(v8);
  }
}

- (NSConcreteFileHandle)initWithFileDescriptor:(int)descriptor closeOnDealloc:(BOOL)dealloc
{
  self->_fd = descriptor;
  self->_fhQueue = dispatch_queue_create("com.apple.NSFileHandle.1", 0);
  if (!dealloc)
  {
    atomic_fetch_or(&self->_flags, 2u);
  }

  self->_lock._os_unfair_lock_opaque = 0;
  atomic_fetch_or(&self->_flags, 1u);
  return self;
}

- (NSConcreteFileHandle)initWithURL:(id)l flags:(int64_t)flags createMode:(int64_t)mode error:(id *)error
{
  flagsCopy = flags;
  selfCopy = self;
  v17 = *MEMORY[0x1E69E9840];
  self->_fd = -1;
  if (([l getFileSystemRepresentation:v16 maxLength:1026] & 1) == 0)
  {
    [(NSConcreteFileHandle *)&v15 dealloc:v14.receiver];
    return 0;
  }

  v11 = _NSOpenFileDescriptor(v16, flagsCopy, mode);
  selfCopy->_fd = v11;
  if (v11 < 0)
  {
    if (error)
    {
      v12 = *__error();
      *error = _NSErrorWithFilePathErrnoVariantAndExtraUserInfo(v12, [l path], 0, 0, 0);
    }

    [(NSConcreteFileHandle *)&v14 dealloc:selfCopy];
    return 0;
  }

  atomic_fetch_or(&selfCopy->_flags, 1u);
  selfCopy->_fhQueue = dispatch_queue_create("com.apple.NSFileHandle.2", 0);
  selfCopy->_lock._os_unfair_lock_opaque = 0;
  return selfCopy;
}

- (NSConcreteFileHandle)initWithPath:(id)path flags:(int64_t)flags createMode:(int64_t)mode error:(id *)error
{
  v14 = *MEMORY[0x1E69E9840];
  if ([path length])
  {
    v11 = [MEMORY[0x1E695DFF8] fileURLWithPath:path];

    return [(NSConcreteFileHandle *)self initWithURL:v11 flags:flags createMode:mode error:error];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = NSConcreteFileHandle;
    [(NSConcreteFileHandle *)&v13 dealloc];
    return 0;
  }
}

- (unint64_t)readDataOfLength:(unint64_t)length buffer:(char *)buffer
{
  v17 = *MEMORY[0x1E69E9840];
  memset(&v16, 0, sizeof(v16));
  v6 = atomic_load(&self->_flags);
  if ((v6 & 4) != 0 || fstat(self->_fd, &v16) < 0)
  {
    goto LABEL_13;
  }

  if ((v16.st_mode & 0xF000) != 0x8000)
  {
    if (length)
    {
      v12 = 0;
      if (length >= 0x1000)
      {
        lengthCopy = 4096;
      }

      else
      {
        lengthCopy = length;
      }

      while (1)
      {
        v14 = _NSReadFromFileDescriptorWithProgress(self->_fd, &buffer[v12], lengthCopy, 0, 0);
        if (v14 < 0)
        {
          break;
        }

        if (v14)
        {
          v12 += v14;
          length -= v14;
          lengthCopy = length >= 0x1000 ? 4096 : length;
          if (length)
          {
            continue;
          }
        }

        return v12;
      }

LABEL_13:
      _NSFileHandleRaiseOperationExceptionWhileReading(self, a2, 0);
    }

    return 0;
  }

  v9 = lseek(self->_fd, 0, 1);
  if (v9 < 0)
  {
    goto LABEL_13;
  }

  lengthCopy2 = v16.st_size - v9;
  if (v16.st_size <= v9)
  {
    return 0;
  }

  if (lengthCopy2 >= length)
  {
    lengthCopy2 = length;
  }

  if (lengthCopy2 < 1)
  {
    return 0;
  }

  if (lengthCopy2 >= 0x80000000)
  {
    v11 = 0x80000000;
  }

  else
  {
    v11 = lengthCopy2;
  }

  v12 = _NSReadFromFileDescriptorWithProgress(self->_fd, buffer, v11, 0, 0);
  if ((v12 & 0x8000000000000000) != 0)
  {
    goto LABEL_13;
  }

  return v12;
}

- (id)readDataOfLength:(unint64_t)length
{
  v22 = *MEMORY[0x1E69E9840];
  memset(&v21, 0, sizeof(v21));
  v5 = atomic_load(&self->_flags);
  if ((v5 & 4) != 0 || fstat(self->_fd, &v21) < 0)
  {
    goto LABEL_40;
  }

  if ((v21.st_mode & 0xF000) != 0x8000)
  {
    v10 = malloc_type_malloc(0x2000uLL, 0x100004077774924uLL);
    v11 = 0;
    v14 = 0x2000;
    lengthCopy = length;
    while (lengthCopy)
    {
      if (lengthCopy >= 0x2000)
      {
        v16 = 0x2000;
      }

      else
      {
        v16 = lengthCopy;
      }

      if (v14 - v11 < v16)
      {
        v14 *= 2;
        v17 = reallocf(v10, v14);
        if (!v17)
        {
          goto LABEL_40;
        }

        v10 = v17;
      }

      v18 = _NSReadFromFileDescriptorWithProgress(self->_fd, v10 + v11, v16, 0, 0);
      if (v18 < 0)
      {
        goto LABEL_39;
      }

      v11 += v18;
      lengthCopy -= v18;
      if (v18)
      {
        v19 = v11 == length;
      }

      else
      {
        v19 = 1;
      }

      if (v19)
      {
        break;
      }
    }

LABEL_31:
    if (length == -1 && v11)
    {
      v10 = reallocf(v10, v11);
    }

    else if (!v11)
    {
      goto LABEL_36;
    }

    return [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:v10 length:{v11, *&v21.st_dev, *&v21.st_uid, *&v21.st_atimespec, *&v21.st_mtimespec, *&v21.st_ctimespec, *&v21.st_birthtimespec}];
  }

  v7 = lseek(self->_fd, 0, 1);
  if (v7 < 0)
  {
    goto LABEL_40;
  }

  if (v21.st_size <= v7)
  {
    return [MEMORY[0x1E695DEF0] data];
  }

  if (v21.st_size - v7 >= length)
  {
    lengthCopy2 = length;
  }

  else
  {
    lengthCopy2 = v21.st_size - v7;
  }

  v9 = malloc_type_malloc(lengthCopy2, 0x100004077774924uLL);
  if (!v9)
  {
    goto LABEL_40;
  }

  v10 = v9;
  if (lengthCopy2 >= 1)
  {
    v11 = 0;
    while (1)
    {
      v12 = _NSReadFromFileDescriptorWithProgress(self->_fd, v10 + v11, lengthCopy2, 0, 0);
      if (v12 < 0)
      {
        break;
      }

      if (v12)
      {
        v11 += v12;
        v13 = lengthCopy2 <= v12;
        lengthCopy2 -= v12;
        if (!v13)
        {
          continue;
        }
      }

      goto LABEL_31;
    }

LABEL_39:
    free(v10);
LABEL_40:
    _NSFileHandleRaiseOperationExceptionWhileReading(self, a2, 1);
  }

LABEL_36:
  free(v10);
  return [MEMORY[0x1E695DEF0] data];
}

- (id)readDataUpToLength:(unint64_t)length error:(id *)error
{
  if (error)
  {
    *error = 0;
  }

  return [(NSConcreteFileHandle *)self readDataOfLength:length];
}

- (id)readDataToEndOfFileAndReturnError:(id *)error
{
  if (error)
  {
    *error = 0;
  }

  return [(NSConcreteFileHandle *)self readDataToEndOfFile];
}

- (void)writeData:(id)data
{
  v12 = *MEMORY[0x1E69E9840];
  if ([data length])
  {
    v6 = atomic_load(&self->_flags);
    if ((v6 & 4) != 0)
    {
      _NSFileHandleRaiseOperationExceptionWhileReading(self, a2, 0);
    }

    v8 = 0;
    v9 = &v8;
    v10 = 0x2020000000;
    v11 = 1;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __34__NSConcreteFileHandle_writeData___block_invoke;
    v7[3] = &unk_1E69F2A98;
    v7[4] = self;
    v7[5] = &v8;
    [data enumerateByteRangesUsingBlock:v7];
    if ((v9[3] & 1) == 0)
    {
      _NSFileHandleRaiseOperationExceptionWhileReading(self, a2, 0);
    }

    _Block_object_dispose(&v8, 8);
  }
}

uint64_t __34__NSConcreteFileHandle_writeData___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, _BYTE *a5)
{
  if (a4)
  {
    v8 = result;
    v9 = 0;
    while (1)
    {
      result = _NSWriteToFileDescriptorWithProgress(*(*(v8 + 32) + 96), (a2 + v9), a4 - v9, 0);
      if (result < 0)
      {
        break;
      }

      v9 += result;
      if (v9 >= a4)
      {
        return result;
      }
    }

    *(*(*(v8 + 40) + 8) + 24) = 0;
    *a5 = 1;
  }

  return result;
}

- (BOOL)writeData:(id)data error:(id *)error
{
  if (error)
  {
    *error = 0;
  }

  [(NSConcreteFileHandle *)self writeData:data];
  return 1;
}

- (BOOL)getOffset:(unint64_t *)offset error:(id *)error
{
  if (error)
  {
    *error = 0;
  }

  offsetInFile = [(NSConcreteFileHandle *)self offsetInFile];
  if (offset)
  {
    *offset = offsetInFile;
  }

  return 1;
}

- (BOOL)seekToEndReturningOffset:(unint64_t *)offset error:(id *)error
{
  if (error)
  {
    *error = 0;
  }

  seekToEndOfFile = [(NSConcreteFileHandle *)self seekToEndOfFile];
  if (offset)
  {
    *offset = seekToEndOfFile;
  }

  return 1;
}

- (void)seekToFileOffset:(unint64_t)offset
{
  v5 = atomic_load(&self->_flags);
  if ((v5 & 4) != 0 || lseek(self->_fd, offset, 0) < 0)
  {
    _NSFileHandleRaiseOperationExceptionWhileReading(self, a2, 1);
  }
}

- (BOOL)seekToOffset:(unint64_t)offset error:(id *)error
{
  if (error)
  {
    *error = 0;
  }

  [(NSConcreteFileHandle *)self seekToFileOffset:offset];
  return 1;
}

- (void)truncateFileAtOffset:(unint64_t)offset
{
  v5 = atomic_load(&self->_flags);
  if ((v5 & 4) != 0 || lseek(self->_fd, offset, 0) < 0 || ftruncate(self->_fd, offset) < 0)
  {
    _NSFileHandleRaiseOperationExceptionWhileReading(self, a2, 0);
  }
}

- (BOOL)truncateAtOffset:(unint64_t)offset error:(id *)error
{
  if (error)
  {
    *error = 0;
  }

  [(NSConcreteFileHandle *)self truncateFileAtOffset:offset];
  return 1;
}

- (BOOL)synchronizeAndReturnError:(id *)error
{
  if (error)
  {
    *error = 0;
  }

  [(NSConcreteFileHandle *)self synchronizeFile];
  return 1;
}

- (BOOL)closeAndReturnError:(id *)error
{
  if (error)
  {
    *error = 0;
  }

  [(NSConcreteFileHandle *)self closeFile];
  return 1;
}

- (void)performActivity:(int64_t)activity modes:(id)modes
{
  activityCopy = activity;
  v36 = *MEMORY[0x1E69E9840];
  v7 = malloc_type_malloc(0x20uLL, 0x10A0040D4BD8B5AuLL);
  atomic_store(0, v7);
  *(v7 + 1) = self;
  *(v7 + 8) = activityCopy;
  context.version = 0;
  context.info = v7;
  context.retain = _NSFileHandlePerformSourceContextRetain;
  context.release = _NSFileHandlePerformSourceContextRelease;
  memset(&context.copyDescription, 0, 40);
  context.perform = _performFileHandleSource;
  if (modes)
  {
    modesCopy = modes;
  }

  else
  {
    v9 = objc_allocWithZone(MEMORY[0x1E695DEC8]);
    modes = [v9 initWithObjects:{*MEMORY[0x1E695E8E0], 0}];
  }

  CFRetain(self);
  v10 = CFRunLoopSourceCreate(0, 50, &context);
  *(v7 + 3) = v10;
  Current = CFRunLoopGetCurrent();
  CFRetain(Current);
  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x3052000000;
  v34[3] = __Block_byref_object_copy__3;
  v34[4] = __Block_byref_object_dispose__3;
  v34[5] = self;
  fileDescriptor = [(NSConcreteFileHandle *)self fileDescriptor];
  v13 = dup(fileDescriptor);
  atomic_store(0, &self->_error);
  CFRetain(v10);
  if (activityCopy > 0xFu)
  {
    if (activityCopy == 16)
    {
      fhQueue = self->_fhQueue;
      cleanup_handler[0] = MEMORY[0x1E69E9820];
      cleanup_handler[1] = 3221225472;
      cleanup_handler[2] = __46__NSConcreteFileHandle_performActivity_modes___block_invoke;
      cleanup_handler[3] = &__block_descriptor_36_e8_v12__0i8l;
      v33 = v13;
      v18 = dispatch_io_create(0, v13, fhQueue, cleanup_handler);
      os_unfair_lock_lock(&self->_lock);
      self->_readChannel = v18;
      os_unfair_lock_unlock(&self->_lock);
      dispatch_io_set_low_water(v18, 0xFFFFFFFFFFFFFFFFLL);
      v19 = self->_fhQueue;
      io_handler[0] = MEMORY[0x1E69E9820];
      io_handler[1] = 3221225472;
      io_handler[2] = __46__NSConcreteFileHandle_performActivity_modes___block_invoke_2;
      io_handler[3] = &unk_1E69F3470;
      io_handler[4] = self;
      io_handler[5] = v34;
      io_handler[6] = v10;
      io_handler[7] = Current;
      dispatch_io_read(v18, 0, 0xFFFFFFFFFFFFFFFFLL, v19, io_handler);
      goto LABEL_12;
    }

    if (activityCopy != 20)
    {
      goto LABEL_12;
    }

LABEL_10:
    v16 = dispatch_source_create(MEMORY[0x1E69E96F8], v13, 0, self->_fhQueue);
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __46__NSConcreteFileHandle_performActivity_modes___block_invoke_4;
    v27[3] = &unk_1E69F34C0;
    v28 = v13;
    v27[4] = v16;
    v27[5] = v10;
    v27[6] = Current;
    dispatch_source_set_cancel_handler(v16, v27);
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __46__NSConcreteFileHandle_performActivity_modes___block_invoke_5;
    v24[3] = &unk_1E69F34E8;
    v26 = activityCopy;
    v25 = fileDescriptor;
    v24[4] = v34;
    v24[5] = v10;
    v24[6] = Current;
    dispatch_source_set_event_handler(v16, v24);
    os_unfair_lock_lock(&self->_lock);
    self->_dsrc = v16;
    os_unfair_lock_unlock(&self->_lock);
    dispatch_resume(v16);
    goto LABEL_12;
  }

  if (activityCopy == 12)
  {
    goto LABEL_10;
  }

  if (activityCopy == 14)
  {
    v14 = 16 * *MEMORY[0x1E69E9AC8];
    v15 = self->_fhQueue;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __46__NSConcreteFileHandle_performActivity_modes___block_invoke_3;
    handler[3] = &unk_1E69F3498;
    handler[4] = self;
    handler[5] = v34;
    handler[6] = v10;
    handler[7] = Current;
    v30 = v13;
    dispatch_read(v13, v14, v15, handler);
  }

LABEL_12:
  v20 = [modes count];
  if (v20 >= 1)
  {
    for (i = 0; i != v20; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(modes, i);
      v23 = CFRunLoopGetCurrent();
      CFRunLoopAddSource(v23, v10, ValueAtIndex);
    }
  }

  _Block_object_dispose(v34, 8);
}

void __46__NSConcreteFileHandle_performActivity_modes___block_invoke_2(uint64_t a1, int a2, NSObject *a3, unsigned int a4)
{
  if (a4)
  {
    atomic_store(a4, (*(*(*(a1 + 40) + 8) + 40) + 12));
  }

  if (a3 && a3 != MEMORY[0x1E69E9668])
  {
    os_unfair_lock_lock((*(a1 + 32) + 8));
    v7 = *(*(*(a1 + 40) + 8) + 40);
    v8 = *(v7 + 32);
    if (v8)
    {
      *(*(*(*(a1 + 40) + 8) + 40) + 32) = dispatch_data_create_concat(*(v7 + 32), a3);
      dispatch_release(v8);
    }

    else
    {
      *(v7 + 32) = a3;
      dispatch_retain(a3);
    }

    os_unfair_lock_unlock((*(a1 + 32) + 8));
  }

  if (a2)
  {
    os_unfair_lock_lock((*(a1 + 32) + 8));
    v9 = *(*(*(a1 + 40) + 8) + 40);
    v10 = *(v9 + 48);
    *(v9 + 48) = 0;
    os_unfair_lock_unlock((*(a1 + 32) + 8));
    if (v10)
    {
      dispatch_release(v10);
    }

    CFRunLoopSourceSignal(*(a1 + 48));
    CFRunLoopWakeUp(*(a1 + 56));
    CFRelease(*(a1 + 48));
    v11 = *(a1 + 56);

    CFRelease(v11);
  }
}

void __46__NSConcreteFileHandle_performActivity_modes___block_invoke_3(uint64_t a1, NSObject *a2, unsigned int a3)
{
  if (a3)
  {
    atomic_store(a3, (*(*(*(a1 + 40) + 8) + 40) + 12));
  }

  os_unfair_lock_lock((*(a1 + 32) + 8));
  *(*(*(*(a1 + 40) + 8) + 40) + 32) = a2;
  dispatch_retain(a2);
  os_unfair_lock_unlock((*(a1 + 32) + 8));
  CFRunLoopSourceSignal(*(a1 + 48));
  CFRunLoopWakeUp(*(a1 + 56));
  close(*(a1 + 64));
  CFRelease(*(a1 + 48));
  v5 = *(a1 + 56);

  CFRelease(v5);
}

void __46__NSConcreteFileHandle_performActivity_modes___block_invoke_4(uint64_t a1)
{
  dispatch_release(*(a1 + 32));
  close(*(a1 + 56));
  CFRelease(*(a1 + 40));
  v2 = *(a1 + 48);

  CFRelease(v2);
}

void __46__NSConcreteFileHandle_performActivity_modes___block_invoke_5(uint64_t a1)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  os_unfair_lock_lock((v2 + 8));
  v3 = *(v2 + 24);
  *(v2 + 24) = 0;
  os_unfair_lock_unlock((v2 + 8));
  if (v3)
  {
    dispatch_source_cancel(v3);
  }

  if (*(a1 + 60) == 12)
  {
    v4 = accept(*(a1 + 56), 0, 0);
    if ((v4 & 0x80000000) != 0)
    {
      atomic_store(*__error(), (v2 + 12));
    }

    atomic_store(v4, (v2 + 16));
  }

  CFRunLoopSourceSignal(*(a1 + 40));
  v5 = *(a1 + 48);

  CFRunLoopWakeUp(v5);
}

- (id)_monitor:(int)_monitor
{
  location[1] = *MEMORY[0x1E69E9840];
  v5 = 7;
  if (!_monitor)
  {
    v5 = 5;
  }

  v6 = *(&self->super.super.isa + OBJC_IVAR___NSConcreteFileHandle__flags[v5]);
  v7 = dup(self->_fd);
  monitoringQueue = self->_monitoringQueue;
  if (!monitoringQueue)
  {
    monitoringQueue = dispatch_queue_create("com.apple.NSFileHandle.fd_monitoring", 0);
    self->_monitoringQueue = monitoringQueue;
  }

  if (_monitor)
  {
    v9 = MEMORY[0x1E69E9730];
  }

  else
  {
    v9 = MEMORY[0x1E69E96F8];
  }

  v10 = dispatch_source_create(v9, v7, 0, monitoringQueue);
  objc_initWeak(location, self);
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __33__NSConcreteFileHandle__monitor___block_invoke;
  handler[3] = &unk_1E69F3510;
  objc_copyWeak(&v15, location);
  handler[4] = v6;
  dispatch_source_set_event_handler(v10, handler);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __33__NSConcreteFileHandle__monitor___block_invoke_2;
  v12[3] = &unk_1E69F3538;
  v13 = v7;
  v12[4] = v10;
  dispatch_source_set_cancel_handler(v10, v12);
  dispatch_resume(v10);
  objc_destroyWeak(&v15);
  objc_destroyWeak(location);
  return v10;
}

uint64_t __33__NSConcreteFileHandle__monitor___block_invoke(uint64_t a1)
{
  _CFAutoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    (*(*(a1 + 32) + 16))();
  }

  return _CFAutoreleasePoolPop();
}

void __33__NSConcreteFileHandle__monitor___block_invoke_2(uint64_t a1)
{
  close(*(a1 + 40));
  v2 = *(a1 + 32);

  dispatch_release(v2);
}

- (void)_locked_clearHandler:(id *)handler forSource:(id *)source
{
  v5 = *source;
  *source = 0;
  if (v5)
  {
    dispatch_source_cancel(v5);
  }

  *handler = 0;
}

- (id)readabilityHandler
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_readabilityHandler;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setReadabilityHandler:(id)handler
{
  v4 = [handler copy];
  os_unfair_lock_lock(&self->_lock);
  [(NSConcreteFileHandle *)self _locked_clearHandler:&self->_readabilityHandler forSource:&self->_readMonitoringSource];
  self->_readabilityHandler = v4;
  if (v4)
  {
    self->_readMonitoringSource = [(NSConcreteFileHandle *)self _monitor:0];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (id)writeabilityHandler
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_writeabilityHandler;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setWriteabilityHandler:(id)handler
{
  v4 = [handler copy];
  os_unfair_lock_lock(&self->_lock);
  [(NSConcreteFileHandle *)self _locked_clearHandler:&self->_writeabilityHandler forSource:&self->_writeMonitoringSource];
  self->_writeabilityHandler = v4;
  if (v4)
  {
    self->_writeMonitoringSource = [(NSConcreteFileHandle *)self _monitor:1];
  }

  os_unfair_lock_unlock(&self->_lock);
}

@end
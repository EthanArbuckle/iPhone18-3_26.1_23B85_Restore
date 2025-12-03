@interface CFPDPurgeableBuffer
- (BOOL)beginAccessing;
- (CFPDPurgeableBuffer)initWithFileDescriptor:(int)descriptor size:(unint64_t)size;
- (CFPDPurgeableBuffer)initWithPropertyList:(void *)list;
- (void)bytes;
- (void)dealloc;
- (void)endAccessing;
@end

@implementation CFPDPurgeableBuffer

- (void)bytes
{
  if (!self->safe)
  {
    [CFPDPurgeableBuffer bytes];
  }

  handle = self->handle;

  return CFDataGetBytePtr(handle);
}

- (void)dealloc
{
  v6 = *MEMORY[0x1E69E9840];
  handle = self->handle;
  if (handle)
  {
    CFRelease(handle);
  }

  v5.receiver = self;
  v5.super_class = CFPDPurgeableBuffer;
  [(CFPDPurgeableBuffer *)&v5 dealloc];
  v4 = *MEMORY[0x1E69E9840];
}

- (void)endAccessing
{
  v7 = *MEMORY[0x1E69E9840];
  if (!self->usedMalloc && self->safe)
  {
    v6 = 1;
    v3 = *MEMORY[0x1E69E9A60];
    BytePtr = CFDataGetBytePtr(self->handle);
    MEMORY[0x1865E4390](v3, BytePtr, 0, &v6);
    self->safe = 0;
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (BOOL)beginAccessing
{
  v9 = *MEMORY[0x1E69E9840];
  if (self->usedMalloc)
  {
    result = 1;
  }

  else
  {
    if (self->safe)
    {
      [CFPDPurgeableBuffer beginAccessing];
    }

    v8 = 0;
    v4 = *MEMORY[0x1E69E9A60];
    BytePtr = CFDataGetBytePtr(self->handle);
    v6 = MEMORY[0x1865E4390](v4, BytePtr, 0, &v8);
    result = (v6 | v8) == 0;
    self->safe = result;
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (CFPDPurgeableBuffer)initWithFileDescriptor:(int)descriptor size:(unint64_t)size
{
  v25 = *MEMORY[0x1E69E9840];
  if (descriptor < 0 || !size)
  {

LABEL_21:
    v7 = 0;
    goto LABEL_22;
  }

  v23.receiver = self;
  v23.super_class = CFPDPurgeableBuffer;
  v6 = [(CFPDPurgeableBuffer *)&v23 init];
  v7 = v6;
  if (v6)
  {
    if (size >= *MEMORY[0x1E69E9AC8] >> 2)
    {
      context.version = 0;
      context.info = v6;
      memset(&context.retain, 0, 24);
      context.allocate = allocatePurgeable;
      context.reallocate = 0;
      context.deallocate = deallocatePurgeable;
      context.preferredSize = 0;
      v8 = CFAllocatorCreate(&__kCFAllocatorSystemDefault, &context);
      if (!v8)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v8 = CFRetain(&__kCFAllocatorSystemDefault);
      v7->usedMalloc = 1;
      if (!v8)
      {
        goto LABEL_20;
      }
    }

    Typed = CFAllocatorAllocateTyped(v8, size, 1629243638, 0);
    if (Typed)
    {
      v10 = Typed;
      FixedMutableWithBuffer = _CFDataCreateFixedMutableWithBuffer(&__kCFAllocatorSystemDefault, size, Typed, v8);
      if (FixedMutableWithBuffer)
      {
        v12 = FixedMutableWithBuffer;
        CFRelease(v8);
        CFDataSetLength(v12, size);
        MutableBytePtr = CFDataGetMutableBytePtr(v12);
        v14 = 0;
        sizeCopy = size;
        do
        {
          v16 = read(descriptor, &MutableBytePtr[v14], sizeCopy);
          v17 = v16;
          if (v16 == -1)
          {
            if (*__error() != 4)
            {
              v21 = *__error();
              bzero(&context, 0x400uLL);
              fcntl(descriptor, 50, &context);
              v22 = _CFPrefsDaemonLog();
              if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
              {
                [(CFPDPurgeableBuffer *)&context initWithFileDescriptor:v21 size:v22];
              }

              v7->handle = v12;
              goto LABEL_20;
            }
          }

          else
          {
            v14 += v16;
            sizeCopy -= v16;
          }
        }

        while (v17);
        v7->handle = v12;
        if (v14 == size)
        {
          v7->safe = 1;
          goto LABEL_22;
        }

        bzero(&context, 0x400uLL);
        fcntl(descriptor, 50, &context);
        v20 = _CFPrefsDaemonLog();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
        {
          [CFPDPurgeableBuffer initWithFileDescriptor:v20 size:?];
        }

        goto LABEL_20;
      }

      CFAllocatorDeallocate(v8, v10);
    }

    CFRelease(v8);
LABEL_20:

    goto LABEL_21;
  }

LABEL_22:
  v18 = *MEMORY[0x1E69E9840];
  return v7;
}

- (CFPDPurgeableBuffer)initWithPropertyList:(void *)list
{
  v11 = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = CFPDPurgeableBuffer;
  v4 = [(CFPDPurgeableBuffer *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __44__CFPDPurgeableBuffer_initWithPropertyList___block_invoke;
    v9[3] = &unk_1E6D7DAD8;
    v9[4] = v4;
    DataUsingExternalBufferAllocator = __CFBinaryPlistCreateDataUsingExternalBufferAllocator(list, 0, 0, v9, 0);
    if (DataUsingExternalBufferAllocator)
    {
      v5->handle = DataUsingExternalBufferAllocator;
      v5->safe = 1;
    }

    else
    {

      v5 = 0;
    }
  }

  v7 = *MEMORY[0x1E69E9840];
  return v5;
}

CFAllocatorRef __44__CFPDPurgeableBuffer_initWithPropertyList___block_invoke(uint64_t a1, unint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (a2 >= *MEMORY[0x1E69E9AC8] >> 2)
  {
    v4 = *(a1 + 32);
    v6.version = 0;
    v6.info = v4;
    memset(&v6.retain, 0, 24);
    v6.allocate = allocatePurgeable;
    v6.reallocate = 0;
    v6.deallocate = deallocatePurgeable;
    v6.preferredSize = 0;
    result = CFAllocatorCreate(&__kCFAllocatorSystemDefault, &v6);
    v5 = *MEMORY[0x1E69E9840];
  }

  else
  {
    *(*(a1 + 32) + 25) = 1;
    v2 = *MEMORY[0x1E69E9840];

    return CFRetain(&__kCFAllocatorSystemDefault);
  }

  return result;
}

- (void)initWithFileDescriptor:(NSObject *)a3 size:.cold.1(uint64_t a1, int __errnum, NSObject *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = 136446466;
  v6 = a1;
  v7 = 2082;
  v8 = strerror(__errnum);
  _os_log_fault_impl(&dword_1830E6000, a3, OS_LOG_TYPE_FAULT, "couldn't read preferences file %{public}s due to %{public}s", &v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

- (void)initWithFileDescriptor:(uint64_t)a1 size:(NSObject *)a2 .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 136380675;
  v4 = a1;
  _os_log_fault_impl(&dword_1830E6000, a2, OS_LOG_TYPE_FAULT, "read an unexpected amount of data from %{private}s. This likely means that someone wrote directly to that file behind cfprefsd's back, which is unsupported.", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end
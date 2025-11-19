@interface _MTLIOHandleCompressed
- (_MTLIOHandleCompressed)initWithDevice:(id)a3 path:(const char *)a4 compressionType:(int64_t)a5 error:(id *)a6 uncached:(BOOL)a7;
- (int64_t)read:(void *)a3 size:(unint64_t)a4 offset:(unint64_t)a5 stagingBuffer:(void *)a6 stagingBufferSize:(unint64_t)a7;
- (int64_t)read:(void *)a3 size:(unint64_t)a4 offset:(unint64_t)a5 stagingBuffer:(void *)a6 stagingBufferSize:(unint64_t)a7 needsDecompress:(BOOL *)a8;
- (void)dealloc;
- (void)readIntoStagingBuffer:(unint64_t)a3 offset:(unint64_t)a4 stagingBuffer:(void *)a5 stagingBufferSize:(unint64_t)a6;
- (void)readIntoStagingBuffer:(unint64_t)a3 offset:(unint64_t)a4 stagingBuffer:(void *)a5 stagingBufferSize:(unint64_t)a6 needsDecompress:(BOOL *)a7;
@end

@implementation _MTLIOHandleCompressed

- (_MTLIOHandleCompressed)initWithDevice:(id)a3 path:(const char *)a4 compressionType:(int64_t)a5 error:(id *)a6 uncached:(BOOL)a7
{
  v7 = a7;
  v40[1] = *MEMORY[0x1E69E9840];
  if (a6)
  {
    *a6 = 0;
  }

  v32.receiver = self;
  v32.super_class = _MTLIOHandleCompressed;
  v12 = [(_MTLObjectWithLabel *)&v32 init];
  if (v12)
  {
    v12->_device = a3;
    v13 = open(a4, 0);
    v12->_fd = v13;
    if ((v13 & 0x80000000) == 0)
    {
      if (fstat(v13, &v31) < 0)
      {
        if (!a6)
        {
          goto LABEL_22;
        }

        v25 = MEMORY[0x1E696ABC0];
        v37 = *MEMORY[0x1E696A578];
        v38 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Internal Error"];
        v26 = MEMORY[0x1E695DF20];
        v27 = &v38;
        v28 = &v37;
      }

      else
      {
        if ((v31.st_mode & 0xF000) == 0x8000)
        {
          if (v7)
          {
            fcntl(v12->_fd, 48, 1);
          }

          v14 = MTLIOCreateDecompressionContext(v12->_fd, a5);
          v12->_handle = v14;
          if (v14)
          {
            if (MTLTraceEnabled())
            {
              kdebug_trace_string();
              if (MTLTraceEnabled())
              {
                [(_MTLIOHandleCompressed *)v12 globalTraceObjectID];
                [a3 registryID];
                kdebug_trace();
              }
            }

            goto LABEL_23;
          }

          if (a6)
          {
            v15 = MEMORY[0x1E696ABC0];
            v16 = *__error();
            v33 = *MEMORY[0x1E696A578];
            v34 = @"Failed to create compression context because file was not compressed with MTLIOCompressionContext";
            v19 = MEMORY[0x1E695DF20];
            v20 = &v34;
            v21 = &v33;
            goto LABEL_15;
          }

          goto LABEL_22;
        }

        if (!a6)
        {
          goto LABEL_22;
        }

        v25 = MEMORY[0x1E696ABC0];
        v35 = *MEMORY[0x1E696A578];
        v36 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Not a regular file"];
        v26 = MEMORY[0x1E695DF20];
        v27 = &v36;
        v28 = &v35;
      }

      v22 = [v26 dictionaryWithObjects:v27 forKeys:v28 count:1];
      v23 = v25;
      v24 = 2;
      goto LABEL_21;
    }

    if (a6)
    {
      v15 = MEMORY[0x1E696ABC0];
      v16 = *__error();
      v39 = *MEMORY[0x1E696A578];
      v17 = MEMORY[0x1E696AEC0];
      v18 = __error();
      v40[0] = [v17 stringWithFormat:@"%s", strerror(*v18)];
      v19 = MEMORY[0x1E695DF20];
      v20 = v40;
      v21 = &v39;
LABEL_15:
      v22 = [v19 dictionaryWithObjects:v20 forKeys:v21 count:1];
      v23 = v15;
      v24 = v16;
LABEL_21:
      *a6 = [v23 errorWithDomain:@"MTLIOError" code:v24 userInfo:v22];
    }

LABEL_22:

    v12 = 0;
  }

LABEL_23:
  v29 = *MEMORY[0x1E69E9840];
  return v12;
}

- (void)dealloc
{
  fd = self->_fd;
  if ((fd & 0x80000000) == 0)
  {
    close(fd);
  }

  handle = self->_handle;
  if (handle)
  {
    MTLIODestroyDecompressionContext(handle);
  }

  v5.receiver = self;
  v5.super_class = _MTLIOHandleCompressed;
  [(_MTLObjectWithLabel *)&v5 dealloc];
}

- (int64_t)read:(void *)a3 size:(unint64_t)a4 offset:(unint64_t)a5 stagingBuffer:(void *)a6 stagingBufferSize:(unint64_t)a7
{
  v12 = MTLIODecompressionContextStagingBufferSize(self->_handle, a4, a5);
  handle = self->_handle;

  return MTLIODecompressionContextRead(handle, a3, a6, v12, a4, a5, 1);
}

- (void)readIntoStagingBuffer:(unint64_t)a3 offset:(unint64_t)a4 stagingBuffer:(void *)a5 stagingBufferSize:(unint64_t)a6
{
  v11 = MTLIODecompressionContextStagingBufferSize(self->_handle, a3, a4);
  if (MTLIODecompressionContextRead(self->_handle, a5, a5 + a6 - v11, v11, a3, a4, 1) == a3)
  {
    return a5;
  }

  else
  {
    return 0;
  }
}

- (int64_t)read:(void *)a3 size:(unint64_t)a4 offset:(unint64_t)a5 stagingBuffer:(void *)a6 stagingBufferSize:(unint64_t)a7 needsDecompress:(BOOL *)a8
{
  *a8 = 1;
  v12 = MTLIODecompressionContextStagingBufferSize(self->_handle, a4, a5);
  v13 = MTLIODecompressionContextOffset(self->_handle, a4, a5);
  fd = self->_fd;

  return pread(fd, a6, v12, v13);
}

- (void)readIntoStagingBuffer:(unint64_t)a3 offset:(unint64_t)a4 stagingBuffer:(void *)a5 stagingBufferSize:(unint64_t)a6 needsDecompress:(BOOL *)a7
{
  *a7 = 1;
  v12 = MTLIODecompressionContextStagingBufferSize(self->_handle, a3, a4);
  v13 = MTLIODecompressionContextOffset(self->_handle, a3, a4);
  v14 = a5 + a6 - v12;
  if (pread(self->_fd, v14, v12, v13) >= v12)
  {
    return v14;
  }

  else
  {
    return 0;
  }
}

@end
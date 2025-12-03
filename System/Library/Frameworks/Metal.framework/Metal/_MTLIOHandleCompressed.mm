@interface _MTLIOHandleCompressed
- (_MTLIOHandleCompressed)initWithDevice:(id)device path:(const char *)path compressionType:(int64_t)type error:(id *)error uncached:(BOOL)uncached;
- (int64_t)read:(void *)read size:(unint64_t)size offset:(unint64_t)offset stagingBuffer:(void *)buffer stagingBufferSize:(unint64_t)bufferSize;
- (int64_t)read:(void *)read size:(unint64_t)size offset:(unint64_t)offset stagingBuffer:(void *)buffer stagingBufferSize:(unint64_t)bufferSize needsDecompress:(BOOL *)decompress;
- (void)dealloc;
- (void)readIntoStagingBuffer:(unint64_t)buffer offset:(unint64_t)offset stagingBuffer:(void *)stagingBuffer stagingBufferSize:(unint64_t)size;
- (void)readIntoStagingBuffer:(unint64_t)buffer offset:(unint64_t)offset stagingBuffer:(void *)stagingBuffer stagingBufferSize:(unint64_t)size needsDecompress:(BOOL *)decompress;
@end

@implementation _MTLIOHandleCompressed

- (_MTLIOHandleCompressed)initWithDevice:(id)device path:(const char *)path compressionType:(int64_t)type error:(id *)error uncached:(BOOL)uncached
{
  uncachedCopy = uncached;
  v40[1] = *MEMORY[0x1E69E9840];
  if (error)
  {
    *error = 0;
  }

  v32.receiver = self;
  v32.super_class = _MTLIOHandleCompressed;
  v12 = [(_MTLObjectWithLabel *)&v32 init];
  if (v12)
  {
    v12->_device = device;
    v13 = open(path, 0);
    v12->_fd = v13;
    if ((v13 & 0x80000000) == 0)
    {
      if (fstat(v13, &v31) < 0)
      {
        if (!error)
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
          if (uncachedCopy)
          {
            fcntl(v12->_fd, 48, 1);
          }

          v14 = MTLIOCreateDecompressionContext(v12->_fd, type);
          v12->_handle = v14;
          if (v14)
          {
            if (MTLTraceEnabled())
            {
              kdebug_trace_string();
              if (MTLTraceEnabled())
              {
                [(_MTLIOHandleCompressed *)v12 globalTraceObjectID];
                [device registryID];
                kdebug_trace();
              }
            }

            goto LABEL_23;
          }

          if (error)
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

        if (!error)
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

    if (error)
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
      *error = [v23 errorWithDomain:@"MTLIOError" code:v24 userInfo:v22];
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

- (int64_t)read:(void *)read size:(unint64_t)size offset:(unint64_t)offset stagingBuffer:(void *)buffer stagingBufferSize:(unint64_t)bufferSize
{
  v12 = MTLIODecompressionContextStagingBufferSize(self->_handle, size, offset);
  handle = self->_handle;

  return MTLIODecompressionContextRead(handle, read, buffer, v12, size, offset, 1);
}

- (void)readIntoStagingBuffer:(unint64_t)buffer offset:(unint64_t)offset stagingBuffer:(void *)stagingBuffer stagingBufferSize:(unint64_t)size
{
  v11 = MTLIODecompressionContextStagingBufferSize(self->_handle, buffer, offset);
  if (MTLIODecompressionContextRead(self->_handle, stagingBuffer, stagingBuffer + size - v11, v11, buffer, offset, 1) == buffer)
  {
    return stagingBuffer;
  }

  else
  {
    return 0;
  }
}

- (int64_t)read:(void *)read size:(unint64_t)size offset:(unint64_t)offset stagingBuffer:(void *)buffer stagingBufferSize:(unint64_t)bufferSize needsDecompress:(BOOL *)decompress
{
  *decompress = 1;
  v12 = MTLIODecompressionContextStagingBufferSize(self->_handle, size, offset);
  v13 = MTLIODecompressionContextOffset(self->_handle, size, offset);
  fd = self->_fd;

  return pread(fd, buffer, v12, v13);
}

- (void)readIntoStagingBuffer:(unint64_t)buffer offset:(unint64_t)offset stagingBuffer:(void *)stagingBuffer stagingBufferSize:(unint64_t)size needsDecompress:(BOOL *)decompress
{
  *decompress = 1;
  v12 = MTLIODecompressionContextStagingBufferSize(self->_handle, buffer, offset);
  v13 = MTLIODecompressionContextOffset(self->_handle, buffer, offset);
  v14 = stagingBuffer + size - v12;
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
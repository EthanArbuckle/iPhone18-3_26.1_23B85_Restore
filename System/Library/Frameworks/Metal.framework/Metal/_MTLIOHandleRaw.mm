@interface _MTLIOHandleRaw
- (_MTLIOHandleRaw)initWithDevice:(id)a3 path:(const char *)a4 error:(id *)a5 uncached:(BOOL)a6;
- (void)dealloc;
- (void)readIntoStagingBuffer:(unint64_t)a3 offset:(unint64_t)a4 stagingBuffer:(void *)a5 stagingBufferSize:(unint64_t)a6;
- (void)readIntoStagingBuffer:(unint64_t)a3 offset:(unint64_t)a4 stagingBuffer:(void *)a5 stagingBufferSize:(unint64_t)a6 needsDecompress:(BOOL *)a7;
@end

@implementation _MTLIOHandleRaw

- (_MTLIOHandleRaw)initWithDevice:(id)a3 path:(const char *)a4 error:(id *)a5 uncached:(BOOL)a6
{
  v6 = a6;
  v32[1] = *MEMORY[0x1E69E9840];
  if (a5)
  {
    *a5 = 0;
  }

  v26.receiver = self;
  v26.super_class = _MTLIOHandleRaw;
  v10 = [(_MTLObjectWithLabel *)&v26 init];
  if (v10)
  {
    v10->_device = a3;
    v11 = open(a4, 0);
    v10->_fd = v11;
    if (v11 < 0)
    {
      if (a5)
      {
        v12 = MEMORY[0x1E696ABC0];
        v13 = *__error();
        v31 = *MEMORY[0x1E696A578];
        v14 = MEMORY[0x1E696AEC0];
        v15 = __error();
        v32[0] = [v14 stringWithFormat:@"%s", strerror(*v15)];
        v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:&v31 count:1];
        v17 = v12;
        v18 = v13;
LABEL_19:
        *a5 = [v17 errorWithDomain:@"MTLIOError" code:v18 userInfo:v16];
      }
    }

    else if (fstat(v11, &v25) < 0)
    {
      if (a5)
      {
        v19 = MEMORY[0x1E696ABC0];
        v29 = *MEMORY[0x1E696A578];
        v30 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Internal Error"];
        v20 = MEMORY[0x1E695DF20];
        v21 = &v30;
        v22 = &v29;
LABEL_18:
        v16 = [v20 dictionaryWithObjects:v21 forKeys:v22 count:1];
        v17 = v19;
        v18 = 2;
        goto LABEL_19;
      }
    }

    else
    {
      if ((v25.st_mode & 0xF000) == 0x8000)
      {
        if (v6)
        {
          fcntl(v10->_fd, 48, 1);
        }

        if (MTLTraceEnabled())
        {
          kdebug_trace_string();
          if (MTLTraceEnabled())
          {
            [(_MTLIOHandleRaw *)v10 globalTraceObjectID];
            [a3 registryID];
            kdebug_trace();
          }
        }

        goto LABEL_21;
      }

      if (a5)
      {
        v19 = MEMORY[0x1E696ABC0];
        v27 = *MEMORY[0x1E696A578];
        v28 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Not a regular file"];
        v20 = MEMORY[0x1E695DF20];
        v21 = &v28;
        v22 = &v27;
        goto LABEL_18;
      }
    }

    v10 = 0;
  }

LABEL_21:
  v23 = *MEMORY[0x1E69E9840];
  return v10;
}

- (void)dealloc
{
  fd = self->_fd;
  if ((fd & 0x80000000) == 0)
  {
    close(fd);
  }

  v4.receiver = self;
  v4.super_class = _MTLIOHandleRaw;
  [(_MTLObjectWithLabel *)&v4 dealloc];
}

- (void)readIntoStagingBuffer:(unint64_t)a3 offset:(unint64_t)a4 stagingBuffer:(void *)a5 stagingBufferSize:(unint64_t)a6
{
  if (pread(self->_fd, a5, a3, a4) >= a3)
  {
    return a5;
  }

  else
  {
    return 0;
  }
}

- (void)readIntoStagingBuffer:(unint64_t)a3 offset:(unint64_t)a4 stagingBuffer:(void *)a5 stagingBufferSize:(unint64_t)a6 needsDecompress:(BOOL *)a7
{
  *a7 = 0;
  if (pread(self->_fd, a5, a3, a4) >= a3)
  {
    return a5;
  }

  else
  {
    return 0;
  }
}

@end
@interface _NSJSONWriter
- (BOOL)appendString:(id)a3 range:(_NSRange)a4;
- (_NSJSONWriter)init;
- (id)dataWithRootObject:(id)a3 options:(unint64_t)a4;
- (int64_t)writeRootObject:(id)a3 toStream:(id)a4 options:(unint64_t)a5;
- (void)dealloc;
- (void)resizeTemporaryBuffer:(void *)result;
@end

@implementation _NSJSONWriter

- (_NSJSONWriter)init
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = _NSJSONWriter;
  result = [(_NSJSONWriter *)&v3 init];
  if (result)
  {
    result->tempBuffer = 0;
    result->tempBufferLen = 0;
    result->totalDataWritten = 0;
  }

  return result;
}

- (void)dealloc
{
  v6 = *MEMORY[0x1E69E9840];

  tempBuffer = self->tempBuffer;
  if (tempBuffer)
  {
    free(tempBuffer);
  }

  dataBuffer = self->dataBuffer;
  if (dataBuffer && self->freeDataBuffer)
  {
    free(dataBuffer);
  }

  v5.receiver = self;
  v5.super_class = _NSJSONWriter;
  [(_NSJSONWriter *)&v5 dealloc];
}

- (id)dataWithRootObject:(id)a3 options:(unint64_t)a4
{
  self->dataBuffer = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
  *&self->dataBufferLen = xmmword_1814463A0;
  self->freeDataBuffer = 1;
  self->kind = 1;
  if (!_writeJSONValue(self, a3, 0, a4))
  {
    return 0;
  }

  self->freeDataBuffer = 0;
  v7 = MEMORY[0x1E695DEF0];
  dataBuffer = self->dataBuffer;
  dataLen = self->dataLen;

  return [v7 dataWithBytesNoCopy:dataBuffer length:dataLen freeWhenDone:1];
}

- (int64_t)writeRootObject:(id)a3 toStream:(id)a4 options:(unint64_t)a5
{
  self->outputStream = a4;
  self->kind = 2;
  self->dataBuffer = malloc_type_malloc(0x100uLL, 0x100004077774924uLL);
  self->dataBufferLen = 256;
  self->freeDataBuffer = 1;
  if (_writeJSONValue(self, a3, 0, a5))
  {
    return self->totalDataWritten;
  }

  else
  {
    return -1;
  }
}

- (void)resizeTemporaryBuffer:(void *)result
{
  if (result)
  {
    v2 = result;
    v3 = result[8];
    v4 = v3 >= a2;
    v5 = v3 >> 13;
    if (!v4 && v5 == 0)
    {
      v7 = 0x2000;
      if (a2 < 0x2000)
      {
        v7 = a2;
      }

      if (v7 <= 0x100)
      {
        v8 = 256;
      }

      else
      {
        v8 = v7;
      }

      v9 = result[7];
      if (v9)
      {
        free(v9);
      }

      result = malloc_type_malloc(v8, 0x100004077774924uLL);
      v2[7] = result;
      v2[8] = v8;
    }
  }

  return result;
}

- (BOOL)appendString:(id)a3 range:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v16 = *MEMORY[0x1E69E9840];
  [(_NSJSONWriter *)self resizeTemporaryBuffer:?];
  v14 = 0;
  v15 = 0;
  __n = 0;
  [a3 getBytes:self->tempBuffer maxLength:self->tempBufferLen usedLength:&__n encoding:4 options:0 range:location remainingRange:{length, &v14}];
  appended = _appendBytes(self->tempBuffer, __n, self, v8);
  if (appended)
  {
    v10 = v15;
    if (v15)
    {
      do
      {
        [a3 getBytes:self->tempBuffer maxLength:self->tempBufferLen usedLength:&__n encoding:4 options:0 range:v14 remainingRange:{v10, &v14}];
        LOBYTE(appended) = _appendBytes(self->tempBuffer, __n, self, v11);
        v10 = v15;
      }

      while (v15 && (appended & 1) != 0);
    }

    else
    {
      LOBYTE(appended) = 1;
    }
  }

  return appended;
}

@end
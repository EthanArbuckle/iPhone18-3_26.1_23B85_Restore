@interface NSEncodingDetectionBuffer
- (BOOL)_growBufferIfNeededToAccomodateByteCount:(unint64_t)a3;
- (NSEncodingDetectionBuffer)initWithNSStringEncoding:(unint64_t)a3 CFStringEncoding:(unsigned int)a4 stackBuffer:(char *)a5 bufferLength:(unint64_t)a6 placeholder:(id)a7;
- (id)stringWithLossySubsitutionString:(id)a3;
- (void)appendByte1:(unsigned __int8)a3 byte2:(unsigned __int8)a4;
- (void)appendByte1:(unsigned __int8)a3 byte2:(unsigned __int8)a4 byte3:(unsigned __int8)a5;
- (void)appendByte1:(unsigned __int8)a3 byte2:(unsigned __int8)a4 byte3:(unsigned __int8)a5 byte4:(unsigned __int8)a6;
- (void)appendByte:(unsigned __int8)a3;
- (void)appendBytes:(const char *)a3 count:(unint64_t)a4;
- (void)appendPlaceholder;
- (void)appendUTF16Char:(unsigned __int16)a3;
- (void)appendUTF32Char:(unsigned int)a3;
- (void)dealloc;
@end

@implementation NSEncodingDetectionBuffer

- (NSEncodingDetectionBuffer)initWithNSStringEncoding:(unint64_t)a3 CFStringEncoding:(unsigned int)a4 stackBuffer:(char *)a5 bufferLength:(unint64_t)a6 placeholder:(id)a7
{
  v18 = *MEMORY[0x1E69E9840];
  v17.receiver = self;
  v17.super_class = NSEncodingDetectionBuffer;
  v12 = [(NSEncodingDetectionBuffer *)&v17 init];
  v13 = v12;
  if (v12)
  {
    v12->_nsEncoding = a3;
    v12->_cfEncoding = a4;
    if (a5)
    {
      v12->_bytes = a5;
      v12->_bytesAllocated = 0;
    }

    else
    {
      if (a6)
      {
        v14 = a6;
      }

      else
      {
        v14 = 64;
      }

      a6 = malloc_good_size(v14);
      v15 = malloc_type_malloc(a6, 0x100004077774924uLL);
      v13->_bytes = v15;
      v13->_bytesAllocated = 1;
      if (!v15)
      {

        return 0;
      }
    }

    v13->_bytesIndex = 0;
    v13->_bytesLength = a6;
    v13->_placeholder = a7;
  }

  return v13;
}

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];

  self->_placeholder = 0;
  if (self->_bytesAllocated)
  {
    bytes = self->_bytes;
    if (bytes)
    {
      free(bytes);
      self->_bytes = 0;
      self->_bytesIndex = 0;
      self->_bytesLength = 0;
    }
  }

  v4.receiver = self;
  v4.super_class = NSEncodingDetectionBuffer;
  [(NSEncodingDetectionBuffer *)&v4 dealloc];
}

- (BOOL)_growBufferIfNeededToAccomodateByteCount:(unint64_t)a3
{
  if (!a3)
  {
    LOBYTE(v5) = 1;
    return v5;
  }

  bytesLength = self->_bytesLength;
  if (self->_bytesIndex + a3 < bytesLength)
  {
    goto LABEL_3;
  }

  v6 = malloc_good_size(2 * bytesLength);
  if (v6 <= bytesLength)
  {
    LOBYTE(v5) = 0;
    return v5;
  }

  v7 = v6;
  v5 = malloc_type_malloc(v6, 0x100004077774924uLL);
  if (v5)
  {
    v8 = v5;
    bytesAllocated = self->_bytesAllocated;
    bytes = self->_bytes;
    memcpy(v5, bytes, self->_bytesIndex);
    self->_bytesLength = v7;
    self->_bytes = v8;
    LOBYTE(v5) = 1;
    self->_bytesAllocated = 1;
    if (bytesAllocated)
    {
      free(bytes);
LABEL_3:
      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (void)appendByte:(unsigned __int8)a3
{
  if ([(NSEncodingDetectionBuffer *)self _growBufferIfNeededToAccomodateByteCount:1])
  {
    self->_bytes[self->_bytesIndex++] = a3;
  }
}

- (void)appendByte1:(unsigned __int8)a3 byte2:(unsigned __int8)a4
{
  if ([(NSEncodingDetectionBuffer *)self _growBufferIfNeededToAccomodateByteCount:2])
  {
    self->_bytes[self->_bytesIndex] = a3;
    self->_bytes[self->_bytesIndex + 1] = a4;
    self->_bytesIndex += 2;
  }
}

- (void)appendByte1:(unsigned __int8)a3 byte2:(unsigned __int8)a4 byte3:(unsigned __int8)a5
{
  if ([(NSEncodingDetectionBuffer *)self _growBufferIfNeededToAccomodateByteCount:3])
  {
    self->_bytes[self->_bytesIndex] = a3;
    self->_bytes[self->_bytesIndex + 1] = a4;
    self->_bytes[self->_bytesIndex + 2] = a5;
    self->_bytesIndex += 3;
  }
}

- (void)appendUTF16Char:(unsigned __int16)a3
{
  if ([(NSEncodingDetectionBuffer *)self _growBufferIfNeededToAccomodateByteCount:2])
  {
    *&self->_bytes[self->_bytesIndex] = a3;
    self->_bytesIndex += 2;
  }
}

- (void)appendUTF32Char:(unsigned int)a3
{
  if ([(NSEncodingDetectionBuffer *)self _growBufferIfNeededToAccomodateByteCount:4])
  {
    *&self->_bytes[self->_bytesIndex] = a3;
    self->_bytesIndex += 4;
  }
}

- (void)appendByte1:(unsigned __int8)a3 byte2:(unsigned __int8)a4 byte3:(unsigned __int8)a5 byte4:(unsigned __int8)a6
{
  if ([(NSEncodingDetectionBuffer *)self _growBufferIfNeededToAccomodateByteCount:4])
  {
    self->_bytes[self->_bytesIndex] = a3;
    self->_bytes[self->_bytesIndex + 1] = a4;
    self->_bytes[self->_bytesIndex + 2] = a5;
    self->_bytes[self->_bytesIndex + 3] = a6;
    self->_bytesIndex += 4;
  }
}

- (void)appendPlaceholder
{
  placeholder = self->_placeholder;
  if (placeholder)
  {
    v4 = [(NSEncodingDetectionPlaceholder *)placeholder bytesLength];
    if ([(NSEncodingDetectionBuffer *)self _growBufferIfNeededToAccomodateByteCount:v4])
    {
      memcpy(&self->_bytes[self->_bytesIndex], [(NSEncodingDetectionPlaceholder *)self->_placeholder bytes], v4);
      self->_bytesIndex += v4;
    }
  }
}

- (void)appendBytes:(const char *)a3 count:(unint64_t)a4
{
  if (!a3)
  {
    [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInMethod:"handleFailureInMethod:object:file:lineNumber:description:" object:a2 file:self lineNumber:@"NSEncodingDetectionBuffer.m" description:151, @"Invalid parameter not satisfying: %@", @"fromBytes != nil"];
  }

  if ([(NSEncodingDetectionBuffer *)self _growBufferIfNeededToAccomodateByteCount:a4])
  {
    memcpy(&self->_bytes[self->_bytesIndex], a3, a4);
    self->_bytesIndex += a4;
  }
}

- (id)stringWithLossySubsitutionString:(id)a3
{
  v5 = [objc_alloc(MEMORY[0x1E695DF88]) initWithBytes:self->_bytes length:self->_bytesIndex];
  v6 = [[NSString alloc] initWithData:v5 encoding:self->_nsEncoding];

  if (a3 && v6)
  {
    v7 = [(NSString *)v6 stringByReplacingOccurrencesOfString:[(NSEncodingDetectionPlaceholder *)self->_placeholder string] withString:a3];

    v6 = v7;
  }

  return v6;
}

@end
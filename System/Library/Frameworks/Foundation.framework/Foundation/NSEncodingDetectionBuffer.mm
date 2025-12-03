@interface NSEncodingDetectionBuffer
- (BOOL)_growBufferIfNeededToAccomodateByteCount:(unint64_t)count;
- (NSEncodingDetectionBuffer)initWithNSStringEncoding:(unint64_t)encoding CFStringEncoding:(unsigned int)stringEncoding stackBuffer:(char *)buffer bufferLength:(unint64_t)length placeholder:(id)placeholder;
- (id)stringWithLossySubsitutionString:(id)string;
- (void)appendByte1:(unsigned __int8)byte1 byte2:(unsigned __int8)byte2;
- (void)appendByte1:(unsigned __int8)byte1 byte2:(unsigned __int8)byte2 byte3:(unsigned __int8)byte3;
- (void)appendByte1:(unsigned __int8)byte1 byte2:(unsigned __int8)byte2 byte3:(unsigned __int8)byte3 byte4:(unsigned __int8)byte4;
- (void)appendByte:(unsigned __int8)byte;
- (void)appendBytes:(const char *)bytes count:(unint64_t)count;
- (void)appendPlaceholder;
- (void)appendUTF16Char:(unsigned __int16)char;
- (void)appendUTF32Char:(unsigned int)char;
- (void)dealloc;
@end

@implementation NSEncodingDetectionBuffer

- (NSEncodingDetectionBuffer)initWithNSStringEncoding:(unint64_t)encoding CFStringEncoding:(unsigned int)stringEncoding stackBuffer:(char *)buffer bufferLength:(unint64_t)length placeholder:(id)placeholder
{
  v18 = *MEMORY[0x1E69E9840];
  v17.receiver = self;
  v17.super_class = NSEncodingDetectionBuffer;
  v12 = [(NSEncodingDetectionBuffer *)&v17 init];
  v13 = v12;
  if (v12)
  {
    v12->_nsEncoding = encoding;
    v12->_cfEncoding = stringEncoding;
    if (buffer)
    {
      v12->_bytes = buffer;
      v12->_bytesAllocated = 0;
    }

    else
    {
      if (length)
      {
        lengthCopy = length;
      }

      else
      {
        lengthCopy = 64;
      }

      length = malloc_good_size(lengthCopy);
      v15 = malloc_type_malloc(length, 0x100004077774924uLL);
      v13->_bytes = v15;
      v13->_bytesAllocated = 1;
      if (!v15)
      {

        return 0;
      }
    }

    v13->_bytesIndex = 0;
    v13->_bytesLength = length;
    v13->_placeholder = placeholder;
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

- (BOOL)_growBufferIfNeededToAccomodateByteCount:(unint64_t)count
{
  if (!count)
  {
    LOBYTE(v5) = 1;
    return v5;
  }

  bytesLength = self->_bytesLength;
  if (self->_bytesIndex + count < bytesLength)
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

- (void)appendByte:(unsigned __int8)byte
{
  if ([(NSEncodingDetectionBuffer *)self _growBufferIfNeededToAccomodateByteCount:1])
  {
    self->_bytes[self->_bytesIndex++] = byte;
  }
}

- (void)appendByte1:(unsigned __int8)byte1 byte2:(unsigned __int8)byte2
{
  if ([(NSEncodingDetectionBuffer *)self _growBufferIfNeededToAccomodateByteCount:2])
  {
    self->_bytes[self->_bytesIndex] = byte1;
    self->_bytes[self->_bytesIndex + 1] = byte2;
    self->_bytesIndex += 2;
  }
}

- (void)appendByte1:(unsigned __int8)byte1 byte2:(unsigned __int8)byte2 byte3:(unsigned __int8)byte3
{
  if ([(NSEncodingDetectionBuffer *)self _growBufferIfNeededToAccomodateByteCount:3])
  {
    self->_bytes[self->_bytesIndex] = byte1;
    self->_bytes[self->_bytesIndex + 1] = byte2;
    self->_bytes[self->_bytesIndex + 2] = byte3;
    self->_bytesIndex += 3;
  }
}

- (void)appendUTF16Char:(unsigned __int16)char
{
  if ([(NSEncodingDetectionBuffer *)self _growBufferIfNeededToAccomodateByteCount:2])
  {
    *&self->_bytes[self->_bytesIndex] = char;
    self->_bytesIndex += 2;
  }
}

- (void)appendUTF32Char:(unsigned int)char
{
  if ([(NSEncodingDetectionBuffer *)self _growBufferIfNeededToAccomodateByteCount:4])
  {
    *&self->_bytes[self->_bytesIndex] = char;
    self->_bytesIndex += 4;
  }
}

- (void)appendByte1:(unsigned __int8)byte1 byte2:(unsigned __int8)byte2 byte3:(unsigned __int8)byte3 byte4:(unsigned __int8)byte4
{
  if ([(NSEncodingDetectionBuffer *)self _growBufferIfNeededToAccomodateByteCount:4])
  {
    self->_bytes[self->_bytesIndex] = byte1;
    self->_bytes[self->_bytesIndex + 1] = byte2;
    self->_bytes[self->_bytesIndex + 2] = byte3;
    self->_bytes[self->_bytesIndex + 3] = byte4;
    self->_bytesIndex += 4;
  }
}

- (void)appendPlaceholder
{
  placeholder = self->_placeholder;
  if (placeholder)
  {
    bytesLength = [(NSEncodingDetectionPlaceholder *)placeholder bytesLength];
    if ([(NSEncodingDetectionBuffer *)self _growBufferIfNeededToAccomodateByteCount:bytesLength])
    {
      memcpy(&self->_bytes[self->_bytesIndex], [(NSEncodingDetectionPlaceholder *)self->_placeholder bytes], bytesLength);
      self->_bytesIndex += bytesLength;
    }
  }
}

- (void)appendBytes:(const char *)bytes count:(unint64_t)count
{
  if (!bytes)
  {
    [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInMethod:"handleFailureInMethod:object:file:lineNumber:description:" object:a2 file:self lineNumber:@"NSEncodingDetectionBuffer.m" description:151, @"Invalid parameter not satisfying: %@", @"fromBytes != nil"];
  }

  if ([(NSEncodingDetectionBuffer *)self _growBufferIfNeededToAccomodateByteCount:count])
  {
    memcpy(&self->_bytes[self->_bytesIndex], bytes, count);
    self->_bytesIndex += count;
  }
}

- (id)stringWithLossySubsitutionString:(id)string
{
  v5 = [objc_alloc(MEMORY[0x1E695DF88]) initWithBytes:self->_bytes length:self->_bytesIndex];
  v6 = [[NSString alloc] initWithData:v5 encoding:self->_nsEncoding];

  if (string && v6)
  {
    v7 = [(NSString *)v6 stringByReplacingOccurrencesOfString:[(NSEncodingDetectionPlaceholder *)self->_placeholder string] withString:string];

    v6 = v7;
  }

  return v6;
}

@end
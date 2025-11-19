@interface NFCISO15693ReadMultipleBlocksConfiguration
- (NFCISO15693ReadMultipleBlocksConfiguration)initWithRange:(NSRange)range chunkSize:(NSUInteger)chunkSize maximumRetries:(NSUInteger)maximumRetries retryInterval:(NSTimeInterval)retryInterval;
- (NSRange)range;
- (id)asNSDataArrayWithUID:(id)a3 error:(id *)a4;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation NFCISO15693ReadMultipleBlocksConfiguration

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = NFCISO15693ReadMultipleBlocksConfiguration;
  v4 = [(NFCTagCommandConfiguration *)&v7 copyWithZone:a3];
  v5 = v4;
  if (v4)
  {
    [v4 setRange:{self->_range.location, self->_range.length}];
    [v5 setChunkSize:self->_chunkSize];
  }

  return v5;
}

- (NFCISO15693ReadMultipleBlocksConfiguration)initWithRange:(NSRange)range chunkSize:(NSUInteger)chunkSize maximumRetries:(NSUInteger)maximumRetries retryInterval:(NSTimeInterval)retryInterval
{
  length = range.length;
  location = range.location;
  v16.receiver = self;
  v16.super_class = NFCISO15693ReadMultipleBlocksConfiguration;
  v11 = [(NFCISO15693ReadMultipleBlocksConfiguration *)&v16 init];
  v12 = v11;
  if (v11)
  {
    v11->_range.location = location;
    v11->_range.length = length;
    v11->_chunkSize = chunkSize;
    v15.receiver = v11;
    v15.super_class = NFCISO15693ReadMultipleBlocksConfiguration;
    [(NFCTagCommandConfiguration *)&v15 setMaximumRetries:maximumRetries];
    v14.receiver = v12;
    v14.super_class = NFCISO15693ReadMultipleBlocksConfiguration;
    [(NFCTagCommandConfiguration *)&v14 setRetryInterval:retryInterval];
    v12->_flags = 34;
  }

  return v12;
}

- (id)asNSDataArrayWithUID:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (self->_chunkSize && (p_range = &self->_range, (v8 = self->_range.length) != 0) && p_range->location <= 0xFF && p_range->location + v8 < 0x101)
  {
    v9 = objc_opt_new();
    length = self->_range.length;
    if (length)
    {
      location = p_range->location;
      do
      {
        v12 = objc_opt_new();
        flags = self->_flags;
        [v12 appendBytes:&flags length:1];
        flags = 35;
        [v12 appendBytes:&flags length:1];
        [v12 appendData:v6];
        flags = location;
        [v12 appendBytes:&flags length:1];
        chunkSize = self->_chunkSize;
        if (length >= chunkSize)
        {
          v14 = self->_chunkSize;
        }

        else
        {
          LOBYTE(v14) = length;
        }

        flags = v14 - 1;
        [v12 appendBytes:&flags length:1];
        [v9 addObject:v12];

        v15 = length > chunkSize;
        if (length <= chunkSize)
        {
          v16 = 0;
        }

        else
        {
          v16 = chunkSize;
        }

        LOBYTE(location) = v16 + location;
        if (length >= chunkSize)
        {
          length -= chunkSize;
        }

        else
        {
          length = 0;
        }
      }

      while (v15);
    }
  }

  else if (a4)
  {
    [NFCError errorWithCode:300];
    *a4 = v9 = 0;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (NSRange)range
{
  p_range = &self->_range;
  location = self->_range.location;
  length = p_range->length;
  result.length = length;
  result.location = location;
  return result;
}

@end
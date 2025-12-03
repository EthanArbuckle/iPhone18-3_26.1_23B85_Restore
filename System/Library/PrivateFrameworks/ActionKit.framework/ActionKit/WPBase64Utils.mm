@interface WPBase64Utils
+ (id)decodeString:(id)string;
+ (id)encodeData:(id)data;
+ (void)encodeFileHandle:(id)handle withChunkHandler:(id)handler;
+ (void)encodeInputStream:(id)stream withChunkHandler:(id)handler;
@end

@implementation WPBase64Utils

+ (id)decodeString:(id)string
{
  v3 = [string dataUsingEncoding:1];
  v7 = 0;
  v4 = NewBase64Decode([v3 bytes], objc_msgSend(v3, "length"), &v7);
  v5 = [MEMORY[0x277CBEA90] dataWithBytes:v4 length:v7];
  free(v4);

  return v5;
}

+ (void)encodeFileHandle:(id)handle withChunkHandler:(id)handler
{
  handleCopy = handle;
  handlerCopy = handler;
  v7 = [handleCopy readDataOfLength:18000];
  if ([v7 length])
  {
    do
    {
      v8 = [self encodeData:v7];
      handlerCopy[2](handlerCopy, v8);
      v9 = [handleCopy readDataOfLength:18000];

      v7 = v9;
    }

    while ([v9 length]);
  }

  else
  {
    v9 = v7;
  }
}

+ (void)encodeInputStream:(id)stream withChunkHandler:(id)handler
{
  v15 = *MEMORY[0x277D85DE8];
  streamCopy = stream;
  handlerCopy = handler;
  [streamCopy open];
  if ([streamCopy hasBytesAvailable])
  {
    do
    {
      v8 = [streamCopy read:v14 maxLength:18000];
      if (v8)
      {
        v9 = v8;
        v10 = objc_autoreleasePoolPush();
        v11 = [MEMORY[0x277CBEA90] dataWithBytes:v14 length:v9];
        v12 = [self encodeData:v11];
        handlerCopy[2](handlerCopy, v12);

        objc_autoreleasePoolPop(v10);
      }
    }

    while (([streamCopy hasBytesAvailable] & 1) != 0);
  }

  [streamCopy close];

  v13 = *MEMORY[0x277D85DE8];
}

+ (id)encodeData:(id)data
{
  v10 = 0;
  dataCopy = data;
  bytes = [dataCopy bytes];
  v5 = [dataCopy length];

  v6 = NewBase64Encode(bytes, v5, 0, &v10);
  v7 = objc_alloc(MEMORY[0x277CCACA8]);
  v8 = [v7 initWithBytes:v6 length:v10 encoding:1];
  free(v6);

  return v8;
}

@end
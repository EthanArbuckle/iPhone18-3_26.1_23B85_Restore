@interface WPBase64Utils
+ (id)decodeString:(id)a3;
+ (id)encodeData:(id)a3;
+ (void)encodeFileHandle:(id)a3 withChunkHandler:(id)a4;
+ (void)encodeInputStream:(id)a3 withChunkHandler:(id)a4;
@end

@implementation WPBase64Utils

+ (id)decodeString:(id)a3
{
  v3 = [a3 dataUsingEncoding:1];
  v7 = 0;
  v4 = NewBase64Decode([v3 bytes], objc_msgSend(v3, "length"), &v7);
  v5 = [MEMORY[0x277CBEA90] dataWithBytes:v4 length:v7];
  free(v4);

  return v5;
}

+ (void)encodeFileHandle:(id)a3 withChunkHandler:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [v10 readDataOfLength:18000];
  if ([v7 length])
  {
    do
    {
      v8 = [a1 encodeData:v7];
      v6[2](v6, v8);
      v9 = [v10 readDataOfLength:18000];

      v7 = v9;
    }

    while ([v9 length]);
  }

  else
  {
    v9 = v7;
  }
}

+ (void)encodeInputStream:(id)a3 withChunkHandler:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  [v6 open];
  if ([v6 hasBytesAvailable])
  {
    do
    {
      v8 = [v6 read:v14 maxLength:18000];
      if (v8)
      {
        v9 = v8;
        v10 = objc_autoreleasePoolPush();
        v11 = [MEMORY[0x277CBEA90] dataWithBytes:v14 length:v9];
        v12 = [a1 encodeData:v11];
        v7[2](v7, v12);

        objc_autoreleasePoolPop(v10);
      }
    }

    while (([v6 hasBytesAvailable] & 1) != 0);
  }

  [v6 close];

  v13 = *MEMORY[0x277D85DE8];
}

+ (id)encodeData:(id)a3
{
  v10 = 0;
  v3 = a3;
  v4 = [v3 bytes];
  v5 = [v3 length];

  v6 = NewBase64Encode(v4, v5, 0, &v10);
  v7 = objc_alloc(MEMORY[0x277CCACA8]);
  v8 = [v7 initWithBytes:v6 length:v10 encoding:1];
  free(v6);

  return v8;
}

@end
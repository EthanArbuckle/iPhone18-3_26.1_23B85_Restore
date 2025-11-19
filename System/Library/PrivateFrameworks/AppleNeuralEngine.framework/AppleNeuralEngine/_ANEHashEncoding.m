@interface _ANEHashEncoding
+ (id)convertToHexString:(char *)a3 length:(unint64_t)a4;
+ (id)hexStringForBytes:(char *)a3 length:(unint64_t)a4;
+ (id)hexStringForData:(id)a3;
+ (id)hexStringForDataArray:(id)a3;
+ (id)hexStringForString:(id)a3;
+ (unsigned)hashForString:(id)a3 seed:(unsigned int)a4;
+ (void)copySHA256For:(id)a3 toBuffer:(char *)a4;
@end

@implementation _ANEHashEncoding

+ (id)convertToHexString:(char *)a3 length:(unint64_t)a4
{
  v6 = objc_autoreleasePoolPush();
  for (i = [&stru_1F224D6A0 mutableCopy]; a4; --a4)
  {
    v8 = *a3++;
    [i appendFormat:@"%02X", v8];
  }

  objc_autoreleasePoolPop(v6);

  return i;
}

+ (id)hexStringForBytes:(char *)a3 length:(unint64_t)a4
{
  v9 = *MEMORY[0x1E69E9840];
  CC_SHA256(a3, a4, md);
  v5 = [a1 convertToHexString:md length:32];
  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)hexStringForString:(id)a3
{
  v5 = a3;
  v6 = a3;
  v7 = [v6 UTF8String];
  v8 = [v6 length];

  return [a1 hexStringForBytes:v7 length:v8];
}

+ (id)hexStringForData:(id)a3
{
  v5 = a3;
  v6 = a3;
  v7 = [v6 bytes];
  v8 = [v6 length];

  return [a1 hexStringForBytes:v7 length:v8];
}

+ (id)hexStringForDataArray:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  data = 0;
  memset(&c, 0, sizeof(c));
  CC_SHA256_Init(&c);
  CC_SHA256_Update(&c, &data, 4u);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = v10;
        CC_SHA256_Update(&c, [v11 bytes], objc_msgSend(v10, "length"));
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v22 count:16];
    }

    while (v7);
  }

  CC_SHA256_Final(md, &c);
  v12 = [a1 convertToHexString:md length:32];

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

+ (void)copySHA256For:(id)a3 toBuffer:(char *)a4
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 UTF8String];
  if (v6)
  {
    CC_SHA256(v6, [v5 length], md);
    v7 = v10;
    *a4 = *md;
    *(a4 + 1) = v7;
  }

  v8 = *MEMORY[0x1E69E9840];
}

+ (unsigned)hashForString:(id)a3 seed:(unsigned int)a4
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = [a3 UTF8String];
  if (v5)
  {
    v6 = v5;
    data = bswap32(a4);
    memset(&v10, 0, sizeof(v10));
    CC_SHA256_Init(&v10);
    CC_SHA256_Update(&v10, &data, 4u);
    v7 = strlen(v6);
    CC_SHA256_Update(&v10, v6, v7);
    CC_SHA256_Final(md, &v10);
    LODWORD(v5) = *md;
  }

  v8 = *MEMORY[0x1E69E9840];
  return v5;
}

@end
@interface NSData(GZip)
- (id)dataGZipDeflated;
- (void)_resizeOutputBuffer:()GZip forStream:;
@end

@implementation NSData(GZip)

- (id)dataGZipDeflated
{
  if ([a1 length])
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x9010000000;
    v14 = &unk_240F759F9;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v2 = [MEMORY[0x277CBEB28] dataWithLength:0x4000];
    if (deflateInit2_((v12 + 4), 9, 8, 31, 9, 0, "1.2.12", 112))
    {
      v3 = 0;
    }

    else
    {
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __32__NSData_GZip__dataGZipDeflated__block_invoke;
      v8[3] = &unk_278CBD4C8;
      v10 = &v11;
      v8[4] = a1;
      v5 = v2;
      v9 = v5;
      [a1 enumerateByteRangesUsingBlock:v8];
      if (deflate((v12 + 4), 4))
      {
        v6 = v12;
      }

      else
      {
        while (1)
        {
          v6 = v12;
          if (*(v12 + 16))
          {
            break;
          }

          [a1 _resizeOutputBuffer:v5 forStream:v12 + 4];
          deflate((v12 + 4), 4);
        }
      }

      deflateEnd((v6 + 4));
      [v5 setLength:v12[9]];
      if (*(v12 + 10))
      {
        v3 = 0;
      }

      else
      {
        v3 = [MEMORY[0x277CBEA90] dataWithData:v5];
      }
    }

    v4 = v3;

    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v4 = a1;
  }

  return v4;
}

- (void)_resizeOutputBuffer:()GZip forStream:
{
  v5 = a3;
  v6 = *(a4 + 40);
  v8 = v5;
  if (v6 >= [v5 length])
  {
    [v8 increaseLengthBy:0x4000];
  }

  *(a4 + 32) = [v8 length] - *(a4 + 40);
  v7 = v8;
  *(a4 + 24) = [v8 mutableBytes] + *(a4 + 40);
}

@end
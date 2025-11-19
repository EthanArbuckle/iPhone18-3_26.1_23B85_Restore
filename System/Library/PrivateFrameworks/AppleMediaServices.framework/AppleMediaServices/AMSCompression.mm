@interface AMSCompression
+ (id)compressedGzippedDataWithData:(id)a3;
+ (id)decompressedDataWithGzippedData:(id)a3;
@end

@implementation AMSCompression

+ (id)compressedGzippedDataWithData:(id)a3
{
  v3 = a3;
  v4 = [v3 bytes];
  v5 = [v3 length];

  v6 = 0;
  if (v4 && v5)
  {
    v7 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:3 * v5];
    memset(&v11.avail_in, 0, 104);
    v11.avail_in = v5;
    v11.avail_out = [v7 length];
    v11.next_out = [v7 mutableBytes];
    if (v7 && !deflateInit2_(&v11, -1, 8, 31, 8, 0, "1.2.12", 112) && (v8 = deflate(&v11, 4), v9 = deflateEnd(&v11), v8 == 1))
    {
      v6 = 0;
      if (!v9 && v5 == v11.total_in)
      {
        [v7 setLength:v11.total_out];
        v6 = v7;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

+ (id)decompressedDataWithGzippedData:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a3;
  memset(&strm.avail_in, 0, 104);
  strm.avail_in = [v3 length];
  strm.next_in = [v3 bytes];
  v4 = 0;
  if (!inflateInit2_(&strm, 31, "1.2.12", 112))
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF88]);
    while (1)
    {
      strm.avail_out = 0x4000;
      strm.next_out = v9;
      v5 = inflate(&strm, 0);
      if (v5 > 1)
      {
        break;
      }

      v6 = v5;
      if (strm.avail_out != 0x4000)
      {
        [v4 appendBytes:v9 length:0x4000 - strm.avail_out];
      }

      if (v6)
      {
        inflateEnd(&strm);
        goto LABEL_9;
      }
    }

    inflateEnd(&strm);

    v4 = 0;
  }

LABEL_9:

  return v4;
}

@end
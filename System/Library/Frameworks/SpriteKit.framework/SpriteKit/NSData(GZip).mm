@interface NSData(GZip)
+ (id)makeArchive:()GZip length:level:;
- (id)gzipDeflate:()GZip;
- (id)gzipInflate;
@end

@implementation NSData(GZip)

- (id)gzipDeflate:()GZip
{
  if ([self length])
  {
    v10.avail_in = [self length];
    v10.avail_out = 0;
    v10.total_out = 0;
    memset(&v10.zalloc, 0, 24);
    v4 = 0;
    if (!deflateInit2_(&v10, (fmaxf(fminf(a2, 1.0), 0.0) * 9.0), 8, 31, 8, 0, "1.2.12", 112))
    {
      v5 = [MEMORY[0x277CBEB28] dataWithLength:0x8000];
      while (!v10.avail_out)
      {
        total_out = v10.total_out;
        if (total_out >= [v5 length])
        {
          [v5 setLength:{objc_msgSend(v5, "length") + 0x8000}];
        }

        mutableBytes = [v5 mutableBytes];
        v10.next_out = (mutableBytes + v10.total_out);
        v8 = [v5 length];
        v10.avail_out = v8 - LODWORD(v10.total_out);
        if (deflate(&v10, 4))
        {
          deflateEnd(&v10);
          v4 = 0;
          goto LABEL_11;
        }
      }

      deflateEnd(&v10);
      [v5 setLength:v10.total_out];
      v4 = v5;
LABEL_11:
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)makeArchive:()GZip length:level:
{
  v5 = 0;
  if (a4)
  {
    if (a5)
    {
      v11.next_in = a4;
      v11.avail_in = a5;
      v11.avail_out = 0;
      v11.total_out = 0;
      memset(&v11.zalloc, 0, 24);
      v5 = 0;
      if (!deflateInit2_(&v11, (fmaxf(fminf(self, 1.0), 0.0) * 9.0), 8, 31, 8, 0, "1.2.12", 112))
      {
        v6 = [MEMORY[0x277CBEB28] dataWithLength:0x8000];
        while (!v11.avail_out)
        {
          total_out = v11.total_out;
          if (total_out >= [v6 length])
          {
            [v6 setLength:{objc_msgSend(v6, "length") + 0x8000}];
          }

          mutableBytes = [v6 mutableBytes];
          v11.next_out = (mutableBytes + v11.total_out);
          v9 = [v6 length];
          v11.avail_out = v9 - LODWORD(v11.total_out);
          if (deflate(&v11, 4))
          {
            deflateEnd(&v11);
            v5 = 0;
            goto LABEL_11;
          }
        }

        deflateEnd(&v11);
        [v6 setLength:v11.total_out];
        v5 = v6;
LABEL_11:
      }
    }
  }

  return v5;
}

- (id)gzipInflate
{
  if ([self length])
  {
    v2 = [self length];
    v3 = [self length];
    v4 = [MEMORY[0x277CBEB28] dataWithLength:v2 + (v3 >> 1)];
    v15.avail_in = [self length];
    v15.zalloc = 0;
    v15.zfree = 0;
    v15.total_out = 0;
    if (inflateInit2_(&v15, 47, "1.2.12", 112))
    {
      goto LABEL_13;
    }

    v5 = v3 >> 1;
    do
    {
      total_out = v15.total_out;
      if (total_out >= [v4 length])
      {
        [v4 increaseLengthBy:v5];
      }

      mutableBytes = [v4 mutableBytes];
      v15.next_out = (mutableBytes + v15.total_out);
      v8 = [v4 length];
      v15.avail_out = v8 - LODWORD(v15.total_out);
      v9 = inflate(&v15, 2);
    }

    while (!v9);
    v10 = v9 == 1;
    v12 = inflateEnd(&v15);
    v13 = !v10;
    if (v12)
    {
      v13 = 1;
    }

    if (v13)
    {
LABEL_13:
      v11 = 0;
    }

    else
    {
      [v4 setLength:v15.total_out];
      v11 = [MEMORY[0x277CBEA90] dataWithData:v4];
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end
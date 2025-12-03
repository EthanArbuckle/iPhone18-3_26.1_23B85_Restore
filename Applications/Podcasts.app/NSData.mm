@interface NSData
+ (id)MZStringByMD5HashingString:(id)string;
+ (id)MZStringFromDigestData:(id)data;
- (id)_MZDataByDeflatingWithCompression:(unint64_t)compression;
- (id)_MZDataByInflating;
@end

@implementation NSData

- (id)_MZDataByInflating
{
  selfCopy = self;
  if ([(NSData *)selfCopy length]>> 32)
  {
    NSLog(@"ERROR: unable to zip large data of size ~%.3f GB", [(NSData *)selfCopy length]/ 1000000000.0);
LABEL_3:
    v3 = 0;
    goto LABEL_11;
  }

  memset(&strm.avail_in, 0, 104);
  strm.avail_in = [(NSData *)selfCopy length];
  strm.next_in = [(NSData *)selfCopy bytes];
  v3 = 0;
  if (!inflateInit2_(&strm, -15, "1.2.12", 112))
  {
    v3 = objc_alloc_init(NSMutableData);
    while (1)
    {
      strm.avail_out = 0x4000;
      strm.next_out = v8;
      v4 = inflate(&strm, 0);
      if (v4 > 1)
      {
        break;
      }

      v5 = v4;
      if (strm.avail_out != 0x4000)
      {
        [v3 appendBytes:v8 length:0x4000 - strm.avail_out];
      }

      if (v5)
      {
        inflateEnd(&strm);
        goto LABEL_11;
      }
    }

    inflateEnd(&strm);

    goto LABEL_3;
  }

LABEL_11:

  return v3;
}

- (id)_MZDataByDeflatingWithCompression:(unint64_t)compression
{
  selfCopy = self;
  if ([(NSData *)selfCopy length]>= 0xFFFFFFFF)
  {
    NSLog(@"ERROR: unable to zip large data of size ~%.3f GB", [(NSData *)selfCopy length]/ 1000000000.0);
    v5 = 0;
    goto LABEL_23;
  }

  bytes = [(NSData *)selfCopy bytes];
  v7 = [(NSData *)selfCopy length];
  v8 = [[NSMutableData alloc] initWithCapacity:(v7 >> 1) + 1];
  v5 = 0;
  if (bytes && v7)
  {
    memset(&strm, 0, sizeof(strm));
    if (compression == 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = -1;
    }

    strm.avail_out = 0x4000;
    if (compression == 2)
    {
      v10 = 9;
    }

    else
    {
      v10 = v9;
    }

    strm.next_out = v18;
    if (deflateInit2_(&strm, v10, 8, -15, 9, 0, "1.2.12", 112))
    {
      NSLog(@"deflateInit2() failed: %s", strm.msg);
    }

    else
    {
      strm.avail_in = v7;
      strm.next_in = bytes;
      do
      {
        if (!strm.avail_out)
        {
          [v8 appendBytes:v18 length:0x4000];
          strm.avail_out = 0x4000;
          strm.next_out = v18;
        }

        v11 = deflate(&strm, 0);
      }

      while (!v11 && strm.avail_in);
      if (!v11)
      {
        if (strm.next_out)
        {
          do
          {
            v13 = deflate(&strm, 4);
            next_out = strm.next_out;
            [v8 appendBytes:v18 length:strm.next_out - v18];
            v15 = next_out > v18 && v13 == -5;
            strm.avail_out = 0x4000;
            strm.next_out = v18;
          }

          while (v15 || v13 == 0);
          strm.avail_out = 0;
          strm.next_out = 0;
          deflateEnd(&strm);
          if (v13 != -5 && v13 != 1)
          {
            NSLog(@"deflate() failed: %s", strm.msg);
            goto LABEL_21;
          }
        }

        else
        {
          deflateEnd(&strm);
        }

        v5 = v8;
        goto LABEL_22;
      }

      NSLog(@"deflate() failed: %s", strm.msg);
    }

    deflateEnd(&strm);
LABEL_21:
    v5 = 0;
  }

LABEL_22:

LABEL_23:

  return v5;
}

+ (id)MZStringFromDigestData:(id)data
{
  dataCopy = data;
  v4 = [dataCopy length];
  bytes = [dataCopy bytes];
  v6 = [NSMutableString stringWithCapacity:2 * v4];
  if (v4)
  {
    v7 = 0;
    v8 = 1;
    do
    {
      [v6 appendFormat:@"%02x", bytes[v7]];
      v7 = v8;
    }

    while (v4 > v8++);
  }

  return v6;
}

+ (id)MZStringByMD5HashingString:(id)string
{
  v4 = [string dataUsingEncoding:4];
  if ([v4 length])
  {
    memset(&v12, 0, sizeof(v12));
    if (CC_MD5_Init(&v12))
    {
      bytes = [v4 bytes];
      v6 = 0;
      while (1)
      {
        v7 = [v4 length];
        v8 = &v7[-v6] >= 0xFFFF ? 0xFFFFLL : &v7[-v6];
        if (!CC_MD5_Update(&v12, &bytes[v6], v8))
        {
          break;
        }

        v6 += v8;
        if (v6 >= [v4 length])
        {
          if (!CC_MD5_Final(md, &v12))
          {
            break;
          }

          v9 = [NSData dataWithBytes:md length:16];
          v10 = [self MZStringFromDigestData:v9];

          goto LABEL_12;
        }
      }
    }
  }

  v10 = 0;
LABEL_12:

  return v10;
}

@end